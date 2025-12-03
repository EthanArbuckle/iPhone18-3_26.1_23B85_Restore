@interface MTLAttributeDescriptorArray
+ (MTLAttributeDescriptorArray)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLAttributeDescriptorArray

+ (MTLAttributeDescriptorArray)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLAttributeDescriptorArrayInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLAttributeDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end