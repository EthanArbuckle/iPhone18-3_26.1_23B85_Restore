@interface NSDateComponents(HKDayIndex)
+ (id)hk_componentsWithDayIndex:()HKDayIndex calendar:;
- (id)hk_dayIndexByAddingYears:()HKDayIndex gregorianCalendar:;
- (id)hk_dayIndexDateDescription;
- (uint64_t)hk_dayIndex;
@end

@implementation NSDateComponents(HKDayIndex)

+ (id)hk_componentsWithDayIndex:()HKDayIndex calendar:
{
  v7 = a4;
  calendarIdentifier = [v7 calendarIdentifier];
  v9 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

  if ((v9 & 1) == 0)
  {
    [NSDateComponents(HKDayIndex) hk_componentsWithDayIndex:a2 calendar:self];
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  HKCalendarComponentsFromDayIndex(a3, &v12);
  v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v10 setCalendar:v7];

  [v10 setDay:v14];
  [v10 setMonth:v13];
  [v10 setYear:v12];

  return v10;
}

- (uint64_t)hk_dayIndex
{
  year = [self year];
  month = [self month];
  v4 = [self day];
  v5 = (month - 14) / 12;
  v6 = v5 + year;
  v7 = 1461 * (v5 + year);
  v8 = v7 + 7012800;
  v9 = v7 + 7012803;
  if (v8 >= 0)
  {
    v9 = v8;
  }

  v10 = ((367 * (month - 12 * v5) - 734) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  return v4 + (v9 >> 2) + (v10 >> 1) + (v10 >> 63) - 3 * ((v6 + 4900) / 100) / 4 - 2432076;
}

- (id)hk_dayIndexByAddingYears:()HKDayIndex gregorianCalendar:
{
  v6 = a4;
  if ([self _hk_hasValidDayIndexComponents])
  {
    calendar = [self calendar];
    v8 = calendar;
    if (!calendar)
    {
      calendar = v6;
    }

    v9 = [calendar dateFromComponents:self];

    if (v9)
    {
      v10 = [v6 dateByAddingUnit:4 value:a3 toDate:v9 options:4096];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "hk_dayIndexWithCalendar:", v6)}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)hk_dayIndexDateDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "month")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "day")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "year")}];
  v6 = [v2 stringWithFormat:@"%@-%@-%@", v3, v4, v5];

  return v6;
}

+ (void)hk_componentsWithDayIndex:()HKDayIndex calendar:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDateComponents+HKDayIndex.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"[[calendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
}

@end