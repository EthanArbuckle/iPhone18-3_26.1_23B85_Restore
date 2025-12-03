@interface QRCodeScanner
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
@end

@implementation QRCodeScanner

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  sub_2409194E8(0, &qword_27E50C418, 0x277CE5B98);
  v8 = sub_240A2C16C();
  outputCopy = output;
  connectionCopy = connection;
  selfCopy = self;
  sub_24094902C(v8);
}

@end