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
  calendar = [self calendar];
  v2 = calendar;
  if (calendar)
  {
    v3 = calendar;
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
  v4 = objc_alloc_init(self);
  [v4 setDay:a3];

  return v4;
}

+ (id)hk_dateComponentsForCalendarUnit:()HealthKit
{
  v4 = objc_alloc_init(self);
  [v4 setValue:1 forComponent:a3];

  return v4;
}

- (double)hk_approximateDuration
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v3 = [self hk_dateByAddingInterval:1 toDate:v2];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  return v5;
}

- (void)hk_dateByAddingInterval:()HealthKit toDate:
{
  v7 = a4;
  hk_maxComponentValue = [self hk_maxComponentValue];
  if (hk_maxComponentValue < 0)
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

  if ((hk_maxComponentValue & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_17;
  }

  v12 = 0x7FFFFFFF / hk_maxComponentValue;
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

    v15 = [self _hk_dateByAddingFilteredInterval:v14 toDate:v7];

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
  v7 = [self _hk_dateComponentsMultipliedByCount:a3];
  calendar = [self calendar];
  v9 = calendar;
  if (calendar)
  {
    currentCalendar = calendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v11 = currentCalendar;

  v12 = [v11 dateByAddingComponents:v7 toDate:v6 options:0];

  return v12;
}

- (id)_hk_dateComponentsMultipliedByCount:()HealthKit
{
  if (a3 == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_alloc_init(MEMORY[0x1E695DF10]);
    if ([self year] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setYear:{objc_msgSend(self, "year") * a3}];
    }

    if ([self month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setMonth:{objc_msgSend(self, "month") * a3}];
    }

    if ([self weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setWeekOfYear:{objc_msgSend(self, "weekOfYear") * a3}];
    }

    if ([self weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setWeekOfMonth:{objc_msgSend(self, "weekOfMonth") * a3}];
    }

    if ([self day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setDay:{objc_msgSend(self, "day") * a3}];
    }

    if ([self hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setHour:{objc_msgSend(self, "hour") * a3}];
    }

    if ([self minute] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setMinute:{objc_msgSend(self, "minute") * a3}];
    }

    if ([self second] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setSecond:{objc_msgSend(self, "second") * a3}];
    }

    if ([self nanosecond] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [selfCopy setNanosecond:{objc_msgSend(self, "nanosecond") * a3}];
    }
  }

  return selfCopy;
}

- (uint64_t)hk_maxComponentValue
{
  year = 0x8000000000000000;
  if ([self year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "year") != 0x8000000000000000)
  {
    year = [self year];
  }

  if ([self month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "month") > year)
  {
    year = [self month];
  }

  if ([self weekOfYear] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "weekOfYear") > year)
  {
    year = [self weekOfYear];
  }

  if ([self weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "weekOfMonth") > year)
  {
    year = [self weekOfMonth];
  }

  if ([self day] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "day") > year)
  {
    year = [self day];
  }

  if ([self hour] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "hour") > year)
  {
    year = [self hour];
  }

  if ([self minute] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "minute") > year)
  {
    year = [self minute];
  }

  if ([self second] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "second") > year)
  {
    year = [self second];
  }

  if ([self nanosecond] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(self, "nanosecond") <= year)
  {
    return year;
  }

  return [self nanosecond];
}

- (id)hk_translateDateComponentsToCalendar:()HealthKit calendarUnits:
{
  v6 = MEMORY[0x1E695DFE8];
  v7 = a3;
  systemTimeZone = [v6 systemTimeZone];
  hk_populatedCalendarGregorianCalendarDefault = [self hk_populatedCalendarGregorianCalendarDefault];
  v10 = [hk_populatedCalendarGregorianCalendarDefault copy];

  [v10 setTimeZone:systemTimeZone];
  v11 = [v7 copy];
  [v11 setTimeZone:systemTimeZone];
  v12 = [v10 dateFromComponents:self];
  v13 = [v11 components:a4 fromDate:v12];
  [v13 setCalendar:v7];

  return v13;
}

- (uint64_t)hk_ageWithCurrentDate:()HealthKit
{
  v4 = a3;
  hk_populatedCalendarGregorianCalendarDefault = [self hk_populatedCalendarGregorianCalendarDefault];
  v6 = [hk_populatedCalendarGregorianCalendarDefault hk_dateOfBirthDateComponentsWithDate:v4];

  v7 = [hk_populatedCalendarGregorianCalendarDefault components:4 fromDateComponents:self toDateComponents:v6 options:0];
  year = [v7 year];

  return year;
}

- (HKDateInterval)hk_dateIntervalForDate:()HealthKit anchorDate:outIndex:
{
  v8 = a3;
  v9 = a4;
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;
  [self hk_approximateDuration];
  v13 = vcvtmd_s64_f64(v11 / v12);
  v14 = [HKDateInterval alloc];
  v15 = [self hk_dateByAddingInterval:v13 toDate:v9];
  v16 = [self hk_dateByAddingInterval:v13 + 1 toDate:v9];
  v17 = [(HKDateInterval *)v14 initWithStartDate:v15 endDate:v16];

  startDate = [(HKDateInterval *)v17 startDate];
  [startDate timeIntervalSinceReferenceDate];
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
      startDate2 = [(HKDateInterval *)v17 startDate];
      v24 = [HKDateInterval alloc];
      v25 = [self hk_dateByAddingInterval:-1 toDate:startDate2];
      v26 = [(HKDateInterval *)v24 initWithStartDate:v25 endDate:startDate2];

      startDate3 = [(HKDateInterval *)v26 startDate];
      [startDate3 timeIntervalSinceReferenceDate];
      v29 = v28;
      [v8 timeIntervalSinceReferenceDate];
      v31 = v30;

      v17 = v26;
    }

    while (v29 > v31);
  }

  endDate = [(HKDateInterval *)v26 endDate];
  [endDate timeIntervalSinceReferenceDate];
  v34 = v33;
  [v8 timeIntervalSinceReferenceDate];
  v36 = v35;

  if (v34 <= v36)
  {
    do
    {
      ++v13;
      endDate2 = [(HKDateInterval *)v26 endDate];
      v39 = [HKDateInterval alloc];
      v40 = [self hk_dateByAddingInterval:1 toDate:endDate2];
      v37 = [(HKDateInterval *)v39 initWithStartDate:endDate2 endDate:v40];

      endDate3 = [(HKDateInterval *)v37 endDate];
      [endDate3 timeIntervalSinceReferenceDate];
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
  v4 = [self hk_dateIntervalForDate:a3 anchorDate:a4 outIndex:&v6];
  return v6;
}

@end