@interface NSDateFormatter
+ (id)_ma_sharedDateFormatter;
+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)a3;
+ (id)_maps_abbreviatedWeekdayForDate:(id)a3;
+ (id)_maps_dateStringWithoutYearForDate:(id)a3;
+ (id)_maps_numericMonthDayString:(id)a3;
+ (id)_maps_timeForDate:(id)a3;
+ (id)_maps_timeForDate:(id)a3 timeZone:(id)a4;
+ (id)_maps_weekdayForDate:(id)a3;
@end

@implementation NSDateFormatter

+ (id)_ma_sharedDateFormatter
{
  if (qword_51350 != -1)
  {
    sub_11C60();
  }

  v2 = qword_51348;
  v3 = +[NSLocale _ma_locale];
  [v2 setLocale:v3];

  v4 = qword_51348;

  return v4;
}

+ (id)_maps_timeForDate:(id)a3
{
  v3 = qword_51390;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11CB0();
  }

  v5 = [qword_51388 stringFromDate:v4];

  return v5;
}

+ (id)_maps_timeForDate:(id)a3 timeZone:(id)a4
{
  v5 = qword_513A0;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    sub_11CC4();
  }

  [qword_51398 setTimeZone:v6];

  v8 = [qword_51398 stringFromDate:v7];

  return v8;
}

+ (id)_maps_abbreviatedWeekdayForDate:(id)a3
{
  v3 = qword_513B0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11CD8();
  }

  [qword_513A8 setLocalizedDateFormatFromTemplate:@"E"];
  v5 = [qword_513A8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_weekdayForDate:(id)a3
{
  v3 = qword_513C0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11CEC();
  }

  [qword_513B8 setLocalizedDateFormatFromTemplate:@"EEEE"];
  v5 = [qword_513B8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_dateStringWithoutYearForDate:(id)a3
{
  v3 = qword_513D0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11D00();
  }

  [qword_513C8 setLocalizedDateFormatFromTemplate:@"MMMMd"];
  v5 = [qword_513C8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)a3
{
  v3 = qword_513E0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11D14();
  }

  [qword_513D8 setLocalizedDateFormatFromTemplate:@"MMMd"];
  v5 = [qword_513D8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_numericMonthDayString:(id)a3
{
  v3 = qword_513F0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11D28();
  }

  [qword_513E8 setLocalizedDateFormatFromTemplate:@"Md"];
  v5 = [qword_513E8 stringFromDate:v4];

  return v5;
}

@end