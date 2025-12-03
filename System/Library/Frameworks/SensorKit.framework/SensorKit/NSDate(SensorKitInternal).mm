@interface NSDate(SensorKitInternal)
- (uint64_t)sr_localMidnightFollowingDate;
- (uint64_t)sr_localMidnightPriorToDate;
@end

@implementation NSDate(SensorKitInternal)

- (uint64_t)sr_localMidnightPriorToDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar componentsInTimeZone:objc_msgSend(MEMORY[0x1E695DFE8] fromDate:{"localTimeZone"), self}];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  [v3 setNanosecond:0];

  return [v3 date];
}

- (uint64_t)sr_localMidnightFollowingDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar componentsInTimeZone:objc_msgSend(MEMORY[0x1E695DFE8] fromDate:{"localTimeZone"), self}];
  [v3 setDay:{objc_msgSend(v3, "day") + 1}];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  [v3 setNanosecond:0];

  return [v3 date];
}

@end