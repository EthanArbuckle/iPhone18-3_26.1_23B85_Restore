@interface QRCodeScanner
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
@end

@implementation QRCodeScanner

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  sub_2409194E8(0, &qword_27E50C418, 0x277CE5B98);
  v8 = sub_240A2C16C();
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_24094902C(v8);
}

@end