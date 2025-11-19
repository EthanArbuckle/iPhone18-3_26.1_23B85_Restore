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
  v3 = [(PhoneWeekViewHorizontalScrollTest *)self checkTestPreconditions];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"Test precondition not met: %@", v3];
    v5 = [(ApplicationTest *)self application];
    v6 = [objc_opt_class() testName];
    [v5 startedTest:v6];

    v7 = [(ApplicationTest *)self application];
    v8 = [objc_opt_class() testName];
    [v7 failedTest:v8 withFailure:v4];
  }

  v9 = [(ApplicationTest *)self extractInitialDateOption];
  v10 = [(ApplicationTest *)self model];
  [v10 setSelectedDate:v9];

  v11 = [(ApplicationTest *)self application];
  v12 = [v11 rootNavigationController];

  v13 = [v12 EKUI_viewHierarchy];
  if ([v13 ekui_interfaceOrientation] - 1 <= 1)
  {
    v14 = [v12 resetToYearView];
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

  v5 = [objc_opt_class() testName];
  v4 = [(ApplicationTest *)self application];
  [v4 startedTest:v5];

  [(PhoneWeekViewHorizontalScrollTest *)self _mainLoop];
}

- (void)_mainLoop
{
  v3 = [(ApplicationTest *)self application];
  weeksToScroll = self->_weeksToScroll;
  v10 = v3;
  if (weeksToScroll)
  {
    self->_weeksToScroll = weeksToScroll - 1;
    v5 = [v3 rootNavigationController];
    v6 = [v5 topMainViewControllerContainer];
    v7 = [v6 currentChildViewController];

    v8 = [v7 displayedDate];
    v9 = [v8 calendarDateByAddingWeeks:1];
    [v7 setDisplayedDate:v9 animated:1];
  }

  else
  {
    v5 = [objc_opt_class() testName];
    v7 = [(ApplicationTest *)self application];
    [v7 finishedTest:v5 waitForCommit:1 extraResults:0 withTeardownBlock:&stru_1002113D8];
  }
}

@end