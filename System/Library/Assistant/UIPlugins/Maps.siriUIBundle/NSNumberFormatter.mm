@interface NSNumberFormatter
+ (id)_ma_localizedStringFromInteger:(int64_t)integer;
+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)style fractionDigits:(unint64_t)digits;
@end

@implementation NSNumberFormatter

+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)style fractionDigits:(unint64_t)digits
{
  if (qword_51380 != -1)
  {
    sub_11C9C();
  }

  [qword_51378 setNumberStyle:style];
  [qword_51378 setMinimumFractionDigits:digits];
  [qword_51378 setMaximumFractionDigits:digits];
  v6 = qword_51378;
  v7 = +[NSLocale _ma_locale];
  [v6 setLocale:v7];

  v8 = qword_51378;

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