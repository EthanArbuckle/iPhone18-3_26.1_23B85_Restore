@interface EKEvent(daySpan)
- (uint64_t)daySpan;
@end

@implementation EKEvent(daySpan)

- (uint64_t)daySpan
{
  v2 = [a1 startCalendarDate];
  v3 = [v2 calendarDateForDay];

  v4 = [a1 endCalendarDate];
  v5 = [v4 calendarDateForDay];

  v6 = [v5 differenceInDays:v3];
  return v6 + 1;
}

@end