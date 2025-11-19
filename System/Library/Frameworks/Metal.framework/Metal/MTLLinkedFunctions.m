@interface MTLLinkedFunctions
+ (MTLLinkedFunctions)allocWithZone:(_NSZone *)a3;
+ (MTLLinkedFunctions)linkedFunctions;
@end

@implementation MTLLinkedFunctions

+ (MTLLinkedFunctions)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLLinkedFunctionsInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLLinkedFunctions;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLLinkedFunctions)linkedFunctions
{
  v2 = objc_alloc_init(MTLLinkedFunctionsInternal);

  return v2;
}

@end