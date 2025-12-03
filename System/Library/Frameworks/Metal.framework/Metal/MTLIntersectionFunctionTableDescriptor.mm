@interface MTLIntersectionFunctionTableDescriptor
+ (MTLIntersectionFunctionTableDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLIntersectionFunctionTableDescriptor)intersectionFunctionTableDescriptor;
@end

@implementation MTLIntersectionFunctionTableDescriptor

+ (MTLIntersectionFunctionTableDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLIntersectionFunctionTableDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLIntersectionFunctionTableDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLIntersectionFunctionTableDescriptor)intersectionFunctionTableDescriptor
{
  v2 = objc_alloc_init(MTLIntersectionFunctionTableDescriptorInternal);

  return v2;
}

@end