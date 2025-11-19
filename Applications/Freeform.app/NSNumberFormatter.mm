@interface NSNumberFormatter
+ (id)crlaxLocalizedDouble:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4;
+ (id)crlaxLocalizedNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5;
+ (id)crlaxLocalizedPercentage:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4;
+ (id)crlaxLocalizedUnsignedInteger:(unint64_t)a3;
- (NSString)crl_format;
- (_NSRange)crl_rangeOfNumericValueInString:(id)a3;
- (void)crl_setFormat:(id)a3;
@end

@implementation NSNumberFormatter

+ (id)crlaxLocalizedUnsignedInteger:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [a1 crlaxLocalizedNumber:v4 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v5;
}

+ (id)crlaxLocalizedDouble:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4
{
  v6 = [NSNumber numberWithDouble:a3];
  v7 = [a1 crlaxLocalizedNumber:v6 maximumNumberOfDigitsAfterDecimalSeparator:a4];

  return v7;
}

+ (id)crlaxLocalizedPercentage:(double)a3 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a4
{
  v6 = [NSNumber numberWithDouble:a3];
  v7 = [a1 crlaxLocalizedNumber:v6 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:a4];

  return v7;
}

+ (id)crlaxLocalizedNumber:(id)a3 numberStyle:(unint64_t)a4 maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setNumberStyle:a4];
  [v8 setMaximumFractionDigits:a5];
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

- (_NSRange)crl_rangeOfNumericValueInString:(id)a3
{
  v3 = sub_101240710(self, a2, a3, sub_10123F890);
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSString)crl_format
{
  v2 = self;
  sub_10123FF6C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)crl_setFormat:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1012401CC(v4, v6);
}

@end