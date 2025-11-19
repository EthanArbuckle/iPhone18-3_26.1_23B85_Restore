@interface MTLIntersectionFunctionTableDescriptor
+ (MTLIntersectionFunctionTableDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLIntersectionFunctionTableDescriptor)intersectionFunctionTableDescriptor;
@end

@implementation MTLIntersectionFunctionTableDescriptor

+ (MTLIntersectionFunctionTableDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLIntersectionFunctionTableDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLIntersectionFunctionTableDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLIntersectionFunctionTableDescriptor)intersectionFunctionTableDescriptor
{
  v2 = objc_alloc_init(MTLIntersectionFunctionTableDescriptorInternal);

  return v2;
}

@end