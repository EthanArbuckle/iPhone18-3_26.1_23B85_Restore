@interface NSArray(BLSHFlipbookFramesHistogram)
- (double)bls_doubleMedian;
- (unint64_t)bls_unsignedIntegerMedian;
@end

@implementation NSArray(BLSHFlipbookFramesHistogram)

- (double)bls_doubleMedian
{
  v2 = [self count];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = v2 >> 1;
  v5 = [self objectAtIndex:v2 >> 1];
  [v5 doubleValue];
  v7 = v6;

  if ((v3 & 1) == 0)
  {
    v8 = [self objectAtIndex:v4 - 1];
    [v8 doubleValue];
    v10 = v9;

    return (v7 + v10) * 0.5;
  }

  return v7;
}

- (unint64_t)bls_unsignedIntegerMedian
{
  v2 = [self count];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v2 >> 1;
  v5 = [self objectAtIndex:v2 >> 1];
  unsignedLongValue = [v5 unsignedLongValue];

  if ((v3 & 1) == 0)
  {
    v7 = [self objectAtIndex:v4 - 1];
    unsignedLongValue2 = [v7 unsignedLongValue];

    return (unsignedLongValue2 + unsignedLongValue) >> 1;
  }

  return unsignedLongValue;
}

@end