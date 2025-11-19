@interface CalendarListShowTest
- (void)runTest;
@end

@implementation CalendarListShowTest

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [v3 rootNavigationController];
  v5 = [v3 rootViewController];
  v6 = [v4 resetToYearView];
  v7 = dispatch_time(0, 2000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036E08;
  v11[3] = &unk_10020F290;
  v11[4] = self;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  v10 = v3;
  dispatch_after(v7, &_dispatch_main_q, v11);
}

@end