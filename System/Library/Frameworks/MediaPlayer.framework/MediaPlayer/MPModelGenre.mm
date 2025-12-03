@interface MPModelGenre
+ (void)__MPModelPropertyGenreArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyGenreLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyGenreName__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelGenre

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelGenre *)self artworkCatalogBlock];
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

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v6 = [v3 stringWithFormat:@"genre %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyGenreName"])
  {
    v7 = MEMORY[0x1E696AEC0];
    name = [(MPModelGenre *)self name];
    v9 = [v7 stringWithFormat:@"“%@” ", name];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyGenreLibraryAddedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelGenre.m" lineNumber:80 description:@"Translator was missing mapping for MPModelPropertyGenreLibraryAddedDate"];
}

+ (void)__MPModelPropertyGenreArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelGenre.m" lineNumber:79 description:@"Translator was missing mapping for MPModelPropertyGenreArtwork"];
}

+ (void)__MPModelPropertyGenreName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelGenre.m" lineNumber:78 description:@"Translator was missing mapping for MPModelPropertyGenreName"];
}

@end