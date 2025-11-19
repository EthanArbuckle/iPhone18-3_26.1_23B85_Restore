@interface NSDateFormatter
+ (id)_ma_sharedDateFormatter;
@end

@implementation NSDateFormatter

+ (id)_ma_sharedDateFormatter
{
  if (qword_5A710 != -1)
  {
    sub_1A840();
  }

  v2 = qword_5A708;
  v3 = +[NSLocale _ma_locale];
  [v2 setLocale:v3];

  v4 = qword_5A708;

  return v4;
}

@end