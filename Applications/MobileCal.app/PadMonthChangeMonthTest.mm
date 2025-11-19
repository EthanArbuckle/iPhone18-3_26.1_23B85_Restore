@interface PadMonthChangeMonthTest
- (void)_mainLoop;
- (void)_realTest;
- (void)dealloc;
- (void)runTest;
@end

@implementation PadMonthChangeMonthTest

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PadMonthChangeMonthTest;
  [(PadMonthChangeMonthTest *)&v4 dealloc];
}

- (void)runTest
{
  v8 = [(ApplicationTest *)self extractInitialDateOption];
  v3 = [(ApplicationTest *)self model];
  [v3 setSelectedDate:v8];

  v4 = [(ApplicationTest *)self application];
  v5 = [v4 rootNavigationController];

  self->_monthsToScroll = 10;
  v6 = [v5 resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v6;

  [(PadMonthChangeMonthTest *)self _realTest];
}

- (void)_realTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_mainLoop" name:@"MonthViewController_ScrollDidEndAnimationNotification" object:0];

  v4 = [objc_opt_class() testName];
  v5 = dispatch_time(0, 200000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A06B4;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_mainLoop
{
  monthsToScroll = self->_monthsToScroll;
  if (monthsToScroll)
  {
    self->_monthsToScroll = monthsToScroll - 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0814;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v5 = [objc_opt_class() testName];
    v4 = [(ApplicationTest *)self application];
    [v4 finishedTest:v5 waitForCommit:1 extraResults:0 withTeardownBlock:&stru_100210338];
  }
}

@end