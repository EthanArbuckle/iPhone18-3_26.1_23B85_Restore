@interface NSCalendar(HKCalendar)
+ (id)hk_canonicalDateOfBirthDateComponentsWithDate:()HKCalendar;
+ (id)hk_gregorianCalendarWithCupertinoTimeZone;
+ (id)hk_gregorianCalendarWithFirstWeekdayFromRegion;
+ (id)hk_gregorianCalendarWithLocalTimeZone;
+ (id)hk_gregorianCalendarWithUTCTimeZone;
+ (id)hk_localDateOfBirthDateComponentsWithDate:()HKCalendar;
- (BOOL)hk_isDate:()HKCalendar withinNumberOfCalendarDays:ofDate:;
- (double)_hk_cachedLengthOfUnitForUnitStartDate:()HKCalendar calendarUnit:;
- (double)hk_durationSinceReferenceDateForDate:()HKCalendar calendarUnit:;
- (double)hk_lengthOfDayForDate:()HKCalendar;
- (double)hk_timeIntervalSinceStartOfDayForDate:()HKCalendar;
- (id)_hk_weekendDaysForDate:()HKCalendar;
- (id)hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:()HKCalendar;
- (id)hk_dateByShiftingToGregorianCalendarWithUTCTimeZone:()HKCalendar;
- (id)hk_dateFromComponentsWithYear:()HKCalendar month:day:hour:minute:second:;
- (id)hk_dateOfBirthDateComponentsWithDate:()HKCalendar;
- (id)hk_dateWithDurationSinceReferenceDate:()HKCalendar calendarUnit:;
- (id)hk_firstDateWithHour:()HKCalendar minute:afterDate:;
- (id)hk_nearestNoonBeforeDateOrEqualToDate:()HKCalendar;
- (id)hk_nearestStartOfDayForDate:()HKCalendar;
- (id)hk_nearestStartOfMonthForDate:()HKCalendar;
- (id)hk_nearestStartOfWeekWithFirstWeekDay:()HKCalendar date:;
- (id)hk_sixMonthPeriodContaining:()HKCalendar dateBefore:;
- (id)hk_startOfDateByAddingDays:()HKCalendar toDate:;
- (id)hk_startOfFitnessWeekBeforeDate:()HKCalendar;
- (id)hk_startOfHourForDate:()HKCalendar addingHours:;
- (id)hk_startOfHourForDate:()HKCalendar moduloHours:addingModuloCount:;
- (id)hk_startOfMinuteForDate:()HKCalendar moduloMinutes:addingModuloCount:;
- (id)hk_startOfMonthForDate:()HKCalendar;
- (id)hk_startOfMonthForDate:()HKCalendar addingMonths:;
- (id)hk_startOfUnitForDate:()HKCalendar calendarUnit:;
- (id)hk_startOfWeekWithFirstWeekday:()HKCalendar beforeDate:addingWeeks:;
- (id)hk_startOfYearForDate:()HKCalendar addingYears:;
- (id)hk_timeZoneDependentReferenceDate;
- (id)hk_weekendDays;
- (id)hk_weeksContainingInterval:()HKCalendar firstWeekday:;
- (uint64_t)_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate:()HKCalendar calendarUnit:;
- (void)hk_enumerateDateInterval:()HKCalendar byDateComponents:block:;
@end

@implementation NSCalendar(HKCalendar)

+ (id)hk_gregorianCalendarWithUTCTimeZone
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v0 setTimeZone:v1];

  return v0;
}

+ (id)hk_gregorianCalendarWithLocalTimeZone
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v0 setTimeZone:localTimeZone];

  return v0;
}

+ (id)hk_gregorianCalendarWithCupertinoTimeZone
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/Los_Angeles"];
  [v0 setTimeZone:v1];

  return v0;
}

+ (id)hk_gregorianCalendarWithFirstWeekdayFromRegion
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [currentLocale objectForKey:*MEMORY[0x1E695D958]];
  [v0 setFirstWeekday:{objc_msgSend(v2, "firstWeekday")}];

  return v0;
}

+ (id)hk_localDateOfBirthDateComponentsWithDate:()HKCalendar
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  hk_gregorianCalendarWithLocalTimeZone = [v3 hk_gregorianCalendarWithLocalTimeZone];
  v6 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:v4];

  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [v6 setCalendar:hk_gregorianCalendar];

  return v6;
}

+ (id)hk_canonicalDateOfBirthDateComponentsWithDate:()HKCalendar
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  hk_gregorianCalendarWithUTCTimeZone = [v3 hk_gregorianCalendarWithUTCTimeZone];
  v6 = [hk_gregorianCalendarWithUTCTimeZone hk_dateOfBirthDateComponentsWithDate:v4];

  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [v6 setCalendar:hk_gregorianCalendar];

  return v6;
}

- (id)hk_dateOfBirthDateComponentsWithDate:()HKCalendar
{
  v4 = [self components:30 fromDate:a3];
  [v4 setCalendar:self];

  return v4;
}

- (id)hk_startOfDateByAddingDays:()HKCalendar toDate:
{
  v5 = [self dateByAddingUnit:16 value:a3 toDate:a4 options:0];
  v6 = [self startOfDayForDate:v5];

  return v6;
}

- (id)hk_startOfFitnessWeekBeforeDate:()HKCalendar
{
  v4 = a3;
  v5 = [self hk_startOfWeekWithFirstWeekday:HKFirstDayOfWeekForWeeklyGoalCalculations() beforeDate:v4 addingWeeks:0];

  return v5;
}

- (id)hk_startOfWeekWithFirstWeekday:()HKCalendar beforeDate:addingWeeks:
{
  v8 = a4;
  v9 = [self component:512 fromDate:v8];
  v10 = [self dateByAddingUnit:16 value:7 * ((v9 - a3 + 7) / 7) - (v9 - a3 + 7) toDate:v8 options:0];

  v11 = [self startOfDayForDate:v10];

  if (a5)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v12 setCalendar:self];
    [v12 setWeekOfYear:1];
    v13 = [v12 hk_dateByAddingInterval:a5 toDate:v11];

    v11 = v13;
  }

  return v11;
}

- (id)hk_weeksContainingInterval:()HKCalendar firstWeekday:
{
  v6 = a3;
  startDate = [v6 startDate];
  v8 = [self hk_startOfWeekWithFirstWeekday:a4 beforeDate:startDate addingWeeks:0];

  endDate = [v6 endDate];
  v10 = [self hk_startOfWeekWithFirstWeekday:a4 beforeDate:endDate addingWeeks:0];

  endDate2 = [v6 endDate];
  v12 = [v10 hk_isBeforeDate:endDate2];

  if (v12)
  {
    endDate3 = [v6 endDate];
    v14 = [self hk_startOfWeekWithFirstWeekday:a4 beforeDate:endDate3 addingWeeks:1];

    v10 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v10];

  return v15;
}

- (id)hk_startOfMinuteForDate:()HKCalendar moduloMinutes:addingModuloCount:
{
  v8 = [self components:126 fromDate:a3];
  v9 = v8;
  if (a4 < 1)
  {
    a4 = 1;
  }

  else if (0x3CuLL % a4)
  {
    a4 = 1;
  }

  [v8 setMinute:{objc_msgSend(v8, "minute") / a4 * a4}];
  v10 = [self dateFromComponents:v9];
  if (a5)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v11 setCalendar:self];
    [v11 setMinute:a4];
    v12 = [v11 hk_dateByAddingInterval:a5 toDate:v10];

    v10 = v12;
  }

  return v10;
}

- (id)hk_startOfHourForDate:()HKCalendar addingHours:
{
  v6 = [self components:62 fromDate:a3];
  v7 = [self dateFromComponents:v6];
  if (a4)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v8 setCalendar:self];
    [v8 setHour:1];
    v9 = [v8 hk_dateByAddingInterval:a4 toDate:v7];

    v7 = v9;
  }

  return v7;
}

- (id)hk_startOfHourForDate:()HKCalendar moduloHours:addingModuloCount:
{
  v8 = [self components:62 fromDate:a3];
  v9 = v8;
  if (a4 < 1)
  {
    a4 = 1;
  }

  else if (0x18uLL % a4)
  {
    a4 = 1;
  }

  [v8 setHour:{objc_msgSend(v8, "hour") / a4 * a4}];
  v10 = [self dateFromComponents:v9];
  if (a5)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v11 setCalendar:self];
    [v11 setHour:a4];
    v12 = [v11 hk_dateByAddingInterval:a5 toDate:v10];

    v10 = v12;
  }

  return v10;
}

- (id)hk_startOfMonthForDate:()HKCalendar
{
  v4 = [self components:14 fromDate:a3];
  v5 = [self dateFromComponents:v4];

  return v5;
}

- (id)hk_startOfMonthForDate:()HKCalendar addingMonths:
{
  v6 = [self hk_startOfMonthForDate:?];
  if (a4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setCalendar:self];
    [v7 setMonth:1];
    v8 = [v7 hk_dateByAddingInterval:a4 toDate:v6];

    v6 = v8;
  }

  return v6;
}

- (id)hk_startOfYearForDate:()HKCalendar addingYears:
{
  v6 = [self components:6 fromDate:a3];
  v7 = [self dateFromComponents:v6];
  if (a4)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v8 setCalendar:self];
    [v8 setYear:1];
    v9 = [v8 hk_dateByAddingInterval:a4 toDate:v7];

    v7 = v9;
  }

  return v7;
}

- (id)hk_nearestStartOfDayForDate:()HKCalendar
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self startOfDayForDate:v4];
  v11[0] = v5;
  v6 = [self hk_startOfDateByAddingDays:1 toDate:v4];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v4 hk_nearestDate:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)hk_nearestStartOfWeekWithFirstWeekDay:()HKCalendar date:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self hk_startOfWeekWithFirstWeekday:a3 beforeDate:v6 addingWeeks:0];
  v8 = [self hk_startOfDateByAddingDays:7 toDate:v7];
  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v6 hk_nearestDate:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)hk_nearestStartOfMonthForDate:()HKCalendar
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self hk_startOfMonthForDate:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setCalendar:self];
  [v6 setMonth:1];
  v7 = [self dateByAddingComponents:v6 toDate:v5 options:0];
  v12[0] = v5;
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v4 hk_nearestDate:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)hk_sixMonthPeriodContaining:()HKCalendar dateBefore:
{
  v6 = [self components:24578 fromDate:a3];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setEra:{objc_msgSend(v6, "era")}];
  [v7 setYearForWeekOfYear:{objc_msgSend(v6, "yearForWeekOfYear")}];
  weekOfYear = [v6 weekOfYear];
  if (a4)
  {
    if (weekOfYear <= 26)
    {
      v9 = 1;
    }

    else
    {
      v9 = 27;
    }
  }

  else if (weekOfYear < 27)
  {
    v9 = 27;
  }

  else
  {
    [v7 setYearForWeekOfYear:{objc_msgSend(v7, "yearForWeekOfYear") + 1}];
    v9 = 1;
  }

  [v7 setWeekOfYear:v9];
  v10 = [self dateFromComponents:v7];

  return v10;
}

- (id)hk_firstDateWithHour:()HKCalendar minute:afterDate:
{
  v8 = a5;
  v9 = [self dateBySettingHour:a3 minute:a4 second:0 ofDate:v8 options:0];
  if ([v9 hk_isBeforeDate:v8])
  {
    v10 = [self dateByAddingUnit:16 value:1 toDate:v8 options:0];
    v11 = [self dateBySettingHour:a3 minute:a4 second:0 ofDate:v10 options:0];

    v9 = v11;
  }

  return v9;
}

- (id)hk_weekendDays
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self _hk_weekendDaysForDate:date];

  return v3;
}

- (id)_hk_weekendDaysForDate:()HKCalendar
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = 7;
  do
  {
    if ([self isDateInWeekend:v4])
    {
      v7 = [self components:512 fromDate:v4];
      weekday = [v7 weekday];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:weekday];
      [v5 addObject:v9];
    }

    v10 = [self hk_dateByAddingDays:1 toDate:v4];

    v4 = v10;
    --v6;
  }

  while (v6);

  return v5;
}

- (id)hk_nearestNoonBeforeDateOrEqualToDate:()HKCalendar
{
  v4 = a3;
  v5 = [self startOfDayForDate:v4];
  v6 = [self dateBySettingHour:12 minute:0 second:0 ofDate:v5 options:0];
  v7 = [v4 hk_isBeforeDate:v6];

  if (v7)
  {
    v8 = [self dateByAddingUnit:16 value:-1 toDate:v6 options:0];

    v6 = v8;
  }

  return v6;
}

- (double)hk_timeIntervalSinceStartOfDayForDate:()HKCalendar
{
  v4 = a3;
  v5 = [self startOfDayForDate:v4];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7;
}

- (id)hk_dateByShiftingToGregorianCalendarWithUTCTimeZone:()HKCalendar
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  hk_gregorianCalendarWithUTCTimeZone = [v4 hk_gregorianCalendarWithUTCTimeZone];
  v7 = [self components:254 fromDate:v5];

  v8 = [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:v7];

  return v8;
}

- (id)hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:()HKCalendar
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  hk_gregorianCalendarWithUTCTimeZone = [v4 hk_gregorianCalendarWithUTCTimeZone];
  v7 = [hk_gregorianCalendarWithUTCTimeZone components:254 fromDate:v5];

  v8 = [self dateFromComponents:v7];

  return v8;
}

- (id)hk_dateFromComponentsWithYear:()HKCalendar month:day:hour:minute:second:
{
  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setYear:a3];
  [v15 setMonth:a4];
  [v15 setDay:a5];
  [v15 setHour:a6];
  [v15 setMinute:a7];
  [v15 setSecond:a8];
  v16 = [self dateFromComponents:v15];

  return v16;
}

- (void)hk_enumerateDateInterval:()HKCalendar byDateComponents:block:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  startDate = [v8 startDate];
  v21 = 0;
  endDate = [v8 endDate];
  v13 = [startDate hk_isBeforeDate:endDate];

  if (v13)
  {
    while (1)
    {
      v14 = [self dateByAddingComponents:v9 toDate:startDate options:0];
      v15 = objc_alloc(MEMORY[0x1E696AB80]);
      endDate2 = [v8 endDate];
      v17 = HKDateMin(v14, endDate2);
      v18 = [v15 initWithStartDate:startDate endDate:v17];
      v10[2](v10, v18, &v21);

      if (v21 == 1)
      {
        break;
      }

      endDate3 = [v8 endDate];
      v20 = [v14 hk_isBeforeDate:endDate3];

      startDate = v14;
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = startDate;
LABEL_7:
}

- (double)hk_lengthOfDayForDate:()HKCalendar
{
  v2 = [self startOfDayForDate:?];
  hk_oneDay = [MEMORY[0x1E695DF10] hk_oneDay];
  v4 = [self dateByAddingComponents:hk_oneDay toDate:v2 options:0];

  [v4 timeIntervalSinceDate:v2];
  v6 = v5;

  return v6;
}

- (id)hk_timeZoneDependentReferenceDate
{
  os_unfair_lock_lock(&hk_timeZoneDependentReferenceDate___referenceDateCacheLock);
  v2 = hk_timeZoneDependentReferenceDate___referenceDateCache;
  if (!hk_timeZoneDependentReferenceDate___referenceDateCache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v4 = hk_timeZoneDependentReferenceDate___referenceDateCache;
    hk_timeZoneDependentReferenceDate___referenceDateCache = v3;

    v2 = hk_timeZoneDependentReferenceDate___referenceDateCache;
  }

  timeZone = [self timeZone];
  v6 = [v2 objectForKey:timeZone];

  if (!v6)
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    timeZone2 = [self timeZone];
    [hk_gregorianCalendar setTimeZone:timeZone2];

    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v9 setYear:2001];
    [v9 setMonth:1];
    [v9 setDay:1];
    v6 = [hk_gregorianCalendar dateFromComponents:v9];
    v10 = hk_timeZoneDependentReferenceDate___referenceDateCache;
    timeZone3 = [self timeZone];
    [v10 setObject:v6 forKey:timeZone3];
  }

  os_unfair_lock_unlock(&hk_timeZoneDependentReferenceDate___referenceDateCacheLock);

  return v6;
}

- (uint64_t)_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate:()HKCalendar calendarUnit:
{
  v6 = a3;
  os_unfair_lock_lock(&_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateLock);
  if (!_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateCache)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = _hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateCache;
    _hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateCache = v7;
  }

  v9 = [[_HKDateCalendarUnitKey alloc] initWithDate:v6 calendar:self unit:a4];
  v10 = [_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateCache objectForKey:v9];
  if (!v10)
  {
    hk_timeZoneDependentReferenceDate = [self hk_timeZoneDependentReferenceDate];
    v12 = [self components:a4 fromDate:hk_timeZoneDependentReferenceDate toDate:v6 options:0];

    v13 = [v12 valueForComponent:a4];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    [_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateCache setObject:v10 forKey:v9];
  }

  os_unfair_lock_unlock(&_hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate_calendarUnit____valueSinceReferenceDateLock);
  integerValue = [v10 integerValue];

  return integerValue;
}

- (double)_hk_cachedLengthOfUnitForUnitStartDate:()HKCalendar calendarUnit:
{
  v7 = a3;
  os_unfair_lock_lock(&_hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitLock);
  if (!_hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitCache)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = _hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitCache;
    _hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitCache = v8;
  }

  v10 = [[_HKDateCalendarUnitKey alloc] initWithDate:v7 calendar:self unit:a4];
  v11 = [_hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitCache objectForKey:v10];
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF10] hk_dateComponentsForCalendarUnit:a4];
    v13 = [self dateByAddingComponents:v12 toDate:v7 options:0];

    [v13 timeIntervalSinceDate:v7];
    v15 = v14;
    if (v14 <= 2.22044605e-16)
    {
      [(NSCalendar(HKCalendar) *)a2 _hk_cachedLengthOfUnitForUnitStartDate:self calendarUnit:a4, v7];
    }

    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    [_hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitCache setObject:v11 forKey:v10];
  }

  os_unfair_lock_unlock(&_hk_cachedLengthOfUnitForUnitStartDate_calendarUnit____lengthOfUnitLock);
  [v11 doubleValue];
  v17 = v16;

  return v17;
}

- (id)hk_startOfUnitForDate:()HKCalendar calendarUnit:
{
  v7 = a3;
  switch(a4)
  {
    case 8:
      v8 = [self hk_startOfMonthForDate:v7];
      goto LABEL_7;
    case 32:
      v8 = [self hk_startOfHourForDate:v7 addingHours:0];
      goto LABEL_7;
    case 16:
      v8 = [self startOfDayForDate:v7];
LABEL_7:
      v9 = v8;
      goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSCalendar+HKCalendar.m" lineNumber:526 description:@"Unsuppored calendar unit."];

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)hk_isDate:()HKCalendar withinNumberOfCalendarDays:ofDate:
{
  v8 = a5;
  v9 = [self hk_startOfUnitForDate:a3 calendarUnit:16];
  v10 = [self _hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate:v9 calendarUnit:16];
  v11 = [self hk_startOfUnitForDate:v8 calendarUnit:16];

  v12 = [self _hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate:v11 calendarUnit:16];
  v13 = v10 - v12;
  if (v10 - v12 < 0)
  {
    v13 = v12 - v10;
  }

  v14 = v13 <= a4;

  return v14;
}

- (double)hk_durationSinceReferenceDateForDate:()HKCalendar calendarUnit:
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSCalendar(HKCalendar) hk_durationSinceReferenceDateForDate:a2 calendarUnit:self];
  }

  v8 = [self hk_startOfUnitForDate:v7 calendarUnit:a4];
  v9 = [self _hk_cachedValueSinceTimeZoneDependentReferenceDateForUnitStartDate:v8 calendarUnit:a4];
  [self _hk_cachedLengthOfUnitForUnitStartDate:v8 calendarUnit:a4];
  v11 = v10;
  [v7 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v8 timeIntervalSinceReferenceDate];
  v15 = (v13 - v14) / v11 + v9;

  return v15;
}

- (id)hk_dateWithDurationSinceReferenceDate:()HKCalendar calendarUnit:
{
  v6 = *a2.i64;
  hk_timeZoneDependentReferenceDate = [self hk_timeZoneDependentReferenceDate];
  v8 = [self dateByAddingUnit:a4 value:v6 toDate:hk_timeZoneDependentReferenceDate options:0];

  [self _hk_cachedLengthOfUnitForUnitStartDate:v8 calendarUnit:a4];
  *v9.i64 = *a2.i64 - trunc(*a2.i64);
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v12 = [v8 dateByAddingTimeInterval:{*vbslq_s8(vnegq_f64(v10), v9, a2).i64 * v11}];

  return v12;
}

- (void)_hk_cachedLengthOfUnitForUnitStartDate:()HKCalendar calendarUnit:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:508 description:{@"Encountered zero length of unit %lu for date %@", a3, a4}];
}

- (void)hk_durationSinceReferenceDateForDate:()HKCalendar calendarUnit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:546 description:@"date must be an NSDate"];
}

@end