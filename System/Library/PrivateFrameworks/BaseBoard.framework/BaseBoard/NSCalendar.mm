@interface NSCalendar
- (id)_dateOnlyComponentsForDate:(void *)a1;
@end

@implementation NSCalendar

- (id)_dateOnlyComponentsForDate:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1 components:542 fromDate:v3];
  }

  return a1;
}

@end