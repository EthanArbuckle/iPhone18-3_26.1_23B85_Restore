@interface PhoneShowAddEventTest
- (void)_viewControllerAppeared:(id)appeared;
- (void)runTest;
@end

@implementation PhoneShowAddEventTest

- (void)runTest
{
  testName = [objc_opt_class() testName];
  _delaySubTestName = [objc_opt_class() _delaySubTestName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToDayView = [rootNavigationController resetToDayView];

  v9 = dispatch_time(0, 1000000000);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100091470;
  v13[3] = &unk_10020F290;
  v13[4] = self;
  v14 = testName;
  v15 = _delaySubTestName;
  v16 = _animationSubTestName;
  v10 = _animationSubTestName;
  v11 = _delaySubTestName;
  v12 = testName;
  dispatch_after(v9, &_dispatch_main_q, v13);
}

- (void)_viewControllerAppeared:(id)appeared
{
  testName = [objc_opt_class() testName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:_animationSubTestName forTest:testName];

  application2 = [(ApplicationTest *)self application];
  [application2 finishedTest:testName extraResults:0];

  application3 = [(ApplicationTest *)self application];
  rootNavigationController = [application3 rootNavigationController];
  v9 = [rootNavigationController popToRootViewControllerAnimated:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

@end