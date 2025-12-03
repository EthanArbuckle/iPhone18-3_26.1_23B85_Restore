@interface MPModelTVShow
+ (void)__MPModelPropertyTVShowArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowEpisodeCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowShortEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowShortTitle__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowStoreCanonicalID__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowTagline__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVShowTitle__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVShowCreator__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)editorialArtworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelTVShow

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelTVShow *)self editorialArtworkCatalogBlock];
  v4 = editorialArtworkCatalogBlock;
  if (editorialArtworkCatalogBlock)
  {
    v5 = (*(editorialArtworkCatalogBlock + 16))(editorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelTVShow *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"TV show %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyTVShowTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    title = [(MPModelTVShow *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", title];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyTVShowStoreCanonicalID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:101 description:@"Translator was missing mapping for MPModelPropertyTVShowStoreCanonicalID"];
}

+ (void)__MPModelPropertyTVShowTagline__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:100 description:@"Translator was missing mapping for MPModelPropertyTVShowTagline"];
}

+ (void)__MPModelPropertyTVShowEpisodeCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:99 description:@"Translator was missing mapping for MPModelPropertyTVShowEpisodeCount"];
}

+ (void)__MPModelPropertyTVShowEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyTVShowEditorialArtwork"];
}

+ (void)__MPModelPropertyTVShowArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:97 description:@"Translator was missing mapping for MPModelPropertyTVShowArtwork"];
}

+ (void)__MPModelRelationshipTVShowCreator__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:96 description:@"Translator was missing mapping for MPModelRelationshipTVShowCreator"];
}

+ (void)__MPModelPropertyTVShowShortEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyTVShowShortEditorNotes"];
}

+ (void)__MPModelPropertyTVShowEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyTVShowEditorNotes"];
}

+ (void)__MPModelPropertyTVShowShortTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyTVShowShortTitle"];
}

+ (void)__MPModelPropertyTVShowTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVShow.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyTVShowTitle"];
}

@end