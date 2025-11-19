@interface PadShowEventInMonthViewTest
- (id)_getEvent;
- (void)_setupViewToDate:(id)a3;
@end

@implementation PadShowEventInMonthViewTest

- (void)_setupViewToDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self model];
  [v5 setSelectedDate:v4];

  v6 = [(ApplicationTest *)self application];
  v7 = [v6 rootNavigationController];
  v10 = [v7 resetToMonthView];

  v8 = [(ApplicationTest *)self model];
  [v8 setSelectedDate:v4];

  v9 = [v4 date];

  [v10 showDate:v9 animated:0];
  [(PadShowEventTest *)self setController:v10];
}

- (id)_getEvent
{
  v3 = [(PadShowEventTest *)self controller];
  v4 = [(ApplicationTest *)self model];
  v5 = [v4 selectedDate];
  v6 = [v3 subviewForDate:v5];

  v7 = [v6 occurrencesView];
  v8 = [v7 firstNonAllDayEvent];

  return v8;
}

@end