@interface MPModelLibraryPinKind
+ (id)identityKind;
@end

@implementation MPModelLibraryPinKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end