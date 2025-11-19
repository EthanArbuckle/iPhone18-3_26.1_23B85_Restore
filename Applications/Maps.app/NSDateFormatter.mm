@interface NSDateFormatter
+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)a3;
+ (id)_maps_abbreviatedWeekdayForDate:(id)a3;
+ (id)_maps_dateStringWithoutYearForDate:(id)a3;
+ (id)_maps_numericMonthDayString:(id)a3;
+ (id)_maps_timeForDate:(id)a3;
+ (id)_maps_timeForDate:(id)a3 timeZone:(id)a4;
+ (id)_maps_weekdayForDate:(id)a3;
@end

@implementation NSDateFormatter

+ (id)_maps_numericMonthDayString:(id)a3
{
  v3 = qword_10195DBC0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBC0, &stru_10162D0B0);
  }

  [qword_10195DBB8 setLocalizedDateFormatFromTemplate:@"Md"];
  v5 = [qword_10195DBB8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)a3
{
  v3 = qword_10195DBB0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBB0, &stru_10162D090);
  }

  [qword_10195DBA8 setLocalizedDateFormatFromTemplate:@"MMMd"];
  v5 = [qword_10195DBA8 stringFromDate:v4];

  return v5;
}

+ (id)_maps_dateStringWithoutYearForDate:(id)a3
{
  v3 = qword_10195DBA0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBA0, &stru_10162D070);
  }

  [qword_10195DB98 setLocalizedDateFormatFromTemplate:@"MMMMd"];
  v5 = [qword_10195DB98 stringFromDate:v4];

  return v5;
}

+ (id)_maps_weekdayForDate:(id)a3
{
  v3 = qword_10195DB90;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB90, &stru_10162D050);
  }

  [qword_10195DB88 setLocalizedDateFormatFromTemplate:@"EEEE"];
  v5 = [qword_10195DB88 stringFromDate:v4];

  return v5;
}

+ (id)_maps_abbreviatedWeekdayForDate:(id)a3
{
  v3 = qword_10195DB80;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB80, &stru_10162D030);
  }

  [qword_10195DB78 setLocalizedDateFormatFromTemplate:@"E"];
  v5 = [qword_10195DB78 stringFromDate:v4];

  return v5;
}

+ (id)_maps_timeForDate:(id)a3 timeZone:(id)a4
{
  v5 = qword_10195DB70;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&qword_10195DB70, &stru_10162D010);
  }

  [qword_10195DB68 setTimeZone:v6];

  v8 = [qword_10195DB68 stringFromDate:v7];

  return v8;
}

+ (id)_maps_timeForDate:(id)a3
{
  v3 = qword_10195DB60;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB60, &stru_10162CFF0);
  }

  v5 = [qword_10195DB58 stringFromDate:v4];

  return v5;
}

@end