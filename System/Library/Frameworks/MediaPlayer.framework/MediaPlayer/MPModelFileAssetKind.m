@interface MPModelFileAssetKind
+ (id)identityKind;
@end

@implementation MPModelFileAssetKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end