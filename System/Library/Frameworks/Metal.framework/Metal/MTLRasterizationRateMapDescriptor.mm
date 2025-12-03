@interface MTLRasterizationRateMapDescriptor
+ (MTLRasterizationRateMapDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLRasterizationRateMapDescriptor)rasterizationRateMapDescriptorWithScreenSize:(MTLSize *)screenSize layer:(MTLRasterizationRateLayerDescriptor *)layer;
+ (MTLRasterizationRateMapDescriptor)rasterizationRateMapDescriptorWithScreenSize:(MTLSize *)screenSize layerCount:(NSUInteger)layerCount layers:(MTLRasterizationRateLayerDescriptor *const *)layers;
@end

@implementation MTLRasterizationRateMapDescriptor

+ (MTLRasterizationRateMapDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRasterizationRateMapDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRasterizationRateMapDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLRasterizationRateMapDescriptor)rasterizationRateMapDescriptorWithScreenSize:(MTLSize *)screenSize layer:(MTLRasterizationRateLayerDescriptor *)layer
{
  v6 = layer;
  v5 = *screenSize;
  return [MTLRasterizationRateMapDescriptor rasterizationRateMapDescriptorWithScreenSize:&v5 layerCount:1 layers:&v6];
}

+ (MTLRasterizationRateMapDescriptor)rasterizationRateMapDescriptorWithScreenSize:(MTLSize *)screenSize layerCount:(NSUInteger)layerCount layers:(MTLRasterizationRateLayerDescriptor *const *)layers
{
  v8 = [MTLRasterizationRateMapDescriptorInternal alloc];
  v12 = *screenSize;
  v9 = [(MTLRasterizationRateMapDescriptorInternal *)v8 initWithScreenSize:&v12];
  if (layerCount)
  {
    v10 = layerCount - 1;
    do
    {
      [(MTLRasterizationRateMapDescriptorInternal *)v9 setLayer:layers[v10] atIndex:v10];
      --v10;
    }

    while (v10 != -1);
  }

  return v9;
}

@end