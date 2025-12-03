@interface NSNumberFormatter
+ (id)_ma_localizedStringFromInteger:(int64_t)integer;
+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)style fractionDigits:(unint64_t)digits;
@end

@implementation NSNumberFormatter

+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)style fractionDigits:(unint64_t)digits
{
  if (qword_5A740 != -1)
  {
    sub_1A87C();
  }

  [qword_5A738 setNumberStyle:style];
  [qword_5A738 setMinimumFractionDigits:digits];
  [qword_5A738 setMaximumFractionDigits:digits];
  v6 = qword_5A738;
  v7 = +[NSLocale _ma_locale];
  [v6 setLocale:v7];

  v8 = qword_5A738;

  return v8;
}

+ (id)_ma_localizedStringFromInteger:(int64_t)integer
{
  v4 = [NSNumberFormatter _ma_sharedNumberFormatterWithStyle:0 fractionDigits:0];
  v5 = [NSNumber numberWithInteger:integer];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

@end