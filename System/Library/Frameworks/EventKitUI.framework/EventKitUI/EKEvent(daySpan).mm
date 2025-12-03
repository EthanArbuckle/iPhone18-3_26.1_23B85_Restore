@interface EKEvent(daySpan)
- (uint64_t)daySpan;
@end

@implementation EKEvent(daySpan)

- (uint64_t)daySpan
{
  startCalendarDate = [self startCalendarDate];
  calendarDateForDay = [startCalendarDate calendarDateForDay];

  endCalendarDate = [self endCalendarDate];
  calendarDateForDay2 = [endCalendarDate calendarDateForDay];

  v6 = [calendarDateForDay2 differenceInDays:calendarDateForDay];
  return v6 + 1;
}

@end