@interface NSMeasurementFormatter
+ (id)_ma_distanceStringWithValue:(double)a3 unit:(id)a4 style:(int64_t)a5;
+ (id)_ma_sharedMeasurementFormatterWithFractionDigits:(unint64_t)a3 unitOptions:(unint64_t)a4 style:(int64_t)a5;
@end

@implementation NSMeasurementFormatter

+ (id)_ma_sharedMeasurementFormatterWithFractionDigits:(unint64_t)a3 unitOptions:(unint64_t)a4 style:(int64_t)a5
{
  if (qword_51370 != -1)
  {
    sub_11C88();
  }

  v8 = +[NSLocale _ma_locale];
  [qword_51368 setLocale:v8];

  v9 = [NSNumberFormatter _ma_sharedNumberFormatterWithStyle:1 fractionDigits:a3];
  [qword_51368 setNumberFormatter:v9];

  [qword_51368 setUnitOptions:a4];
  [qword_51368 setUnitStyle:a5];
  v10 = qword_51368;

  return v10;
}

+ (id)_ma_distanceStringWithValue:(double)a3 unit:(id)a4 style:(int64_t)a5
{
  v8 = a4;
  v9 = [a1 _ma_sharedMeasurementFormatterWithFractionDigits:a3 < 10.0 unitOptions:1 style:a5];
  v10 = [[NSMeasurement alloc] initWithDoubleValue:v8 unit:a3];

  v11 = [v9 stringFromMeasurement:v10];

  return v11;
}

@end