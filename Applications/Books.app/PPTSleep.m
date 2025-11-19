@interface PPTSleep
- (void)startTest;
@end

@implementation PPTSleep

- (void)startTest
{
  [(PPTBasicTest *)self setRunning:1];
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100182360;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

@end