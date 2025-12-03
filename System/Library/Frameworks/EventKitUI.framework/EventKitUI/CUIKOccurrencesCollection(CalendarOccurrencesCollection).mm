@interface CUIKOccurrencesCollection(CalendarOccurrencesCollection)
- (CalendarOccurrencesCollection)asCalendarOccurrencesCollection;
@end

@implementation CUIKOccurrencesCollection(CalendarOccurrencesCollection)

- (CalendarOccurrencesCollection)asCalendarOccurrencesCollection
{
  v2 = [CalendarOccurrencesCollection alloc];
  occurrences = [self occurrences];
  timedOccurrences = [self timedOccurrences];
  allDayOccurrences = [self allDayOccurrences];
  v6 = -[CalendarOccurrencesCollection initWithOccurrences:timedOccurrences:allDayOccurrences:generation:](v2, "initWithOccurrences:timedOccurrences:allDayOccurrences:generation:", occurrences, timedOccurrences, allDayOccurrences, [self generation]);

  return v6;
}

@end