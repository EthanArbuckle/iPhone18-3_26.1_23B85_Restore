@interface MTLLinkedFunctions
+ (MTLLinkedFunctions)allocWithZone:(_NSZone *)zone;
+ (MTLLinkedFunctions)linkedFunctions;
@end

@implementation MTLLinkedFunctions

+ (MTLLinkedFunctions)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLLinkedFunctionsInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLLinkedFunctions;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLLinkedFunctions)linkedFunctions
{
  v2 = objc_alloc_init(MTLLinkedFunctionsInternal);

  return v2;
}

@end