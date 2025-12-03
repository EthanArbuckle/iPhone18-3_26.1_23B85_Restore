@interface MonthViewScrollTest
- (void)navigateToScrollView;
@end

@implementation MonthViewScrollTest

- (void)navigateToScrollView
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToMonthView = [rootNavigationController resetToMonthView];
  controller = self->_controller;
  self->_controller = resetToMonthView;
}

@end