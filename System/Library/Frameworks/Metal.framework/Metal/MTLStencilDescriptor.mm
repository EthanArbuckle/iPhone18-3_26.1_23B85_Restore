@interface MTLStencilDescriptor
+ (MTLStencilDescriptor)allocWithZone:(_NSZone *)a3;
@end

@implementation MTLStencilDescriptor

+ (MTLStencilDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLStencilDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLStencilDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end