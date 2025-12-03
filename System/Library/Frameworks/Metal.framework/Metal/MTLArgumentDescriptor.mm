@interface MTLArgumentDescriptor
+ (MTLArgumentDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLArgumentDescriptor)argumentDescriptor;
@end

@implementation MTLArgumentDescriptor

+ (MTLArgumentDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLArgumentDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLArgumentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLArgumentDescriptor)argumentDescriptor
{
  v2 = objc_alloc_init(MTLArgumentDescriptorInternal);

  return v2;
}

@end