@interface MTLComputePassDescriptor
+ (MTLComputePassDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLComputePassDescriptor)computePassDescriptor;
@end

@implementation MTLComputePassDescriptor

+ (MTLComputePassDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLComputePassDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLComputePassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLComputePassDescriptor)computePassDescriptor
{
  v2 = objc_alloc_init(MTLComputePassDescriptorInternal);

  return v2;
}

@end