@interface MonthToYearAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation MonthToYearAnimationTest

- (void)setUp
{
  v3 = [(ApplicationTest *)self application];
  v6 = [v3 rootNavigationController];

  v4 = [v6 resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v4;
}

- (void)kickOffAnimation
{
  v3 = [(MonthViewController *)self->_monthViewController navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

@end