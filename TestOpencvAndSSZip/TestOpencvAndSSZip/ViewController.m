//
//  ViewController.m
//  TestOpencvAndSSZip
//
//  Created by Avazu Holding on 2017/11/22.
//  Copyright © 2017年 Avazu Holding. All rights reserved.
//

#import "ViewController.h"
#import "SSZipArchive.h"
#include <zlib.h>

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSString *zipPath = @"/Users/avazuholding/Desktop/222.zip";
	NSString *filePath = @"/Users/avazuholding/Desktop/222";
	BOOL flag = [SSZipArchive createZipFileAtPath:zipPath
			  withContentsOfDirectory:filePath
				  keepParentDirectory:NO
					 compressionLevel:Z_DEFAULT_COMPRESSION
							 password:@"123"
								  AES:NO
					  progressHandler:^(NSUInteger entryNumber, NSUInteger total) {
						  
					  }];
	NSLog(@"%d",flag);
}


- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];
	
	// Update the view, if already loaded.
}


@end
