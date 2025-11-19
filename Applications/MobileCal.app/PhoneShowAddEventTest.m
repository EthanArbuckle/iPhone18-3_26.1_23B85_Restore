@interface PhoneShowAddEventTest
- (void)_viewControllerAppeared:(id)a3;
- (void)runTest;
@end

@implementation PhoneShowAddEventTest

- (void)runTest
{
  v3 = [objc_opt_class() testName];
  v4 = [objc_opt_class() _delaySubTestName];
  v5 = [objc_opt_class() _animationSubTestName];
  v6 = [(ApplicationTest *)self application];
  v7 = [v6 rootNavigationController];
  v8 = [v7 resetToDayView];

  v9 = dispatch_time(0, 1000000000);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100091470;
  v13[3] = &unk_10020F290;
  v13[4] = self;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  dispatch_after(v9, &_dispatch_main_q, v13);
}

- (void)_viewControllerAppeared:(id)a3
{
  v11 = [objc_opt_class() testName];
  v4 = [objc_opt_class() _animationSubTestName];
  v5 = [(ApplicationTest *)self application];
  [v5 finishedSubTest:v4 forTest:v11];

  v6 = [(ApplicationTest *)self application];
  [v6 finishedTest:v11 extraResults:0];

  v7 = [(ApplicationTest *)self application];
  v8 = [v7 rootNavigationController];
  v9 = [v8 popToRootViewControllerAnimated:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

@end