@interface MPModelTVSeason
+ (id)requiredLibraryAddStatusObservationProperties;
+ (void)__MPModelPropertyTVSeasonArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonEpisodesCount__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonHasCleanContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonHasExplicitContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonLibraryAddEligible__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonSortType__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonStoreCanonicalID__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVSeasonYear__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVSeasonRepresentativeEpisode__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVSeasonShow__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)artworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelTVSeason

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelTVSeason *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"TV season %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyTVSeasonNumber"]&& [(MPModelTVSeason *)self number]>= 1)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Season %ld ", -[MPModelTVSeason number](self, "number")];
    [v6 insertString:v7 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyTVSeasonDownloadedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:110 description:@"Translator was missing mapping for MPModelPropertyTVSeasonDownloadedDate"];
}

+ (void)__MPModelPropertyTVSeasonArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:109 description:@"Translator was missing mapping for MPModelPropertyTVSeasonArtwork"];
}

+ (void)__MPModelRelationshipTVSeasonRepresentativeEpisode__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:108 description:@"Translator was missing mapping for MPModelRelationshipTVSeasonRepresentativeEpisode"];
}

+ (void)__MPModelRelationshipTVSeasonShow__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:107 description:@"Translator was missing mapping for MPModelRelationshipTVSeasonShow"];
}

+ (void)__MPModelPropertyTVSeasonStoreCanonicalID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:105 description:@"Translator was missing mapping for MPModelPropertyTVSeasonStoreCanonicalID"];
}

+ (void)__MPModelPropertyTVSeasonSortType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:104 description:@"Translator was missing mapping for MPModelPropertyTVSeasonSortType"];
}

+ (void)__MPModelPropertyTVSeasonLibraryAddEligible__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:103 description:@"Translator was missing mapping for MPModelPropertyTVSeasonLibraryAddEligible"];
}

+ (void)__MPModelPropertyTVSeasonLibraryAdded__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:102 description:@"Translator was missing mapping for MPModelPropertyTVSeasonLibraryAdded"];
}

+ (void)__MPModelPropertyTVSeasonLibraryAddedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:101 description:@"Translator was missing mapping for MPModelPropertyTVSeasonLibraryAddedDate"];
}

+ (void)__MPModelPropertyTVSeasonHasExplicitContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:100 description:@"Translator was missing mapping for MPModelPropertyTVSeasonHasExplicitContent"];
}

+ (void)__MPModelPropertyTVSeasonHasCleanContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:99 description:@"Translator was missing mapping for MPModelPropertyTVSeasonHasCleanContent"];
}

+ (void)__MPModelPropertyTVSeasonEpisodesCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyTVSeasonEpisodesCount"];
}

+ (void)__MPModelPropertyTVSeasonYear__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:97 description:@"Translator was missing mapping for MPModelPropertyTVSeasonYear"];
}

+ (void)__MPModelPropertyTVSeasonDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyTVSeasonDescriptionText"];
}

+ (void)__MPModelPropertyTVSeasonNumber__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelTVSeason.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyTVSeasonNumber"];
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  isLibraryAdded = [(MPModelTVSeason *)self isLibraryAdded];
  hasCleanContent = [(MPModelTVSeason *)self hasCleanContent];
  hasExplicitContent = [(MPModelTVSeason *)self hasExplicitContent];
  isLibraryAddEligible = [(MPModelTVSeason *)self isLibraryAddEligible];
  v7 = 0x100000000;
  if (!isLibraryAddEligible)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!hasExplicitContent)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!hasCleanContent)
  {
    v9 = 0;
  }

  v10 = 257;
  if (!isLibraryAdded)
  {
    v10 = 1;
  }

  return (v10 | v9 | v8 | v7);
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyTVSeasonHasCleanContent";
  v5[1] = @"MPModelPropertyTVSeasonHasExplicitContent";
  v5[2] = @"MPModelPropertyTVSeasonLibraryAddEligible";
  v5[3] = @"MPModelPropertyTVSeasonLibraryAdded";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end