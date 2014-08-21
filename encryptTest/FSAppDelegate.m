//
//  FSAppDelegate.m
//  encryptTest
//
//  Created by LingZhao on 14-8-20.
//  Copyright (c) 2014年 FS. All rights reserved.
//

#import "FSAppDelegate.h"
#import "EncryptedFileURLProtocol.h"
#import "NSURL+EncryptedFileURLProtocol.h"

@interface FSAppDelegate ()
@property (weak) IBOutlet NSImageView *testImageV;

@end

@implementation FSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    [NSURLProtocol registerClass:[EncryptedFileURLProtocol class]];
    
    
    NSString *indexPath = [[NSBundle mainBundle] pathForResource:@"link_b03_01" ofType:@"png" inDirectory:nil];
    
    NSURL *url = [NSURL encryptedFileURLWithPath:indexPath];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    NSImage *image = [[NSImage alloc] initWithData:data];
    
    _testImageV.image = image;
    
    
}

@end
