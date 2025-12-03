@interface NSNumberFormatter
+ (id)imaxLocalizedDouble:(double)double maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)imaxLocalizedNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)imaxLocalizedPercentage:(double)percentage maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)imaxLocalizedUnsignedInteger:(unint64_t)integer;
+ (id)imaxLocalizedUnsignedInteger:(unint64_t)integer usesGroupingSeparator:(BOOL)separator;
+ (id)localizedStringFromNumber:(id)number numberStyle:(unint64_t)style auxiliarySymbolSuffix:(id)suffix;
@end

@implementation NSNumberFormatter

+ (id)imaxLocalizedUnsignedInteger:(unint64_t)integer
{
  v4 = [NSNumber numberWithUnsignedInteger:integer];
  v5 = [self imaxLocalizedNumber:v4 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v5;
}

+ (id)imaxLocalizedUnsignedInteger:(unint64_t)integer usesGroupingSeparator:(BOOL)separator
{
  if (separator)
  {
    v5 = [self imaxLocalizedUnsignedInteger:integer];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setNumberStyle:1];
    [v6 setUsesGroupingSeparator:0];
    v7 = +[NSLocale currentLocale];
    [v6 setLocale:v7];

    v8 = [NSNumber numberWithUnsignedInteger:integer];
    v5 = [v6 stringFromNumber:v8];
  }

  return v5;
}

+ (id)imaxLocalizedDouble:(double)double maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  v6 = [NSNumber numberWithDouble:double];
  v7 = [self imaxLocalizedNumber:v6 maximumNumberOfDigitsAfterDecimalSeparator:separator];

  return v7;
}

+ (id)imaxLocalizedPercentage:(double)percentage maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  v6 = [NSNumber numberWithDouble:percentage];
  v7 = [self imaxLocalizedNumber:v6 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:separator];

  return v7;
}

+ (id)imaxLocalizedNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  numberCopy = number;
  v8 = objc_opt_new();
  [v8 setNumberStyle:style];
  [v8 setMaximumFractionDigits:separator];
  v9 = [v8 stringFromNumber:numberCopy];

  return v9;
}

+ (id)localizedStringFromNumber:(id)number numberStyle:(unint64_t)style auxiliarySymbolSuffix:(id)suffix
{
  suffixCopy = suffix;
  numberCopy = number;
  v9 = objc_opt_new();
  [v9 setNumberStyle:style];
  v10 = [v9 stringFromNumber:numberCopy];

  suffixCopy = [NSString stringWithFormat:@"%@%@", v10, suffixCopy];

  return suffixCopy;
}

@end