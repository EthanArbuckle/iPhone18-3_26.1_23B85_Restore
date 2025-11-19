@interface MTLRenderPassDescriptor
+ (MTLRenderPassDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLRenderPassDescriptor)renderPassDescriptor;
@end

@implementation MTLRenderPassDescriptor

+ (MTLRenderPassDescriptor)renderPassDescriptor
{
  v2 = objc_alloc_init(MTLRenderPassDescriptorInternal);

  return v2;
}

+ (MTLRenderPassDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLRenderPassDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLRenderPassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end