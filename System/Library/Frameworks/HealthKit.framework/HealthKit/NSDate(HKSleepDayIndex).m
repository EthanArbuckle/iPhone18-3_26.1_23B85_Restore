@interface NSDate(HKSleepDayIndex)
+ (id)hk_sleepMonthStartForMorningIndex:()HKSleepDayIndex calendar:;
+ (id)hk_sleepWeekStartForMorningIndex:()HKSleepDayIndex calendar:;
- (id)hk_sleepDayMidnightWithCalendar:()HKSleepDayIndex;
- (id)hk_sleepDayStartWithCalendar:()HKSleepDayIndex;
- (uint64_t)hk_morningIndexWithCalendar:()HKSleepDayIndex;
@end

@implementation NSDate(HKSleepDayIndex)

- (uint64_t)hk_morningIndexWithCalendar:()HKSleepDayIndex
{
  v5 = a3;
  v6 = [v5 calendarIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695D850]];

  if ((v7 & 1) == 0)
  {
    [(NSDate(HKSleepDayIndex) *)a2 hk_morningIndexWithCalendar:a1];
  }

  v8 = [v5 components:60 fromDate:a1];
  v9 = [v8 hour];
  v10 = [v8 hk_dayIndex];
  if (v9 < 18)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  return v11;
}

- (id)hk_sleepDayStartWithCalendar:()HKSleepDayIndex
{
  v5 = a3;
  v6 = [v5 calendarIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695D850]];

  if ((v7 & 1) == 0)
  {
    [(NSDate(HKSleepDayIndex) *)a2 hk_sleepDayStartWithCalendar:a1];
  }

  v8 = [a1 hk_morningIndexWithCalendar:v5];
  v9 = [MEMORY[0x1E695DF00] hk_sleepDayStartForMorningIndex:v8 calendar:v5];

  return v9;
}

+ (id)hk_sleepWeekStartForMorningIndex:()HKSleepDayIndex calendar:
{
  v6 = a4;
  v7 = [a1 hk_noonWithDayIndex:a3 calendar:v6];
  v8 = [v6 hk_startOfWeekWithFirstWeekday:objc_msgSend(v6 beforeDate:"firstWeekday") addingWeeks:{v7, 0}];
  v9 = [v8 hk_sleepDayStartWithCalendar:v6];

  return v9;
}

+ (id)hk_sleepMonthStartForMorningIndex:()HKSleepDayIndex calendar:
{
  v6 = a4;
  v7 = [a1 hk_noonWithDayIndex:a3 calendar:v6];
  v8 = [v6 hk_startOfMonthForDate:v7];
  v9 = [v8 hk_sleepDayStartWithCalendar:v6];

  return v9;
}

- (id)hk_sleepDayMidnightWithCalendar:()HKSleepDayIndex
{
  v4 = a3;
  v5 = [a1 hk_morningIndexWithCalendar:v4];
  v6 = [MEMORY[0x1E696AB80] hk_sleepDayIntervalForMorningIndex:v5 calendar:v4];
  v7 = [v6 endDate];

  v8 = [v4 startOfDayForDate:v7];

  return v8;
}

- (void)hk_morningIndexWithCalendar:()HKSleepDayIndex .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDate+HKDayIndex.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
}

- (void)hk_sleepDayStartWithCalendar:()HKSleepDayIndex .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDate+HKDayIndex.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
}

@end