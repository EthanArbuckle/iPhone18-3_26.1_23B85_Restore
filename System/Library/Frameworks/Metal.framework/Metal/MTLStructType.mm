@interface MTLStructType
+ (MTLStructType)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLStructType

+ (MTLStructType)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLStructTypeInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLStructType;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end