@interface PadShowEventTest
- (void)runTest;
@end

@implementation PadShowEventTest

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  [(PadShowEventTest *)self _setupViewToDate:extractInitialDateOption];
  v5 = dispatch_time(0, 4000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010D3BC;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = application;
  v6 = application;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

@end