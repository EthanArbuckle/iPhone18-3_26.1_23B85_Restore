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
  v3 = [(ApplicationTest *)self extractInitialDateOption];
  v4 = [(ApplicationTest *)self model];
  [v4 setSelectedDate:v3];

  v5 = [(ApplicationTest *)self application];
  v6 = [v5 rootNavigationController];

  v7 = [v6 resetToMonthView];
  v8 = [(ApplicationTest *)self model];
  v9 = [v8 selectedDate];
  v10 = [v7 pushedDayViewControllerWithDate:v9 animated:0];
  v11 = [v10 currentChildViewController];
  dayViewController = self->_dayViewController;
  self->_dayViewController = v11;

  self->_daysToScroll = 20;
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_mainLoop" name:EKDayViewController_ScrollDidEndAnimationNotification object:0];

  v14 = [objc_opt_class() testName];
  v15 = dispatch_time(0, 2000000000);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000364DC;
  v17[3] = &unk_10020EC68;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  dispatch_after(v15, &_dispatch_main_q, v17);
}

- (void)_mainLoop
{
  v5 = [(ApplicationTest *)self application];
  if (self->_daysToScroll)
  {
    v3 = [(DayViewController *)self->_dayViewController day];
    v4 = [v3 calendarDateByAddingDays:1];
    [(DayViewController *)self->_dayViewController selectDate:v4 animated:1];
    --self->_daysToScroll;
  }

  else
  {
    v3 = [objc_opt_class() testName];
    [v5 finishedTest:v3 extraResults:0];
  }
}

@end