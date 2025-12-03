@interface MPModelMovie
+ (id)classesForSecureCoding;
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyMovieArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieDuration__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieExplicitRating__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieHasCloudSyncSource__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieInfoDictionary__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieKeepLocalConstraints__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieKeepLocalEnableState__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieKeepLocalManagedStatusReason__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieKeepLocalManagedStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieLastDevicePlaybackDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieLibraryAddEligible__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieReleaseDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieStoreCanonicalID__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieTagline__MAPPING_MISSING__;
+ (void)__MPModelPropertyMovieTitle__MAPPING_MISSING__;
+ (void)__MPModelRelationshipMovieClips__MAPPING_MISSING__;
+ (void)__MPModelRelationshipMovieLocalFileAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipMoviePlaybackPosition__MAPPING_MISSING__;
+ (void)__MPModelRelationshipMovieStoreAsset__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)artworkCatalog;
- (id)editorialArtworkCatalog;
- (id)humanDescription;
- (id)mediaItemPropertyValues;
- (id)newKeepLocalStatusObserverConfiguration;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MPModelMovie

- (id)mediaItemPropertyValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MPModelMovie_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __63__MPModelMovie_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) title];
  if ([v13 length])
  {
    [*(a1 + 40) setObject:v13 forKey:@"title"];
  }

  [*(a1 + 32) duration];
  [*(a1 + 32) duration];
  if (v2 > 0.0)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 40);
    [*(a1 + 32) duration];
    v5 = [v3 numberWithDouble:?];
    [v4 setObject:v5 forKey:@"playbackDuration"];
  }

  v6 = [*(a1 + 32) identifiers];
  v7 = [v6 universalStore];
  v8 = [v7 subscriptionAdamID];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
    [v9 setObject:v10 forKey:@"storeItemAdamID"];
  }

  if (MPModelMovieIsRestricted(*(a1 + 32)))
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v12 forKey:@"isExplicit"];
  }
}

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelMovie *)self editorialArtworkCatalogBlock];
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
  artworkCatalogBlock = [(MPModelMovie *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"mediaClip %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyMovieTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    title = [(MPModelMovie *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", title];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyMovieStoreCanonicalID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:162 description:@"Translator was missing mapping for MPModelPropertyMovieStoreCanonicalID"];
}

+ (void)__MPModelPropertyMovieDownloadedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:161 description:@"Translator was missing mapping for MPModelPropertyMovieDownloadedDate"];
}

+ (void)__MPModelPropertyMovieKeepLocalConstraints__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:160 description:@"Translator was missing mapping for MPModelPropertyMovieKeepLocalConstraints"];
}

+ (void)__MPModelPropertyMovieKeepLocalManagedStatusReason__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:159 description:@"Translator was missing mapping for MPModelPropertyMovieKeepLocalManagedStatusReason"];
}

+ (void)__MPModelPropertyMovieKeepLocalManagedStatus__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:158 description:@"Translator was missing mapping for MPModelPropertyMovieKeepLocalManagedStatus"];
}

+ (void)__MPModelPropertyMovieKeepLocalEnableState__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:157 description:@"Translator was missing mapping for MPModelPropertyMovieKeepLocalEnableState"];
}

+ (void)__MPModelPropertyMovieLibraryAddEligible__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:156 description:@"Translator was missing mapping for MPModelPropertyMovieLibraryAddEligible"];
}

+ (void)__MPModelPropertyMovieLastDevicePlaybackDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:155 description:@"Translator was missing mapping for MPModelPropertyMovieLastDevicePlaybackDate"];
}

+ (void)__MPModelPropertyMovieLibraryAddedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:154 description:@"Translator was missing mapping for MPModelPropertyMovieLibraryAddedDate"];
}

+ (void)__MPModelPropertyMovieLibraryAdded__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:153 description:@"Translator was missing mapping for MPModelPropertyMovieLibraryAdded"];
}

+ (void)__MPModelPropertyMovieHasCloudSyncSource__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:152 description:@"Translator was missing mapping for MPModelPropertyMovieHasCloudSyncSource"];
}

+ (void)__MPModelPropertyMovieDuration__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:151 description:@"Translator was missing mapping for MPModelPropertyMovieDuration"];
}

+ (void)__MPModelPropertyMovieEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:150 description:@"Translator was missing mapping for MPModelPropertyMovieEditorialArtwork"];
}

+ (void)__MPModelPropertyMovieArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:149 description:@"Translator was missing mapping for MPModelPropertyMovieArtwork"];
}

+ (void)__MPModelRelationshipMovieStoreAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:148 description:@"Translator was missing mapping for MPModelRelationshipMovieStoreAsset"];
}

+ (void)__MPModelRelationshipMoviePlaybackPosition__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:147 description:@"Translator was missing mapping for MPModelRelationshipMoviePlaybackPosition"];
}

+ (void)__MPModelRelationshipMovieLocalFileAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:146 description:@"Translator was missing mapping for MPModelRelationshipMovieLocalFileAsset"];
}

+ (void)__MPModelPropertyMovieReleaseDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:145 description:@"Translator was missing mapping for MPModelPropertyMovieReleaseDate"];
}

+ (void)__MPModelRelationshipMovieClips__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:144 description:@"Translator was missing mapping for MPModelRelationshipMovieClips"];
}

+ (void)__MPModelPropertyMovieInfoDictionary__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:143 description:@"Translator was missing mapping for MPModelPropertyMovieInfoDictionary"];
}

+ (void)__MPModelPropertyMovieTagline__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:142 description:@"Translator was missing mapping for MPModelPropertyMovieTagline"];
}

+ (void)__MPModelPropertyMovieExplicitRating__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:141 description:@"Translator was missing mapping for MPModelPropertyMovieExplicitRating"];
}

+ (void)__MPModelPropertyMovieDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:140 description:@"Translator was missing mapping for MPModelPropertyMovieDescriptionText"];
}

+ (void)__MPModelPropertyMovieTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMovie.m" lineNumber:139 description:@"Translator was missing mapping for MPModelPropertyMovieTitle"];
}

+ (id)classesForSecureCoding
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];

  return v2;
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  IsRestricted = MPModelMovieIsRestricted(self);
  isLibraryAdded = [(MPModelMovie *)self isLibraryAdded];
  isLibraryAddEligible = [(MPModelMovie *)self isLibraryAddEligible];
  v6 = 0x100000000;
  if (!isLibraryAddEligible)
  {
    v6 = 0;
  }

  v7 = 256;
  if (!isLibraryAdded)
  {
    v7 = 0;
  }

  v8 = 65537;
  if (IsRestricted)
  {
    v8 = 16777217;
  }

  return (v8 | v7 | v6);
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyMovieExplicitRating";
  v5[1] = @"MPModelPropertyMovieLibraryAdded";
  v5[2] = @"MPModelPropertyMovieLibraryAddEligible";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)newKeepLocalStatusObserverConfiguration
{
  v3 = objc_alloc_init(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);
  localFileAsset = [(MPModelMovie *)self localFileAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setHasNonPurgeableAsset:](v3, "setHasNonPurgeableAsset:", [localFileAsset isNonPurgeable]);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setIdentifyingModelObject:self];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setEnableState:[(MPModelMovie *)self keepLocalEnableState]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setManagedStatus:[(MPModelMovie *)self keepLocalManagedStatus]];
  storeAsset = [(MPModelMovie *)self storeAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setStoreRedownloadable:](v3, "setStoreRedownloadable:", [storeAsset isRedownloadable]);

  return v3;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertyMovieKeepLocalEnableState";
  v15[1] = @"MPModelPropertyMovieKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertyMovieKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertyMovieKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipMovieLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipMovieStoreAsset";
  v14[0] = v5;
  v11 = @"MPModelPropertyStoreAssetRedownloadable";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

- (int64_t)libraryRemovalSupportedOptions
{
  keepLocalManagedStatus = [(MPModelMovie *)self keepLocalManagedStatus];
  isLibraryAdded = [(MPModelMovie *)self isLibraryAdded];
  localFileAsset = [(MPModelMovie *)self localFileAsset];
  storeAsset = [(MPModelMovie *)self storeAsset];
  v7 = _MPModelLibraryRemovalSupportedOptionsForIndividualItemProperties(keepLocalManagedStatus, isLibraryAdded, localFileAsset, storeAsset);

  return v7;
}

+ (id)requiredLibraryRemovalProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertyMovieLibraryAdded";
  v15[1] = @"MPModelPropertyMovieKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertyMovieKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertyMovieKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipMovieLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipMovieStoreAsset";
  v14[0] = v5;
  v11 = @"MPModelPropertyStoreAssetRedownloadable";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyMovieLibraryAddEligible";
  v5[1] = @"MPModelPropertyMovieHasCloudSyncSource";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end