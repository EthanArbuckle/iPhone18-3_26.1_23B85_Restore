@interface PhoneMonthToDayAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation PhoneMonthToDayAnimationTest

- (void)setUp
{
  v3 = [(ApplicationTest *)self extractInitialDateOption];
  initialDate = self->_initialDate;
  self->_initialDate = v3;

  v5 = self->_initialDate;
  v6 = [(ApplicationTest *)self model];
  [v6 setSelectedDate:v5];

  v7 = [(ApplicationTest *)self application];
  v10 = [v7 rootNavigationController];

  v8 = [v10 resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v8;
}

- (void)kickOffAnimation
{
  monthViewController = self->_monthViewController;
  v5 = [(ApplicationTest *)self model];
  v3 = [v5 selectedDate];
  v4 = [(MonthViewController *)monthViewController pushedDayViewControllerWithDate:v3 animated:1];
}

@end