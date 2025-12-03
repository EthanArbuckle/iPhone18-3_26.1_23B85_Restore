@interface MTLRasterizationRateLayerDescriptor
+ (MTLRasterizationRateLayerDescriptor)allocWithZone:(_NSZone *)zone;
- (MTLRasterizationRateLayerDescriptor)initWithSampleCount:(MTLSize *)sampleCount;
@end

@implementation MTLRasterizationRateLayerDescriptor

+ (MTLRasterizationRateLayerDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRasterizationRateLayerDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRasterizationRateLayerDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (MTLRasterizationRateLayerDescriptor)initWithSampleCount:(MTLSize *)sampleCount
{
  v4.receiver = self;
  v4.super_class = MTLRasterizationRateLayerDescriptor;
  return [(MTLRasterizationRateLayerDescriptor *)&v4 init];
}

@end