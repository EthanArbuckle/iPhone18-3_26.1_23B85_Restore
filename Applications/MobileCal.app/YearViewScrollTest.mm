@interface YearViewScrollTest
- (void)navigateToScrollView;
@end

@implementation YearViewScrollTest

- (void)navigateToScrollView
{
  v6 = [(ApplicationTest *)self application];
  v3 = [v6 rootNavigationController];
  v4 = [v3 resetToYearView];
  controller = self->_controller;
  self->_controller = v4;
}

@end