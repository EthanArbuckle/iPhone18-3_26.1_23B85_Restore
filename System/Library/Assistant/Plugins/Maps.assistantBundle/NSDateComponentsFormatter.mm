@interface NSDateComponentsFormatter
+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)style;
@end

@implementation NSDateComponentsFormatter

+ (id)_ma_sharedDateComponentsFormatterWithUnitStyle:(int64_t)style
{
  if (qword_5A700 != -1)
  {
    sub_1A82C();
  }

  v4 = +[NSLocale _ma_locale];
  v5 = [v4 objectForKey:NSLocaleCalendar];
  [qword_5A6F8 setCalendar:v5];

  [qword_5A6F8 setUnitsStyle:style];
  [qword_5A6F8 setAllowedUnits:96];
  v6 = qword_5A6F8;

  return v6;
}

@end