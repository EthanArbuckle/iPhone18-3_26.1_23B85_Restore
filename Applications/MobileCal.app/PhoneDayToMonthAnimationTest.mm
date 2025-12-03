@interface PhoneDayToMonthAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation PhoneDayToMonthAnimationTest

- (void)setUp
{
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  initialDate = self->_initialDate;
  self->_initialDate = extractInitialDateOption;

  v5 = self->_initialDate;
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:v5];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToMonthView = [rootNavigationController resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = resetToMonthView;

  v10 = self->_monthViewController;
  model2 = [(ApplicationTest *)self model];
  selectedDate = [model2 selectedDate];
  v13 = [(MonthViewController *)v10 pushedDayViewControllerWithDate:selectedDate animated:0];
}

- (void)kickOffAnimation
{
  navigationController = [(MonthViewController *)self->_monthViewController navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

@end