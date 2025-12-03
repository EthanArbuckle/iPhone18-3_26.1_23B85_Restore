@interface MTLType
+ (MTLType)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLType

+ (MTLType)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLTypeInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLType;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end