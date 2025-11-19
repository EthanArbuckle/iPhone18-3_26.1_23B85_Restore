@interface MPModelSharedListeningParticipant
+ (id)kind;
+ (void)__MPModelPropertySharedListeningParticipantArtwork__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelSharedListeningParticipant

- (id)artworkCatalog
{
  v3 = [(MPModelSharedListeningParticipant *)self artworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)kind
{
  v2 = objc_opt_class();

  return [(MPModelKind *)MPModelSharedListeningParticipantKind kindWithModelClass:v2];
}

+ (void)__MPModelPropertySharedListeningParticipantArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelSharedListeningParticipant.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertySharedListeningParticipantArtwork"];
}

@end