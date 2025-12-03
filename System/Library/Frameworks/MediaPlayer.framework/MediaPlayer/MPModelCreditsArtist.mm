@interface MPModelCreditsArtist
+ (void)__MPModelPropertyCreditsArtistArtwork__MAPPING_MISSING__;
+ (void)__MPModelRelationshipCreditsArtistRelatedArtist__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelCreditsArtist

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelCreditsArtist *)self artworkCatalogBlock];
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

+ (void)__MPModelPropertyCreditsArtistArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCreditsArtist.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertyCreditsArtistArtwork"];
}

+ (void)__MPModelRelationshipCreditsArtistRelatedArtist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCreditsArtist.m" lineNumber:29 description:@"Translator was missing mapping for MPModelRelationshipCreditsArtistRelatedArtist"];
}

@end