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
  [v2 setEra:{objc_msgSend(self, "era")}];
  [v2 setYear:{objc_msgSend(self, "year")}];
  [v2 setMonth:{objc_msgSend(self, "month")}];
  [v2 setDay:{objc_msgSend(self, "day")}];

  return v2;
}

- (id)dateComponents:()EventKit byAddingComponents:calendar:
{
  v8 = a5;
  v9 = a4;
  timeZone = [v8 timeZone];
  v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v8 setTimeZone:v11];

  v12 = [v8 dateFromComponents:self];
  v13 = [v8 dateByAddingComponents:v9 toDate:v12 options:0];

  v14 = [v8 components:a3 fromDate:v13];
  [v8 setTimeZone:timeZone];

  return v14;
}

- (id)dateComponents:()EventKit byAddingDays:calendar:
{
  v8 = MEMORY[0x1E695DF10];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  [v10 setDay:a4];
  v11 = [self dateComponents:a3 byAddingComponents:v10 calendar:v9];

  return v11;
}

- (id)dateComponentsForEndOfDay
{
  v1 = [self copy];
  [v1 setHour:23];
  [v1 setMinute:59];
  [v1 setSecond:59];

  return v1;
}

- (unint64_t)gregorianDate
{
  year = [self year];
  month = [self month];
  v4 = [self day];
  if ([self hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self hour] << 48;
  }

  if ([self minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [self minute] << 56;
  }

  if ([self second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self second];
  }

  return year | (month << 32) & 0xFFFF00FFFFFFFFFFLL | (v4 << 40) | v5 | v6;
}

- (uint64_t)clearTimeComponents
{
  [self setHour:0x7FFFFFFFFFFFFFFFLL];
  [self setMinute:0x7FFFFFFFFFFFFFFFLL];

  return [self setSecond:0x7FFFFFFFFFFFFFFFLL];
}

@end