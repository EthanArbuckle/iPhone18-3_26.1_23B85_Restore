@interface MPModelTVEpisode
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertyTVEpisodeArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeDuration__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeExplicitRating__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeHasCloudSyncSource__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeKeepLocalConstraints__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeKeepLocalEnableState__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeKeepLocalManagedStatusReason__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeKeepLocalManagedStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeLastDevicePlaybackDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeLibraryAddEligible__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeMusicShow__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeReleaseDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeStoreCanonicalID__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeTitle__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeTypeDisplayName__MAPPING_MISSING__;
+ (void)__MPModelPropertyTVEpisodeType__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVEpisodeLocalFileAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVEpisodePlaybackPosition__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVEpisodeSeason__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVEpisodeShow__MAPPING_MISSING__;
+ (void)__MPModelRelationshipTVEpisodeStoreAsset__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)artworkCatalog;
- (id)humanDescription;
- (id)mediaItemPropertyValues;
- (id)newKeepLocalStatusObserverConfiguration;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MPModelTVEpisode

- (id)mediaItemPropertyValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MPModelTVEpisode_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __67__MPModelTVEpisode_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke(uint64_t a1)
{
  v26 = [*(a1 + 32) title];
  if ([v26 length])
  {
    [*(a1 + 40) setObject:v26 forKey:@"title"];
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

  v6 = [*(a1 + 32) show];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifiers];
    v9 = [v8 personalizedStore];
    v10 = [v9 cloudID];

    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
      [v11 setObject:v12 forKey:@"storeArtistAdamID"];
    }

    v13 = [v7 title];
    if ([v13 length])
    {
      [*(a1 + 40) setObject:v13 forKey:@"artist"];
    }
  }

  v14 = [*(a1 + 32) season];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 number];
    if (v16)
    {
      v17 = *(a1 + 40);
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      [v17 setObject:v18 forKey:@"seasonNumber"];
    }
  }

  v19 = [*(a1 + 32) identifiers];
  v20 = [v19 universalStore];
  v21 = [v20 subscriptionAdamID];

  if (v21)
  {
    v22 = *(a1 + 40);
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:v21];
    [v22 setObject:v23 forKey:@"storeItemAdamID"];
  }

  if (MPModelTVEpisodeIsRestricted(*(a1 + 32)))
  {
    v24 = *(a1 + 40);
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v24 setObject:v25 forKey:@"isExplicit"];
  }
}

- (id)artworkCatalog
{
  v3 = [(MPModelTVEpisode *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"TV episode %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyTVEpisodeTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelTVEpisode *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyTVEpisodeDownloadedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:146 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeDownloadedDate"];
}

+ (void)__MPModelPropertyTVEpisodeArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:145 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeArtwork"];
}

+ (void)__MPModelPropertyTVEpisodeKeepLocalConstraints__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:144 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeKeepLocalConstraints"];
}

+ (void)__MPModelPropertyTVEpisodeKeepLocalManagedStatusReason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:143 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"];
}

+ (void)__MPModelPropertyTVEpisodeKeepLocalManagedStatus__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:142 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeKeepLocalManagedStatus"];
}

+ (void)__MPModelPropertyTVEpisodeKeepLocalEnableState__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:141 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeKeepLocalEnableState"];
}

+ (void)__MPModelPropertyTVEpisodeLibraryAddEligible__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:140 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeLibraryAddEligible"];
}

+ (void)__MPModelPropertyTVEpisodeLastDevicePlaybackDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:139 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeLastDevicePlaybackDate"];
}

+ (void)__MPModelPropertyTVEpisodeLibraryAddedDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:138 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeLibraryAddedDate"];
}

+ (void)__MPModelPropertyTVEpisodeLibraryAdded__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:137 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeLibraryAdded"];
}

+ (void)__MPModelPropertyTVEpisodeTypeDisplayName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:136 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeTypeDisplayName"];
}

+ (void)__MPModelPropertyTVEpisodeType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:135 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeType"];
}

+ (void)__MPModelPropertyTVEpisodeReleaseDate__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:134 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeReleaseDate"];
}

+ (void)__MPModelPropertyTVEpisodeStoreCanonicalID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:132 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeStoreCanonicalID"];
}

+ (void)__MPModelRelationshipTVEpisodeShow__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:131 description:@"Translator was missing mapping for MPModelRelationshipTVEpisodeShow"];
}

+ (void)__MPModelRelationshipTVEpisodeSeason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:130 description:@"Translator was missing mapping for MPModelRelationshipTVEpisodeSeason"];
}

+ (void)__MPModelRelationshipTVEpisodeStoreAsset__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:129 description:@"Translator was missing mapping for MPModelRelationshipTVEpisodeStoreAsset"];
}

+ (void)__MPModelRelationshipTVEpisodePlaybackPosition__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:128 description:@"Translator was missing mapping for MPModelRelationshipTVEpisodePlaybackPosition"];
}

+ (void)__MPModelRelationshipTVEpisodeLocalFileAsset__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:127 description:@"Translator was missing mapping for MPModelRelationshipTVEpisodeLocalFileAsset"];
}

+ (void)__MPModelPropertyTVEpisodeExplicitRating__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:126 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeExplicitRating"];
}

+ (void)__MPModelPropertyTVEpisodeNumber__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:125 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeNumber"];
}

+ (void)__MPModelPropertyTVEpisodeMusicShow__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:124 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeMusicShow"];
}

+ (void)__MPModelPropertyTVEpisodeHasCloudSyncSource__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:123 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeHasCloudSyncSource"];
}

+ (void)__MPModelPropertyTVEpisodeDuration__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:122 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeDuration"];
}

+ (void)__MPModelPropertyTVEpisodeDescriptionText__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:121 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeDescriptionText"];
}

+ (void)__MPModelPropertyTVEpisodeTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelTVEpisode.m" lineNumber:120 description:@"Translator was missing mapping for MPModelPropertyTVEpisodeTitle"];
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  IsRestricted = MPModelTVEpisodeIsRestricted(self);
  v4 = [(MPModelTVEpisode *)self isLibraryAdded];
  v5 = [(MPModelTVEpisode *)self isLibraryAddEligible];
  v6 = 0x100000000;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v4)
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
  v5[0] = @"MPModelPropertyTVEpisodeExplicitRating";
  v5[1] = @"MPModelPropertyTVEpisodeLibraryAdded";
  v5[2] = @"MPModelPropertyTVEpisodeLibraryAddEligible";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)newKeepLocalStatusObserverConfiguration
{
  v3 = objc_alloc_init(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);
  v4 = [(MPModelTVEpisode *)self localFileAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setHasNonPurgeableAsset:](v3, "setHasNonPurgeableAsset:", [v4 isNonPurgeable]);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setIdentifyingModelObject:self];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setEnableState:[(MPModelTVEpisode *)self keepLocalEnableState]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setManagedStatus:[(MPModelTVEpisode *)self keepLocalManagedStatus]];
  v5 = [(MPModelTVEpisode *)self storeAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setStoreRedownloadable:](v3, "setStoreRedownloadable:", [v5 isRedownloadable]);

  return v3;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertyTVEpisodeKeepLocalEnableState";
  v15[1] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertyTVEpisodeKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipTVEpisodeLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipTVEpisodeStoreAsset";
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
  v3 = [(MPModelTVEpisode *)self keepLocalManagedStatus];
  v4 = [(MPModelTVEpisode *)self isLibraryAdded];
  v5 = [(MPModelTVEpisode *)self localFileAsset];
  v6 = [(MPModelTVEpisode *)self storeAsset];
  v7 = _MPModelLibraryRemovalSupportedOptionsForIndividualItemProperties(v3, v4, v5, v6);

  return v7;
}

+ (id)requiredLibraryRemovalProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertyTVEpisodeLibraryAdded";
  v15[1] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertyTVEpisodeKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipTVEpisodeLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipTVEpisodeStoreAsset";
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
  v5[0] = @"MPModelPropertyTVEpisodeLibraryAddEligible";
  v5[1] = @"MPModelPropertyTVEpisodeHasCloudSyncSource";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end