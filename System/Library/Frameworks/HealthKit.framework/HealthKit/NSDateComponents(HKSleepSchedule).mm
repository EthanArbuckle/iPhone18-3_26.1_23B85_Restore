@interface NSDateComponents(HKSleepSchedule)
+ (id)hk_componentsWithHour:()HKSleepSchedule minute:;
- (id)hk_dateOptionalDescription;
- (id)hk_hourNumber;
- (id)hk_minuteNumber;
@end

@implementation NSDateComponents(HKSleepSchedule)

+ (id)hk_componentsWithHour:()HKSleepSchedule minute:
{
  v6 = objc_alloc_init(a1);
  [v6 setHour:a3];
  [v6 setMinute:a4];

  return v6;
}

- (id)hk_hourNumber
{
  if ([a1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "hour")}];
  }

  return v2;
}

- (id)hk_minuteNumber
{
  if ([a1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "minute")}];
  }

  return v2;
}

- (id)hk_dateOptionalDescription
{
  if ([a1 day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02lu:%02lu", objc_msgSend(a1, "hour"), objc_msgSend(a1, "minute"), v4, v5, v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu-%lu %02lu:%02lu", objc_msgSend(a1, "month"), objc_msgSend(a1, "day"), objc_msgSend(a1, "year"), objc_msgSend(a1, "hour"), objc_msgSend(a1, "minute")];
  }
  v2 = ;

  return v2;
}

@end