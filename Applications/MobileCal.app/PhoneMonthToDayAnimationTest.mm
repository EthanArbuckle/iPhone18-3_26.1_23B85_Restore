@interface PhoneMonthToDayAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation PhoneMonthToDayAnimationTest

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
}

- (void)kickOffAnimation
{
  monthViewController = self->_monthViewController;
  model = [(ApplicationTest *)self model];
  selectedDate = [model selectedDate];
  v4 = [(MonthViewController *)monthViewController pushedDayViewControllerWithDate:selectedDate animated:1];
}

@end