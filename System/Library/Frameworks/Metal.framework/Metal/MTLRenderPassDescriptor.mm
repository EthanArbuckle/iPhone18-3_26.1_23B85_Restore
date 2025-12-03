@interface MTLRenderPassDescriptor
+ (MTLRenderPassDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLRenderPassDescriptor)renderPassDescriptor;
@end

@implementation MTLRenderPassDescriptor

+ (MTLRenderPassDescriptor)renderPassDescriptor
{
  v2 = objc_alloc_init(MTLRenderPassDescriptorInternal);

  return v2;
}

+ (MTLRenderPassDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRenderPassDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRenderPassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end