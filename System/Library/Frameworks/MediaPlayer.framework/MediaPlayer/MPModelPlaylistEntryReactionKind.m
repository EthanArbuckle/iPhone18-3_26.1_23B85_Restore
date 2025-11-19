@interface MPModelPlaylistEntryReactionKind
+ (id)identityKind;
@end

@implementation MPModelPlaylistEntryReactionKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end