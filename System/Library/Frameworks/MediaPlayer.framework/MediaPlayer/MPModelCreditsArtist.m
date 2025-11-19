@interface MPModelCreditsArtist
+ (void)__MPModelPropertyCreditsArtistArtwork__MAPPING_MISSING__;
+ (void)__MPModelRelationshipCreditsArtistRelatedArtist__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelCreditsArtist

- (id)artworkCatalog
{
  v3 = [(MPModelCreditsArtist *)self artworkCatalogBlock];
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

+ (void)__MPModelPropertyCreditsArtistArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCreditsArtist.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertyCreditsArtistArtwork"];
}

+ (void)__MPModelRelationshipCreditsArtistRelatedArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCreditsArtist.m" lineNumber:29 description:@"Translator was missing mapping for MPModelRelationshipCreditsArtistRelatedArtist"];
}

@end