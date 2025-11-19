@interface NSNumberFormatter
+ (id)imaxLocalizedDouble:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4;
+ (id)imaxLocalizedNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5;
+ (id)imaxLocalizedPercentage:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4;
+ (id)imaxLocalizedUnsignedInteger:(unint64_t)a3;
+ (id)imaxLocalizedUnsignedInteger:(unint64_t)a3 usesGroupingSeparator:(BOOL)a4;
+ (id)localizedStringFromNumber:(id)a3 numberStyle:(unint64_t)a4 auxiliarySymbolSuffix:(id)a5;
@end

@implementation NSNumberFormatter

+ (id)imaxLocalizedUnsignedInteger:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [a1 imaxLocalizedNumber:v4 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v5;
}

+ (id)imaxLocalizedUnsignedInteger:(unint64_t)a3 usesGroupingSeparator:(BOOL)a4
{
  if (a4)
  {
    v5 = [a1 imaxLocalizedUnsignedInteger:a3];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setNumberStyle:1];
    [v6 setUsesGroupingSeparator:0];
    v7 = +[NSLocale currentLocale];
    [v6 setLocale:v7];

    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v5 = [v6 stringFromNumber:v8];
  }

  return v5;
}

+ (id)imaxLocalizedDouble:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4
{
  v6 = [NSNumber numberWithDouble:a3];
  v7 = [a1 imaxLocalizedNumber:v6 maximumNumberOfDigitsAfterDecimalSeparator:a4];

  return v7;
}

+ (id)imaxLocalizedPercentage:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4
{
  v6 = [NSNumber numberWithDouble:a3];
  v7 = [a1 imaxLocalizedNumber:v6 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:a4];

  return v7;
}

+ (id)imaxLocalizedNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

+ (id)localizedStringFromNumber:(id)a3 numberStyle:(unint64_t)a4 auxiliarySymbolSuffix:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setNumberStyle:a4];
  v10 = [v9 stringFromNumber:v8];

  v11 = [NSString stringWithFormat:@"%@%@", v10, v7];

  return v11;
}

@end