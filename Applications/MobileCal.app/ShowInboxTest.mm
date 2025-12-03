@interface ShowInboxTest
- (void)runTest;
@end

@implementation ShowInboxTest

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToYearView = [rootNavigationController resetToYearView];
  v6 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049F44;
  block[3] = &unk_10020F2E0;
  block[4] = self;
  v10 = application;
  v11 = rootNavigationController;
  v7 = rootNavigationController;
  v8 = application;
  dispatch_after(v6, &_dispatch_main_q, block);
}

@end