@interface LargeTextLargeMonthViewController
- (id)nextLevelWeekViewControllerWithDate:(id)date;
- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated;
- (void)didScroll;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)palette;
@end

@implementation LargeTextLargeMonthViewController

- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(LargeTextLargeMonthViewController *)self nextLevelWeekViewControllerWithDate:date];
  navigationController = [(LargeTextLargeMonthViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:animatedCopy];

  return v6;
}

- (id)nextLevelWeekViewControllerWithDate:(id)date
{
  [(CUIKCalendarModel *)self->super.super.super.super.super._model setSelectedDate:date];
  v4 = [WeekViewContainerViewController alloc];
  model = self->super.super.super.super.super._model;
  window = [(MainViewController *)self window];
  v7 = [(MainViewControllerContainer *)v4 initWithModel:model window:window];

  return v7;
}

- (void)updatePalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = LargeTextLargeMonthViewController;
  paletteCopy = palette;
  [(CompactWidthMonthViewController *)&v4 updatePalette:paletteCopy];
  [paletteCopy setTodayButtonVisible:{1, v4.receiver, v4.super_class}];
  [paletteCopy setDateStringVisible:1];
}

- (void)updateNavigationBarDisplayedDateString
{
  dateOfCenterViewOnScreen = [(InfiniteScrollViewController *)self dateOfCenterViewOnScreen];
  navigationController = [(LargeTextLargeMonthViewController *)self navigationController];
  [navigationController setNavBarStringFromDate:dateOfCenterViewOnScreen includeMonth:1 includeYear:1];
}

- (void)didScroll
{
  v8.receiver = self;
  v8.super_class = LargeTextLargeMonthViewController;
  [(CompactWidthMonthViewController *)&v8 didScroll];
  targetCalendarDate = [(CompactWidthMonthViewController *)self targetCalendarDate];
  if (targetCalendarDate)
  {
    navigationController = [(LargeTextLargeMonthViewController *)self navigationController];
    topMainViewControllerContainer = [navigationController topMainViewControllerContainer];
    if ([topMainViewControllerContainer currentChildViewControllerIsLoaded])
    {
      topMainViewControllerContainer2 = [navigationController topMainViewControllerContainer];
      currentChildViewController = [topMainViewControllerContainer2 currentChildViewController];

      if (currentChildViewController == self)
      {
        [navigationController setNavBarStringFromDate:targetCalendarDate includeMonth:1 includeYear:1];
      }
    }

    else
    {
    }
  }
}

@end