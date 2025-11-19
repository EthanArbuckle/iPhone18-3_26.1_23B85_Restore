@interface YearToMonthAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation YearToMonthAnimationTest

- (void)setUp
{
  v3 = [(ApplicationTest *)self application];
  v6 = [v3 rootNavigationController];

  v4 = [v6 resetToYearView];
  yearViewController = self->_yearViewController;
  self->_yearViewController = v4;
}

- (void)kickOffAnimation
{
  yearViewController = self->_yearViewController;
  v5 = [(ApplicationTest *)self model];
  v3 = [v5 selectedDate];
  v4 = [(YearViewController *)yearViewController pushedMonthViewControllerWithDate:v3 animated:1];
}

@end