@interface MTLIndirectArgumentDescriptor
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)indirectArgumentDescriptor;
@end

@implementation MTLIndirectArgumentDescriptor

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLIndirectArgumentDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLIndirectArgumentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (id)indirectArgumentDescriptor
{
  v2 = objc_alloc_init(MTLIndirectArgumentDescriptorInternal);

  return v2;
}

@end