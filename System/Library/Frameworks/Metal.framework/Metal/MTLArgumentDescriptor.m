@interface MTLArgumentDescriptor
+ (MTLArgumentDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLArgumentDescriptor)argumentDescriptor;
@end

@implementation MTLArgumentDescriptor

+ (MTLArgumentDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLArgumentDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLArgumentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLArgumentDescriptor)argumentDescriptor
{
  v2 = objc_alloc_init(MTLArgumentDescriptorInternal);

  return v2;
}

@end