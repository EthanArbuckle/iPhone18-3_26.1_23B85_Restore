@interface PHAdjustmentDataResult
- (BOOL)containsValidData;
- (id)allowedInfoKeys;
@end

@implementation PHAdjustmentDataResult

- (id)allowedInfoKeys
{
  v5.receiver = self;
  v5.super_class = PHAdjustmentDataResult;
  v2 = [(PHCompositeMediaResult *)&v5 allowedInfoKeys];
  v3 = [v2 setByAddingObject:@"PHAdjustmentDataKey"];

  return v3;
}

- (BOOL)containsValidData
{
  v2 = [(PHAdjustmentDataResult *)self adjustmentData];
  v3 = v2 != 0;

  return v3;
}

@end