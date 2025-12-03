@interface MPModelSong
+ (id)requiredKeepLocalStatusObservationProperties;
+ (id)requiredLibraryAddStatusObservationProperties;
+ (id)requiredLibraryRemovalProperties;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelPropertySongAnimatedArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertySongArtistUploadedContent__MAPPING_MISSING__;
+ (void)__MPModelPropertySongArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertySongBeatsPerMinute__MAPPING_MISSING__;
+ (void)__MPModelPropertySongClassicalMovementCount__MAPPING_MISSING__;
+ (void)__MPModelPropertySongClassicalMovementNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertySongClassicalMovement__MAPPING_MISSING__;
+ (void)__MPModelPropertySongClassicalWork__MAPPING_MISSING__;
+ (void)__MPModelPropertySongCloudStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertySongCopyrightText__MAPPING_MISSING__;
+ (void)__MPModelPropertySongDateFavorited__MAPPING_MISSING__;
+ (void)__MPModelPropertySongDateReleased__MAPPING_MISSING__;
+ (void)__MPModelPropertySongDiscNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertySongDownloadedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertySongDuration__MAPPING_MISSING__;
+ (void)__MPModelPropertySongExplicit__MAPPING_MISSING__;
+ (void)__MPModelPropertySongGaplessInfo__MAPPING_MISSING__;
+ (void)__MPModelPropertySongGrouping__MAPPING_MISSING__;
+ (void)__MPModelPropertySongHasCloudSyncSource__MAPPING_MISSING__;
+ (void)__MPModelPropertySongHasCredits__MAPPING_MISSING__;
+ (void)__MPModelPropertySongHasVideo__MAPPING_MISSING__;
+ (void)__MPModelPropertySongImmersiveDeeplinkURL__MAPPING_MISSING__;
+ (void)__MPModelPropertySongIsDisliked__MAPPING_MISSING__;
+ (void)__MPModelPropertySongIsFavorite__MAPPING_MISSING__;
+ (void)__MPModelPropertySongIsPinned__MAPPING_MISSING__;
+ (void)__MPModelPropertySongKeepLocalConstraints__MAPPING_MISSING__;
+ (void)__MPModelPropertySongKeepLocalEnableState__MAPPING_MISSING__;
+ (void)__MPModelPropertySongKeepLocalManagedStatusReason__MAPPING_MISSING__;
+ (void)__MPModelPropertySongKeepLocalManagedStatus__MAPPING_MISSING__;
+ (void)__MPModelPropertySongLastDevicePlaybackDate__MAPPING_MISSING__;
+ (void)__MPModelPropertySongLibraryAddEligible__MAPPING_MISSING__;
+ (void)__MPModelPropertySongLibraryAddedDate__MAPPING_MISSING__;
+ (void)__MPModelPropertySongLibraryAdded__MAPPING_MISSING__;
+ (void)__MPModelPropertySongPlayCount__MAPPING_MISSING__;
+ (void)__MPModelPropertySongShouldShowComposer__MAPPING_MISSING__;
+ (void)__MPModelPropertySongSkipCount__MAPPING_MISSING__;
+ (void)__MPModelPropertySongSupportsExtendedLyricsAttribute__MAPPING_MISSING__;
+ (void)__MPModelPropertySongTitle__MAPPING_MISSING__;
+ (void)__MPModelPropertySongTrackNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertySongTraits__MAPPING_MISSING__;
+ (void)__MPModelPropertySongUserRating__MAPPING_MISSING__;
+ (void)__MPModelPropertySongVolumeAdjustment__MAPPING_MISSING__;
+ (void)__MPModelPropertySongVolumeNormalization__MAPPING_MISSING__;
+ (void)__MPModelPropertySongYear__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongAlbum__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongComposer__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongGenre__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongHomeSharingAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongLocalFileAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongLyrics__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongPlaybackPosition__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongPreviewAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipSongStoreAsset__MAPPING_MISSING__;
+ (void)___MPModelPropertySongTrackCount__MAPPING_MISSING__;
- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration;
- (id)animatedArtworkCatalogForFormat:(int64_t)format;
- (id)artworkCatalog;
- (id)humanDescription;
- (id)mediaItemPropertyValues;
- (id)newKeepLocalStatusObserverConfiguration;
- (int64_t)libraryRemovalSupportedOptions;
@end

@implementation MPModelSong

+ (id)requiredLibraryRemovalProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertySongLibraryAdded";
  v15[1] = @"MPModelPropertySongKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertySongKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertySongKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipSongLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipSongStoreAsset";
  v14[0] = v5;
  v11 = @"MPModelPropertyStoreAssetRedownloadable";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

+ (id)requiredLibraryAddStatusObservationProperties
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertySongExplicit";
  v5[1] = @"MPModelPropertySongArtistUploadedContent";
  v5[2] = @"MPModelPropertySongLibraryAdded";
  v5[3] = @"MPModelPropertySongLibraryAddEligible";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)requiredKeepLocalStatusObservationProperties
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v15[0] = @"MPModelPropertySongKeepLocalEnableState";
  v15[1] = @"MPModelPropertySongKeepLocalManagedStatus";
  v15[2] = @"MPModelPropertySongKeepLocalManagedStatusReason";
  v15[3] = @"MPModelPropertySongKeepLocalConstraints";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v12 = @"MPModelPropertyFileAssetNonPurgeable";
  v13[0] = @"MPModelRelationshipSongLocalFileAsset";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v13[1] = @"MPModelRelationshipSongStoreAsset";
  v14[0] = v5;
  v11 = @"MPModelPropertyStoreAssetRedownloadable";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v7 = [MPPropertySet propertySetWithProperties:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v8];

  return v9;
}

- (MPLibraryAddStatusObserverConfiguration)libraryAddStatusObserverConfiguration
{
  isExplicitSong = [(MPModelSong *)self isExplicitSong];
  v4 = ~[(MPModelSong *)self isArtistUploadedContent];
  isLibraryAdded = [(MPModelSong *)self isLibraryAdded];
  isLibraryAddEligible = [(MPModelSong *)self isLibraryAddEligible];
  v7 = 0x100000000;
  if (!isLibraryAddEligible)
  {
    v7 = 0;
  }

  v8 = 256;
  if (!isLibraryAdded)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (isExplicitSong)
  {
    v9 = 0x1000000;
  }

  return (v9 & 0xFFFFFFFFFFFFFFFELL | v4 & 1 | v8 | v7);
}

- (id)mediaItemPropertyValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MPModelSong_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __62__MPModelSong_MPModelObjectMediaItem__mediaItemPropertyValues__block_invoke(uint64_t a1)
{
  v56 = [*(a1 + 32) title];
  if ([v56 length])
  {
    [*(a1 + 40) setObject:v56 forKey:@"title"];
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

  v6 = [*(a1 + 32) artist];
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

    v13 = [v7 name];
    if ([v13 length])
    {
      [*(a1 + 40) setObject:v13 forKey:@"artist"];
    }
  }

  v14 = [*(a1 + 32) album];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 title];
    if ([v16 length])
    {
      [*(a1 + 40) setObject:v16 forKey:@"albumTitle"];
    }

    v17 = [v15 discCount];
    if (v17 >= 1)
    {
      v18 = *(a1 + 40);
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
      [v18 setObject:v19 forKey:@"discCount"];
    }

    v20 = [v15 releaseDateComponents];
    if (v20)
    {
      v21 = [MEMORY[0x1E695DEE8] currentCalendar];
      v22 = [v21 dateFromComponents:v20];

      if (v22)
      {
        [*(a1 + 40) setObject:v22 forKey:@"releaseDate"];
      }
    }

    v23 = [v15 trackCount];
    if (v23 >= 1)
    {
      v24 = *(a1 + 40);
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      [v24 setObject:v25 forKey:@"albumTrackCount"];
    }
  }

  v26 = [*(a1 + 32) identifiers];
  v27 = [v26 library];
  v28 = [v27 persistentID];

  if (v28)
  {
    v29 = *(a1 + 40);
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:v28];
    [v29 setObject:v30 forKey:@"persistentID"];
  }

  v31 = [*(a1 + 32) identifiers];
  v32 = [v31 universalStore];
  v33 = [v32 subscriptionAdamID];

  if (v33)
  {
    v34 = *(a1 + 40);
    v35 = [MEMORY[0x1E696AD98] numberWithLongLong:v33];
    [v34 setObject:v35 forKey:@"storeItemAdamID"];

    v36 = *(a1 + 40);
    v37 = [MEMORY[0x1E696AD98] numberWithLongLong:v33];
    [v36 setObject:v37 forKey:@"subscriptionStoreItemAdamID"];

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", v33];
    [*(a1 + 40) setObject:v38 forKey:@"playbackStoreID"];
  }

  v39 = [*(a1 + 32) copyrightText];
  if ([v39 length])
  {
    [*(a1 + 40) setObject:v39 forKey:@"copyright"];
  }

  v40 = [*(a1 + 32) discNumber];
  if (v40 >= 1)
  {
    v41 = *(a1 + 40);
    v42 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
    [v41 setObject:v42 forKey:@"discNumber"];
  }

  v43 = [*(a1 + 32) genre];
  v44 = [v43 name];
  if ([v44 length])
  {
    [*(a1 + 40) setObject:v44 forKey:@"genre"];
  }

  if ([*(a1 + 32) hasVideo])
  {
    [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKey:@"isMusicVideo"];
  }

  if ([*(a1 + 32) isExplicitSong])
  {
    v45 = *(a1 + 40);
    v46 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v45 setObject:v46 forKey:@"isExplicit"];
  }

  v47 = [*(a1 + 32) trackNumber];
  if (v47 >= 1)
  {
    v48 = *(a1 + 40);
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
    [v48 setObject:v49 forKey:@"albumTrackNumber"];
  }

  if ([*(a1 + 32) supportsExtendedLyricsAttribute])
  {
    [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKey:@"storeExtendedLyricsAttribute"];
  }

  v50 = [*(a1 + 32) localFileAsset];
  v51 = v50;
  if (v50 && ![v50 protectionType])
  {
    v52 = [v51 filePath];
    v53 = [v52 pathExtension];

    v54 = [v53 length];
    if (v28 && v54)
    {
      v55 = [MEMORY[0x1E695DFF8] msv_urlForMediaAssetWithPersistentID:v28 pathExtension:v53];
      [*(a1 + 40) setObject:v55 forKey:@"assetURL"];
    }
  }
}

- (id)animatedArtworkCatalogForFormat:(int64_t)format
{
  if (_os_feature_enabled_impl())
  {
    animatedArtworkCatalogBlock = [(MPModelSong *)self animatedArtworkCatalogBlock];
    v6 = animatedArtworkCatalogBlock;
    if (animatedArtworkCatalogBlock)
    {
      v7 = (*(animatedArtworkCatalogBlock + 16))(animatedArtworkCatalogBlock, format);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelSong *)self artworkCatalogBlock];
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
  v3 = @"song";
  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertySongHasVideo"]&& [(MPModelSong *)self hasVideo])
  {
    v3 = @"musicVideo";
  }

  v4 = MEMORY[0x1E696AD60];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v7 = [v4 stringWithFormat:@"%@ %@", v3, humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertySongTitle"])
  {
    v8 = MEMORY[0x1E696AEC0];
    title = [(MPModelSong *)self title];
    v10 = [v8 stringWithFormat:@"“%@” ", title];

    [v7 insertString:v10 atIndex:0];
  }

  return v7;
}

+ (void)__MPModelPropertySongDateReleased__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:182 description:@"Translator was missing mapping for MPModelPropertySongDateReleased"];
}

+ (void)__MPModelPropertySongImmersiveDeeplinkURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:181 description:@"Translator was missing mapping for MPModelPropertySongImmersiveDeeplinkURL"];
}

+ (void)__MPModelPropertySongIsPinned__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:180 description:@"Translator was missing mapping for MPModelPropertySongIsPinned"];
}

+ (void)__MPModelPropertySongHasCredits__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:179 description:@"Translator was missing mapping for MPModelPropertySongHasCredits"];
}

+ (void)__MPModelPropertySongSupportsExtendedLyricsAttribute__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:178 description:@"Translator was missing mapping for MPModelPropertySongSupportsExtendedLyricsAttribute"];
}

+ (void)__MPModelPropertySongDateFavorited__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:177 description:@"Translator was missing mapping for MPModelPropertySongDateFavorited"];
}

+ (void)__MPModelPropertySongIsDisliked__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:176 description:@"Translator was missing mapping for MPModelPropertySongIsDisliked"];
}

+ (void)__MPModelPropertySongIsFavorite__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:175 description:@"Translator was missing mapping for MPModelPropertySongIsFavorite"];
}

+ (void)__MPModelPropertySongTraits__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:174 description:@"Translator was missing mapping for MPModelPropertySongTraits"];
}

+ (void)__MPModelPropertySongDownloadedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:173 description:@"Translator was missing mapping for MPModelPropertySongDownloadedDate"];
}

+ (void)__MPModelRelationshipSongPlaybackPosition__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:172 description:@"Translator was missing mapping for MPModelRelationshipSongPlaybackPosition"];
}

+ (void)__MPModelPropertySongVolumeAdjustment__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:171 description:@"Translator was missing mapping for MPModelPropertySongVolumeAdjustment"];
}

+ (void)__MPModelPropertySongGaplessInfo__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:170 description:@"Translator was missing mapping for MPModelPropertySongGaplessInfo"];
}

+ (void)__MPModelPropertySongCloudStatus__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:169 description:@"Translator was missing mapping for MPModelPropertySongCloudStatus"];
}

+ (void)__MPModelPropertySongUserRating__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:168 description:@"Translator was missing mapping for MPModelPropertySongUserRating"];
}

+ (void)__MPModelRelationshipSongPreviewAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:167 description:@"Translator was missing mapping for MPModelRelationshipSongPreviewAsset"];
}

+ (void)__MPModelRelationshipSongStoreAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:166 description:@"Translator was missing mapping for MPModelRelationshipSongStoreAsset"];
}

+ (void)__MPModelRelationshipSongHomeSharingAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:165 description:@"Translator was missing mapping for MPModelRelationshipSongHomeSharingAsset"];
}

+ (void)__MPModelPropertySongYear__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:164 description:@"Translator was missing mapping for MPModelPropertySongYear"];
}

+ (void)__MPModelPropertySongClassicalMovementNumber__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:163 description:@"Translator was missing mapping for MPModelPropertySongClassicalMovementNumber"];
}

+ (void)__MPModelPropertySongClassicalMovementCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:162 description:@"Translator was missing mapping for MPModelPropertySongClassicalMovementCount"];
}

+ (void)__MPModelPropertySongClassicalMovement__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:161 description:@"Translator was missing mapping for MPModelPropertySongClassicalMovement"];
}

+ (void)__MPModelPropertySongClassicalWork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:160 description:@"Translator was missing mapping for MPModelPropertySongClassicalWork"];
}

+ (void)__MPModelPropertySongHasCloudSyncSource__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:159 description:@"Translator was missing mapping for MPModelPropertySongHasCloudSyncSource"];
}

+ (void)__MPModelPropertySongLibraryAddEligible__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:158 description:@"Translator was missing mapping for MPModelPropertySongLibraryAddEligible"];
}

+ (void)__MPModelPropertySongLastDevicePlaybackDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:157 description:@"Translator was missing mapping for MPModelPropertySongLastDevicePlaybackDate"];
}

+ (void)__MPModelPropertySongLibraryAddedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:156 description:@"Translator was missing mapping for MPModelPropertySongLibraryAddedDate"];
}

+ (void)__MPModelPropertySongLibraryAdded__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:155 description:@"Translator was missing mapping for MPModelPropertySongLibraryAdded"];
}

+ (void)__MPModelPropertySongKeepLocalConstraints__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:154 description:@"Translator was missing mapping for MPModelPropertySongKeepLocalConstraints"];
}

+ (void)__MPModelPropertySongKeepLocalManagedStatusReason__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:153 description:@"Translator was missing mapping for MPModelPropertySongKeepLocalManagedStatusReason"];
}

+ (void)__MPModelPropertySongKeepLocalManagedStatus__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:152 description:@"Translator was missing mapping for MPModelPropertySongKeepLocalManagedStatus"];
}

+ (void)__MPModelPropertySongKeepLocalEnableState__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:151 description:@"Translator was missing mapping for MPModelPropertySongKeepLocalEnableState"];
}

+ (void)__MPModelRelationshipSongLocalFileAsset__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:150 description:@"Translator was missing mapping for MPModelRelationshipSongLocalFileAsset"];
}

+ (void)__MPModelPropertySongAnimatedArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:149 description:@"Translator was missing mapping for MPModelPropertySongAnimatedArtwork"];
}

+ (void)__MPModelPropertySongArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:148 description:@"Translator was missing mapping for MPModelPropertySongArtwork"];
}

+ (void)__MPModelPropertySongVolumeNormalization__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:147 description:@"Translator was missing mapping for MPModelPropertySongVolumeNormalization"];
}

+ (void)__MPModelPropertySongShouldShowComposer__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:146 description:@"Translator was missing mapping for MPModelPropertySongShouldShowComposer"];
}

+ (void)__MPModelRelationshipSongLyrics__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:145 description:@"Translator was missing mapping for MPModelRelationshipSongLyrics"];
}

+ (void)__MPModelPropertySongBeatsPerMinute__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:144 description:@"Translator was missing mapping for MPModelPropertySongBeatsPerMinute"];
}

+ (void)__MPModelPropertySongHasVideo__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:143 description:@"Translator was missing mapping for MPModelPropertySongHasVideo"];
}

+ (void)__MPModelPropertySongArtistUploadedContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:142 description:@"Translator was missing mapping for MPModelPropertySongArtistUploadedContent"];
}

+ (void)__MPModelPropertySongExplicit__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:141 description:@"Translator was missing mapping for MPModelPropertySongExplicit"];
}

+ (void)__MPModelPropertySongSkipCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:140 description:@"Translator was missing mapping for MPModelPropertySongSkipCount"];
}

+ (void)__MPModelPropertySongPlayCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:139 description:@"Translator was missing mapping for MPModelPropertySongPlayCount"];
}

+ (void)__MPModelPropertySongDiscNumber__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:138 description:@"Translator was missing mapping for MPModelPropertySongDiscNumber"];
}

+ (void)__MPModelPropertySongTrackNumber__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:137 description:@"Translator was missing mapping for MPModelPropertySongTrackNumber"];
}

+ (void)___MPModelPropertySongTrackCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:136 description:@"Translator was missing mapping for _MPModelPropertySongTrackCount"];
}

+ (void)__MPModelPropertySongDuration__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:135 description:@"Translator was missing mapping for MPModelPropertySongDuration"];
}

+ (void)__MPModelPropertySongCopyrightText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:134 description:@"Translator was missing mapping for MPModelPropertySongCopyrightText"];
}

+ (void)__MPModelPropertySongGrouping__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:133 description:@"Translator was missing mapping for MPModelPropertySongGrouping"];
}

+ (void)__MPModelRelationshipSongComposer__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:132 description:@"Translator was missing mapping for MPModelRelationshipSongComposer"];
}

+ (void)__MPModelRelationshipSongGenre__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:131 description:@"Translator was missing mapping for MPModelRelationshipSongGenre"];
}

+ (void)__MPModelRelationshipSongArtist__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:130 description:@"Translator was missing mapping for MPModelRelationshipSongArtist"];
}

+ (void)__MPModelRelationshipSongAlbum__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:129 description:@"Translator was missing mapping for MPModelRelationshipSongAlbum"];
}

+ (void)__MPModelPropertySongTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSong.m" lineNumber:128 description:@"Translator was missing mapping for MPModelPropertySongTitle"];
}

- (id)newKeepLocalStatusObserverConfiguration
{
  v3 = objc_alloc_init(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);
  localFileAsset = [(MPModelSong *)self localFileAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setHasNonPurgeableAsset:](v3, "setHasNonPurgeableAsset:", [localFileAsset isNonPurgeable]);
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setIdentifyingModelObject:self];
  [(MPLibraryKeepLocalStatusObserverConfiguration *)v3 setEnableState:[(MPModelSong *)self keepLocalEnableState]];
  [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v3 setManagedStatus:[(MPModelSong *)self keepLocalManagedStatus]];
  storeAsset = [(MPModelSong *)self storeAsset];
  -[MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration setStoreRedownloadable:](v3, "setStoreRedownloadable:", [storeAsset isRedownloadable]);

  return v3;
}

- (int64_t)libraryRemovalSupportedOptions
{
  keepLocalManagedStatus = [(MPModelSong *)self keepLocalManagedStatus];
  isLibraryAdded = [(MPModelSong *)self isLibraryAdded];
  localFileAsset = [(MPModelSong *)self localFileAsset];
  storeAsset = [(MPModelSong *)self storeAsset];
  v7 = _MPModelLibraryRemovalSupportedOptionsForIndividualItemProperties(keepLocalManagedStatus, isLibraryAdded, localFileAsset, storeAsset);

  return v7;
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertySongLibraryAddEligible";
  v5[1] = @"MPModelPropertySongHasCloudSyncSource";
  v5[2] = @"MPModelPropertySongLibraryAdded";
  v5[3] = @"MPModelPropertySongIsFavorite";
  v5[4] = @"MPModelPropertySongIsDisliked";
  v5[5] = @"MPModelPropertySongIsPinned";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end