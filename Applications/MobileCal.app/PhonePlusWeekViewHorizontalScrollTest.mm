@interface PhonePlusWeekViewHorizontalScrollTest
- (id)checkTestPreconditions;
- (void)_setupWeekView;
- (void)navigateToScrollView;
@end

@implementation PhonePlusWeekViewHorizontalScrollTest

- (id)checkTestPreconditions
{
  if (EKUIUseLargeFormatPhoneUI())
  {
    return 0;
  }

  else
  {
    return @"Test cannot be run on non plus-format phones";
  }
}

- (void)navigateToScrollView
{
  v3 = [(ApplicationTest *)self application];
  v4 = [v3 rootNavigationController];
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation];

  if ((v8 - 3) > 1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004AB88;
    v9[3] = &unk_10020EB98;
    v9[4] = self;
    [UIApp rotateIfNeeded:4 completion:v9];
  }

  else
  {

    [(PhonePlusWeekViewHorizontalScrollTest *)self _setupWeekView];
  }
}

- (void)_setupWeekView
{
  v8 = [(ApplicationTest *)self extractInitialDateOption];
  v3 = [(ApplicationTest *)self model];
  [v3 setSelectedDate:v8];

  v4 = [(ApplicationTest *)self application];
  v5 = [v4 rootNavigationController];
  v6 = [v5 resetToWeekView];
  controller = self->_controller;
  self->_controller = v6;

  [(WeekViewController *)self->_controller setDisplayedDate:v8 animated:0];
}

@end