@interface NSCalendar(BSTimeUtilities)
- (uint64_t)date:()BSTimeUtilities isSameDayAsDate:;
- (uint64_t)date:()BSTimeUtilities isSameYearAsDate:;
@end

@implementation NSCalendar(BSTimeUtilities)

- (uint64_t)date:()BSTimeUtilities isSameDayAsDate:
{
  v6 = a4;
  v7 = [(NSCalendar *)a1 _dateOnlyComponentsForDate:a3];
  v8 = [(NSCalendar *)a1 _dateOnlyComponentsForDate:v6];
  v9 = [v7 isSameDayAsComponents:v8];

  return v9;
}

- (uint64_t)date:()BSTimeUtilities isSameYearAsDate:
{
  v6 = a4;
  v7 = [(NSCalendar *)a1 _dateOnlyComponentsForDate:a3];
  v8 = [(NSCalendar *)a1 _dateOnlyComponentsForDate:v6];
  v9 = [v7 isSameYearAsComponents:v8];

  return v9;
}

@end