@interface NSCalendar
- (id)_dateOnlyComponentsForDate:(void *)date;
@end

@implementation NSCalendar

- (id)_dateOnlyComponentsForDate:(void *)date
{
  v3 = a2;
  if (date)
  {
    date = [date components:542 fromDate:v3];
  }

  return date;
}

@end