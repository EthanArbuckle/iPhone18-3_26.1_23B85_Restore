@interface PhoneDayToMonthAnimationTest
- (void)kickOffAnimation;
- (void)setUp;
@end

@implementation PhoneDayToMonthAnimationTest

- (void)setUp
{
  v3 = [(ApplicationTest *)self extractInitialDateOption];
  initialDate = self->_initialDate;
  self->_initialDate = v3;

  v5 = self->_initialDate;
  v6 = [(ApplicationTest *)self model];
  [v6 setSelectedDate:v5];

  v7 = [(ApplicationTest *)self application];
  v14 = [v7 rootNavigationController];

  v8 = [v14 resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v8;

  v10 = self->_monthViewController;
  v11 = [(ApplicationTest *)self model];
  v12 = [v11 selectedDate];
  v13 = [(MonthViewController *)v10 pushedDayViewControllerWithDate:v12 animated:0];
}

- (void)kickOffAnimation
{
  v3 = [(MonthViewController *)self->_monthViewController navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

@end