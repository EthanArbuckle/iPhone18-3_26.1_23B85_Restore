@interface MPModelSharedListeningParticipant
+ (id)kind;
+ (void)__MPModelPropertySharedListeningParticipantArtwork__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelSharedListeningParticipant

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelSharedListeningParticipant *)self artworkCatalogBlock];
  v4 = artworkCatalogBlock;
  if (artworkCatalogBlock)
  {
    v5 = (*(artworkCatalogBlock + 16))(artworkCatalogBlock, self);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSharedListeningParticipant.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertySharedListeningParticipantArtwork"];
}

@end