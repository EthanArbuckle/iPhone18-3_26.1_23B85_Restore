@interface MPModelArtist
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyArtistAlbumCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistClassicalExperienceAvailable__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistCleanDownloadedSongCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistCleanSongCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistDateFavorited__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistDownloadedSongCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistHasBiography__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistIsDisliked__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistIsFavorite__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistIsPinned__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyArtistSongCount__MAPPING_MISSING__;
+ (void)__MPModelRelationshipArtistGenre__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)editorialArtworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelArtist

- (id)editorialArtworkCatalog
{
  v3 = [(MPModelArtist *)self editorialArtworkCatalogBlock];
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

- (id)artworkCatalog
{
  v3 = [(MPModelArtist *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"artist %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyPersonName"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelArtist *)self name];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyArtistIsPinned__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:102 description:@"Translator was missing mapping for MPModelPropertyArtistIsPinned"];
}

+ (void)__MPModelPropertyArtistLibraryAdded__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:101 description:@"Translator was missing mapping for MPModelPropertyArtistLibraryAdded"];
}

+ (void)__MPModelPropertyArtistDateFavorited__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:100 description:@"Translator was missing mapping for MPModelPropertyArtistDateFavorited"];
}

+ (void)__MPModelPropertyArtistIsDisliked__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:99 description:@"Translator was missing mapping for MPModelPropertyArtistIsDisliked"];
}

+ (void)__MPModelPropertyArtistIsFavorite__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyArtistIsFavorite"];
}

+ (void)__MPModelPropertyArtistClassicalExperienceAvailable__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:97 description:@"Translator was missing mapping for MPModelPropertyArtistClassicalExperienceAvailable"];
}

+ (void)__MPModelPropertyArtistLibraryAddedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyArtistLibraryAddedDate"];
}

+ (void)__MPModelPropertyArtistAlbumCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyArtistAlbumCount"];
}

+ (void)__MPModelPropertyArtistCleanDownloadedSongCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyArtistCleanDownloadedSongCount"];
}

+ (void)__MPModelPropertyArtistCleanSongCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyArtistCleanSongCount"];
}

+ (void)__MPModelPropertyArtistDownloadedSongCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyArtistDownloadedSongCount"];
}

+ (void)__MPModelPropertyArtistSongCount__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:91 description:@"Translator was missing mapping for MPModelPropertyArtistSongCount"];
}

+ (void)__MPModelRelationshipArtistGenre__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:90 description:@"Translator was missing mapping for MPModelRelationshipArtistGenre"];
}

+ (void)__MPModelPropertyArtistEditorialArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:89 description:@"Translator was missing mapping for MPModelPropertyArtistEditorialArtwork"];
}

+ (void)__MPModelPropertyArtistArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:88 description:@"Translator was missing mapping for MPModelPropertyArtistArtwork"];
}

+ (void)__MPModelPropertyArtistHasBiography__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelArtist.m" lineNumber:87 description:@"Translator was missing mapping for MPModelPropertyArtistHasBiography"];
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyArtistIsFavorite";
  v5[1] = @"MPModelPropertyArtistIsDisliked";
  v5[2] = @"MPModelPropertyArtistLibraryAdded";
  v5[3] = @"MPModelPropertyArtistIsPinned";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end