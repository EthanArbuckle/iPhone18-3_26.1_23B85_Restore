@interface _HKFitnessFriendActivitySnapshot(ASMM)
- (id)mmgQuantity;
- (id)mmvQuantity;
- (void)mmPercent;
@end

@implementation _HKFitnessFriendActivitySnapshot(ASMM)

- (id)mmgQuantity
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] minuteUnit];
  [a1 mmg];
  v4 = [v2 quantityWithUnit:v3 doubleValue:?];

  return v4;
}

- (id)mmvQuantity
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] minuteUnit];
  [a1 mmv];
  v4 = [v2 quantityWithUnit:v3 doubleValue:?];

  return v4;
}

- (void)mmPercent
{
  v2 = [a1 mmgQuantity];
  v3 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  if (v5 >= 0.00000011920929)
  {
    v6 = [a1 mmvQuantity];
    v7 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v6 doubleValueForUnit:v7];
  }
}

@end