@interface MTLVisibleFunctionTableDescriptor
+ (MTLVisibleFunctionTableDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLVisibleFunctionTableDescriptor)visibleFunctionTableDescriptor;
@end

@implementation MTLVisibleFunctionTableDescriptor

+ (MTLVisibleFunctionTableDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLVisibleFunctionTableDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLVisibleFunctionTableDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLVisibleFunctionTableDescriptor)visibleFunctionTableDescriptor
{
  v2 = objc_alloc_init(MTLVisibleFunctionTableDescriptorInternal);

  return v2;
}

@end