@interface MonthViewScrollTest
- (void)navigateToScrollView;
@end

@implementation MonthViewScrollTest

- (void)navigateToScrollView
{
  v6 = [(ApplicationTest *)self application];
  v3 = [v6 rootNavigationController];
  v4 = [v3 resetToMonthView];
  controller = self->_controller;
  self->_controller = v4;
}

@end