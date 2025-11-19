@interface MPModelSocialPersonKind
+ (id)identityKind;
@end

@implementation MPModelSocialPersonKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end