@interface NSDateComponents(HKSleepSchedule)
+ (id)hk_componentsWithHour:()HKSleepSchedule minute:;
- (id)hk_dateOptionalDescription;
- (id)hk_hourNumber;
- (id)hk_minuteNumber;
@end

@implementation NSDateComponents(HKSleepSchedule)

+ (id)hk_componentsWithHour:()HKSleepSchedule minute:
{
  v6 = objc_alloc_init(self);
  [v6 setHour:a3];
  [v6 setMinute:a4];

  return v6;
}

- (id)hk_hourNumber
{
  if ([self hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "hour")}];
  }

  return v2;
}

- (id)hk_minuteNumber
{
  if ([self minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "minute")}];
  }

  return v2;
}

- (id)hk_dateOptionalDescription
{
  if ([self day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02lu:%02lu", objc_msgSend(self, "hour"), objc_msgSend(self, "minute"), v4, v5, v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu-%lu %02lu:%02lu", objc_msgSend(self, "month"), objc_msgSend(self, "day"), objc_msgSend(self, "year"), objc_msgSend(self, "hour"), objc_msgSend(self, "minute")];
  }
  v2 = ;

  return v2;
}

@end