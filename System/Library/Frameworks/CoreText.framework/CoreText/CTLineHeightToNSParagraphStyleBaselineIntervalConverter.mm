@interface CTLineHeightToNSParagraphStyleBaselineIntervalConverter
+ (double)intervalFor:(void *)for;
- (CTLineHeightToNSParagraphStyleBaselineIntervalConverter)init;
@end

@implementation CTLineHeightToNSParagraphStyleBaselineIntervalConverter

+ (double)intervalFor:(void *)for
{
  result = 0.0;
  if (*(for + 8) == 2)
  {
    result = *for;
  }

  if (*(for + 8) <= 1u)
  {
    return *for;
  }

  return result;
}

- (CTLineHeightToNSParagraphStyleBaselineIntervalConverter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CTLineHeightToNSParagraphStyleBaselineIntervalConverter *)&v3 init];
}

@end