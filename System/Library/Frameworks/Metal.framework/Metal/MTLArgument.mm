@interface MTLArgument
+ (MTLArgument)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLArgument

+ (MTLArgument)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MTLArgument *)MTLBindingInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLArgument;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end