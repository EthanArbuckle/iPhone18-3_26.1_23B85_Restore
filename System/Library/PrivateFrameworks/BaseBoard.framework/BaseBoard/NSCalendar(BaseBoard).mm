@interface NSCalendar(BaseBoard)
- (uint64_t)bs_dayPeriodForDate:()BaseBoard inLocale:;
@end

@implementation NSCalendar(BaseBoard)

- (uint64_t)bs_dayPeriodForDate:()BaseBoard inLocale:
{
  v6 = a3;
  localeIdentifier = [a4 localeIdentifier];
  v8 = [self components:96 fromDate:v6];
  [v8 hour];
  [v8 minute];
  [localeIdentifier UTF8String];
  DayPeriod = uacal_getDayPeriod();
  v10 = 10;
  if (DayPeriod < 0xA)
  {
    v10 = qword_18FFA2EA0[DayPeriod];
  }

  return v10;
}

@end