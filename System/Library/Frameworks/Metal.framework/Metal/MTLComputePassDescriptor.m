@interface MTLComputePassDescriptor
+ (MTLComputePassDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLComputePassDescriptor)computePassDescriptor;
@end

@implementation MTLComputePassDescriptor

+ (MTLComputePassDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLComputePassDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLComputePassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLComputePassDescriptor)computePassDescriptor
{
  v2 = objc_alloc_init(MTLComputePassDescriptorInternal);

  return v2;
}

@end