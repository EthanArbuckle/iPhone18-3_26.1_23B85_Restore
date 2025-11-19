@interface PadWeekChangeWeekTest
- (void)_mainLoop;
- (void)_realTest;
- (void)dealloc;
- (void)runTest;
@end

@implementation PadWeekChangeWeekTest

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PadWeekChangeWeekTest;
  [(PadWeekChangeWeekTest *)&v4 dealloc];
}

- (void)runTest
{
  v8 = [(ApplicationTest *)self extractInitialDateOption];
  v3 = [(ApplicationTest *)self model];
  [v3 setSelectedDate:v8];

  v4 = [(ApplicationTest *)self application];
  v5 = [v4 rootNavigationController];

  self->_weeksToScroll = 10;
  v6 = [v5 resetToWeekView];
  weekViewController = self->_weekViewController;
  self->_weekViewController = v6;

  [(PadWeekChangeWeekTest *)self _realTest];
}

- (void)_realTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_mainLoop" name:@"WeekViewController_ScrollDidEndAnimationNotification" object:0];

  v4 = [objc_opt_class() testName];
  v5 = dispatch_time(0, 200000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073D7C;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_mainLoop
{
  weeksToScroll = self->_weeksToScroll;
  if (weeksToScroll)
  {
    self->_weeksToScroll = weeksToScroll - 1;
    v4 = [(WeekViewController *)self->_weekViewController displayedDate];
    [v4 calendarDateByAddingDays:7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073F18;
    block[3] = &unk_10020EC68;
    v9 = block[4] = self;
    v5 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = [objc_opt_class() testName];
    v6 = [(ApplicationTest *)self application];
    [v6 finishedTest:v7 waitForCommit:0 extraResults:0 withTeardownBlock:&stru_10020FCC8];
  }
}

@end