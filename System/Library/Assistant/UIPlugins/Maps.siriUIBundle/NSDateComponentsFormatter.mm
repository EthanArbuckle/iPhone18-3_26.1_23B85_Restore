@interface NSDateComponentsFormatter
+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)a3;
+ (id)_maps_stringFromTimeInterval:(double)a3;
+ (id)_maps_stringLongFromTimeInterval:(double)a3;
@end

@implementation NSDateComponentsFormatter

+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)a3
{
  if (qword_51340 != -1)
  {
    sub_11C4C();
  }

  v4 = +[NSLocale _ma_locale];
  v5 = [v4 objectForKey:NSLocaleCalendar];
  [qword_51338 setCalendar:v5];

  [qword_51338 setUnitsStyle:a3];
  [qword_51338 setAllowedUnits:96];
  v6 = qword_51338;

  return v6;
}

+ (id)_maps_stringFromTimeInterval:(double)a3
{
  if (qword_51400 != -1)
  {
    sub_11D3C();
  }

  v4 = qword_513F8;

  return [v4 stringFromTimeInterval:a3];
}

+ (id)_maps_stringLongFromTimeInterval:(double)a3
{
  if (qword_51410 != -1)
  {
    sub_11D50();
  }

  v4 = qword_51408;

  return [v4 stringFromTimeInterval:a3];
}

@end