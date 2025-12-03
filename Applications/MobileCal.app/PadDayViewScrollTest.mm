@interface PadDayViewScrollTest
- (id)scrollView;
- (void)navigateToScrollView;
@end

@implementation PadDayViewScrollTest

- (void)navigateToScrollView
{
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:extractInitialDateOption];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToDayView = [rootNavigationController resetToDayView];
  controller = self->_controller;
  self->_controller = resetToDayView;

  [(DayViewController *)self->_controller selectDate:extractInitialDateOption animated:0];
}

- (id)scrollView
{
  dayView = [(DayViewController *)self->_controller dayView];
  horizontalScrollView = [dayView horizontalScrollView];

  return horizontalScrollView;
}

@end