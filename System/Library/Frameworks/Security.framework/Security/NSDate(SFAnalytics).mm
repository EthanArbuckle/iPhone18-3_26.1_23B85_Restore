@interface NSDate(SFAnalytics)
- (double)bucketToRoundingFactor:()SFAnalytics;
- (double)timeIntervalSince1970WithBucket:()SFAnalytics;
@end

@implementation NSDate(SFAnalytics)

- (double)timeIntervalSince1970WithBucket:()SFAnalytics
{
  [a1 bucketToRoundingFactor:?];
  v2 = v1;
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  return v5 + v2 - (v5 % v2);
}

- (double)bucketToRoundingFactor:()SFAnalytics
{
  result = 60.0;
  if (a3 != 1)
  {
    result = 1.0;
  }

  if (a3 == 2)
  {
    return 3600.0;
  }

  return result;
}

@end