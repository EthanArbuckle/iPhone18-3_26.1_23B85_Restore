@interface MTLStencilDescriptor
+ (MTLStencilDescriptor)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLStencilDescriptor

+ (MTLStencilDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLStencilDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLStencilDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end