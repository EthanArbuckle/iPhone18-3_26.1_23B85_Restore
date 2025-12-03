@interface VNOperationPointsProvider
- (BOOL)isEqual:(id)equal;
- (VNOperationPointsProvider)initWithOperationPoints:(id)points;
@end

@implementation VNOperationPointsProvider

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(VNOperationPointsProvider *)self operationPointsAndReturnError:0];
      v7 = [(VNOperationPointsProvider *)v5 operationPointsAndReturnError:0];

      v8 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VNOperationPointsProvider)initWithOperationPoints:(id)points
{
  pointsCopy = points;
  [VNError VNAssert:pointsCopy != 0 log:@"operation points object must be allocated before calling this method"];
  v9.receiver = self;
  v9.super_class = VNOperationPointsProvider;
  v6 = [(VNOperationPointsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationPoints, points);
  }

  return v7;
}

@end