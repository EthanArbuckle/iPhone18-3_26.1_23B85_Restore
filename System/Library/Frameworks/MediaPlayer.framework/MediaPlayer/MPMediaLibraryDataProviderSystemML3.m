@interface MPMediaLibraryDataProviderSystemML3
+ (id)_localizedCloudGeniusErrorForError:(id)a3;
+ (id)_localizedGeniusErrorForError:(id)a3 geniusEnabled:(BOOL)a4;
- (BOOL)isGeniusEnabled;
- (BOOL)supportsEntityChangeTrackingForMediaEntityType:(int64_t)a3 collectionGroupingType:(int64_t)a4 dataProviderClass:(Class *)a5;
- (MPMediaLibraryDataProviderSystemML3)initWithLibrary:(id)a3;
- (id)errorResolverForItem:(id)a3;
- (int64_t)_currentRevision;
- (int64_t)generateItemIdentifiersForGeniusClusterPlaylist:(void *)a3 count:(unint64_t *)a4 error:(id *)a5;
- (void)_initInstanceVariableOnce;
- (void)_seedCloudPlaylistWithTrack:(id)a3 container:(id)a4 completionBlock:(id)a5;
- (void)createGeniusClusterPlaylistWithSeedItemIdentifiers:(int64_t *)a3 count:(unint64_t)a4 error:(id *)a5;
- (void)geniusItemsForSeedItem:(id)a3 completion:(id)a4;
- (void)seedPlaylistWithIdentifier:(int64_t)a3 withItemWithIdentifier:(int64_t)a4 completionBlock:(id)a5;
- (void)updateEntitesToCurrentRevision;
@end

@implementation MPMediaLibraryDataProviderSystemML3

- (void)_initInstanceVariableOnce
{
  if (_initInstanceVariableOnce_onceToken != -1)
  {
    dispatch_once(&_initInstanceVariableOnce_onceToken, &__block_literal_global_10004);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPMediaLibraryDataProviderSystemML3__initInstanceVariableOnce__block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(_initInstanceVariableOnce_initQueue, block);
}

void __64__MPMediaLibraryDataProviderSystemML3__initInstanceVariableOnce__block_invoke()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = _initInstanceVariableOnce_initQueue;
  _initInstanceVariableOnce_initQueue = v0;
}

void __64__MPMediaLibraryDataProviderSystemML3__initInstanceVariableOnce__block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 136))
  {
    v2 = dispatch_queue_create("com.apple.mediaplayer.systemdataprovider", 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = v2;
  }
}

- (BOOL)supportsEntityChangeTrackingForMediaEntityType:(int64_t)a3 collectionGroupingType:(int64_t)a4 dataProviderClass:(Class *)a5
{
  if (!a3 && a5)
  {
    *a5 = objc_opt_class();
  }

  return a3 == 0;
}

- (void)updateEntitesToCurrentRevision
{
  [(MPMediaLibraryDataProviderSystemML3 *)self _initInstanceVariableOnce];
  if (updateEntitesToCurrentRevision_onceToken != -1)
  {
    dispatch_once(&updateEntitesToCurrentRevision_onceToken, &__block_literal_global_61_9982);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPMediaLibraryDataProviderSystemML3_updateEntitesToCurrentRevision__block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __69__MPMediaLibraryDataProviderSystemML3_updateEntitesToCurrentRevision__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentRevision];
  v3 = [*(a1 + 32) library];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__MPMediaLibraryDataProviderSystemML3_updateEntitesToCurrentRevision__block_invoke_3;
  v4[3] = &unk_1E7677988;
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  [v3 enumeratePersistentIDsAfterRevision:v2 revisionTrackingCode:0x7FFFFFFFFFFFFFFFLL maximumRevisionType:3 usingBlock:v4];
}

void __69__MPMediaLibraryDataProviderSystemML3_updateEntitesToCurrentRevision__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = [*(a1 + 32) entityCache];
  v11 = __revisionTrackingCodeToEntityClassMap;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v13 = [v11 objectForKey:v12];
  [v10 updatePropertyValuesInEntityWithIdentifier:a2 dataProviderEntityClass:v13 deleted:a4 != 0];

  if (*(a1 + 40) < a3)
  {
    *(*(a1 + 32) + 128) = a3;
  }
}

void __69__MPMediaLibraryDataProviderSystemML3_updateEntitesToCurrentRevision__block_invoke()
{
  v32[5] = *MEMORY[0x1E69E9840];
  v31 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "revisionTrackingCode")}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v20 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:v3];
  v10 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:?];
  v11 = __revisionTrackingCodeToEntityClassMap;
  __revisionTrackingCodeToEntityClassMap = v10;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        v18 = __revisionTrackingCodeToEntityClassMap;
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "revisionTrackingCode")}];
        [v18 setObject:v17 forKey:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }
}

- (id)errorResolverForItem:(id)a3
{
  v3 = [a3 mediaItem];
  v4 = [v3 valueForProperty:@"storeAccountID"];
  v5 = [[MPStorePurchaseErrorResolver alloc] initWithStoreAccountIdentifier:v4];

  return v5;
}

- (void)_seedCloudPlaylistWithTrack:(id)a3 container:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69E4428] sharedMonitor];
  v12 = [v11 networkType];

  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  v14 = +[MPPlaybackUserDefaults standardUserDefaults];
  v15 = [v14 preferredMusicLowBandwidthResolution];

  v16 = IsCellular ^ 1;
  if (v15 > 0)
  {
    v16 = 1;
  }

  if (v12 && (v16 & 1) != 0)
  {
    v17 = v15 > 0;
    v18 = [v8 valueForProperty:*MEMORY[0x1E69B3350]];
    v19 = [v18 longLongValue];

    v20 = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
    v21 = [MPCloudController controllerWithUserIdentity:v20];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__MPMediaLibraryDataProviderSystemML3__seedCloudPlaylistWithTrack_container_completionBlock___block_invoke;
    v23[3] = &unk_1E7677960;
    v27 = v17;
    v23[4] = self;
    v24 = v9;
    v25 = v8;
    v26 = v10;
    [v21 loadGeniusItemsForSagaID:v19 completionHandler:v23];
  }

  else
  {
    v22 = [objc_opt_class() _localizedCloudGeniusErrorForError:0];
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v22);
    }
  }
}

void __93__MPMediaLibraryDataProviderSystemML3__seedCloudPlaylistWithTrack_container_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9995;
  v28 = __Block_byref_object_dispose__9996;
  v29 = 0;
  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  v8 = [v7 networkType];

  if (v8 && (!ICEnvironmentNetworkTypeIsCellular() || (*(a1 + 64) & 1) != 0))
  {
    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__MPMediaLibraryDataProviderSystemML3__seedCloudPlaylistWithTrack_container_completionBlock___block_invoke_54;
    v16[3] = &unk_1E7677938;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v17 = v10;
    v18 = v11;
    v22 = &v30;
    v19 = v12;
    v20 = *(a1 + 48);
    v23 = &v24;
    v21 = v6;
    [v9 performTransactionWithBlock:v16];

    v13 = v17;
  }

  else
  {
    v14 = [objc_opt_class() _localizedCloudGeniusErrorForError:v6];
    v13 = v25[5];
    v25[5] = v14;
  }

  if (*(v31 + 24) == 1)
  {
    [MPMediaLibrary reloadLibraryDataProvider:*(a1 + 32)];
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, *(v31 + 24), v25[5]);
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

uint64_t __93__MPMediaLibraryDataProviderSystemML3__seedCloudPlaylistWithTrack_container_completionBlock___block_invoke_54(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2 + 1];
    v3 = [*(a1 + 40) library];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      v7 = *MEMORY[0x1E69B3350];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = MEMORY[0x1E69B3538];
          v10 = [MEMORY[0x1E69B3488] predicateWithProperty:v7 equalToInt64:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "longLongValue")}];
          v11 = [v9 anyInLibrary:v3 predicate:v10];

          if (v11)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
            [v21 addObject:v12];

            *(*(*(a1 + 72) + 8) + 24) = 1;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) valueForProperty:*MEMORY[0x1E69B2CD8]];
      [v13 setValue:v14 forProperty:*MEMORY[0x1E69B2C90]];

      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 56), "persistentID")}];
      [v21 replaceObjectAtIndex:0 withObject:v15];

      [*(a1 + 48) setTracksWithPersistentIDs:v21 notify:1];
    }
  }

  v16 = [objc_opt_class() _localizedGeniusErrorForError:*(a1 + 64) geniusEnabled:{objc_msgSend(*(a1 + 40), "isGeniusEnabled")}];
  v17 = *(*(a1 + 80) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  return *(*(*(a1 + 72) + 8) + 24);
}

- (void)geniusItemsForSeedItem:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E69B3538];
  v8 = [a3 persistentID];
  v9 = [(MPMediaLibraryDataProviderML3 *)self library];
  v10 = [v7 newWithPersistentID:v8 inLibrary:v9];

  v11 = [MEMORY[0x1E69B3540] geniusTracksForSeedTrack:v10 error:0];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        v19 = [MPMediaItem alloc];
        v20 = -[MPMediaItem initWithPersistentID:](v19, "initWithPersistentID:", [v18 persistentID]);
        [v12 addObject:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  if (v6)
  {
    v6[2](v6, v12);
  }
}

- (int64_t)generateItemIdentifiersForGeniusClusterPlaylist:(void *)a3 count:(unint64_t *)a4 error:(id *)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v7 = [a3 tracksFromClusterForCount:*a4 error:a5];
    v8 = [v7 count];
    v5 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [v7 objectAtIndex:i];
        v5[i] = [v10 persistentID];
      }
    }

    *a4 = v8;
  }

  return v5;
}

- (void)createGeniusClusterPlaylistWithSeedItemIdentifiers:(int64_t *)a3 count:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4]; v6; --v6)
  {
    v10 = MEMORY[0x1E69B3538];
    v11 = *a3++;
    v12 = [(MPMediaLibraryDataProviderML3 *)self library];
    v13 = [v10 newWithPersistentID:v11 inLibrary:v12];

    [i addObject:v13];
  }

  v14 = [MEMORY[0x1E69B3540] playlistControllerWithSeedTracks:i error:a5];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  return v15;
}

- (void)seedPlaylistWithIdentifier:(int64_t)a3 withItemWithIdentifier:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69B34A0];
  v10 = [(MPMediaLibraryDataProviderML3 *)self library];
  v11 = [v9 newWithPersistentID:a3 inLibrary:v10];

  v12 = MEMORY[0x1E69B3538];
  v13 = [(MPMediaLibraryDataProviderML3 *)self library];
  v14 = [v12 newWithPersistentID:a4 inLibrary:v13];

  v15 = [v14 valueForProperty:*MEMORY[0x1E69B3350]];
  v16 = [v15 longLongValue];

  if (([MEMORY[0x1E69B3540] hasGeniusDataAvailable] & 1) != 0 || !v16)
  {
    v17 = MEMORY[0x1E69B3540];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __105__MPMediaLibraryDataProviderSystemML3_seedPlaylistWithIdentifier_withItemWithIdentifier_completionBlock___block_invoke;
    v18[3] = &unk_1E7677910;
    v18[4] = self;
    v22 = v16;
    v19 = v14;
    v20 = v11;
    v21 = v8;
    [v17 populateContainer:v20 withSeedTrack:v19 completionBlock:v18];
  }

  else
  {
    [(MPMediaLibraryDataProviderSystemML3 *)self _seedCloudPlaylistWithTrack:v14 container:v11 completionBlock:v8];
  }
}

void __105__MPMediaLibraryDataProviderSystemML3_seedPlaylistWithIdentifier_withItemWithIdentifier_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [objc_opt_class() _localizedGeniusErrorForError:v7 geniusEnabled:{objc_msgSend(*(a1 + 32), "isGeniusEnabled")}];
    if (a2)
    {
LABEL_3:
      [MPMediaLibrary reloadLibraryDataProvider:*(a1 + 32)];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 64))
  {
    [*(a1 + 32) _seedCloudPlaylistWithTrack:*(a1 + 40) container:*(a1 + 48) completionBlock:*(a1 + 56)];
    goto LABEL_9;
  }

LABEL_7:
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

LABEL_9:
}

- (BOOL)isGeniusEnabled
{
  if ([MEMORY[0x1E69B3540] hasGeniusFeatureEnabled])
  {
    return 1;
  }

  v4 = [(MPMediaLibraryDataProviderML3 *)self userIdentity];
  v5 = [MPCloudController controllerWithUserIdentity:v4];
  v6 = [v5 isGeniusEnabled];

  return v6;
}

- (int64_t)_currentRevision
{
  result = self->_currentRevision;
  if (!result)
  {
    v4 = [(MPMediaLibraryDataProviderML3 *)self library];
    self->_currentRevision = [v4 currentRevision];

    return self->_currentRevision;
  }

  return result;
}

- (MPMediaLibraryDataProviderSystemML3)initWithLibrary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPMediaLibraryDataProviderSystemML3;
  v3 = [(MPMediaLibraryDataProviderML3 *)&v6 initWithLibrary:a3];
  v4 = v3;
  if (v3)
  {
    [(MPMediaLibraryDataProviderSystemML3 *)v3 _initInstanceVariableOnce];
  }

  return v4;
}

+ (id)_localizedGeniusErrorForError:(id)a3 geniusEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v8 = v7;
  if (v4)
  {
    v9 = @"GENIUS_PICKER_NO_RESULTS_TITLE";
  }

  else
  {
    v9 = @"GENIUS_FEATURE_NOT_AVAILABLE_TITLE";
  }

  if (v4)
  {
    v10 = @"GENIUS_PICKER_NO_RESULTS_MESSAGE";
  }

  else
  {
    v10 = @"GENIUS_FEATURE_NOT_AVAILABLE_SUBTITLE";
  }

  v11 = [v7 localizedStringForKey:v9 value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v12 = *MEMORY[0x1E696A578];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v14 = [v13 localizedStringForKey:v10 value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v15 = [v6 initWithObjectsAndKeys:{v11, v12, v14, *MEMORY[0x1E696A588], 0}];

  if (v5)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = [v5 userInfo];

    if (v17)
    {
      v18 = [v5 userInfo];
      [v16 addEntriesFromDictionary:v18];
    }

    if (v15)
    {
      [v16 addEntriesFromDictionary:v15];
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = [v5 domain];
    v21 = [v19 errorWithDomain:v20 code:objc_msgSend(v5 userInfo:{"code"), v16}];
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:&stru_1F149ECA8 code:0 userInfo:v15];
  }

  return v21;
}

+ (id)_localizedCloudGeniusErrorForError:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  if ([v4 hasCellularDataCapability])
  {
    v5 = +[MPPlaybackUserDefaults standardUserDefaults];
    v6 = [v5 preferredMusicLowBandwidthResolution] < 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v7 networkType];

  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  v9 = [v4 hasWiFiCapability];
  v10 = [v4 hasWAPICapability];
  if (v6 || !v9 || (IsCellular & 1) != 0)
  {
    if ((v6 | IsCellular))
    {
      if (v9)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v12 = v11;
        v13 = @"GENIUS_PLAYLIST_OFFLINE_SUBTITLE_WIFI";
        v14 = @"GENIUS_PLAYLIST_OFFLINE_SUBTITLE_WLAN";
        goto LABEL_8;
      }

      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v18 = [v16 localizedStringForKey:@"GENIUS_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v22 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v19 = v23;
      v24 = @"GENIUS_FEATURE_NOT_AVAILABLE_SUBTITLE";
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v18 = [v16 localizedStringForKey:@"GENIUS_PLAYLIST_OFFLINE_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v22 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v19 = v23;
      v24 = @"GENIUS_PLAYLIST_OFFLINE_SUBTITLE_CELLULAR";
    }

    v25 = [v23 localizedStringForKey:v24 value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v20 = [v21 initWithObjectsAndKeys:{v18, v22, v25, *MEMORY[0x1E696A588], 0}];

    goto LABEL_18;
  }

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v12 = v11;
  v13 = @"GENIUS_PLAYLIST_OFFLINE_SUBTITLE_ALL";
  v14 = @"GENIUS_PLAYLIST_OFFLINE_SUBTITLE_ALL_WLAN";
LABEL_8:
  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 localizedStringForKey:v15 value:&stru_1F149ECA8 table:@"MediaPlayer"];

  v17 = objc_alloc(MEMORY[0x1E695DF20]);
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v19 = [v18 localizedStringForKey:@"GENIUS_PLAYLIST_OFFLINE_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v20 = [v17 initWithObjectsAndKeys:{v19, *MEMORY[0x1E696A578], v16, *MEMORY[0x1E696A588], 0}];
LABEL_18:

  if (v3)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [v3 userInfo];

    if (v27)
    {
      v28 = [v3 userInfo];
      [v26 addEntriesFromDictionary:v28];
    }

    if (v20)
    {
      [v26 addEntriesFromDictionary:v20];
    }

    v29 = MEMORY[0x1E696ABC0];
    v30 = [v3 domain];
    v31 = [v29 errorWithDomain:v30 code:objc_msgSend(v3 userInfo:{"code"), v26}];
  }

  else
  {
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:&stru_1F149ECA8 code:0 userInfo:v20];
  }

  return v31;
}

@end