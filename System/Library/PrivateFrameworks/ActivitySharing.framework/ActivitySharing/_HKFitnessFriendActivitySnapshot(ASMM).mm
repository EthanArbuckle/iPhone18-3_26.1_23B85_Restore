@interface _HKFitnessFriendActivitySnapshot(ASMM)
- (id)mmgQuantity;
- (id)mmvQuantity;
- (void)mmPercent;
@end

@implementation _HKFitnessFriendActivitySnapshot(ASMM)

- (id)mmgQuantity
{
  v2 = MEMORY[0x277CCD7E8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  [self mmg];
  v4 = [v2 quantityWithUnit:minuteUnit doubleValue:?];

  return v4;
}

- (id)mmvQuantity
{
  v2 = MEMORY[0x277CCD7E8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  [self mmv];
  v4 = [v2 quantityWithUnit:minuteUnit doubleValue:?];

  return v4;
}

- (void)mmPercent
{
  mmgQuantity = [self mmgQuantity];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  [mmgQuantity doubleValueForUnit:minuteUnit];
  v5 = v4;

  if (v5 >= 0.00000011920929)
  {
    mmvQuantity = [self mmvQuantity];
    minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
    [mmvQuantity doubleValueForUnit:minuteUnit2];
  }
}

@end