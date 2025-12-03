@interface PadShowEventInMonthViewTest
- (id)_getEvent;
- (void)_setupViewToDate:(id)date;
@end

@implementation PadShowEventInMonthViewTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:dateCopy];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToMonthView = [rootNavigationController resetToMonthView];

  model2 = [(ApplicationTest *)self model];
  [model2 setSelectedDate:dateCopy];

  date = [dateCopy date];

  [resetToMonthView showDate:date animated:0];
  [(PadShowEventTest *)self setController:resetToMonthView];
}

- (id)_getEvent
{
  controller = [(PadShowEventTest *)self controller];
  model = [(ApplicationTest *)self model];
  selectedDate = [model selectedDate];
  v6 = [controller subviewForDate:selectedDate];

  occurrencesView = [v6 occurrencesView];
  firstNonAllDayEvent = [occurrencesView firstNonAllDayEvent];

  return firstNonAllDayEvent;
}

@end