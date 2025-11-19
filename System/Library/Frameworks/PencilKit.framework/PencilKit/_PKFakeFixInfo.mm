@interface _PKFakeFixInfo
+ (id)disableInfoWithInteractionValue:(unint64_t)a3;
@end

@implementation _PKFakeFixInfo

+ (id)disableInfoWithInteractionValue:(unint64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = a3;

  return v4;
}

@end