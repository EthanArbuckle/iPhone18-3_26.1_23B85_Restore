@interface NSMeasurementFormatter
+ (id)_ma_distanceStringWithValue:(double)value unit:(id)unit style:(int64_t)style;
+ (id)_ma_sharedMeasurementFormatterWithFractionDigits:(unint64_t)digits unitOptions:(unint64_t)options style:(int64_t)style;
@end

@implementation NSMeasurementFormatter

+ (id)_ma_sharedMeasurementFormatterWithFractionDigits:(unint64_t)digits unitOptions:(unint64_t)options style:(int64_t)style
{
  if (qword_5A730 != -1)
  {
    sub_1A868();
  }

  v8 = +[NSLocale _ma_locale];
  [qword_5A728 setLocale:v8];

  v9 = [NSNumberFormatter _ma_sharedNumberFormatterWithStyle:1 fractionDigits:digits];
  [qword_5A728 setNumberFormatter:v9];

  [qword_5A728 setUnitOptions:options];
  [qword_5A728 setUnitStyle:style];
  v10 = qword_5A728;

  return v10;
}

+ (id)_ma_distanceStringWithValue:(double)value unit:(id)unit style:(int64_t)style
{
  unitCopy = unit;
  v9 = [self _ma_sharedMeasurementFormatterWithFractionDigits:value < 10.0 unitOptions:1 style:style];
  v10 = [[NSMeasurement alloc] initWithDoubleValue:unitCopy unit:value];

  v11 = [v9 stringFromMeasurement:v10];

  return v11;
}

@end