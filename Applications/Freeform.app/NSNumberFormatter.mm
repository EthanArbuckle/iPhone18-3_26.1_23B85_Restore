@interface NSNumberFormatter
+ (id)crlaxLocalizedDouble:(double)double maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)crlaxLocalizedNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)crlaxLocalizedPercentage:(double)percentage maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
+ (id)crlaxLocalizedUnsignedInteger:(unint64_t)integer;
- (NSString)crl_format;
- (_NSRange)crl_rangeOfNumericValueInString:(id)string;
- (void)crl_setFormat:(id)format;
@end

@implementation NSNumberFormatter

+ (id)crlaxLocalizedUnsignedInteger:(unint64_t)integer
{
  v4 = [NSNumber numberWithUnsignedInteger:integer];
  v5 = [self crlaxLocalizedNumber:v4 maximumNumberOfDigitsAfterDecimalSeparator:0];

  return v5;
}

+ (id)crlaxLocalizedDouble:(double)double maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  v6 = [NSNumber numberWithDouble:double];
  v7 = [self crlaxLocalizedNumber:v6 maximumNumberOfDigitsAfterDecimalSeparator:separator];

  return v7;
}

+ (id)crlaxLocalizedPercentage:(double)percentage maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  v6 = [NSNumber numberWithDouble:percentage];
  v7 = [self crlaxLocalizedNumber:v6 numberStyle:3 maximumNumberOfDigitsAfterDecimalSeparator:separator];

  return v7;
}

+ (id)crlaxLocalizedNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  numberCopy = number;
  v8 = objc_opt_new();
  [v8 setNumberStyle:style];
  [v8 setMaximumFractionDigits:separator];
  v9 = [v8 stringFromNumber:numberCopy];

  return v9;
}

- (_NSRange)crl_rangeOfNumericValueInString:(id)string
{
  v3 = sub_101240710(self, a2, string, sub_10123F890);
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSString)crl_format
{
  selfCopy = self;
  sub_10123FF6C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)crl_setFormat:(id)format
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1012401CC(v4, v6);
}

@end