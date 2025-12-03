@interface NSDate(HKDayIndex)
+ (id)hk_dateOnDayIndex:()HKDayIndex atHour:calendar:;
+ (id)hk_earliestPossibleDateWithDayIndex:()HKDayIndex;
+ (id)hk_latestPossibleDateWithDayIndex:()HKDayIndex;
- (uint64_t)hk_dayIndexWithCalendar:()HKDayIndex;
- (uint64_t)hk_earliestPossibleDayIndex;
- (uint64_t)hk_latestPossibleDayIndex;
@end

@implementation NSDate(HKDayIndex)

+ (id)hk_dateOnDayIndex:()HKDayIndex atHour:calendar:
{
  v7 = MEMORY[0x1E695DF10];
  v8 = a5;
  v9 = [v7 hk_componentsWithDayIndex:a3 calendar:v8];
  [v9 setHour:a4];
  v10 = [v8 dateFromComponents:v9];

  return v10;
}

+ (id)hk_earliestPossibleDateWithDayIndex:()HKDayIndex
{
  v4 = +[HKCalendarCache latestTimeZoneCalendar];
  v5 = [MEMORY[0x1E695DF10] hk_componentsWithDayIndex:a3 calendar:v4];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

+ (id)hk_latestPossibleDateWithDayIndex:()HKDayIndex
{
  v4 = +[HKCalendarCache earliestTimeZoneCalendar];
  v5 = [MEMORY[0x1E695DF10] hk_componentsWithDayIndex:a3 calendar:v4];
  v6 = [v4 dateFromComponents:v5];
  v7 = [v4 dateByAddingUnit:16 value:1 toDate:v6 options:0];

  return v7;
}

- (uint64_t)hk_dayIndexWithCalendar:()HKDayIndex
{
  v5 = a3;
  calendarIdentifier = [v5 calendarIdentifier];
  v7 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

  if ((v7 & 1) == 0)
  {
    [(NSDate(HKDayIndex) *)a2 hk_dayIndexWithCalendar:self];
  }

  v8 = [v5 components:28 fromDate:self];
  hk_dayIndex = [v8 hk_dayIndex];

  return hk_dayIndex;
}

- (uint64_t)hk_earliestPossibleDayIndex
{
  v2 = +[HKCalendarCache earliestTimeZoneCalendar];
  v3 = [self hk_dayIndexWithCalendar:v2];

  return v3;
}

- (uint64_t)hk_latestPossibleDayIndex
{
  v2 = +[HKCalendarCache latestTimeZoneCalendar];
  v3 = [self hk_dayIndexWithCalendar:v2];

  return v3;
}

- (void)hk_dayIndexWithCalendar:()HKDayIndex .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDate+HKDayIndex.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[[calendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
}

@end