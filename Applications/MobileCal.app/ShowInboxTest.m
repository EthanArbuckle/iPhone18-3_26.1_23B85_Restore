@interface ShowInboxTest
- (void)runTest;
@end

@implementation ShowInboxTest

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [v3 rootNavigationController];
  v5 = [v4 resetToYearView];
  v6 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049F44;
  block[3] = &unk_10020F2E0;
  block[4] = self;
  v10 = v3;
  v11 = v4;
  v7 = v4;
  v8 = v3;
  dispatch_after(v6, &_dispatch_main_q, block);
}

@end