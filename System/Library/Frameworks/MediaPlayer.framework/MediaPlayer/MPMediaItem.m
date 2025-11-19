@interface MPMediaItem
+ (BOOL)_isValidItemProperty:(id)a3;
+ (BOOL)canFilterByProperty:(id)a3;
+ (NSString)persistentIDPropertyForGroupingType:(MPMediaGrouping)groupingType;
+ (NSString)titlePropertyForGroupingType:(MPMediaGrouping)groupingType;
+ (id)MPSD_mediaItemPropertiesForDownloadability;
+ (id)ULIDPropertyForGroupingType:(int64_t)a3;
+ (id)dynamicProperties;
+ (id)fallbackTitlePropertyForGroupingType:(int64_t)a3;
+ (id)itemFromModelObject:(id)a3;
+ (id)itemFromSong:(id)a3;
+ (void)_createFilterableDictionary;
- (BOOL)MPSD_isDownloadInProgress;
- (BOOL)existsInLibrary;
- (BOOL)hasBeenPlayed;
- (BOOL)hasProtectedAsset;
- (BOOL)isCloudItem;
- (BOOL)isCompilation;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExplicitItem;
- (BOOL)isITunesU;
- (BOOL)isPreorder;
- (BOOL)isRental;
- (BOOL)rememberBookmarkTime;
- (MPMediaEntityPersistentID)albumArtistPersistentID;
- (MPMediaEntityPersistentID)albumPersistentID;
- (MPMediaEntityPersistentID)artistPersistentID;
- (MPMediaEntityPersistentID)composerPersistentID;
- (MPMediaEntityPersistentID)genrePersistentID;
- (MPMediaEntityPersistentID)podcastPersistentID;
- (MPMediaItem)initWithCoder:(id)a3;
- (MPMediaItem)initWithMultiverseIdentifier:(id)a3 library:(id)a4;
- (MPMediaItem)initWithPersistentID:(unint64_t)a3;
- (MPMediaType)mediaType;
- (NSString)effectiveAlbumArtist;
- (NSTimeInterval)bookmarkTime;
- (NSTimeInterval)playbackDuration;
- (NSUInteger)albumTrackCount;
- (NSUInteger)albumTrackNumber;
- (NSUInteger)beatsPerMinute;
- (NSUInteger)discCount;
- (NSUInteger)discNumber;
- (NSUInteger)playCount;
- (NSUInteger)rating;
- (NSUInteger)skipCount;
- (double)effectiveStopTime;
- (double)startTime;
- (double)stopTime;
- (id)_artworkCatalogWithArtworkType:(int64_t)a3;
- (id)chapterOfType:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)chapterOfType:(int64_t)a3 atTime:(double)a4;
- (id)chaptersOfType:(int64_t)a3;
- (id)multiverseIdentifier;
- (id)predicateForProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (id)valuesForProperties:(id)a3;
- (unint64_t)countOfChaptersOfType:(int64_t)a3;
- (unint64_t)playCountSinceSync;
- (unint64_t)skipCountSinceSync;
- (unint64_t)year;
- (void)clearLocationProperties;
- (void)encodeWithCoder:(id)a3;
- (void)gaplessHeuristicInfo:(unsigned int *)a3 durationInSamples:(unint64_t *)a4 lastPacketsResync:(unint64_t *)a5 encodingDelay:(unsigned int *)a6 encodingDrain:(unsigned int *)a7;
- (void)populateLocationPropertiesWithPath:(id)a3 assetProtectionType:(int64_t)a4;
- (void)populateLocationPropertiesWithPath:(id)a3 assetProtectionType:(int64_t)a4 completionBlock:(id)a5;
- (void)setHasBeenPlayed:(BOOL)a3;
- (void)setPlayCount:(unint64_t)a3;
- (void)setPlayCountSinceSync:(unint64_t)a3;
- (void)setRating:(unint64_t)a3;
- (void)setSkipCount:(unint64_t)a3;
- (void)setSkipCountSinceSync:(unint64_t)a3;
@end

@implementation MPMediaItem

+ (void)_createFilterableDictionary
{
  v141 = *MEMORY[0x1E69E9840];
  if (!__filterableDictionary)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    keys[0] = [@"persistentID" hash];
    keys[1] = [@"globalID" hash];
    keys[2] = [@"mediaType" hash];
    keys[3] = [@"title" hash];
    keys[4] = [@"albumTitle" hash];
    keys[5] = [@"artist" hash];
    keys[6] = [@"albumArtist" hash];
    keys[7] = [@"genre" hash];
    keys[8] = [@"composer" hash];
    keys[9] = [@"playbackDuration" hash];
    keys[10] = [@"albumTrackNumber" hash];
    keys[11] = [@"albumTrackCount" hash];
    keys[12] = [@"chosenByAutoFill" hash];
    keys[13] = [@"discNumber" hash];
    keys[14] = [@"discCount" hash];
    keys[15] = [@"artwork" hash];
    keys[16] = [@"lyrics" hash];
    keys[17] = [@"isCompilation" hash];
    keys[18] = [@"year" hash];
    keys[19] = [@"releaseDate" hash];
    keys[20] = [@"beatsPerMinute" hash];
    keys[21] = [@"comments" hash];
    keys[22] = [@"storeItemAdamID" hash];
    keys[23] = [@"storeAccountID" hash];
    keys[24] = [@"storeDownloaderAccountID" hash];
    keys[25] = [@"storeFamilyAccountID" hash];
    keys[26] = [@"storePlaylistAdamID" hash];
    keys[27] = [@"storeArtistAdamID" hash];
    keys[28] = [@"storeAlbumArtistAdamID" hash];
    keys[29] = [@"storeComposerAdamID" hash];
    keys[30] = [@"storeGenreAdamID" hash];
    keys[31] = [@"storeRentalID" hash];
    keys[32] = [@"isRental" hash];
    keys[33] = [@"isITunesU" hash];
    keys[34] = [@"isAudible" hash];
    keys[35] = [@"isMusicVideo" hash];
    keys[36] = [@"isHD" hash];
    keys[37] = [@"contentRating" hash];
    keys[38] = [@"copyright" hash];
    keys[39] = [@"includeInShuffle" hash];
    keys[40] = [@"descriptionInfo" hash];
    keys[41] = [@"shortDescriptionInfo" hash];
    keys[42] = [@"movieInfo" hash];
    keys[43] = [@"podcastTitle" hash];
    *&v4 = [@"seriesName" hash];
    *(&v4 + 1) = [@"seasonNumber" hash];
    *&v5 = [@"seasonName" hash];
    *(&v5 + 1) = [@"episodeNumber" hash];
    *&v6 = [@"showSortType" hash];
    *(&v6 + 1) = [@"episodeType" hash];
    *&v7 = [@"episodeTypeDisplayName" hash];
    *(&v7 + 1) = [@"episodeSubSortOrder" hash];
    *&v8 = [@"isMusicShow" hash];
    *(&v8 + 1) = [@"collectionDescription" hash];
    *&v9 = [@"playCount" hash];
    *(&v9 + 1) = [@"skipCount" hash];
    *&v10 = [@"rating" hash];
    *(&v10 + 1) = [@"lastPlayedDate" hash];
    *&v11 = [@"userGrouping" hash];
    *(&v11 + 1) = [@"sortTitle" hash];
    *&v12 = [@"sortArtist" hash];
    *(&v12 + 1) = [@"sortAlbumTitle" hash];
    *&v13 = [@"sortAlbumArtist" hash];
    *(&v13 + 1) = [@"sortComposer" hash];
    v14 = [@"filePath" hash];
    v15 = [@"locationFileName" hash];
    v16 = [@"assetURL" hash];
    v17 = [@"hasAvailableItemArtwork" hash];
    v18 = [@"chapters" hash];
    v19 = [@"chapterArtworkTimes" hash];
    v20 = [@"hasBeenPlayed" hash];
    v21 = [@"bookmarkTime" hash];
    v22 = [@"rememberBookmarkTime" hash];
    v23 = [@"isDemoRental" hash];
    v24 = [@"rentalDuration" hash];
    v25 = [@"rentalPlaybackDuration" hash];
    v26 = [@"rentalPlaybackStartTime" hash];
    v27 = [@"rentalStartTime" hash];
    v28 = [@"rentalExpirationDate" hash];
    v29 = [@"rentalWindowEndDate" hash];
    v30 = [@"artistPID" hash];
    v31 = [@"albumArtistPID" hash];
    v32 = [@"albumPID" hash];
    v33 = [@"composerPID" hash];
    v34 = [@"genrePID" hash];
    v35 = [@"podcastPID" hash];
    v36 = [@"isOTAPurchased" hash];
    v37 = [@"isStreamingQuality" hash];
    v38 = [@"isTemporaryCloudDownload" hash];
    v39 = [@"startTime" hash];
    v40 = [@"stopTime" hash];
    v41 = [@"durationInSamples" hash];
    v42 = [@"gaplessHeuristicInfo" hash];
    v43 = [@"gaplessEncodingDelay" hash];
    v44 = [@"gaplessEncodingDrain" hash];
    v45 = [@"gaplessLastFrameResync" hash];
    v46 = [@"volumeNormalization" hash];
    v47 = [@"volumeAdjustment" hash];
    v48 = [@"fileSize" hash];
    v49 = [@"podcastURL" hash];
    v50 = [@"podcastGUID" hash];
    v51 = [@"eqPreset" hash];
    v52 = [@"audioTrackID" hash];
    v53 = [@"hasAlternateAudio" hash];
    v54 = [@"hasSubtitles" hash];
    v55 = [@"needsRestore" hash];
    v56 = [@"storeCloudStatus" hash];
    v57 = [@"storeRedownloadParameters" hash];
    v58 = [@"downloadIdentifier" hash];
    v59 = [@"storeSagaID" hash];
    v60 = [@"storeBookmarkIdentifier" hash];
    v61 = [@"storeBookmarkTimestamp" hash];
    v62 = [@"storeBookmarkEntityRevision" hash];
    v63 = [@"isCloudItem" hash];
    v64 = [@"dateAccessed" hash];
    v65 = [@"isStoreRedownloadable" hash];
    v66 = [@"likedState" hash];
    v67 = [@"purchaseHistoryID" hash];
    v68 = [@"isHidden" hash];
    v69 = [@"isLocal" hash];
    v70 = [@"isPendingSync" hash];
    v71 = [@"isDeprotected" hash];
    v72 = [@"dateAdded" hash];
    v73 = [@"storeDatePurchased" hash];
    v74 = [@"isPlayable" hash];
    v75 = [@"isMatchAudio" hash];
    v76 = [@"isNonLibraryOwnedSubscriptionContent" hash];
    v77 = [@"significantAmountHasBeenPlayed" hash];
    v78 = [@"albumKeepLocal" hash];
    v79 = [@"artistKeepLocal" hash];
    v80 = [@"albumArtistKeepLocal" hash];
    v81 = [@"genreKeepLocal" hash];
    v82 = [@"storeExtrasURL" hash];
    v83 = [@"storeNeedsReporting" hash];
    v84 = [@"subscriptionStoreItemAdamID" hash];
    v85 = [@"storePlaybackEndpointType" hash];
    v86 = [@"storeAssetProtectionType" hash];
    v87 = [@"radioStationID" hash];
    v88 = [@"advertisementUniqueID" hash];
    v89 = [@"advertisementType" hash];
    v90 = [@"isArtistUploadedContent" hash];
    v91 = [@"cloudIsInMyLibrary" hash];
    v92 = [@"cloudUniversalLibraryID" hash];
    v93 = [@"albumArtistCloudUniversalLibraryID" hash];
    v94 = [@"syncID" hash];
    v95 = [@"entityRevision" hash];
    v96 = [@"hasNonPurgeableAsset" hash];
    v97 = [@"remoteLocationId" hash];
    v98 = [@"isInMyLibrary" hash];
    v99 = [@"storeCloudAssetAvailable" hash];
    v100 = [@"hasProtectedAsset" hash];
    v101 = [@"hasAppleMusicDRM" hash];
    v102 = [@"isExplicit" hash];
    v103 = [@"classicalWork" hash];
    v104 = [@"classicalMovement" hash];
    v105 = [@"classicalMovementCount" hash];
    v106 = [@"classicalMovementNumber" hash];
    v107 = [@"hasHLSVideo" hash];
    v108 = [@"storeCloudAlbumID" hash];
    v109 = [@"storeLyricsAvailable" hash];
    v110 = [@"timeSyncedLyricsAvailable" hash];
    v111 = [@"audioTrackLocale" hash];
    v112 = [@"isPremium" hash];
    v113 = [@"colorCapability" hash];
    v114 = [@"hlsColorCapability" hash];
    v115 = [@"videoQuality" hash];
    v116 = [@"hlsVideoQuality" hash];
    v117 = [@"hlsPlaylistURL" hash];
    v118 = [@"audioCapability" hash];
    v119 = [@"hlsAudioCapability" hash];
    v120 = [@"containerItemPID" hash];
    v121 = [@"dateDownloaded" hash];
    v122 = [@"bitRate" hash];
    v123 = [@"needsRestore" hash];
    v124 = [@"isLocal" hash];
    v125 = [@"keepLocalStatus" hash];
    v126 = [@"keepLocalStatusReason" hash];
    v127 = [@"keepLocalConstraints" hash];
    v128 = [@"isPreorder" hash];
    v129 = [@"hlsAssetTraits" hash];
    v130 = [@"hlsKeyServerURL" hash];
    v131 = [@"hlsKeyServerProtocol" hash];
    v132 = [@"hlsKeyCertificateURL" hash];
    v133 = [@"reportingStoreItemAdamID" hash];
    v134 = [@"assetStoreItemAdamID" hash];
    v135 = [@"booklets" hash];
    v136 = [@"assetStoreExtendedPlaybackAttribute" hash];
    v137 = [@"storeExtendedLyricsAttribute" hash];
    v138 = [@"storeCanonicalID" hash];
    v139 = [@"tvSeasonStoreCanonicalID" hash];
    v140 = [@"tvShowStoreCanonicalID" hash];
    memcpy(__dst, &unk_1A273E6C8, sizeof(__dst));
    __filterableDictionary = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, __dst, 191, 0, 0);
  }
}

- (BOOL)MPSD_isDownloadInProgress
{
  v3 = [objc_opt_class() MPSD_mediaItemPropertiesForDownloadability];
  v4 = [(MPMediaItem *)self valuesForProperties:v3];
  v5 = +[MPStoreDownloadManager sharedManager];
  v6 = [v5 downloadForMediaItem:self];

  if (v6)
  {
    v7 = [v6 isFinished] ^ 1;
  }

  else
  {
    v8 = [v4 objectForKey:@"isPendingSync"];
    LOBYTE(v7) = [v8 BOOLValue];
  }

  return v7;
}

+ (id)MPSD_mediaItemPropertiesForDownloadability
{
  if (MPSD_mediaItemPropertiesForDownloadability_onceToken != -1)
  {
    dispatch_once(&MPSD_mediaItemPropertiesForDownloadability_onceToken, &__block_literal_global_28);
  }

  v3 = MPSD_mediaItemPropertiesForDownloadability_sMediaItemPropertiesForDownloadability;

  return v3;
}

void __83__MPMediaItem_MPStoreDownloadAdditions__MPSD_mediaItemPropertiesForDownloadability__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"isLocal", @"isPendingSync", @"isTemporaryCloudDownload", @"isStoreRedownloadable", @"storeItemAdamID", 0}];
  v1 = MPSD_mediaItemPropertiesForDownloadability_sMediaItemPropertiesForDownloadability;
  MPSD_mediaItemPropertiesForDownloadability_sMediaItemPropertiesForDownloadability = v0;
}

- (id)_artworkCatalogWithArtworkType:(int64_t)a3
{
  v22 = 0;
  if (a3 == 1)
  {
    v5 = _MPMediaItemPropertyFetchableArtworkSource;
    v6 = _MPMediaItemPropertyFetchableArtworkToken;
    v7 = _MPMediaItemPropertyAvailableArtworkToken;
  }

  else
  {
    if (a3 != 2)
    {
      v8 = 0;
      v10 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    v5 = _MPMediaItemPropertyFetchableScreenshotSource;
    v6 = _MPMediaItemPropertyFetchableScreenshotToken;
    v7 = _MPMediaItemPropertyAvailableScreenshotToken;
  }

  v8 = [(MPMediaEntity *)self cachedValueForProperty:*v7 isCached:&v22 + 1];
  v9 = [(MPMediaEntity *)self cachedValueForProperty:*v6 isCached:&v22];
  v10 = [(MPMediaEntity *)self cachedValueForProperty:*v5 isCached:0];
  if ((v22 & 0x100) != 0 && v22 == 1 && ![v8 length] && !objc_msgSend(v9, "length"))
  {
    v11 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v12 = [MPMediaLibraryArtworkRequest alloc];
  v13 = [(MPMediaEntity *)self mediaLibrary];
  v14 = [(MPMediaLibraryArtworkRequest *)v12 initWithLibrary:v13 identifier:[(MPMediaEntity *)self persistentID] entityType:0 artworkType:a3];

  [(MPMediaLibraryArtworkRequest *)v14 setAvailableArtworkToken:v8];
  [(MPMediaLibraryArtworkRequest *)v14 setFetchableArtworkToken:v9];
  [(MPMediaLibraryArtworkRequest *)v14 setFetchableArtworkSource:v10];
  v15 = [MPArtworkCatalog alloc];
  v16 = [(MPMediaEntity *)self mediaLibrary];
  v17 = [v16 artworkDataSource];
  v18 = [(MPArtworkCatalog *)v15 initWithToken:v14 dataSource:v17];

  v19 = [(MPMediaEntity *)self mediaLibrary];
  v20 = [v19 artworkDataSource];
  LODWORD(v17) = [v20 areRepresentationsAvailableForCatalog:v18];

  v11 = 0;
  if (v17)
  {
    v11 = v18;
  }

LABEL_14:

  return v11;
}

- (BOOL)isPreorder
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isPreorder"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)gaplessHeuristicInfo:(unsigned int *)a3 durationInSamples:(unint64_t *)a4 lastPacketsResync:(unint64_t *)a5 encodingDelay:(unsigned int *)a6 encodingDrain:(unsigned int *)a7
{
  if (!a3 || !a4 || !a5 || !a6 || !a7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1345 description:@"invalid parameter"];
  }

  if (gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____once != -1)
  {
    dispatch_once(&gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____once, &__block_literal_global_705);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__MPMediaItem_gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain___block_invoke_2;
  v15[3] = &__block_descriptor_72_e25_v32__0__NSString_8_16_B24l;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a6;
  v15[7] = a7;
  v15[8] = a5;
  [(MPMediaEntity *)self enumerateValuesForProperties:gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____properties usingBlock:v15];
}

void __100__MPMediaItem_gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain___block_invoke_2(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 isEqualToString:@"gaplessHeuristicInfo"])
  {
    v6 = [v5 unsignedIntValue];
    v7 = a1[4];
LABEL_3:
    *v7 = v6;
    goto LABEL_7;
  }

  if ([v10 isEqualToString:@"durationInSamples"])
  {
    v8 = [v5 unsignedLongLongValue];
    v9 = a1[5];
LABEL_6:
    *v9 = v8;
    goto LABEL_7;
  }

  if ([v10 isEqualToString:@"gaplessEncodingDelay"])
  {
    v6 = [v5 unsignedIntValue];
    v7 = a1[6];
    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"gaplessEncodingDrain"])
  {
    v6 = [v5 unsignedIntValue];
    v7 = a1[7];
    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"gaplessLastFrameResync"])
  {
    v8 = [v5 unsignedLongLongValue];
    v9 = a1[8];
    goto LABEL_6;
  }

LABEL_7:
}

void __100__MPMediaItem_gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"gaplessHeuristicInfo", @"durationInSamples", @"gaplessEncodingDelay", @"gaplessEncodingDrain", @"gaplessLastFrameResync", 0}];
  v1 = gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____properties;
  gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____properties = v0;
}

- (unint64_t)countOfChaptersOfType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(MPMediaItem *)self valueForProperty:@"chapters"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) chapterType] == a3)
        {
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)chapterOfType:(int64_t)a3 atTime:(double)a4
{
  v20 = *MEMORY[0x1E69E9840];
  [(MPMediaItem *)self chaptersOfType:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [v9 playbackTime];
        if (v10 <= a4)
        {
          [v9 playbackTime];
          v12 = v11;
          [v9 playbackDuration];
          if (v12 + v13 > a4)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)chapterOfType:(int64_t)a3 atIndex:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  [(MPMediaItem *)self valueForProperty:@"chapters"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 chapterType] == a3)
        {
          if (v9 == a4)
          {
            v13 = v12;
            goto LABEL_13;
          }

          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)chaptersOfType:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(MPMediaItem *)self valueForProperty:@"chapters"];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 chapterType] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (BOOL)isExplicitItem
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isExplicit"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSUInteger)discCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"discCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (NSUInteger)discNumber
{
  v2 = [(MPMediaItem *)self valueForProperty:@"discNumber"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (NSUInteger)albumTrackNumber
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumTrackNumber"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)rememberBookmarkTime
{
  v2 = [(MPMediaItem *)self valueForProperty:@"rememberBookmarkTime"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setHasBeenPlayed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"hasBeenPlayed" withCompletionBlock:0];
}

- (BOOL)hasBeenPlayed
{
  v2 = [(MPMediaItem *)self valueForProperty:@"hasBeenPlayed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSkipCountSinceSync:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"skipCountSinceSync" withCompletionBlock:0];
}

- (unint64_t)skipCountSinceSync
{
  v2 = [(MPMediaItem *)self valueForProperty:@"skipCountSinceSync"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setSkipCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"skipCount" withCompletionBlock:0];
}

- (NSUInteger)skipCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"skipCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setPlayCountSinceSync:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"playCountSinceSync" withCompletionBlock:0];
}

- (unint64_t)playCountSinceSync
{
  v2 = [(MPMediaItem *)self valueForProperty:@"playCountSinceSync"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setPlayCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"playCount" withCompletionBlock:0];
}

- (NSUInteger)playCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"playCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)predicateForProperty:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaItem *)self valueForProperty:v4];
  v6 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:v4];

  return v6;
}

- (unint64_t)year
{
  v2 = [(MPMediaItem *)self valueForProperty:@"year"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setRating:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(MPMediaItem *)self setValue:v4 forProperty:@"rating" withCompletionBlock:0];
}

- (NSUInteger)rating
{
  v2 = [(MPMediaItem *)self valueForProperty:@"rating"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (MPMediaEntityPersistentID)podcastPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"podcastPID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (double)effectiveStopTime
{
  [(MPMediaItem *)self stopTime];
  if (result == 0.0)
  {

    [(MPMediaItem *)self playbackDuration];
  }

  return result;
}

- (double)stopTime
{
  v2 = [(MPMediaItem *)self valueForProperty:@"stopTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)startTime
{
  v2 = [(MPMediaItem *)self valueForProperty:@"startTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (NSTimeInterval)playbackDuration
{
  v2 = [(MPMediaItem *)self valueForProperty:@"playbackDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (MPMediaType)mediaType
{
  v2 = [(MPMediaItem *)self valueForProperty:@"mediaType"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)hasProtectedAsset
{
  v2 = [(MPMediaItem *)self valueForProperty:@"hasProtectedAsset"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isCloudItem
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isCloudItem"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isCompilation
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isCompilation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isITunesU
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isITunesU"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isRental
{
  if (isRental___onceToken != -1)
  {
    dispatch_once(&isRental___onceToken, &__block_literal_global_693);
  }

  if (isRental___alwaysReturnNO)
  {
    return 0;
  }

  v4 = [(MPMediaItem *)self valueForProperty:@"isRental"];
  v5 = [v4 BOOLValue];

  return v5;
}

void __23__MPMediaItem_isRental__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  isRental___alwaysReturnNO = [v2 isEqualToString:@"com.apple.Music"];
  if (isRental___alwaysReturnNO)
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.LegacyMusic"];
  }

  isRental___alwaysReturnNO = v1;
}

- (MPMediaEntityPersistentID)genrePersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"genrePID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (MPMediaEntityPersistentID)composerPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"composerPID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (NSTimeInterval)bookmarkTime
{
  v2 = [(MPMediaItem *)self valueForProperty:@"bookmarkTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (NSUInteger)beatsPerMinute
{
  v2 = [(MPMediaItem *)self valueForProperty:@"beatsPerMinute"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (MPMediaEntityPersistentID)artistPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"artistPID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (NSUInteger)albumTrackCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumTrackCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (MPMediaEntityPersistentID)albumArtistPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumArtistPID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (MPMediaEntityPersistentID)albumPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumPID"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (NSString)effectiveAlbumArtist
{
  v3 = [(MPMediaItem *)self valueForProperty:@"albumArtist"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MPMediaItem *)self valueForProperty:@"artist"];
  }

  v6 = v5;

  return v6;
}

- (id)multiverseIdentifier
{
  v3 = [(MPMediaEntity *)self mediaLibrary];
  v4 = [v3 multiverseIdentifierForTrackWithPersistentID:{-[MPMediaEntity persistentID](self, "persistentID")}];

  return v4;
}

- (void)clearLocationProperties
{
  v3 = [(MPMediaEntity *)self mediaLibrary];
  [v3 clearLocationPropertiesOfItem:self];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (void)populateLocationPropertiesWithPath:(id)a3 assetProtectionType:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MPMediaEntity *)self mediaLibrary];
  [v10 populateLocationPropertiesOfItem:self withPath:v9 assetProtectionType:a4 completionBlock:v8];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (void)populateLocationPropertiesWithPath:(id)a3 assetProtectionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(MPMediaEntity *)self mediaLibrary];
  [v7 populateLocationPropertiesOfItem:self withPath:v6 assetProtectionType:a4];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (BOOL)existsInLibrary
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:484 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPMediaItem class]"}];
  }

  return 1;
}

- (id)valuesForProperties:(id)a3
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:473 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPMediaItem class]"}];
  }

  return 0;
}

- (id)valueForProperty:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() _isValidItemProperty:v5];

  if (v6)
  {
    v7 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      [v9 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:468 description:{@"Subclass %@ must implement -%@ defined in %@.", v11, v12, @"[MPMediaItem class]"}];
    }
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:444 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"[MPMediaItem class]"}];
  }
}

- (MPMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [v5 decodeItemWithCoder:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(MPMediaEntity *)self persistentID])
  {
    v5 = [(MPMediaEntity *)self persistentID];
    v6 = v5 == [v4 persistentID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPMediaItem;
    v6 = [(MPMediaEntity *)&v8 isEqual:v4];
  }

  return v6;
}

- (MPMediaItem)initWithMultiverseIdentifier:(id)a3 library:(id)a4
{
  v57[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 hasSagaId] && objc_msgSend(v5, "sagaId"))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "sagaId")}];
    v8 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:@"storeSagaID"];

    v9 = [MPMediaQuery alloc];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v8];
    v11 = [(MPMediaQuery *)v9 initWithFilterPredicates:v10 library:v6];

    v12 = [(MPMediaQuery *)v11 items];
    if ([v12 count])
    {
LABEL_8:
      v18 = [v12 firstObject];

      v19 = v18;
      v20 = v19;
      goto LABEL_30;
    }
  }

  if ([v5 hasCloudUniversalLibraryId])
  {
    v13 = [v5 cloudUniversalLibraryId];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [v5 cloudUniversalLibraryId];
      v8 = [MPMediaPropertyPredicate predicateWithValue:v15 forProperty:@"cloudUniversalLibraryID"];

      v16 = [MPMediaQuery alloc];
      v17 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      v11 = [(MPMediaQuery *)v16 initWithFilterPredicates:v17 library:v6];

      v12 = [(MPMediaQuery *)v11 items];
      if ([v12 count])
      {
        goto LABEL_8;
      }
    }
  }

  if ([v5 hasStoreId] && objc_msgSend(v5, "storeId"))
  {
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "storeId")}];
    v22 = [MPMediaPropertyPredicate predicateWithValue:v21 forProperty:@"storeItemAdamID"];
    v57[0] = v22;
    v23 = v5;
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "storeId")}];
    v25 = [MPMediaPropertyPredicate predicateWithValue:v24 forProperty:@"subscriptionStoreItemAdamID"];
    v57[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v27 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v26];

    v28 = [MPMediaQuery alloc];
    v29 = [MEMORY[0x1E695DFD8] setWithObject:v27];
    v30 = [(MPMediaQuery *)v28 initWithFilterPredicates:v29 library:v6];

    v31 = [(MPMediaQuery *)v30 items];
    if ([v31 count])
    {
      v32 = [v31 firstObject];

      v19 = v32;
      v20 = v19;
      v5 = v23;
      goto LABEL_30;
    }

    v5 = v23;
  }

  v50 = v6;
  v33 = [v50 uniqueIdentifier];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = [v5 libraryIdentifiers];
  v20 = [v34 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v20)
  {
    v47 = v6;
    v48 = v5;
    v35 = *v53;
    while (2)
    {
      for (i = 0; i != v20; i = (i + 1))
      {
        if (*v53 != v35)
        {
          objc_enumerationMutation(v34);
        }

        v37 = *(*(&v52 + 1) + 8 * i);
        v51 = [v37 libraryId];
        v38 = [v37 libraryName];
        if ([v38 length] && objc_msgSend(v38, "isEqualToString:", v33))
        {
          v39 = [MPMediaPersistentIDsPredicate predicateWithPersistentIDs:&v51 count:8 shouldContain:1];
          v40 = [MPMediaQuery alloc];
          v41 = [MEMORY[0x1E695DFD8] setWithObject:v39];
          v42 = [(MPMediaQuery *)v40 initWithFilterPredicates:v41 library:v50];

          [(MPMediaQuery *)v42 setShouldIncludeNonLibraryEntities:1];
          v43 = [(MPMediaQuery *)v42 items];
          if ([v43 count])
          {
            v44 = [v43 firstObject];

            v45 = v44;
            v19 = v45;

            v20 = v45;
            v6 = v47;
            v5 = v48;
            goto LABEL_29;
          }
        }
      }

      v20 = [v34 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v6 = v47;
    v5 = v48;
  }

  v19 = self;
LABEL_29:

LABEL_30:
  return v20;
}

- (MPMediaItem)initWithPersistentID:(unint64_t)a3
{
  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [v5 itemWithPersistentID:a3];

  return v6;
}

+ (BOOL)_isValidItemProperty:(id)a3
{
  v4 = a3;
  v5 = __filterableDictionary;
  if (!__filterableDictionary)
  {
    [a1 _createFilterableDictionary];
    v5 = __filterableDictionary;
  }

  v6 = CFDictionaryContainsKey(v5, [v4 hash]) != 0;

  return v6;
}

+ (id)dynamicProperties
{
  if (dynamicProperties_sOnce != -1)
  {
    dispatch_once(&dynamicProperties_sOnce, &__block_literal_global_17737);
  }

  v3 = dynamicProperties_sProperties;

  return v3;
}

void __32__MPMediaItem_dynamicProperties__block_invoke()
{
  v2[10] = *MEMORY[0x1E69E9840];
  v2[0] = @"bookmarkTime";
  v2[1] = @"hasBeenPlayed";
  v2[2] = @"lastPlayedDate";
  v2[3] = @"lastSkippedDate";
  v2[4] = @"playCount";
  v2[5] = @"playCountSinceSync";
  v2[6] = @"rating";
  v2[7] = @"skipCount";
  v2[8] = @"skipCountSinceSync";
  v2[9] = @"dateAccessed";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:10];
  v1 = dynamicProperties_sProperties;
  dynamicProperties_sProperties = v0;
}

+ (id)fallbackTitlePropertyForGroupingType:(int64_t)a3
{
  if (a3 == 8)
  {
    return @"artist";
  }

  else
  {
    return @"title";
  }
}

+ (NSString)titlePropertyForGroupingType:(MPMediaGrouping)groupingType
{
  if ((groupingType - 1) > 0x14)
  {
    return @"title";
  }

  else
  {
    return *(&off_1E7678F38 + groupingType - 1);
  }
}

+ (id)ULIDPropertyForGroupingType:(int64_t)a3
{
  v3 = @"cloudUniversalLibraryID";
  if (a3 <= 9)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v7 = @"cloudPlaylistUniversalLibraryID";
        v10 = @"cloudPlaylistUniversalLibraryID";
        goto LABEL_25;
      }

      v9 = a3 == 7;
      v8 = @"podcastPID";
    }

    else
    {
      v8 = @"storeCloudAlbumID";
      if (a3 == 3)
      {
        v3 = @"albumArtistCloudUniversalLibraryID";
      }

      v9 = a3 == 1;
    }

    if (v9)
    {
      v7 = v8;
    }

    else
    {
      v7 = v3;
    }
  }

  else
  {
    v4 = @"storeCloudAlbumID";
    v5 = @"storeCloudAlbumID";
    v6 = @"storeCloudAlbumID";
    if (a3 != 17)
    {
      v6 = @"cloudUniversalLibraryID";
    }

    if (a3 != 13)
    {
      v5 = v6;
    }

    if (a3 != 12)
    {
      v4 = v5;
    }

    if (a3 == 11)
    {
      v3 = @"storeCloudAlbumID";
    }

    if (a3 == 10)
    {
      v3 = @"storeCloudAlbumID";
    }

    if (a3 <= 11)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }
  }

LABEL_25:

  return v7;
}

+ (NSString)persistentIDPropertyForGroupingType:(MPMediaGrouping)groupingType
{
  switch(groupingType)
  {
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 17:
      v3 = @"albumPID";
      break;
    case 2:
    case 8:
      v3 = @"artistPID";
      break;
    case 3:
    case 14:
    case 18:
      v3 = @"albumArtistPID";
      break;
    case 4:
    case 15:
    case 19:
    case 21:
      v3 = @"composerPID";
      break;
    case 5:
    case 16:
    case 20:
      v3 = @"genrePID";
      break;
    case 6:
      v3 = @"playlistPersistentID";
      v4 = @"playlistPersistentID";
      break;
    case 7:
      v3 = @"podcastPID";
      break;
    case 9:
      v3 = @"seasonNumber";
      break;
    default:
      v3 = @"persistentID";
      break;
  }

  return v3;
}

+ (BOOL)canFilterByProperty:(id)a3
{
  v4 = a3;
  v5 = __filterableDictionary;
  if (!__filterableDictionary)
  {
    [a1 _createFilterableDictionary];
    v5 = __filterableDictionary;
  }

  if (CFDictionaryGetValue(v5, [v4 hash]))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___MPMediaItem;
    v6 = objc_msgSendSuper2(&v8, sel_canFilterByProperty_, v4);
  }

  return v6;
}

+ (id)itemFromSong:(id)a3
{
  v3 = [MPModelGenericObject genericObjectWithModelObject:a3];
  v4 = [MPMediaItem itemFromModelObject:v3];

  return v4;
}

+ (id)itemFromModelObject:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifiers];
    v6 = [v5 library];
    v7 = [v6 persistentID];

    if (!v7 || (([v4 identifiers], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "library"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "databaseID"), v10 = objc_claimAutoreleasedReturnValue(), +[MPMediaLibrary mediaLibraryWithUniqueIdentifier:](MPMediaLibrary, "mediaLibraryWithUniqueIdentifier:", v10), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (+[MPMediaLibrary deviceMediaLibrary](MPMediaLibrary, "deviceMediaLibrary"), v13 = objc_claimAutoreleasedReturnValue()) : (v13 = v11), v15 = v13, v12, v10, v9, v8, objc_msgSend(v15, "itemWithPersistentID:", v7), v14 = objc_claimAutoreleasedReturnValue(), v15, !v14))
    {
      v14 = [[MPModelObjectMediaItem alloc] initWithModelObject:v4];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end