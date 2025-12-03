@interface PHAdjustmentDataResult
- (BOOL)containsValidData;
- (id)allowedInfoKeys;
@end

@implementation PHAdjustmentDataResult

- (id)allowedInfoKeys
{
  v5.receiver = self;
  v5.super_class = PHAdjustmentDataResult;
  allowedInfoKeys = [(PHCompositeMediaResult *)&v5 allowedInfoKeys];
  v3 = [allowedInfoKeys setByAddingObject:@"PHAdjustmentDataKey"];

  return v3;
}

- (BOOL)containsValidData
{
  adjustmentData = [(PHAdjustmentDataResult *)self adjustmentData];
  v3 = adjustmentData != 0;

  return v3;
}

@end