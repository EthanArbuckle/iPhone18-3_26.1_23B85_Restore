@interface MTLFunctionReflection
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLFunctionReflection

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLFunctionReflectionInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLFunctionReflection;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end