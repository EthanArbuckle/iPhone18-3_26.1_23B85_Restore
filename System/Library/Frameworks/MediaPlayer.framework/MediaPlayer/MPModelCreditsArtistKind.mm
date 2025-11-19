@interface MPModelCreditsArtistKind
+ (id)identityKind;
@end

@implementation MPModelCreditsArtistKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end