@interface PhoneDayViewHorizontalScrollTest_Glitches
- (id)scrollView;
- (void)navigateToScrollView;
@end

@implementation PhoneDayViewHorizontalScrollTest_Glitches

- (void)navigateToScrollView
{
  v12 = [(ApplicationTest *)self extractInitialDateOption];
  v3 = [(ApplicationTest *)self model];
  [v3 setSelectedDate:v12];

  v4 = [(ApplicationTest *)self application];
  v5 = [v4 rootNavigationController];

  v6 = [v5 resetToMonthView];
  v7 = [(ApplicationTest *)self model];
  v8 = [v7 selectedDate];
  v9 = [v6 pushedDayViewControllerWithDate:v8 animated:0];
  v10 = [v9 currentChildViewController];
  controller = self->_controller;
  self->_controller = v10;
}

- (id)scrollView
{
  v2 = [(DayViewController *)self->_controller dayView];
  v3 = [v2 horizontalScrollView];

  return v3;
}

@end