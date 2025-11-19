@interface MPModelTVShowCreator
+ (void)__MPModelPropertyTVShowCreatorArtwork__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelTVShowCreator

+ (void)__MPModelPropertyTVShowCreatorArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVShowCreator.m" lineNumber:18 description:@"Translator was missing mapping for MPModelPropertyTVShowCreatorArtwork"];
}

- (id)artworkCatalog
{
  v3 = [(MPModelTVShowCreator *)self artworkCatalogBlock];
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

@end