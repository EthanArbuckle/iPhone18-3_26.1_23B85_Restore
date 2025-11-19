@interface NSDateComponents(HealthKit)
+ (id)hk_componentsWithDays:()HealthKit;
+ (id)hk_dateComponentsForCalendarUnit:()HealthKit;
+ (id)hk_oneWeek;
- (HKDateInterval)hk_dateIntervalForDate:()HealthKit anchorDate:outIndex:;
- (double)hk_approximateDuration;
- (id)_hk_dateByAddingFilteredInterval:()HealthKit toDate:;
- (id)_hk_dateComponentsMultipliedByCount:()HealthKit;
- (id)hk_populatedCalendarGregorianCalendarDefault;
- (id)hk_translateDateComponentsToCalendar:()HealthKit calendarUnits:;
- (uint64_t)hk_ageWithCurrentDate:()HealthKit;
- (uint64_t)hk_indexForDate:()HealthKit anchorDate:;
- (uint64_t)hk_maxComponentValue;
- (void)hk_dateByAddingInterval:()HealthKit toDate:;
@end

@implementation NSDateComponents(HealthKit)

- (id)hk_populatedCalendarGregorianCalendarDefault
{
  v1 = [a1 calendar];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  }

  v4 = v3;

  return v4;
}

+ (id)hk_oneWeek
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v0 setWeekOfYear:1];

  return v0;
}

+ (id)hk_componentsWithDays:()HealthKit
{
  v4 = objc_alloc_init(a1);
  [v4 setDay:a3];

  return v4;
}

+ (id)hk_dateComponentsForCalendarUnit:()HealthKit
{
  v4 = objc_alloc_init(a1);
  [v4 setValue:1 forComponent:a3];

  return v4;
}

- (double)hk_approximateDuration
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v3 = [a1 hk_dateByAddingInterval:1 toDate:v2];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  return v5;
}

- (void)hk_dateByAddingInterval:()HealthKit toDate:
{
  v7 = a4;
  v8 = [a1 hk_maxComponentValue];
  if (v8 < 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = NSStringFromSelector(a2);
    [v9 raise:v10 format:{@"Date components with negative attributes are incompatible with %@", v11}];

    if (!a3)
    {
LABEL_17:
      v15 = v7;
      goto LABEL_18;
    }
  }

  else if (!a3)
  {
    goto LABEL_17;
  }

  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_17;
  }

  v12 = 0x7FFFFFFF / v8;
  do
  {
    if (a3 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = -a3;
    }

    if (v13 >= v12)
    {
      v13 = v12;
    }

    if (a3 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    v15 = [a1 _hk_dateByAddingFilteredInterval:v14 toDate:v7];

    v7 = v15;
    a3 -= v14;
  }

  while (a3);
LABEL_18:
  v16 = v15;

  return v15;
}

- (id)_hk_dateByAddingFilteredInterval:()HealthKit toDate:
{
  v6 = a4;
  v7 = [a1 _hk_dateComponentsMultipliedByCount:a3];
  v8 = [a1 calendar];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v11 = v10;

  v12 = [v11 dateByAddingComponents:v7 toDate:v6 options:0];

  return v12;
}

- (id)_hk_dateComponentsMultipliedByCount:()HealthKit
{
  if (a3 == 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    if ([a1 year] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setYear:{objc_msgSend(a1, "year") * a3}];
    }

    if ([a1 month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setMonth:{objc_msgSend(a1, "month") * a3}];
    }

    if ([a1 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setWeekOfYear:{objc_msgSend(a1, "weekOfYear") * a3}];
    }

    if ([a1 weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setWeekOfMonth:{objc_msgSend(a1, "weekOfMonth") * a3}];
    }

    if ([a1 day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setDay:{objc_msgSend(a1, "day") * a3}];
    }

    if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setHour:{objc_msgSend(a1, "hour") * a3}];
    }

    if ([a1 minute] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setMinute:{objc_msgSend(a1, "minute") * a3}];
    }

    if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setSecond:{objc_msgSend(a1, "second") * a3}];
    }

    if ([a1 nanosecond] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setNanosecond:{objc_msgSend(a1, "nanosecond") * a3}];
    }
  }

  return v4;
}

- (uint64_t)hk_maxComponentValue
{
  v2 = 0x8000000000000000;
  if ([a1 year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "year") != 0x8000000000000000)
  {
    v2 = [a1 year];
  }

  if ([a1 month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "month") > v2)
  {
    v2 = [a1 month];
  }

  if ([a1 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "weekOfYear") > v2)
  {
    v2 = [a1 weekOfYear];
  }

  if ([a1 weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "weekOfMonth") > v2)
  {
    v2 = [a1 weekOfMonth];
  }

  if ([a1 day] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "day") > v2)
  {
    v2 = [a1 day];
  }

  if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "hour") > v2)
  {
    v2 = [a1 hour];
  }

  if ([a1 minute] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "minute") > v2)
  {
    v2 = [a1 minute];
  }

  if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "second") > v2)
  {
    v2 = [a1 second];
  }

  if ([a1 nanosecond] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a1, "nanosecond") <= v2)
  {
    return v2;
  }

  return [a1 nanosecond];
}

- (id)hk_translateDateComponentsToCalendar:()HealthKit calendarUnits:
{
  v6 = MEMORY[0x1E695DFE8];
  v7 = a3;
  v8 = [v6 systemTimeZone];
  v9 = [a1 hk_populatedCalendarGregorianCalendarDefault];
  v10 = [v9 copy];

  [v10 setTimeZone:v8];
  v11 = [v7 copy];
  [v11 setTimeZone:v8];
  v12 = [v10 dateFromComponents:a1];
  v13 = [v11 components:a4 fromDate:v12];
  [v13 setCalendar:v7];

  return v13;
}

- (uint64_t)hk_ageWithCurrentDate:()HealthKit
{
  v4 = a3;
  v5 = [a1 hk_populatedCalendarGregorianCalendarDefault];
  v6 = [v5 hk_dateOfBirthDateComponentsWithDate:v4];

  v7 = [v5 components:4 fromDateComponents:a1 toDateComponents:v6 options:0];
  v8 = [v7 year];

  return v8;
}

- (HKDateInterval)hk_dateIntervalForDate:()HealthKit anchorDate:outIndex:
{
  v8 = a3;
  v9 = a4;
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;
  [a1 hk_approximateDuration];
  v13 = vcvtmd_s64_f64(v11 / v12);
  v14 = [HKDateInterval alloc];
  v15 = [a1 hk_dateByAddingInterval:v13 toDate:v9];
  v16 = [a1 hk_dateByAddingInterval:v13 + 1 toDate:v9];
  v17 = [(HKDateInterval *)v14 initWithStartDate:v15 endDate:v16];

  v18 = [(HKDateInterval *)v17 startDate];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;
  [v8 timeIntervalSinceReferenceDate];
  v22 = v21;

  if (v20 <= v22)
  {
    v26 = v17;
  }

  else
  {
    do
    {
      --v13;
      v23 = [(HKDateInterval *)v17 startDate];
      v24 = [HKDateInterval alloc];
      v25 = [a1 hk_dateByAddingInterval:-1 toDate:v23];
      v26 = [(HKDateInterval *)v24 initWithStartDate:v25 endDate:v23];

      v27 = [(HKDateInterval *)v26 startDate];
      [v27 timeIntervalSinceReferenceDate];
      v29 = v28;
      [v8 timeIntervalSinceReferenceDate];
      v31 = v30;

      v17 = v26;
    }

    while (v29 > v31);
  }

  v32 = [(HKDateInterval *)v26 endDate];
  [v32 timeIntervalSinceReferenceDate];
  v34 = v33;
  [v8 timeIntervalSinceReferenceDate];
  v36 = v35;

  if (v34 <= v36)
  {
    do
    {
      ++v13;
      v38 = [(HKDateInterval *)v26 endDate];
      v39 = [HKDateInterval alloc];
      v40 = [a1 hk_dateByAddingInterval:1 toDate:v38];
      v37 = [(HKDateInterval *)v39 initWithStartDate:v38 endDate:v40];

      v41 = [(HKDateInterval *)v37 endDate];
      [v41 timeIntervalSinceReferenceDate];
      v43 = v42;
      [v8 timeIntervalSinceReferenceDate];
      v45 = v44;

      v26 = v37;
    }

    while (v43 <= v45);
  }

  else
  {
    v37 = v26;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return v37;
}

- (uint64_t)hk_indexForDate:()HealthKit anchorDate:
{
  v6 = 0;
  v4 = [a1 hk_dateIntervalForDate:a3 anchorDate:a4 outIndex:&v6];
  return v6;
}

@end