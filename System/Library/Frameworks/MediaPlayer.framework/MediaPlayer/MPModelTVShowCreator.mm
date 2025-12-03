@interface MPModelTVShowCreator
+ (void)__MPModelPropertyTVShowCreatorArtwork__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelTVShowCreator

+ (void)__MPModelPropertyTVShowCreatorArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShowCreator.m" lineNumber:18 description:@"Translator was missing mapping for MPModelPropertyTVShowCreatorArtwork"];
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelTVShowCreator *)self artworkCatalogBlock];
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

@end