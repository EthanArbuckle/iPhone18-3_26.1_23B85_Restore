@interface MPModelStaticAssetKind
+ (id)identityKind;
@end

@implementation MPModelStaticAssetKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end