@interface NSTextCheckingResult
+ (NSTextCheckingResult)addressCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components;
+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString alternativeStrings:(NSArray *)alternativeStrings;
+ (NSTextCheckingResult)dashCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date;
+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date timeZone:(NSTimeZone *)timeZone duration:(NSTimeInterval)duration;
+ (NSTextCheckingResult)grammarCheckingResultWithRange:(NSRange)range details:(NSArray *)details;
+ (NSTextCheckingResult)linkCheckingResultWithRange:(NSRange)range URL:(NSURL *)url;
+ (NSTextCheckingResult)orthographyCheckingResultWithRange:(NSRange)range orthography:(NSOrthography *)orthography;
+ (NSTextCheckingResult)phoneNumberCheckingResultWithRange:(NSRange)range phoneNumber:(NSString *)phoneNumber;
+ (NSTextCheckingResult)quoteCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
+ (NSTextCheckingResult)regularExpressionCheckingResultWithRanges:(NSRangePointer)ranges count:(NSUInteger)count regularExpression:(NSRegularExpression *)regularExpression;
+ (NSTextCheckingResult)replacementCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
+ (NSTextCheckingResult)spellCheckingResultWithRange:(NSRange)range;
+ (NSTextCheckingResult)transitInformationCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components;
+ (void)initialize;
- (NSRange)rangeAtIndex:(NSUInteger)idx;
- (NSRange)rangeWithName:(NSString *)name;
- (_NSRange)decodeRangeWithCoder:(id)coder;
- (id)description;
- (void)encodeRangeWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTextCheckingResult

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (id)description
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSTextCheckingResult;
  v3 = [(NSTextCheckingResult *)&v5 description];
  v7.location = [(NSTextCheckingResult *)self range];
  return [NSString stringWithFormat:@"%@%@", v3, NSStringFromRange(v7)];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = NSClassFromString(@"NSTextCheckingResult");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)encodeRangeWithCoder:(id)coder
{
  v8[1] = *MEMORY[0x1E69E9840];
  range = [(NSTextCheckingResult *)self range];
  v6 = v5;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:range forKey:@"NSRangeLocation"];

    [coder encodeInteger:v6 forKey:@"NSRangeLength"];
  }

  else
  {
    v7 = v6;
    v8[0] = range;
    [coder encodeValuesOfObjCTypes:{"QQ", v8, &v7}];
  }
}

- (_NSRange)decodeRangeWithCoder:(id)coder
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    v4 = [coder decodeIntegerForKey:@"NSRangeLocation"];
    v5 = [coder decodeIntegerForKey:@"NSRangeLength"];
  }

  else
  {
    v7 = 0;
    v8[0] = 0;
    [coder decodeValuesOfObjCTypes:{"QQ", v8, &v7}];
    v5 = v7;
    v4 = v8[0];
  }

  v6 = v4;
  result.length = v5;
  result.location = v6;
  return result;
}

- (NSRange)rangeAtIndex:(NSUInteger)idx
{
  numberOfRanges = [(NSTextCheckingResult *)self numberOfRanges];
  if (numberOfRanges <= idx)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range index (%lu) >= number of ranges (%lu)", _NSFullMethodName(self, a2), idx, numberOfRanges), 0}];
    objc_exception_throw(v9);
  }

  range = [(NSTextCheckingResult *)self range];
  result.length = v8;
  result.location = range;
  return result;
}

- (NSRange)rangeWithName:(NSString *)name
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

+ (NSTextCheckingResult)orthographyCheckingResultWithRange:(NSRange)range orthography:(NSOrthography *)orthography
{
  orthography = [[NSOrthographyCheckingResult alloc] initWithRange:range.location orthography:range.length, orthography];

  return orthography;
}

+ (NSTextCheckingResult)spellCheckingResultWithRange:(NSRange)range
{
  v3 = [[NSSpellCheckingResult alloc] initWithRange:range.location, range.length];

  return v3;
}

+ (NSTextCheckingResult)grammarCheckingResultWithRange:(NSRange)range details:(NSArray *)details
{
  details = [[NSGrammarCheckingResult alloc] initWithRange:range.location details:range.length, details];

  return details;
}

+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date
{
  date = [[NSDateCheckingResult alloc] initWithRange:range.location date:range.length, date];

  return date;
}

+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date timeZone:(NSTimeZone *)timeZone duration:(NSTimeInterval)duration
{
  duration = [[NSDateCheckingResult alloc] initWithRange:range.location date:range.length timeZone:date duration:timeZone, duration];

  return duration;
}

+ (NSTextCheckingResult)addressCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components
{
  components = [[NSAddressCheckingResult alloc] initWithRange:range.location components:range.length, components];

  return components;
}

+ (NSTextCheckingResult)linkCheckingResultWithRange:(NSRange)range URL:(NSURL *)url
{
  v4 = [[NSLinkCheckingResult alloc] initWithRange:range.location URL:range.length, url];

  return v4;
}

+ (NSTextCheckingResult)quoteCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  replacementString = [(NSSubstitutionCheckingResult *)[NSQuoteCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return replacementString;
}

+ (NSTextCheckingResult)dashCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  replacementString = [(NSSubstitutionCheckingResult *)[NSDashCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return replacementString;
}

+ (NSTextCheckingResult)replacementCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  replacementString = [(NSSubstitutionCheckingResult *)[NSReplacementCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return replacementString;
}

+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  replacementString = [(NSSubstitutionCheckingResult *)[NSCorrectionCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return replacementString;
}

+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString alternativeStrings:(NSArray *)alternativeStrings
{
  alternativeStrings = [[NSCorrectionCheckingResult alloc] initWithRange:range.location replacementString:range.length alternativeStrings:replacementString, alternativeStrings];

  return alternativeStrings;
}

+ (NSTextCheckingResult)regularExpressionCheckingResultWithRanges:(NSRangePointer)ranges count:(NSUInteger)count regularExpression:(NSRegularExpression *)regularExpression
{
  v5 = off_1E69EE3D8;
  if ((count & 0xFFFFFFFFFFFFFFFCLL) != 4)
  {
    v5 = off_1E69EE2A8;
  }

  if (count - 1 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = off_1E69EE8E8;
  }

  v7 = [objc_alloc(*v6) initWithRanges:ranges count:count regularExpression:regularExpression];

  return v7;
}

+ (NSTextCheckingResult)phoneNumberCheckingResultWithRange:(NSRange)range phoneNumber:(NSString *)phoneNumber
{
  phoneNumber = [[NSPhoneNumberCheckingResult alloc] initWithRange:range.location phoneNumber:range.length, phoneNumber];

  return phoneNumber;
}

+ (NSTextCheckingResult)transitInformationCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components
{
  components = [[NSTransitInformationCheckingResult alloc] initWithRange:range.location components:range.length, components];

  return components;
}

@end