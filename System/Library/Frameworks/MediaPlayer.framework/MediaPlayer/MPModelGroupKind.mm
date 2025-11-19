@interface MPModelGroupKind
+ (id)identityKind;
@end

@implementation MPModelGroupKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end