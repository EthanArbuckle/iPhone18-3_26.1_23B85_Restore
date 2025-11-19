@interface ATXTimeUtil
+ (BOOL)time:(id)a3 isBetweenStartTime:(id)a4 andEndTime:(id)a5;
+ (id)getDayFromTime:(id)a3 timeZone:(id)a4;
+ (id)getTimeFromDate:(id)a3;
+ (id)nextStartOfDayAfter:(id)a3 timeZone:(id)a4;
+ (id)todayWithTimeZone:(id)a3;
+ (id)yesterdayWithTimeZone:(id)a3;
@end

@implementation ATXTimeUtil

+ (id)nextStartOfDayAfter:(id)a3 timeZone:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setDay:1];
  v8 = calendarWithTimeZone(v5);

  v9 = [v8 dateByAddingComponents:v7 toDate:v6 options:0];

  v10 = [v8 startOfDayForDate:v9];

  return v10;
}

+ (id)todayWithTimeZone:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [a1 getDayFromTime:v6 timeZone:v5];

  return v7;
}

+ (id)yesterdayWithTimeZone:(id)a3
{
  v3 = calendarWithTimeZone(a3);
  v4 = objc_opt_new();
  [v4 setDay:-1];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 dateByAddingComponents:v4 toDate:v5 options:0];

  v7 = [v3 startOfDayForDate:v6];

  return v7;
}

+ (id)getDayFromTime:(id)a3 timeZone:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  [v8 setTimeZone:v6];

  v9 = [v8 startOfDayForDate:v7];

  return v9;
}

+ (id)getTimeFromDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:-1 fromDate:v4];

  v7 = objc_opt_new();
  [v7 setHour:{objc_msgSend(v6, "hour")}];
  [v7 setMinute:{objc_msgSend(v6, "minute")}];
  [v7 setSecond:{objc_msgSend(v6, "second")}];
  [v7 setNanosecond:{objc_msgSend(v6, "nanosecond")}];
  [v7 setCalendar:v5];

  return v7;
}

+ (BOOL)time:(id)a3 isBetweenStartTime:(id)a4 andEndTime:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 getTimeFromDate:a3];
  v11 = [a1 getTimeFromDate:v9];

  v12 = [a1 getTimeFromDate:v8];

  v13 = [v10 date];
  v14 = [v11 date];
  v15 = [v13 compare:v14];

  if (v15 == -1)
  {
    v18 = 0;
  }

  else
  {
    v16 = [v10 date];
    v17 = [v12 date];
    v18 = [v16 compare:v17] != 1;
  }

  return v18;
}

@end