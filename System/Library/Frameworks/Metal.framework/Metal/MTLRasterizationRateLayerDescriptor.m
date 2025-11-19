@interface MTLRasterizationRateLayerDescriptor
+ (MTLRasterizationRateLayerDescriptor)allocWithZone:(_NSZone *)a3;
- (MTLRasterizationRateLayerDescriptor)initWithSampleCount:(MTLSize *)sampleCount;
@end

@implementation MTLRasterizationRateLayerDescriptor

+ (MTLRasterizationRateLayerDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLRasterizationRateLayerDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLRasterizationRateLayerDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (MTLRasterizationRateLayerDescriptor)initWithSampleCount:(MTLSize *)sampleCount
{
  v4.receiver = self;
  v4.super_class = MTLRasterizationRateLayerDescriptor;
  return [(MTLRasterizationRateLayerDescriptor *)&v4 init];
}

@end