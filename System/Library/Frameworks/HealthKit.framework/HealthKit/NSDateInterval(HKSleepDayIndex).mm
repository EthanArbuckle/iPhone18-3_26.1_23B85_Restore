@interface NSDateInterval(HKSleepDayIndex)
+ (id)hk_sleepDayIntervalForMorningIndex:()HKSleepDayIndex calendar:;
+ (id)hk_sleepDayIntervalForMorningIndexRange:()HKSleepDayIndex calendar:;
+ (id)hk_sleepWeekIntervalForMorningIndex:()HKSleepDayIndex calendar:;
- (id)_hk_dateForYearMonthDayComponents:()HKSleepDayIndex hourMinuteSecondComponents:calendar:;
- (id)hk_dateIntervalByMappingToSleepDayWithMorningIndex:()HKSleepDayIndex calendar:;
- (uint64_t)hk_dayIndexRangeWithCalendar:()HKSleepDayIndex;
@end

@implementation NSDateInterval(HKSleepDayIndex)

+ (id)hk_sleepDayIntervalForMorningIndex:()HKSleepDayIndex calendar:
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  v7 = [v5 hk_sleepDayStartForMorningIndex:a3 calendar:v6];
  v8 = [MEMORY[0x1E695DF00] hk_sleepDayStartForMorningIndex:a3 + 1 calendar:v6];

  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];

  return v9;
}

+ (id)hk_sleepDayIntervalForMorningIndexRange:()HKSleepDayIndex calendar:
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a5;
  v9 = [v7 hk_sleepDayStartForMorningIndex:a3 calendar:v8];
  if (a4 <= 0)
  {
    v10 = 0x8000000000000000;
  }

  else
  {
    v10 = a3 + a4;
  }

  v11 = [MEMORY[0x1E695DF00] hk_sleepDayStartForMorningIndex:v10 calendar:v8];

  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v11];

  return v12;
}

+ (id)hk_sleepWeekIntervalForMorningIndex:()HKSleepDayIndex calendar:
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  v7 = [v5 hk_sleepWeekStartForMorningIndex:a3 calendar:v6];
  v8 = [v6 hk_dateByAddingDays:7 toDate:v7];

  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];

  return v9;
}

- (id)hk_dateIntervalByMappingToSleepDayWithMorningIndex:()HKSleepDayIndex calendar:
{
  v6 = a4;
  v7 = [objc_opt_class() hk_sleepDayIntervalForMorningIndex:a3 calendar:v6];
  startDate = [self startDate];
  if ([v7 containsDate:startDate])
  {
    endDate = [self endDate];
    v10 = [v7 containsDate:endDate];

    if (v10)
    {
      selfCopy = self;
      goto LABEL_11;
    }
  }

  else
  {
  }

  startDate2 = [v7 startDate];
  v13 = [v6 components:28 fromDate:startDate2];

  endDate2 = [v7 endDate];
  v15 = [v6 components:28 fromDate:endDate2];

  startDate3 = [self startDate];
  v17 = [v6 components:224 fromDate:startDate3];

  if ([v17 hour] >= 18)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  v19 = [self _hk_dateForYearMonthDayComponents:v18 hourMinuteSecondComponents:v17 calendar:v6];
  [self duration];
  v20 = [v19 dateByAddingTimeInterval:?];
  endDate3 = [v7 endDate];
  v22 = [v20 hk_isAfterDate:endDate3];

  if (v22)
  {
    endDate4 = [v7 endDate];

    v20 = endDate4;
  }

  selfCopy = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v19 endDate:v20];

LABEL_11:

  return selfCopy;
}

- (uint64_t)hk_dayIndexRangeWithCalendar:()HKSleepDayIndex
{
  v4 = a3;
  startDate = [self startDate];
  v6 = [startDate hk_morningIndexWithCalendar:v4];

  endDate = [self endDate];
  [endDate hk_morningIndexWithCalendar:v4];

  return v6;
}

- (id)_hk_dateForYearMonthDayComponents:()HKSleepDayIndex hourMinuteSecondComponents:calendar:
{
  v7 = MEMORY[0x1E695DF10];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 setCalendar:v8];

  [v11 setYear:{objc_msgSend(v10, "year")}];
  [v11 setMonth:{objc_msgSend(v10, "month")}];
  v12 = [v10 day];

  [v11 setDay:v12];
  [v11 setHour:{objc_msgSend(v9, "hour")}];
  [v11 setMinute:{objc_msgSend(v9, "minute")}];
  second = [v9 second];

  [v11 setSecond:second];
  date = [v11 date];

  return date;
}

@end