@interface MTLComputePipelineDescriptor
+ (MTLComputePipelineDescriptor)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLComputePipelineDescriptor

+ (MTLComputePipelineDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLComputePipelineDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLComputePipelineDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end