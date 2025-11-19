@interface MPModelMediaClipKind
+ (id)identityKind;
@end

@implementation MPModelMediaClipKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end