@interface YearToMonthAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation YearToMonthAnimationTest

- (void)setUp
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToYearView = [rootNavigationController resetToYearView];
  yearViewController = self->_yearViewController;
  self->_yearViewController = resetToYearView;
}

- (void)kickOffAnimation
{
  yearViewController = self->_yearViewController;
  model = [(ApplicationTest *)self model];
  selectedDate = [model selectedDate];
  v4 = [(YearViewController *)yearViewController pushedMonthViewControllerWithDate:selectedDate animated:1];
}

@end