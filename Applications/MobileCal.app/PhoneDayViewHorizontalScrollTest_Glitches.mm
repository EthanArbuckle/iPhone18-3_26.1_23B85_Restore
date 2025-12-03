@interface PhoneDayViewHorizontalScrollTest_Glitches
- (id)scrollView;
- (void)navigateToScrollView;
@end

@implementation PhoneDayViewHorizontalScrollTest_Glitches

- (void)navigateToScrollView
{
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:extractInitialDateOption];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToMonthView = [rootNavigationController resetToMonthView];
  model2 = [(ApplicationTest *)self model];
  selectedDate = [model2 selectedDate];
  v9 = [resetToMonthView pushedDayViewControllerWithDate:selectedDate animated:0];
  currentChildViewController = [v9 currentChildViewController];
  controller = self->_controller;
  self->_controller = currentChildViewController;
}

- (id)scrollView
{
  dayView = [(DayViewController *)self->_controller dayView];
  horizontalScrollView = [dayView horizontalScrollView];

  return horizontalScrollView;
}

@end