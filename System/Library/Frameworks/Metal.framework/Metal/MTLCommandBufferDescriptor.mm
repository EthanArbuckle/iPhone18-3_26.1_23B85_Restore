@interface MTLCommandBufferDescriptor
+ (MTLCommandBufferDescriptor)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLCommandBufferDescriptor

+ (MTLCommandBufferDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_MTLCommandBufferDescriptor allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLCommandBufferDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end