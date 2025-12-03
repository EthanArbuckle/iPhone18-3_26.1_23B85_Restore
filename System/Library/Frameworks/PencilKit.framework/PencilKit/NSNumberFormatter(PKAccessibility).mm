@interface NSNumberFormatter(PKAccessibility)
+ (id)pkaxLocalizedDouble:()PKAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)pkaxLocalizedNumber:()PKAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)pkaxLocalizedPercentage:()PKAccessibility maximumNumberOfDigitsAfterDecimalSeparator:;
+ (id)pkaxLocalizedUnsignedInteger:()PKAccessibility;
@end

@implementation NSNumberFormatter(PKAccessibility)

+ (id)pkaxLocalizedUnsignedInteger:()PKAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v3 = [self pkaxLocalizedNumber:v2 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v3;
}

+ (id)pkaxLocalizedDouble:()PKAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [self pkaxLocalizedNumber:v5 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)pkaxLocalizedPercentage:()PKAccessibility maximumNumberOfDigitsAfterDecimalSeparator:
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [self pkaxLocalizedNumber:v5 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:a3];

  return v6;
}

+ (id)pkaxLocalizedNumber:()PKAccessibility numberStyle:maximumNumberOfDigitsAfterDecimalSeparator:
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

@end