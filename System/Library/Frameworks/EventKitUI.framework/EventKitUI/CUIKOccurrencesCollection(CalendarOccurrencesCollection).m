@interface CUIKOccurrencesCollection(CalendarOccurrencesCollection)
- (CalendarOccurrencesCollection)asCalendarOccurrencesCollection;
@end

@implementation CUIKOccurrencesCollection(CalendarOccurrencesCollection)

- (CalendarOccurrencesCollection)asCalendarOccurrencesCollection
{
  v2 = [CalendarOccurrencesCollection alloc];
  v3 = [a1 occurrences];
  v4 = [a1 timedOccurrences];
  v5 = [a1 allDayOccurrences];
  v6 = -[CalendarOccurrencesCollection initWithOccurrences:timedOccurrences:allDayOccurrences:generation:](v2, "initWithOccurrences:timedOccurrences:allDayOccurrences:generation:", v3, v4, v5, [a1 generation]);

  return v6;
}

@end