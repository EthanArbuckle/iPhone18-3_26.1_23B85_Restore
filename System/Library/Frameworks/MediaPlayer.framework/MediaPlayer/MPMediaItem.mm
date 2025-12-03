@interface MPMediaItem
+ (BOOL)_isValidItemProperty:(id)property;
+ (BOOL)canFilterByProperty:(id)property;
+ (NSString)persistentIDPropertyForGroupingType:(MPMediaGrouping)groupingType;
+ (NSString)titlePropertyForGroupingType:(MPMediaGrouping)groupingType;
+ (id)MPSD_mediaItemPropertiesForDownloadability;
+ (id)ULIDPropertyForGroupingType:(int64_t)type;
+ (id)dynamicProperties;
+ (id)fallbackTitlePropertyForGroupingType:(int64_t)type;
+ (id)itemFromModelObject:(id)object;
+ (id)itemFromSong:(id)song;
+ (void)_createFilterableDictionary;
- (BOOL)MPSD_isDownloadInProgress;
- (BOOL)existsInLibrary;
- (BOOL)hasBeenPlayed;
- (BOOL)hasProtectedAsset;
- (BOOL)isCloudItem;
- (BOOL)isCompilation;
- (BOOL)isEqual:(id)equal;
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
- (MPMediaItem)initWithCoder:(id)coder;
- (MPMediaItem)initWithMultiverseIdentifier:(id)identifier library:(id)library;
- (MPMediaItem)initWithPersistentID:(unint64_t)d;
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
- (id)_artworkCatalogWithArtworkType:(int64_t)type;
- (id)chapterOfType:(int64_t)type atIndex:(unint64_t)index;
- (id)chapterOfType:(int64_t)type atTime:(double)time;
- (id)chaptersOfType:(int64_t)type;
- (id)multiverseIdentifier;
- (id)predicateForProperty:(id)property;
- (id)valueForProperty:(id)property;
- (id)valuesForProperties:(id)properties;
- (unint64_t)countOfChaptersOfType:(int64_t)type;
- (unint64_t)playCountSinceSync;
- (unint64_t)skipCountSinceSync;
- (unint64_t)year;
- (void)clearLocationProperties;
- (void)encodeWithCoder:(id)coder;
- (void)gaplessHeuristicInfo:(unsigned int *)info durationInSamples:(unint64_t *)samples lastPacketsResync:(unint64_t *)resync encodingDelay:(unsigned int *)delay encodingDrain:(unsigned int *)drain;
- (void)populateLocationPropertiesWithPath:(id)path assetProtectionType:(int64_t)type;
- (void)populateLocationPropertiesWithPath:(id)path assetProtectionType:(int64_t)type completionBlock:(id)block;
- (void)setHasBeenPlayed:(BOOL)played;
- (void)setPlayCount:(unint64_t)count;
- (void)setPlayCountSinceSync:(unint64_t)sync;
- (void)setRating:(unint64_t)rating;
- (void)setSkipCount:(unint64_t)count;
- (void)setSkipCountSinceSync:(unint64_t)sync;
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
  mPSD_mediaItemPropertiesForDownloadability = [objc_opt_class() MPSD_mediaItemPropertiesForDownloadability];
  v4 = [(MPMediaItem *)self valuesForProperties:mPSD_mediaItemPropertiesForDownloadability];
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

- (id)_artworkCatalogWithArtworkType:(int64_t)type
{
  v22 = 0;
  if (type == 1)
  {
    v5 = _MPMediaItemPropertyFetchableArtworkSource;
    v6 = _MPMediaItemPropertyFetchableArtworkToken;
    v7 = _MPMediaItemPropertyAvailableArtworkToken;
  }

  else
  {
    if (type != 2)
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
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  v14 = [(MPMediaLibraryArtworkRequest *)v12 initWithLibrary:mediaLibrary identifier:[(MPMediaEntity *)self persistentID] entityType:0 artworkType:type];

  [(MPMediaLibraryArtworkRequest *)v14 setAvailableArtworkToken:v8];
  [(MPMediaLibraryArtworkRequest *)v14 setFetchableArtworkToken:v9];
  [(MPMediaLibraryArtworkRequest *)v14 setFetchableArtworkSource:v10];
  v15 = [MPArtworkCatalog alloc];
  mediaLibrary2 = [(MPMediaEntity *)self mediaLibrary];
  artworkDataSource = [mediaLibrary2 artworkDataSource];
  v18 = [(MPArtworkCatalog *)v15 initWithToken:v14 dataSource:artworkDataSource];

  mediaLibrary3 = [(MPMediaEntity *)self mediaLibrary];
  artworkDataSource2 = [mediaLibrary3 artworkDataSource];
  LODWORD(artworkDataSource) = [artworkDataSource2 areRepresentationsAvailableForCatalog:v18];

  v11 = 0;
  if (artworkDataSource)
  {
    v11 = v18;
  }

LABEL_14:

  return v11;
}

- (BOOL)isPreorder
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isPreorder"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)gaplessHeuristicInfo:(unsigned int *)info durationInSamples:(unint64_t *)samples lastPacketsResync:(unint64_t *)resync encodingDelay:(unsigned int *)delay encodingDrain:(unsigned int *)drain
{
  if (!info || !samples || !resync || !delay || !drain)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1345 description:@"invalid parameter"];
  }

  if (gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____once != -1)
  {
    dispatch_once(&gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain____once, &__block_literal_global_705);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__MPMediaItem_gaplessHeuristicInfo_durationInSamples_lastPacketsResync_encodingDelay_encodingDrain___block_invoke_2;
  v15[3] = &__block_descriptor_72_e25_v32__0__NSString_8_16_B24l;
  v15[4] = info;
  v15[5] = samples;
  v15[6] = delay;
  v15[7] = drain;
  v15[8] = resync;
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

- (unint64_t)countOfChaptersOfType:(int64_t)type
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

        if ([*(*(&v11 + 1) + 8 * i) chapterType] == type)
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

- (id)chapterOfType:(int64_t)type atTime:(double)time
{
  v20 = *MEMORY[0x1E69E9840];
  [(MPMediaItem *)self chaptersOfType:type];
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
        if (v10 <= time)
        {
          [v9 playbackTime];
          v12 = v11;
          [v9 playbackDuration];
          if (v12 + v13 > time)
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

- (id)chapterOfType:(int64_t)type atIndex:(unint64_t)index
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
        if ([v12 chapterType] == type)
        {
          if (v9 == index)
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

- (id)chaptersOfType:(int64_t)type
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
        if ([v11 chapterType] == type)
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSUInteger)discCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"discCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSUInteger)discNumber
{
  v2 = [(MPMediaItem *)self valueForProperty:@"discNumber"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSUInteger)albumTrackNumber
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumTrackNumber"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)rememberBookmarkTime
{
  v2 = [(MPMediaItem *)self valueForProperty:@"rememberBookmarkTime"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setHasBeenPlayed:(BOOL)played
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:played];
  [(MPMediaItem *)self setValue:v4 forProperty:@"hasBeenPlayed" withCompletionBlock:0];
}

- (BOOL)hasBeenPlayed
{
  v2 = [(MPMediaItem *)self valueForProperty:@"hasBeenPlayed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSkipCountSinceSync:(unint64_t)sync
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sync];
  [(MPMediaItem *)self setValue:v4 forProperty:@"skipCountSinceSync" withCompletionBlock:0];
}

- (unint64_t)skipCountSinceSync
{
  v2 = [(MPMediaItem *)self valueForProperty:@"skipCountSinceSync"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSkipCount:(unint64_t)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [(MPMediaItem *)self setValue:v4 forProperty:@"skipCount" withCompletionBlock:0];
}

- (NSUInteger)skipCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"skipCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPlayCountSinceSync:(unint64_t)sync
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sync];
  [(MPMediaItem *)self setValue:v4 forProperty:@"playCountSinceSync" withCompletionBlock:0];
}

- (unint64_t)playCountSinceSync
{
  v2 = [(MPMediaItem *)self valueForProperty:@"playCountSinceSync"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPlayCount:(unint64_t)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [(MPMediaItem *)self setValue:v4 forProperty:@"playCount" withCompletionBlock:0];
}

- (NSUInteger)playCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"playCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)predicateForProperty:(id)property
{
  propertyCopy = property;
  v5 = [(MPMediaItem *)self valueForProperty:propertyCopy];
  v6 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:propertyCopy];

  return v6;
}

- (unint64_t)year
{
  v2 = [(MPMediaItem *)self valueForProperty:@"year"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setRating:(unint64_t)rating
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:rating];
  [(MPMediaItem *)self setValue:v4 forProperty:@"rating" withCompletionBlock:0];
}

- (NSUInteger)rating
{
  v2 = [(MPMediaItem *)self valueForProperty:@"rating"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (MPMediaEntityPersistentID)podcastPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"podcastPID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)hasProtectedAsset
{
  v2 = [(MPMediaItem *)self valueForProperty:@"hasProtectedAsset"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCloudItem
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isCloudItem"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCompilation
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isCompilation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isITunesU
{
  v2 = [(MPMediaItem *)self valueForProperty:@"isITunesU"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
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
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (MPMediaEntityPersistentID)composerPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"composerPID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
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
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (MPMediaEntityPersistentID)artistPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"artistPID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSUInteger)albumTrackCount
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumTrackCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (MPMediaEntityPersistentID)albumArtistPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumArtistPID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (MPMediaEntityPersistentID)albumPersistentID
{
  v2 = [(MPMediaItem *)self valueForProperty:@"albumPID"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
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
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  v4 = [mediaLibrary multiverseIdentifierForTrackWithPersistentID:{-[MPMediaEntity persistentID](self, "persistentID")}];

  return v4;
}

- (void)clearLocationProperties
{
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  [mediaLibrary clearLocationPropertiesOfItem:self];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (void)populateLocationPropertiesWithPath:(id)path assetProtectionType:(int64_t)type completionBlock:(id)block
{
  blockCopy = block;
  pathCopy = path;
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  [mediaLibrary populateLocationPropertiesOfItem:self withPath:pathCopy assetProtectionType:type completionBlock:blockCopy];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (void)populateLocationPropertiesWithPath:(id)path assetProtectionType:(int64_t)type
{
  pathCopy = path;
  mediaLibrary = [(MPMediaEntity *)self mediaLibrary];
  [mediaLibrary populateLocationPropertiesOfItem:self withPath:pathCopy assetProtectionType:type];

  [(MPMediaEntity *)self invalidateCachedProperties];
}

- (BOOL)existsInLibrary
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:484 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPMediaItem class]"}];
  }

  return 1;
}

- (id)valuesForProperties:(id)properties
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:473 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPMediaItem class]"}];
  }

  return 0;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  v6 = [objc_opt_class() _isValidItemProperty:propertyCopy];

  if (v6)
  {
    v7 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:468 description:{@"Subclass %@ must implement -%@ defined in %@.", v11, v12, @"[MPMediaItem class]"}];
    }
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:444 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"[MPMediaItem class]"}];
  }
}

- (MPMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [v5 decodeItemWithCoder:coderCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(MPMediaEntity *)self persistentID])
  {
    persistentID = [(MPMediaEntity *)self persistentID];
    v6 = persistentID == [equalCopy persistentID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPMediaItem;
    v6 = [(MPMediaEntity *)&v8 isEqual:equalCopy];
  }

  return v6;
}

- (MPMediaItem)initWithMultiverseIdentifier:(id)identifier library:(id)library
{
  v57[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  if ([identifierCopy hasSagaId] && objc_msgSend(identifierCopy, "sagaId"))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifierCopy, "sagaId")}];
    v8 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:@"storeSagaID"];

    v9 = [MPMediaQuery alloc];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v8];
    v11 = [(MPMediaQuery *)v9 initWithFilterPredicates:v10 library:libraryCopy];

    items = [(MPMediaQuery *)v11 items];
    if ([items count])
    {
LABEL_8:
      firstObject = [items firstObject];

      selfCopy = firstObject;
      v20 = selfCopy;
      goto LABEL_30;
    }
  }

  if ([identifierCopy hasCloudUniversalLibraryId])
  {
    cloudUniversalLibraryId = [identifierCopy cloudUniversalLibraryId];
    v14 = [cloudUniversalLibraryId length];

    if (v14)
    {
      cloudUniversalLibraryId2 = [identifierCopy cloudUniversalLibraryId];
      v8 = [MPMediaPropertyPredicate predicateWithValue:cloudUniversalLibraryId2 forProperty:@"cloudUniversalLibraryID"];

      v16 = [MPMediaQuery alloc];
      v17 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      v11 = [(MPMediaQuery *)v16 initWithFilterPredicates:v17 library:libraryCopy];

      items = [(MPMediaQuery *)v11 items];
      if ([items count])
      {
        goto LABEL_8;
      }
    }
  }

  if ([identifierCopy hasStoreId] && objc_msgSend(identifierCopy, "storeId"))
  {
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifierCopy, "storeId")}];
    v22 = [MPMediaPropertyPredicate predicateWithValue:v21 forProperty:@"storeItemAdamID"];
    v57[0] = v22;
    v23 = identifierCopy;
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifierCopy, "storeId")}];
    v25 = [MPMediaPropertyPredicate predicateWithValue:v24 forProperty:@"subscriptionStoreItemAdamID"];
    v57[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v27 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v26];

    v28 = [MPMediaQuery alloc];
    v29 = [MEMORY[0x1E695DFD8] setWithObject:v27];
    v30 = [(MPMediaQuery *)v28 initWithFilterPredicates:v29 library:libraryCopy];

    items2 = [(MPMediaQuery *)v30 items];
    if ([items2 count])
    {
      firstObject2 = [items2 firstObject];

      selfCopy = firstObject2;
      v20 = selfCopy;
      identifierCopy = v23;
      goto LABEL_30;
    }

    identifierCopy = v23;
  }

  v50 = libraryCopy;
  uniqueIdentifier = [v50 uniqueIdentifier];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  libraryIdentifiers = [identifierCopy libraryIdentifiers];
  v20 = [libraryIdentifiers countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v20)
  {
    v47 = libraryCopy;
    v48 = identifierCopy;
    v35 = *v53;
    while (2)
    {
      for (i = 0; i != v20; i = (i + 1))
      {
        if (*v53 != v35)
        {
          objc_enumerationMutation(libraryIdentifiers);
        }

        v37 = *(*(&v52 + 1) + 8 * i);
        libraryId = [v37 libraryId];
        libraryName = [v37 libraryName];
        if ([libraryName length] && objc_msgSend(libraryName, "isEqualToString:", uniqueIdentifier))
        {
          v39 = [MPMediaPersistentIDsPredicate predicateWithPersistentIDs:&libraryId count:8 shouldContain:1];
          v40 = [MPMediaQuery alloc];
          v41 = [MEMORY[0x1E695DFD8] setWithObject:v39];
          v42 = [(MPMediaQuery *)v40 initWithFilterPredicates:v41 library:v50];

          [(MPMediaQuery *)v42 setShouldIncludeNonLibraryEntities:1];
          items3 = [(MPMediaQuery *)v42 items];
          if ([items3 count])
          {
            firstObject3 = [items3 firstObject];

            v45 = firstObject3;
            selfCopy = v45;

            v20 = v45;
            libraryCopy = v47;
            identifierCopy = v48;
            goto LABEL_29;
          }
        }
      }

      v20 = [libraryIdentifiers countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    libraryCopy = v47;
    identifierCopy = v48;
  }

  selfCopy = self;
LABEL_29:

LABEL_30:
  return v20;
}

- (MPMediaItem)initWithPersistentID:(unint64_t)d
{
  v5 = +[MPMediaLibrary defaultMediaLibrary];
  v6 = [v5 itemWithPersistentID:d];

  return v6;
}

+ (BOOL)_isValidItemProperty:(id)property
{
  propertyCopy = property;
  v5 = __filterableDictionary;
  if (!__filterableDictionary)
  {
    [self _createFilterableDictionary];
    v5 = __filterableDictionary;
  }

  v6 = CFDictionaryContainsKey(v5, [propertyCopy hash]) != 0;

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

+ (id)fallbackTitlePropertyForGroupingType:(int64_t)type
{
  if (type == 8)
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

+ (id)ULIDPropertyForGroupingType:(int64_t)type
{
  v3 = @"cloudUniversalLibraryID";
  if (type <= 9)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v7 = @"cloudPlaylistUniversalLibraryID";
        v10 = @"cloudPlaylistUniversalLibraryID";
        goto LABEL_25;
      }

      v9 = type == 7;
      v8 = @"podcastPID";
    }

    else
    {
      v8 = @"storeCloudAlbumID";
      if (type == 3)
      {
        v3 = @"albumArtistCloudUniversalLibraryID";
      }

      v9 = type == 1;
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
    if (type != 17)
    {
      v6 = @"cloudUniversalLibraryID";
    }

    if (type != 13)
    {
      v5 = v6;
    }

    if (type != 12)
    {
      v4 = v5;
    }

    if (type == 11)
    {
      v3 = @"storeCloudAlbumID";
    }

    if (type == 10)
    {
      v3 = @"storeCloudAlbumID";
    }

    if (type <= 11)
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

+ (BOOL)canFilterByProperty:(id)property
{
  propertyCopy = property;
  v5 = __filterableDictionary;
  if (!__filterableDictionary)
  {
    [self _createFilterableDictionary];
    v5 = __filterableDictionary;
  }

  if (CFDictionaryGetValue(v5, [propertyCopy hash]))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___MPMediaItem;
    v6 = objc_msgSendSuper2(&v8, sel_canFilterByProperty_, propertyCopy);
  }

  return v6;
}

+ (id)itemFromSong:(id)song
{
  v3 = [MPModelGenericObject genericObjectWithModelObject:song];
  v4 = [MPMediaItem itemFromModelObject:v3];

  return v4;
}

+ (id)itemFromModelObject:(id)object
{
  objectCopy = object;
  v4 = objectCopy;
  if (objectCopy)
  {
    identifiers = [objectCopy identifiers];
    library = [identifiers library];
    persistentID = [library persistentID];

    if (!persistentID || (([v4 identifiers], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "library"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "databaseID"), v10 = objc_claimAutoreleasedReturnValue(), +[MPMediaLibrary mediaLibraryWithUniqueIdentifier:](MPMediaLibrary, "mediaLibraryWithUniqueIdentifier:", v10), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (+[MPMediaLibrary deviceMediaLibrary](MPMediaLibrary, "deviceMediaLibrary"), v13 = objc_claimAutoreleasedReturnValue()) : (v13 = v11), v15 = v13, v12, v10, v9, v8, objc_msgSend(v15, "itemWithPersistentID:", persistentID), v14 = objc_claimAutoreleasedReturnValue(), v15, !v14))
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