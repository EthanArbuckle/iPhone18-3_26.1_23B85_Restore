@interface MTLFunctionConstantValues
+ (MTLFunctionConstantValues)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLFunctionConstantValues

+ (MTLFunctionConstantValues)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLFunctionConstantValuesInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLFunctionConstantValues;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end