@interface PhoneWeekViewHorizontalScrollTest
- (id)checkTestPreconditions;
- (void)_mainLoop;
- (void)_realTest;
- (void)dealloc;
- (void)runTest;
@end

@implementation PhoneWeekViewHorizontalScrollTest

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneWeekViewHorizontalScrollTest;
  [(PhoneWeekViewHorizontalScrollTest *)&v4 dealloc];
}

- (id)checkTestPreconditions
{
  if (EKUIUseLargeFormatPhoneUI())
  {
    return @"Test cannot be run on plus-format phones";
  }

  else
  {
    return 0;
  }
}

- (void)runTest
{
  checkTestPreconditions = [(PhoneWeekViewHorizontalScrollTest *)self checkTestPreconditions];
  if (checkTestPreconditions)
  {
    v4 = [NSString stringWithFormat:@"Test precondition not met: %@", checkTestPreconditions];
    application = [(ApplicationTest *)self application];
    testName = [objc_opt_class() testName];
    [application startedTest:testName];

    application2 = [(ApplicationTest *)self application];
    testName2 = [objc_opt_class() testName];
    [application2 failedTest:testName2 withFailure:v4];
  }

  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:extractInitialDateOption];

  application3 = [(ApplicationTest *)self application];
  rootNavigationController = [application3 rootNavigationController];

  eKUI_viewHierarchy = [rootNavigationController EKUI_viewHierarchy];
  if ([eKUI_viewHierarchy ekui_interfaceOrientation] - 1 <= 1)
  {
    resetToYearView = [rootNavigationController resetToYearView];
  }

  self->_weeksToScroll = 10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E121C;
  v15[3] = &unk_10020EB98;
  v15[4] = self;
  [UIApp rotateIfNeeded:3 completion:v15];
}

- (void)_realTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_mainLoop" name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];

  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  [application startedTest:testName];

  [(PhoneWeekViewHorizontalScrollTest *)self _mainLoop];
}

- (void)_mainLoop
{
  application = [(ApplicationTest *)self application];
  weeksToScroll = self->_weeksToScroll;
  v10 = application;
  if (weeksToScroll)
  {
    self->_weeksToScroll = weeksToScroll - 1;
    rootNavigationController = [application rootNavigationController];
    topMainViewControllerContainer = [rootNavigationController topMainViewControllerContainer];
    currentChildViewController = [topMainViewControllerContainer currentChildViewController];

    displayedDate = [currentChildViewController displayedDate];
    v9 = [displayedDate calendarDateByAddingWeeks:1];
    [currentChildViewController setDisplayedDate:v9 animated:1];
  }

  else
  {
    rootNavigationController = [objc_opt_class() testName];
    currentChildViewController = [(ApplicationTest *)self application];
    [currentChildViewController finishedTest:rootNavigationController waitForCommit:1 extraResults:0 withTeardownBlock:&stru_1002113D8];
  }
}

@end