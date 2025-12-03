@interface CalendarListShowTest
- (void)runTest;
@end

@implementation CalendarListShowTest

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  rootViewController = [application rootViewController];
  resetToYearView = [rootNavigationController resetToYearView];
  v7 = dispatch_time(0, 2000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036E08;
  v11[3] = &unk_10020F290;
  v11[4] = self;
  v12 = application;
  v13 = rootViewController;
  v14 = rootNavigationController;
  v8 = rootNavigationController;
  v9 = rootViewController;
  v10 = application;
  dispatch_after(v7, &_dispatch_main_q, v11);
}

@end