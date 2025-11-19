@interface NSNumberFormatter(HealthKit)
+ (id)hk_percentDecimalNumberFormatter;
+ (id)hk_percentNumberFormatter;
+ (id)hk_wholeNumberFormatter;
@end

@implementation NSNumberFormatter(HealthKit)

+ (id)hk_wholeNumberFormatter
{
  if (hk_wholeNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(HealthKit) hk_wholeNumberFormatter];
  }

  v1 = hk_wholeNumberFormatter__formatter;

  return v1;
}

+ (id)hk_percentNumberFormatter
{
  if (hk_percentNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(HealthKit) hk_percentNumberFormatter];
  }

  v1 = hk_percentNumberFormatter__formatter;

  return v1;
}

+ (id)hk_percentDecimalNumberFormatter
{
  if (hk_percentDecimalNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(HealthKit) hk_percentDecimalNumberFormatter];
  }

  v1 = hk_percentDecimalNumberFormatter__formatter;

  return v1;
}

@end