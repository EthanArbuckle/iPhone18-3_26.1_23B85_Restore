@interface MonthToYearAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation MonthToYearAnimationTest

- (void)setUp
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToMonthView = [rootNavigationController resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = resetToMonthView;
}

- (void)kickOffAnimation
{
  navigationController = [(MonthViewController *)self->_monthViewController navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

@end