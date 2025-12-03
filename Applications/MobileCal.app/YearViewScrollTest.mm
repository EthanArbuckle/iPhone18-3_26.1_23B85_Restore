@interface YearViewScrollTest
- (void)navigateToScrollView;
@end

@implementation YearViewScrollTest

- (void)navigateToScrollView
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToYearView = [rootNavigationController resetToYearView];
  controller = self->_controller;
  self->_controller = resetToYearView;
}

@end