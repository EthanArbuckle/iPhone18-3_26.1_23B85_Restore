@interface NSDateComponentsFormatter
+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)style;
+ (id)_maps_stringFromTimeInterval:(double)interval;
+ (id)_maps_stringLongFromTimeInterval:(double)interval;
@end

@implementation NSDateComponentsFormatter

+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)style
{
  if (qword_51340 != -1)
  {
    sub_11C4C();
  }

  v4 = +[NSLocale _ma_locale];
  v5 = [v4 objectForKey:NSLocaleCalendar];
  [qword_51338 setCalendar:v5];

  [qword_51338 setUnitsStyle:style];
  [qword_51338 setAllowedUnits:96];
  v6 = qword_51338;

  return v6;
}

+ (id)_maps_stringFromTimeInterval:(double)interval
{
  if (qword_51400 != -1)
  {
    sub_11D3C();
  }

  v4 = qword_513F8;

  return [v4 stringFromTimeInterval:interval];
}

+ (id)_maps_stringLongFromTimeInterval:(double)interval
{
  if (qword_51410 != -1)
  {
    sub_11D50();
  }

  v4 = qword_51408;

  return [v4 stringFromTimeInterval:interval];
}

@end