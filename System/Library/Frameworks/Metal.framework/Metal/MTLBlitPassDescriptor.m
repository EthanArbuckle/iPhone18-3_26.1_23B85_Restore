@interface MTLBlitPassDescriptor
+ (MTLBlitPassDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLBlitPassDescriptor)blitPassDescriptor;
@end

@implementation MTLBlitPassDescriptor

+ (MTLBlitPassDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLBlitPassDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLBlitPassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLBlitPassDescriptor)blitPassDescriptor
{
  v2 = objc_alloc_init(MTLBlitPassDescriptorInternal);

  return v2;
}

@end