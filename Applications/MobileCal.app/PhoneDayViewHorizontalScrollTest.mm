@interface PhoneDayViewHorizontalScrollTest
- (void)_mainLoop;
- (void)dealloc;
- (void)runTest;
@end

@implementation PhoneDayViewHorizontalScrollTest

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneDayViewHorizontalScrollTest;
  [(PhoneDayViewHorizontalScrollTest *)&v4 dealloc];
}

- (void)runTest
{
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:extractInitialDateOption];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToMonthView = [rootNavigationController resetToMonthView];
  model2 = [(ApplicationTest *)self model];
  selectedDate = [model2 selectedDate];
  v10 = [resetToMonthView pushedDayViewControllerWithDate:selectedDate animated:0];
  currentChildViewController = [v10 currentChildViewController];
  dayViewController = self->_dayViewController;
  self->_dayViewController = currentChildViewController;

  self->_daysToScroll = 20;
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_mainLoop" name:EKDayViewController_ScrollDidEndAnimationNotification object:0];

  testName = [objc_opt_class() testName];
  v15 = dispatch_time(0, 2000000000);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000364DC;
  v17[3] = &unk_10020EC68;
  v17[4] = self;
  v18 = testName;
  v16 = testName;
  dispatch_after(v15, &_dispatch_main_q, v17);
}

- (void)_mainLoop
{
  application = [(ApplicationTest *)self application];
  if (self->_daysToScroll)
  {
    testName = [(DayViewController *)self->_dayViewController day];
    v4 = [testName calendarDateByAddingDays:1];
    [(DayViewController *)self->_dayViewController selectDate:v4 animated:1];
    --self->_daysToScroll;
  }

  else
  {
    testName = [objc_opt_class() testName];
    [application finishedTest:testName extraResults:0];
  }
}

@end