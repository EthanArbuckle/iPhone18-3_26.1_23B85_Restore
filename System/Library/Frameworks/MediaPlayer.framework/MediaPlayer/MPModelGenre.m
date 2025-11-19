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
  v3 = [(MPModelGenre *)self artworkCatalogBlock];
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

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(MPModelObject *)self identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"genre %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyGenreName"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelGenre *)self name];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyGenreLibraryAddedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenre.m" lineNumber:80 description:@"Translator was missing mapping for MPModelPropertyGenreLibraryAddedDate"];
}

+ (void)__MPModelPropertyGenreArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenre.m" lineNumber:79 description:@"Translator was missing mapping for MPModelPropertyGenreArtwork"];
}

+ (void)__MPModelPropertyGenreName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenre.m" lineNumber:78 description:@"Translator was missing mapping for MPModelPropertyGenreName"];
}

@end