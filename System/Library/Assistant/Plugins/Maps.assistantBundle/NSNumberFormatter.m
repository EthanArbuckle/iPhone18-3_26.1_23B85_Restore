@interface NSNumberFormatter
+ (id)_ma_localizedStringFromInteger:(int64_t)a3;
+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)a3 fractionDigits:(unint64_t)a4;
@end

@implementation NSNumberFormatter

+ (id)_ma_sharedNumberFormatterWithStyle:(unint64_t)a3 fractionDigits:(unint64_t)a4
{
  if (qword_5A740 != -1)
  {
    sub_1A87C();
  }

  [qword_5A738 setNumberStyle:a3];
  [qword_5A738 setMinimumFractionDigits:a4];
  [qword_5A738 setMaximumFractionDigits:a4];
  v6 = qword_5A738;
  v7 = +[NSLocale _ma_locale];
  [v6 setLocale:v7];

  v8 = qword_5A738;

  return v8;
}

+ (id)_ma_localizedStringFromInteger:(int64_t)a3
{
  v4 = [NSNumberFormatter _ma_sharedNumberFormatterWithStyle:0 fractionDigits:0];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

@end