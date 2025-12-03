@interface MTLRasterizationRateLayerArrayInternal
- (MTLRasterizationRateLayerArrayInternal)initWithParent:(id)parent;
@end

@implementation MTLRasterizationRateLayerArrayInternal

- (MTLRasterizationRateLayerArrayInternal)initWithParent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLRasterizationRateLayerArrayInternal;
  result = [(MTLRasterizationRateLayerArray *)&v5 init];
  if (result)
  {
    result->_parent = parent;
  }

  return result;
}

@end