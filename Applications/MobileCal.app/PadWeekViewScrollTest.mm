@interface PadWeekViewScrollTest
- (void)navigateToScrollView;
@end

@implementation PadWeekViewScrollTest

- (void)navigateToScrollView
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