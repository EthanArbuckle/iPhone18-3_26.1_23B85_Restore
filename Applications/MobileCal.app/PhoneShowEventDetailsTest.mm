@interface PhoneShowEventDetailsTest
- (id)_eventForTest;
- (void)_detailViewControllerAppeared:(id)appeared;
- (void)runTest;
@end

@implementation PhoneShowEventDetailsTest

- (void)runTest
{
  testName = [objc_opt_class() testName];
  _delaySubTestName = [objc_opt_class() _delaySubTestName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  _eventForTest = [(PhoneShowEventDetailsTest *)self _eventForTest];
  application = [(ApplicationTest *)self application];
  v8 = application;
  if (_eventForTest)
  {
    rootNavigationController = [application rootNavigationController];
    resetToDayView = [rootNavigationController resetToDayView];

    [resetToDayView reloadData];
    v11 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032C14;
    block[3] = &unk_10020F2B8;
    block[4] = self;
    v15 = testName;
    v16 = _delaySubTestName;
    v17 = _eventForTest;
    v18 = _animationSubTestName;
    dispatch_after(v11, &_dispatch_main_q, block);
  }

  else
  {
    [application startedTest:testName];

    application2 = [(ApplicationTest *)self application];
    v13 = [NSString stringWithFormat:@"Failed to create event"];
    [application2 failedTest:testName withFailure:v13];
  }
}

- (void)_detailViewControllerAppeared:(id)appeared
{
  testName = [objc_opt_class() testName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:_animationSubTestName forTest:testName];

  application2 = [(ApplicationTest *)self application];
  [application2 finishedTest:testName extraResults:0];

  model = [(ApplicationTest *)self model];
  eventStore = [model eventStore];
  _eventForTest = [(PhoneShowEventDetailsTest *)self _eventForTest];
  [eventStore removeEvent:_eventForTest span:0 error:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

- (id)_eventForTest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032FC8;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251860 != -1)
  {
    dispatch_once(&qword_100251860, block);
  }

  return qword_100251858;
}

@end