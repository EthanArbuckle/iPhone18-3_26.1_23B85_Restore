@interface _PKFakeFixInfo
+ (id)disableInfoWithInteractionValue:(unint64_t)value;
@end

@implementation _PKFakeFixInfo

+ (id)disableInfoWithInteractionValue:(unint64_t)value
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = value;

  return v4;
}

@end