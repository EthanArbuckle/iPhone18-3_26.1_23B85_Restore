@interface MPModelSharedListeningParticipantKind
+ (id)identityKind;
@end

@implementation MPModelSharedListeningParticipantKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end