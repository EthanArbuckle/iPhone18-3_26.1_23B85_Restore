@interface ATXTimeUtil
+ (BOOL)time:(id)time isBetweenStartTime:(id)startTime andEndTime:(id)endTime;
+ (id)getDayFromTime:(id)time timeZone:(id)zone;
+ (id)getTimeFromDate:(id)date;
+ (id)nextStartOfDayAfter:(id)after timeZone:(id)zone;
+ (id)todayWithTimeZone:(id)zone;
+ (id)yesterdayWithTimeZone:(id)zone;
@end

@implementation ATXTimeUtil

+ (id)nextStartOfDayAfter:(id)after timeZone:(id)zone
{
  zoneCopy = zone;
  afterCopy = after;
  v7 = objc_opt_new();
  [v7 setDay:1];
  v8 = calendarWithTimeZone(zoneCopy);

  v9 = [v8 dateByAddingComponents:v7 toDate:afterCopy options:0];

  v10 = [v8 startOfDayForDate:v9];

  return v10;
}

+ (id)todayWithTimeZone:(id)zone
{
  v4 = MEMORY[0x277CBEAA8];
  zoneCopy = zone;
  date = [v4 date];
  v7 = [self getDayFromTime:date timeZone:zoneCopy];

  return v7;
}

+ (id)yesterdayWithTimeZone:(id)zone
{
  v3 = calendarWithTimeZone(zone);
  v4 = objc_opt_new();
  [v4 setDay:-1];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 dateByAddingComponents:v4 toDate:date options:0];

  v7 = [v3 startOfDayForDate:v6];

  return v7;
}

+ (id)getDayFromTime:(id)time timeZone:(id)zone
{
  v5 = MEMORY[0x277CBEA80];
  zoneCopy = zone;
  timeCopy = time;
  currentCalendar = [v5 currentCalendar];
  [currentCalendar setTimeZone:zoneCopy];

  v9 = [currentCalendar startOfDayForDate:timeCopy];

  return v9;
}

+ (id)getTimeFromDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:-1 fromDate:dateCopy];

  v7 = objc_opt_new();
  [v7 setHour:{objc_msgSend(v6, "hour")}];
  [v7 setMinute:{objc_msgSend(v6, "minute")}];
  [v7 setSecond:{objc_msgSend(v6, "second")}];
  [v7 setNanosecond:{objc_msgSend(v6, "nanosecond")}];
  [v7 setCalendar:currentCalendar];

  return v7;
}

+ (BOOL)time:(id)time isBetweenStartTime:(id)startTime andEndTime:(id)endTime
{
  endTimeCopy = endTime;
  startTimeCopy = startTime;
  v10 = [self getTimeFromDate:time];
  v11 = [self getTimeFromDate:startTimeCopy];

  v12 = [self getTimeFromDate:endTimeCopy];

  date = [v10 date];
  date2 = [v11 date];
  v15 = [date compare:date2];

  if (v15 == -1)
  {
    v18 = 0;
  }

  else
  {
    date3 = [v10 date];
    date4 = [v12 date];
    v18 = [date3 compare:date4] != 1;
  }

  return v18;
}

@end