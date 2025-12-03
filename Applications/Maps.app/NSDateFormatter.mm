@interface NSDateFormatter
+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)date;
+ (id)_maps_abbreviatedWeekdayForDate:(id)date;
+ (id)_maps_dateStringWithoutYearForDate:(id)date;
+ (id)_maps_numericMonthDayString:(id)string;
+ (id)_maps_timeForDate:(id)date;
+ (id)_maps_timeForDate:(id)date timeZone:(id)zone;
+ (id)_maps_weekdayForDate:(id)date;
@end

@implementation NSDateFormatter

+ (id)_maps_numericMonthDayString:(id)string
{
  v3 = qword_10195DBC0;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBC0, &stru_10162D0B0);
  }

  [qword_10195DBB8 setLocalizedDateFormatFromTemplate:@"Md"];
  v5 = [qword_10195DBB8 stringFromDate:stringCopy];

  return v5;
}

+ (id)_maps_abbreviatedDateStringWithoutYearForDate:(id)date
{
  v3 = qword_10195DBB0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBB0, &stru_10162D090);
  }

  [qword_10195DBA8 setLocalizedDateFormatFromTemplate:@"MMMd"];
  v5 = [qword_10195DBA8 stringFromDate:dateCopy];

  return v5;
}

+ (id)_maps_dateStringWithoutYearForDate:(id)date
{
  v3 = qword_10195DBA0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DBA0, &stru_10162D070);
  }

  [qword_10195DB98 setLocalizedDateFormatFromTemplate:@"MMMMd"];
  v5 = [qword_10195DB98 stringFromDate:dateCopy];

  return v5;
}

+ (id)_maps_weekdayForDate:(id)date
{
  v3 = qword_10195DB90;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB90, &stru_10162D050);
  }

  [qword_10195DB88 setLocalizedDateFormatFromTemplate:@"EEEE"];
  v5 = [qword_10195DB88 stringFromDate:dateCopy];

  return v5;
}

+ (id)_maps_abbreviatedWeekdayForDate:(id)date
{
  v3 = qword_10195DB80;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB80, &stru_10162D030);
  }

  [qword_10195DB78 setLocalizedDateFormatFromTemplate:@"E"];
  v5 = [qword_10195DB78 stringFromDate:dateCopy];

  return v5;
}

+ (id)_maps_timeForDate:(id)date timeZone:(id)zone
{
  v5 = qword_10195DB70;
  zoneCopy = zone;
  dateCopy = date;
  if (v5 != -1)
  {
    dispatch_once(&qword_10195DB70, &stru_10162D010);
  }

  [qword_10195DB68 setTimeZone:zoneCopy];

  v8 = [qword_10195DB68 stringFromDate:dateCopy];

  return v8;
}

+ (id)_maps_timeForDate:(id)date
{
  v3 = qword_10195DB60;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195DB60, &stru_10162CFF0);
  }

  v5 = [qword_10195DB58 stringFromDate:dateCopy];

  return v5;
}

@end