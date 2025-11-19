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
- (_NSRange)decodeRangeWithCoder:(id)a3;
- (id)description;
- (void)encodeRangeWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSTextCheckingResult

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = NSClassFromString(@"NSTextCheckingResult");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)encodeRangeWithCoder:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSTextCheckingResult *)self range];
  v6 = v5;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:v4 forKey:@"NSRangeLocation"];

    [a3 encodeInteger:v6 forKey:@"NSRangeLength"];
  }

  else
  {
    v7 = v6;
    v8[0] = v4;
    [a3 encodeValuesOfObjCTypes:{"QQ", v8, &v7}];
  }
}

- (_NSRange)decodeRangeWithCoder:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    v4 = [a3 decodeIntegerForKey:@"NSRangeLocation"];
    v5 = [a3 decodeIntegerForKey:@"NSRangeLength"];
  }

  else
  {
    v7 = 0;
    v8[0] = 0;
    [a3 decodeValuesOfObjCTypes:{"QQ", v8, &v7}];
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
  v6 = [(NSTextCheckingResult *)self numberOfRanges];
  if (v6 <= idx)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range index (%lu) >= number of ranges (%lu)", _NSFullMethodName(self, a2), idx, v6), 0}];
    objc_exception_throw(v9);
  }

  v7 = [(NSTextCheckingResult *)self range];
  result.length = v8;
  result.location = v7;
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
  v4 = [[NSOrthographyCheckingResult alloc] initWithRange:range.location orthography:range.length, orthography];

  return v4;
}

+ (NSTextCheckingResult)spellCheckingResultWithRange:(NSRange)range
{
  v3 = [[NSSpellCheckingResult alloc] initWithRange:range.location, range.length];

  return v3;
}

+ (NSTextCheckingResult)grammarCheckingResultWithRange:(NSRange)range details:(NSArray *)details
{
  v4 = [[NSGrammarCheckingResult alloc] initWithRange:range.location details:range.length, details];

  return v4;
}

+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date
{
  v4 = [[NSDateCheckingResult alloc] initWithRange:range.location date:range.length, date];

  return v4;
}

+ (NSTextCheckingResult)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date timeZone:(NSTimeZone *)timeZone duration:(NSTimeInterval)duration
{
  v6 = [[NSDateCheckingResult alloc] initWithRange:range.location date:range.length timeZone:date duration:timeZone, duration];

  return v6;
}

+ (NSTextCheckingResult)addressCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components
{
  v4 = [[NSAddressCheckingResult alloc] initWithRange:range.location components:range.length, components];

  return v4;
}

+ (NSTextCheckingResult)linkCheckingResultWithRange:(NSRange)range URL:(NSURL *)url
{
  v4 = [[NSLinkCheckingResult alloc] initWithRange:range.location URL:range.length, url];

  return v4;
}

+ (NSTextCheckingResult)quoteCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  v4 = [(NSSubstitutionCheckingResult *)[NSQuoteCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return v4;
}

+ (NSTextCheckingResult)dashCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  v4 = [(NSSubstitutionCheckingResult *)[NSDashCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return v4;
}

+ (NSTextCheckingResult)replacementCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  v4 = [(NSSubstitutionCheckingResult *)[NSReplacementCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return v4;
}

+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString
{
  v4 = [(NSSubstitutionCheckingResult *)[NSCorrectionCheckingResult alloc] initWithRange:range.location replacementString:range.length, replacementString];

  return v4;
}

+ (NSTextCheckingResult)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString alternativeStrings:(NSArray *)alternativeStrings
{
  v5 = [[NSCorrectionCheckingResult alloc] initWithRange:range.location replacementString:range.length alternativeStrings:replacementString, alternativeStrings];

  return v5;
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
  v4 = [[NSPhoneNumberCheckingResult alloc] initWithRange:range.location phoneNumber:range.length, phoneNumber];

  return v4;
}

+ (NSTextCheckingResult)transitInformationCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components
{
  v4 = [[NSTransitInformationCheckingResult alloc] initWithRange:range.location components:range.length, components];

  return v4;
}

@end