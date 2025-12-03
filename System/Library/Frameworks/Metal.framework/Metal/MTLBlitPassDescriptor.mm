@interface MTLBlitPassDescriptor
+ (MTLBlitPassDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLBlitPassDescriptor)blitPassDescriptor;
@end

@implementation MTLBlitPassDescriptor

+ (MTLBlitPassDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLBlitPassDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLBlitPassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLBlitPassDescriptor)blitPassDescriptor
{
  v2 = objc_alloc_init(MTLBlitPassDescriptorInternal);

  return v2;
}

@end