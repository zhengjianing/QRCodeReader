//
//  QRViewController.m
//  QRCodeReader
//
//  Created by Jianning Zheng on 5/27/14.
//  Copyright (c) 2014 tw. All rights reserved.
//

#import "QRViewController.h"

@interface QRViewController ()
@property (nonatomic) BOOL isReading;
@end

@implementation QRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _isReading = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startStopReading:(id)sender {
    if (!_isReading) {
        _bbitemStart.title = @"Stop";
        _lblStatus.text = @"scanning for QR Code...";
    } else {
        _bbitemStart.title = @"Start";
        _lblStatus.text = @"QR Code Reader is not yet running...";
    }
    _isReading = !_isReading;
}
@end
