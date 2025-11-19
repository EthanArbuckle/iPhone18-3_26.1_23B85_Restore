@interface MTLVisibleFunctionTableDescriptor
+ (MTLVisibleFunctionTableDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLVisibleFunctionTableDescriptor)visibleFunctionTableDescriptor;
@end

@implementation MTLVisibleFunctionTableDescriptor

+ (MTLVisibleFunctionTableDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLVisibleFunctionTableDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLVisibleFunctionTableDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLVisibleFunctionTableDescriptor)visibleFunctionTableDescriptor
{
  v2 = objc_alloc_init(MTLVisibleFunctionTableDescriptorInternal);

  return v2;
}

@end