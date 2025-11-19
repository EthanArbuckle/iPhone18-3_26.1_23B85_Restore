@interface NSDateComponents(EventKit)
- (id)dateComponents:()EventKit byAddingComponents:calendar:;
- (id)dateComponents:()EventKit byAddingDays:calendar:;
- (id)dateComponentsForDateOnly;
- (id)dateComponentsForEndOfDay;
- (uint64_t)clearTimeComponents;
- (unint64_t)gregorianDate;
@end

@implementation NSDateComponents(EventKit)

- (id)dateComponentsForDateOnly
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setEra:{objc_msgSend(a1, "era")}];
  [v2 setYear:{objc_msgSend(a1, "year")}];
  [v2 setMonth:{objc_msgSend(a1, "month")}];
  [v2 setDay:{objc_msgSend(a1, "day")}];

  return v2;
}

- (id)dateComponents:()EventKit byAddingComponents:calendar:
{
  v8 = a5;
  v9 = a4;
  v10 = [v8 timeZone];
  v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v8 setTimeZone:v11];

  v12 = [v8 dateFromComponents:a1];
  v13 = [v8 dateByAddingComponents:v9 toDate:v12 options:0];

  v14 = [v8 components:a3 fromDate:v13];
  [v8 setTimeZone:v10];

  return v14;
}

- (id)dateComponents:()EventKit byAddingDays:calendar:
{
  v8 = MEMORY[0x1E695DF10];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  [v10 setDay:a4];
  v11 = [a1 dateComponents:a3 byAddingComponents:v10 calendar:v9];

  return v11;
}

- (id)dateComponentsForEndOfDay
{
  v1 = [a1 copy];
  [v1 setHour:23];
  [v1 setMinute:59];
  [v1 setSecond:59];

  return v1;
}

- (unint64_t)gregorianDate
{
  v2 = [a1 year];
  v3 = [a1 month];
  v4 = [a1 day];
  if ([a1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 hour] << 48;
  }

  if ([a1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 minute] << 56;
  }

  if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 second];
  }

  return v2 | (v3 << 32) & 0xFFFF00FFFFFFFFFFLL | (v4 << 40) | v5 | v6;
}

- (uint64_t)clearTimeComponents
{
  [a1 setHour:0x7FFFFFFFFFFFFFFFLL];
  [a1 setMinute:0x7FFFFFFFFFFFFFFFLL];

  return [a1 setSecond:0x7FFFFFFFFFFFFFFFLL];
}

@end