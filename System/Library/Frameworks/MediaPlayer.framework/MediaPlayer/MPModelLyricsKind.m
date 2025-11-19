@interface MPModelLyricsKind
+ (id)identityKind;
@end

@implementation MPModelLyricsKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end