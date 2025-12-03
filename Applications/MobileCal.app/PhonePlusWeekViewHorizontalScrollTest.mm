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
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  view = [rootNavigationController view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if ((interfaceOrientation - 3) > 1)
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
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:extractInitialDateOption];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToWeekView = [rootNavigationController resetToWeekView];
  controller = self->_controller;
  self->_controller = resetToWeekView;

  [(WeekViewController *)self->_controller setDisplayedDate:extractInitialDateOption animated:0];
}

@end