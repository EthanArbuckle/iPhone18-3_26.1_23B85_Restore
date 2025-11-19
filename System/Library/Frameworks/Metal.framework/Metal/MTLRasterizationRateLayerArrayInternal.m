@interface MTLRasterizationRateLayerArrayInternal
- (MTLRasterizationRateLayerArrayInternal)initWithParent:(id)a3;
@end

@implementation MTLRasterizationRateLayerArrayInternal

- (MTLRasterizationRateLayerArrayInternal)initWithParent:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTLRasterizationRateLayerArrayInternal;
  result = [(MTLRasterizationRateLayerArray *)&v5 init];
  if (result)
  {
    result->_parent = a3;
  }

  return result;
}

@end