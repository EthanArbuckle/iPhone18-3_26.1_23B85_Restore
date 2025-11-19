@interface CTLineHeightToNSParagraphStyleBaselineIntervalConverter
+ (double)intervalFor:(void *)a3;
- (CTLineHeightToNSParagraphStyleBaselineIntervalConverter)init;
@end

@implementation CTLineHeightToNSParagraphStyleBaselineIntervalConverter

+ (double)intervalFor:(void *)a3
{
  result = 0.0;
  if (*(a3 + 8) == 2)
  {
    result = *a3;
  }

  if (*(a3 + 8) <= 1u)
  {
    return *a3;
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