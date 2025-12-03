@interface MPNowPlayingInfoCenter
+ (MPNowPlayingInfoCenter)defaultCenter;
+ (NSArray)supportedAnimatedArtworkKeys;
+ (OS_dispatch_queue)serviceQueue;
+ (id)infoCenterForPlayerID:(id)d;
+ (id)infoCenterForPlayerPath:(id)path;
- (BOOL)isInvalidated;
- (BOOL)supportsArtworkCatalogLoading;
- (MPNowPlayingContentItem)nowPlayingContentItem;
- (MPNowPlayingInfoCenter)init;
- (MPNowPlayingInfoCenter)initWithPlayerID:(id)d;
- (MPNowPlayingInfoCenter)initWithPlayerPath:(id)path;
- (MPNowPlayingInfoLyricsDelegate)lyricsDelegate;
- (MPNowPlayingPlaybackQueueDataSource)playbackQueueDataSource;
- (MPNowPlayingPlaybackQueueDelegate)playbackQueueDelegate;
- (MPNowPlayingPlaybackState)playbackState;
- (NSDictionary)nowPlayingInfo;
- (NSString)playerID;
- (id)_artworkCatalogForContentItem:(id)item;
- (id)_childContentItemForContentItem:(id)item index:(int64_t)index;
- (id)_onQueue_stateDictionary;
- (id)artworkCatalogBlockForContentItem:(id)item;
- (void)_becomeActiveIfPossibleWithCompletion:(id)completion;
- (void)_becomeActiveWithCompletion:(id)completion;
- (void)_contentItemChangedNotification:(id)notification;
- (void)_contentItemForIdentifier:(int)identifier alreadyOnDataSourceQueue:;
- (void)_contentItemForIdentifier:(void *)identifier;
- (void)_getMetadataForContentItem:(id)item completion:(id)completion;
- (void)_getTransportablePlaybackSessionRepresentationWithRequest:(id)request completion:(id)completion;
- (void)_initializeNowPlayingInfo;
- (void)_invalidatePlaybackQueueBoundaryWithExpectedQueueSize:(int64_t)size;
- (void)_invalidatePlaybackQueueImmediatelyWithCompletion:(uint64_t)completion;
- (void)_onDataSourceQueue_getContentItemIDsInRange:(uint64_t)range completion:(void *)completion;
- (void)_onQueue_clearPlaybackQueueDataSourceCallbacks;
- (void)_onQueue_ensureContentItemStorageInitialized;
- (void)_onQueue_pushContentItemsUpdate;
- (void)_onQueue_pushNowPlayingInfoAndRetry:(BOOL)retry;
- (void)_updateBloomFilterWithContentItemID:(uint64_t)d;
- (void)becomeActiveSystemFallback;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatePlaybackQueueWithCompletion:(id)completion;
- (void)resignActiveSystemFallback;
- (void)setDataSourceQueue:(id)queue;
- (void)setLyricsDelegate:(id)delegate;
- (void)setNowPlayingContentItem:(id)item;
- (void)setNowPlayingInfo:(NSDictionary *)nowPlayingInfo;
- (void)setPlaybackQueueDataSource:(id)source;
- (void)setPlaybackState:(MPNowPlayingPlaybackState)playbackState;
- (void)setRepresentedApplicationBundleIdentifier:(id)identifier;
@end

@implementation MPNowPlayingInfoCenter

- (void)_initializeNowPlayingInfo
{
  v3 = objc_alloc_init(MPNowPlayingInfoCenterArtworkContext);
  publishedContext = self->_publishedContext;
  self->_publishedContext = v3;
}

- (void)_onQueue_clearPlaybackQueueDataSourceCallbacks
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if ((*(self + 288) & 1) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__MPNowPlayingInfoCenter__onQueue_clearPlaybackQueueDataSourceCallbacks__block_invoke;
      aBlock[3] = &unk_1E76814F0;
      aBlock[4] = self;
      v2 = _Block_copy(aBlock);
      v2[2](v2, self + 200);
      v2[2](v2, self + 208);
      v2[2](v2, self + 216);
      v2[2](v2, self + 224);
      v2[2](v2, self + 232);
      v2[2](v2, self + 240);
      v2[2](v2, self + 248);
      v2[2](v2, self + 256);
      v2[2](v2, self + 264);
      v2[2](v2, self + 272);
      MRMediaRemotePlaybackSessionSetRequestCallback();
    }
  }
}

uint64_t __72__MPNowPlayingInfoCenter__onQueue_clearPlaybackQueueDataSourceCallbacks__block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    result = MRMediaRemotePlaybackQueueDataSourceRemoveCallbackForPlayer();
    *a2 = 0;
  }

  return result;
}

+ (OS_dispatch_queue)serviceQueue
{
  if (serviceQueue_onceToken != -1)
  {
    dispatch_once(&serviceQueue_onceToken, &__block_literal_global_6_54921);
  }

  v3 = serviceQueue___serviceQueue;

  return v3;
}

void __38__MPNowPlayingInfoCenter_serviceQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.MediaPlayer.MPNowPlayingInfoCenter/serviceQueue", v2);
  v1 = serviceQueue___serviceQueue;
  serviceQueue___serviceQueue = v0;
}

+ (MPNowPlayingInfoCenter)defaultCenter
{
  if (defaultCenter___once != -1)
  {
    dispatch_once(&defaultCenter___once, &__block_literal_global_54924);
  }

  v3 = defaultCenter___defaultCenter;

  return v3;
}

void __39__MPNowPlayingInfoCenter_defaultCenter__block_invoke()
{
  v0 = [[MPNowPlayingInfoCenter alloc] initWithPlayerID:0];
  v1 = defaultCenter___defaultCenter;
  defaultCenter___defaultCenter = v0;
}

- (BOOL)isInvalidated
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (MPNowPlayingPlaybackQueueDataSource)playbackQueueDataSource
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__54662;
  v8 = __Block_byref_object_dispose__54663;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __49__MPNowPlayingInfoCenter_playbackQueueDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (MPNowPlayingPlaybackQueueDelegate)playbackQueueDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackQueueDelegate);

  return WeakRetained;
}

- (void)_contentItemChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];

    if (v7)
    {
      accessQueue = self->_accessQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__MPNowPlayingInfoCenter__contentItemChangedNotification___block_invoke;
      v9[3] = &unk_1E76819B8;
      v9[4] = self;
      v10 = object;
      v12 = v7;
      v11 = notificationCopy;
      dispatch_sync(accessQueue, v9);
    }
  }
}

void __58__MPNowPlayingInfoCenter__contentItemChangedNotification___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_ensureContentItemStorageInitialized];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (!v3)
  {
LABEL_4:
    v6 = *(v2 + 64);
    v7 = [*(a1 + 40) identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 _mediaRemoteContentItem];
      MRContentItemMerge();
      v9 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(v12 + 312);
        v14 = v10;
        v15 = [v11 identifier];
        *buf = 138413058;
        v73 = v10;
        v74 = 2048;
        v75 = v12;
        v76 = 2112;
        v77 = v13;
        v78 = 2114;
        v79 = v15;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> Content item mutated | merged [already enqueued for update] contentItemID=%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = *(v25 + 312);
        v27 = v23;
        v28 = [v24 identifier];
        *buf = 138413058;
        v73 = v23;
        v74 = 2048;
        v75 = v25;
        v76 = 2112;
        v77 = v26;
        v78 = 2114;
        v79 = v28;
        _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> Content item mutated | queued [new] contentItemID=%{public}@", buf, 0x2Au);
      }

      v9 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:*(a1 + 56)];
      v29 = *(*(a1 + 32) + 64);
      v30 = [*(a1 + 40) identifier];
      [v29 setObject:v9 forKeyedSubscript:v30];
    }

    v31 = [*(a1 + 48) userInfo];
    v32 = [v31 objectForKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaRequest"];

    if (v32)
    {
      v33 = *(*(a1 + 32) + 72);
      v34 = [*(a1 + 40) identifier];
      v35 = [v33 objectForKeyedSubscript:v34];

      if (v35)
      {
        MRPlaybackQueueRequestMerge();
      }

      else
      {
        v36 = *(*(a1 + 32) + 72);
        v37 = [*(a1 + 40) identifier];
        [v36 setObject:v32 forKeyedSubscript:v37];
      }
    }

    v38 = *(*(a1 + 32) + 64);
    v39 = [*(a1 + 40) identifier];
    v40 = [v38 objectForKeyedSubscript:v39];

    v41 = *(*(a1 + 32) + 120);
    v42 = [*(a1 + 40) identifier];
    v43 = [v41 objectForKeyedSubscript:v42];

    if (v43 && v40)
    {
      v44 = [v43 copy];

      [v44 _mergeContentItem:v40];
      v45 = *(*(a1 + 32) + 120);
      v46 = [*(a1 + 40) identifier];
      [v45 setObject:v44 forKeyedSubscript:v46];

      v43 = v44;
    }

    v47 = [*(*(a1 + 32) + 128) identifier];
    v48 = [*(a1 + 40) identifier];
    v49 = [v47 isEqual:v48];

    if (v49 && v40)
    {
      v50 = [*(*(a1 + 32) + 128) copy];
      [v50 _mergeContentItem:v40];
      v51 = *(a1 + 32);
      v52 = *(v51 + 128);
      *(v51 + 128) = v50;
    }

    v53 = [*(a1 + 48) userInfo];
    v54 = [v53 objectForKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyImmediately"];
    v55 = [v54 BOOLValue];

    if (v55)
    {
      [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_pushContentItemsUpdate];
LABEL_36:

      goto LABEL_37;
    }

    MRContentItemGetPlaybackRate();
    v57 = v56 > 2.2204e-16;
    v58 = *(a1 + 32);
    v59 = *(v58 + 168);
    if (v56 <= 2.2204e-16)
    {
      if (v59)
      {
        goto LABEL_36;
      }

      v63 = qos_class_self();
      if (MSVDeviceIsWatch())
      {
        v60 = 0.2;
      }

      else if (MSVDeviceIsAudioAccessory())
      {
        v60 = 0.2;
      }

      else
      {
        v60 = 0.1;
      }
    }

    else
    {
      v60 = 0.01;
      if (v59)
      {
        if (*(v58 + 176))
        {
          goto LABEL_36;
        }

        [v59 invalidate];
        v61 = *(a1 + 32);
        v62 = *(v61 + 168);
        *(v61 + 168) = 0;

        if (*(*(a1 + 32) + 168))
        {
          goto LABEL_36;
        }
      }

      v63 = QOS_CLASS_USER_INITIATED;
    }

    *(*(a1 + 32) + 176) = v57;
    v64 = MEMORY[0x1E69B14D8];
    v65 = *(a1 + 32);
    v66 = *(v65 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MPNowPlayingInfoCenter__contentItemChangedNotification___block_invoke_235;
    block[3] = &unk_1E7682518;
    block[4] = v65;
    v67 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v63, 0, block);
    v68 = [v64 timerWithInterval:0 repeats:v66 queue:v67 block:v60];
    v69 = *(a1 + 32);
    v70 = *(v69 + 168);
    *(v69 + 168) = v68;

    goto LABEL_36;
  }

  v4 = [*(a1 + 40) identifier];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v2 = *(a1 + 32);
    goto LABEL_4;
  }

  v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 312);
    v20 = v16;
    v21 = [v17 identifier];
    *buf = 138413058;
    v73 = v16;
    v74 = 2048;
    v75 = v18;
    v76 = 2112;
    v77 = v19;
    v78 = 2114;
    v79 = v21;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> Content item mutated | dropped [not in bloom filter] contentItemID=%{public}@", buf, 0x2Au);
  }

LABEL_37:
}

- (void)_onQueue_ensureContentItemStorageInitialized
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if (!*(self + 120))
    {
      array = [MEMORY[0x1E695DF70] array];
      v3 = *(self + 112);
      *(self + 112) = array;

      v4 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:101];
      v5 = *(self + 120);
      *(self + 120) = v4;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = *(self + 64);
      *(self + 64) = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v9 = *(self + 72);
      *(self + 72) = dictionary2;

      v10 = objc_alloc(MEMORY[0x1E69B13F8]);
      LODWORD(v11) = 1008981770;
      v12 = [v10 initWithCapacity:5000 falsePositiveTolerance:v11];
      v13 = *(self + 136);
      *(self + 136) = v12;
    }
  }
}

- (void)_onQueue_pushContentItemsUpdate
{
  v65 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    if ((*(self + 288) & 1) == 0)
    {
      [(MPNowPlayingInfoCenter *)self _onQueue_ensureContentItemStorageInitialized];
      if ([*(self + 64) count])
      {
        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v2 = [MEMORY[0x1E695DFA8] set];
        [*(self + 64) allValues];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v55 = 0u;
        v3 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v3)
        {
          v5 = v3;
          v43 = *v53;
          *&v4 = 138413058;
          v40 = v4;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v53 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v7 = *(*(&v52 + 1) + 8 * i);
              [array addObject:{objc_msgSend(v7, "_mediaRemoteContentItem")}];
              v8 = *(self + 120);
              identifier = [v7 identifier];
              v10 = [v8 objectForKeyedSubscript:identifier];

              artworkIdentifier = [v7 artworkIdentifier];
              if (artworkIdentifier)
              {
                v12 = artworkIdentifier;
                artworkIdentifier2 = [v7 artworkIdentifier];
                artworkIdentifier3 = [v10 artworkIdentifier];
                v15 = [artworkIdentifier2 isEqualToString:artworkIdentifier3];

                if ((v15 & 1) == 0)
                {
                  identifier2 = [v7 identifier];
                  [v2 addObject:identifier2];
                }
              }

              if (v10)
              {
                v17 = [v10 copy];

                [v17 _mergeContentItem:v7];
                v18 = *(self + 120);
                identifier3 = [v7 identifier];
                [v18 setObject:v17 forKeyedSubscript:identifier3];
              }

              identifier4 = [*(self + 128) identifier];
              identifier5 = [v7 identifier];
              v22 = [identifier4 isEqual:identifier5];

              if (v22)
              {
                v23 = [*(self + 128) copy];
                [v23 _mergeContentItem:v7];
                v24 = *(self + 128);
                *(self + 128) = v23;
              }

              v25 = *(self + 72);
              identifier6 = [v7 identifier];
              v27 = [v25 objectForKeyedSubscript:identifier6];

              if (v27)
              {
                MRPlaybackQueueRequestSetIncludeMetadata();
                CFRetain(v27);
                serviceQueue = [objc_opt_class() serviceQueue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke;
                block[3] = &unk_1E76819B8;
                v51 = v27;
                block[4] = self;
                block[5] = v7;
                v50 = v2;
                dispatch_async(serviceQueue, block);
              }

              else
              {
                _mediaRemoteContentItem = [v7 _mediaRemoteContentItem];
                identifier7 = [v7 identifier];
                v31 = [v2 containsObject:identifier7];

                if ((v31 & 1) == 0)
                {
                  MRContentItemSetArtworkIdentifier();
                }

                [array2 addObject:_mediaRemoteContentItem];
                v32 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = objc_opt_class();
                  v34 = *(self + 312);
                  v35 = v33;
                  identifier8 = [v7 identifier];
                  *buf = v40;
                  v57 = v33;
                  v58 = 2048;
                  selfCopy = self;
                  v60 = 2112;
                  v61 = v34;
                  v62 = 2114;
                  v63 = identifier8;
                  _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> Content item mutated | pushed [metadata] contentItemID=%{public}@", buf, 0x2Au);
                }
              }
            }

            v5 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v5);
        }

        if ([array2 count])
        {
          serviceQueue2 = [objc_opt_class() serviceQueue];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke_237;
          v47[3] = &unk_1E76823C0;
          v47[4] = self;
          v48 = array2;
          dispatch_async(serviceQueue2, v47);
        }

        v38 = *(self + 48);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke_244;
        v45[3] = &unk_1E76823C0;
        v45[4] = self;
        v46 = array;
        v39 = array;
        dispatch_async(v38, v45);
        [*(self + 64) removeAllObjects];
        [*(self + 72) removeAllObjects];
      }
    }
  }
}

void __58__MPNowPlayingInfoCenter__contentItemChangedNotification___block_invoke_235(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  *(*(a1 + 32) + 176) = 0;
  v4 = *(a1 + 32);

  [(MPNowPlayingInfoCenter *)v4 _onQueue_pushContentItemsUpdate];
}

void __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isInvalidated])
  {
    v2 = *(a1 + 56);

    CFRelease(v2);
  }

  else
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(v6 + 312);
      v8 = v4;
      v9 = [v5 identifier];
      v10 = *(a1 + 56);
      v13 = 138413314;
      v14 = v4;
      v15 = 2048;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> Content item mutated | pushed [request] contentItemID=%{public}@ request=%{public}@", &v13, 0x34u);
    }

    [*(a1 + 40) _mediaRemoteContentItem];
    v11 = *(a1 + 48);
    v12 = [*(a1 + 40) identifier];
    LOBYTE(v11) = [v11 containsObject:v12];

    if ((v11 & 1) == 0)
    {
      MRContentItemSetArtworkIdentifier();
    }

    [*(a1 + 40) _mediaRemoteContentItem];
    MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequestForPlayer();
    CFRelease(*(a1 + 56));
  }
}

uint64_t __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke_237(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(v6 + 312);
      v8 = v4;
      v9 = [v5 valueForKey:@"identifier"];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v11 = 138413058;
      v12 = v4;
      v13 = 2048;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> sending content items changed: %{public}@", &v11, 0x2Au);
    }

    return MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();
  }

  return result;
}

void __57__MPNowPlayingInfoCenter__onQueue_pushContentItemsUpdate__block_invoke_244(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 312);
  v5 = *MEMORY[0x1E69B1300];
  v7[0] = *MEMORY[0x1E69B1310];
  v7[1] = v5;
  v8[0] = v4;
  v8[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"_MPNowPlayingContentItemsDidChangeNotification" object:0 userInfo:v6];
}

- (void)_invalidatePlaybackQueueBoundaryWithExpectedQueueSize:(int64_t)size
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = size;
  dispatch_async(accessQueue, v4);
}

void __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    v3 = *(v1 + 104);
    v4 = 202;
    if (v3 < 202)
    {
      v4 = v3;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 101;
    }

    v6 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 120);
    *(v7 + 120) = v6;

    v9 = objc_alloc(MEMORY[0x1E69B13F8]);
    LODWORD(v10) = 1008981770;
    v11 = [v9 initWithCapacity:*(a1 + 40) falsePositiveTolerance:v10];
    v12 = *(a1 + 32);
    v13 = *(v12 + 136);
    *(v12 + 136) = v11;

    v14 = [MEMORY[0x1E695DF70] array];
    v15 = *(a1 + 32);
    v16 = *(v15 + 112);
    *(v15 + 112) = v14;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = *(a1 + 32);
    v19 = *(v18 + 64);
    *(v18 + 64) = v17;

    v20 = [MEMORY[0x1E695DF90] dictionary];
    v21 = *(a1 + 32);
    v22 = *(v21 + 72);
    *(v21 + 72) = v20;

    v23 = *MEMORY[0x1E69B1388];
    *(*(a1 + 32) + 80) = *MEMORY[0x1E69B1388];
    *(*(a1 + 32) + 96) = v23;
    v24 = *(a1 + 32);
    v25 = *(v24 + 128);
    *(v24 + 128) = 0;

    v26 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(v28 + 312);
      *buf = 138413314;
      v37 = v27;
      v38 = 2048;
      v39 = v28;
      v40 = 2112;
      v41 = v30;
      v42 = 2048;
      v43 = v29;
      v44 = 2048;
      v45 = v5;
      v31 = v27;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueueBoundaryWithExpectedQueueSize:%ld [] adaptiveCapacity=%ld", buf, 0x34u);
    }

    v32 = *(a1 + 32);
    v33 = *(v32 + 328);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke_233;
    v35[3] = &unk_1E7682398;
    v34 = *(a1 + 40);
    v35[4] = v32;
    v35[5] = v34;
    dispatch_async(v33, v35);
  }
}

void __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke_233(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke_2;
  v2[3] = &unk_1E7681978;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v1;
  [(MPNowPlayingInfoCenter *)v3 _invalidatePlaybackQueueImmediatelyWithCompletion:v2];
}

void __80__MPNowPlayingInfoCenter__invalidatePlaybackQueueBoundaryWithExpectedQueueSize___block_invoke_2(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(v6 + 312);
    v10 = 138413314;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = v7;
    v18 = 1024;
    v19 = a2;
    v9 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueueBoundaryWithExpectedQueueSize:%ld [] didChange=%{BOOL}u", &v10, 0x30u);
  }
}

- (void)_invalidatePlaybackQueueImmediatelyWithCompletion:(uint64_t)completion
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
  {
    dispatch_assert_queue_V2(*(completion + 328));
    if ([completion isInvalidated])
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = *(completion + 312);
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = completion;
        *&buf[22] = 2112;
        v41 = v6;
        v7 = v5;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueue ignored [infoCenter was invalidated]", buf, 0x20u);
      }

      v3[2](v3, 0);
    }

    else
    {
      playbackQueueDataSource = [completion playbackQueueDataSource];
      if (objc_opt_respondsToSelector())
      {
        v9 = [playbackQueueDataSource playbackQueueIdentifierForNowPlayingInfoCenter:completion];
      }

      else
      {
        v9 = 0;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v41 = __Block_byref_object_copy__54662;
      v42 = __Block_byref_object_dispose__54663;
      v43 = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = __Block_byref_object_copy__54662;
      v38[4] = __Block_byref_object_dispose__54663;
      v39 = MEMORY[0x1E695E0F0];
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = __Block_byref_object_copy__54662;
      v36[4] = __Block_byref_object_dispose__54663;
      v37 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3010000000;
      v34 = "";
      v35 = *MEMORY[0x1E69B1388];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke;
      v25 = &unk_1E76813D0;
      completionCopy = completion;
      v27 = v36;
      v28 = buf;
      v29 = v38;
      v30 = &v31;
      msv_dispatch_sync_on_queue();
      v10 = v32;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_2;
      v13[3] = &unk_1E7681478;
      v17 = v36;
      v18 = buf;
      v13[4] = completion;
      v19 = v38;
      v20 = &v31;
      v11 = playbackQueueDataSource;
      v14 = v11;
      v21 = sel__invalidatePlaybackQueueImmediatelyWithCompletion_;
      v12 = v9;
      v15 = v12;
      v16 = v3;
      [(MPNowPlayingInfoCenter *)completion _onDataSourceQueue_getContentItemIDsInRange:v10[5] completion:v13];

      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(v36, 8);

      _Block_object_dispose(v38, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

uint64_t __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke(uint64_t *a1)
{
  [(MPNowPlayingInfoCenter *)a1[4] _onQueue_ensureContentItemStorageInitialized];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 128));
  v2 = [*(*(a1[5] + 8) + 40) identifier];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[4] + 112);
  if (v6)
  {
    v7 = [v6 copy];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MSVSignedIntersectionRange();
    v11 = v10;
    v12 = [*(*(a1[6] + 8) + 40) length];
    v13 = a1[4];
    if (!v12 && v11 >= 1)
    {
      v15 = *(v13 + 112);
      v16 = *(v13 + 80);
      if (v16 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      v18 = [v15 objectAtIndexedSubscript:v17];
      v19 = [v18 copy];
      v20 = *(a1[6] + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

  result = MSVSignedUnionRange();
  v23 = *(a1[8] + 8);
  *(v23 + 32) = result;
  *(v23 + 40) = v24;
  return result;
}

void __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v9 = 1;
LABEL_13:
      v25 = *(*(*(a1 + 88) + 8) + 32);
      v26 = [v6 count];
      v27 = v26;
      v28 = *(*(a1 + 88) + 8);
      v29 = *(v28 + 40);
      if (v29 != v26)
      {
        if (a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = *(v28 + 32);
          if (v30 < 0)
          {
            v25 = ((v30 + v29) & ((v30 + v29) >> 63)) - v26;
          }
        }

        else
        {
          v25 = -a3;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v31 = [*(a1 + 40) playbackQueuePropertiesForNowPlayingInfoCenter:*(a1 + 32)];
      }

      else
      {
        v31 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v32 = [*(a1 + 40) playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:*(a1 + 32)];
      }

      else
      {
        v32 = 0;
      }

      v33 = *(a1 + 32);
      v34 = *(v33 + 40);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_4;
      v50[3] = &unk_1E76813F8;
      v35 = *(a1 + 64);
      v50[4] = v33;
      v52 = v35;
      v51 = v6;
      v53 = v25;
      v54 = v27;
      v55 = *(a1 + 96);
      dispatch_async(v34, v50);
      v36 = *(*(a1 + 32) + 48);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_5;
      v41[3] = &unk_1E7681450;
      v47 = *(a1 + 64);
      v42 = *(a1 + 48);
      v43 = v31;
      v37 = *(a1 + 32);
      v44 = v32;
      v45 = v37;
      v49 = v9;
      v48 = *(a1 + 72);
      v46 = *(a1 + 56);
      v38 = v32;
      v18 = v31;
      dispatch_async(v36, v41);

      goto LABEL_25;
    }
  }

  else
  {
    v10 = [v5 objectAtIndexedSubscript:a3];
    v11 = v10;
    if (!*(*(*(a1 + 64) + 8) + 40) || ([v10 isEqualToString:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
    {
      v19 = *(a1 + 32);
      v20 = *(v19 + 40);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_3;
      v56[3] = &unk_1E76823C0;
      v56[4] = v19;
      v57 = v11;
      v21 = v11;
      dispatch_async(v20, v56);
      v9 = 1;
      v22 = [(MPNowPlayingInfoCenter *)*(a1 + 32) _contentItemForIdentifier:v21 alreadyOnDataSourceQueue:1];
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      goto LABEL_13;
    }
  }

  if (([v6 isEqualToArray:*(*(*(a1 + 80) + 8) + 40)] & 1) == 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = *(a1 + 32);
    v15 = *(v14 + 312);
    *buf = 138412802;
    v59 = v13;
    v60 = 2048;
    v61 = v14;
    v62 = 2112;
    v63 = v15;
    v16 = v13;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueue [no change detected]", buf, 0x20u);
  }

  v17 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_102;
  block[3] = &unk_1E7682370;
  v40 = *(a1 + 56);
  dispatch_async(v17, block);
  v18 = v40;
LABEL_25:
}

- (void)_onDataSourceQueue_getContentItemIDsInRange:(uint64_t)range completion:(void *)completion
{
  completionCopy = completion;
  if (self)
  {
    dispatch_assert_queue_V2(self[41]);
    MSVSignedIntersectionRange();
    if (!v8)
    {
      MSVSignedUnionRange();
      a2 = MSVSignedSubtractedRange();
      range = v9;
    }

    playbackQueueDataSource = [self playbackQueueDataSource];
    if (objc_opt_respondsToSelector())
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      if (range <= 1)
      {
        rangeCopy = 1;
      }

      else
      {
        rangeCopy = range;
      }

      v12 = [playbackQueueDataSource nowPlayingInfoCenter:self contentItemIDsFromOffset:a2 toOffset:a2 + rangeCopy - 1 nowPlayingIndex:&v27];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = MEMORY[0x1E695E0F0];
      }

      completionCopy[2](completionCopy, v14, v27);

      goto LABEL_33;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_33:

      goto LABEL_34;
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:range];
    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:range];
    if (range < 1)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
      if ([v20 count])
      {
        v18 = self[5];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke_2;
        block[3] = &unk_1E76823C0;
        block[4] = self;
        v22 = v20;
        dispatch_async(v18, block);
      }

      (completionCopy)[2](completionCopy, v15, v19);

      goto LABEL_33;
    }

    v19 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (objc_opt_respondsToSelector())
      {
        identifier2 = [playbackQueueDataSource nowPlayingInfoCenter:self contentItemIDForOffset:a2];
        if (!identifier2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (_onDataSourceQueue_getContentItemIDsInRange_completion__onceToken != -1)
        {
          dispatch_once(&_onDataSourceQueue_getContentItemIDsInRange_completion__onceToken, &__block_literal_global_110_54666);
        }

        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = __Block_byref_object_copy__54662;
        v31 = __Block_byref_object_dispose__54663;
        v32 = 0;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke_111;
        v23[3] = &unk_1E76814A0;
        v25 = &v27;
        v24 = playbackQueueDataSource;
        v26 = a2;
        [MPContentItem performSuppressingChangeNotifications:v23];
        identifier2 = v28[5];
        if (identifier2)
        {
          identifier = [v28[5] identifier];
          [v20 setObject:identifier2 forKeyedSubscript:identifier];

          identifier2 = [v28[5] identifier];
        }

        _Block_object_dispose(&v27, 8);
        if (!identifier2)
        {
LABEL_26:
          if ([v15 count])
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      if (!a2)
      {
        v19 = [v15 count];
      }

      [v15 addObject:identifier2];
LABEL_27:

      ++a2;
      if (!--range)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_34:
}

void __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke_111(uint64_t a1)
{
  v5 = [*(a1 + 32) contentItemForOffset:*(a1 + 48)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke_2(uint64_t a1)
{
  [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_ensureContentItemStorageInitialized];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke_3;
  v4[3] = &unk_1E76814C8;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __81__MPNowPlayingInfoCenter__onDataSourceQueue_getContentItemIDsInRange_completion___block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A238D000, v0, OS_LOG_TYPE_ERROR, "Using deprecated -contentItemForOffset: playback queue datasource.", v1, 2u);
  }
}

void __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = *(a1 + 32);

    [(MPNowPlayingInfoCenter *)v3 _onQueue_pushContentItemsUpdate];
  }
}

- (void)_contentItemForIdentifier:(int)identifier alreadyOnDataSourceQueue:
{
  v5 = a2;
  if (self)
  {
    if (identifier)
    {
      MEMORY[0x1E69E9740](self[41]);
    }

    else
    {
      MEMORY[0x1E69E9748](self[41]);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__54662;
    v26 = __Block_byref_object_dispose__54663;
    v27 = 0;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke;
    v18 = &unk_1E7681330;
    selfCopy = self;
    v21 = &v22;
    v6 = v5;
    v20 = v6;
    msv_dispatch_sync_on_queue();
    if (!v23[5])
    {
      playbackQueueDataSource = [self playbackQueueDataSource];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_2;
        v12[3] = &unk_1E7681330;
        v14 = &v22;
        v12[4] = self;
        v13 = v6;
        v9 = _Block_copy(v12);
        v10 = v9;
        if (identifier)
        {
          (*(v9 + 2))(v9);
        }

        else
        {
          msv_dispatch_sync_on_queue();
        }
      }
    }

    self = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  return self;
}

void __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_ensureContentItemStorageInitialized];
  objc_storeStrong((*(a1 + 32) + 128), *(*(*(a1 + 48) + 8) + 40));
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  *(*(a1 + 32) + 80) = *(a1 + 56);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MPNowPlayingInfoCenter *)*(a1 + 32) _updateBloomFilterWithContentItemID:?];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([*(*(a1 + 32) + 112) count] != *(*(a1 + 32) + 88))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 72);
    v12 = *(a1 + 32);
    v13 = [*(v12 + 112) count];
    [v10 handleFailureInMethod:v11 object:v12 file:@"MPNowPlayingInfoCenter.m" lineNumber:754 description:{@"IPQI: Mismatch in contentItemIdentifiers (%ld) and loadedContentItemsRange (%ld)", v13, *(*(a1 + 32) + 88), v14}];
  }
}

void __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_5(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[9] + 8) + 40);
  if (v2)
  {
    v14[0] = [v2 _mediaRemoteContentItem];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [objc_alloc(MEMORY[0x1E69B0AA8]) initWithContentItems:v3 location:0];
  v5 = v4;
  if (a1[4])
  {
    [v4 setQueueIdentifier:?];
  }

  if (a1[5])
  {
    [v5 setProperties:?];
  }

  if (a1[6])
  {
    [v5 setAuxiliaryNowPlayingInfo:?];
  }

  v6 = [objc_opt_class() serviceQueue];
  v11 = v5;
  v7 = v5;
  msv_dispatch_sync_on_queue();

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = a1[7];
  v12 = *MEMORY[0x1E69B1310];
  v13 = *(v9 + 312);
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v8 postNotificationName:@"_MPNowPlayingInfoCenterPlaybackQueueDidChangeNotification" object:v9 userInfo:v10];

  (*(a1[8] + 16))();
}

uint64_t __76__MPNowPlayingInfoCenter__invalidatePlaybackQueueImmediatelyWithCompletion___block_invoke_6(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 64);
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        v6 = objc_opt_class();
        v7 = *(a1 + 32);
        v8 = *(v7 + 312);
        v9 = *(*(*(a1 + 48) + 8) + 40);
        v10 = *(*(*(a1 + 56) + 8) + 40);
        v11 = v6;
        v12 = [v10 identifier];
        v17 = 138413314;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
        v23 = 2114;
        v24 = v9;
        v25 = 2114;
        v26 = v12;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueue [nowPlayingItemDidChange] %{public}@ -> %{public}@", &v17, 0x34u);
      }
    }

    else if (v5)
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      v15 = *(v14 + 312);
      v17 = 138412802;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v16 = v13;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidatePlaybackQueue [identifiersDidChange]", &v17, 0x20u);
    }

    return MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer();
  }

  return result;
}

- (void)_updateBloomFilterWithContentItemID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    dispatch_assert_queue_V2(*(d + 40));
    if (v3)
    {
      [(MPNowPlayingInfoCenter *)d _onQueue_ensureContentItemStorageInitialized];
      [*(d + 136) addObject:v3];
    }
  }
}

void __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke(uint64_t *a1)
{
  [(MPNowPlayingInfoCenter *)a1[4] _onQueue_ensureContentItemStorageInitialized];
  v2 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_3;
  v18[3] = &unk_1E7681330;
  v18[4] = *(a1 + 32);
  v14 = *(a1 + 40);
  v2 = v14;
  v19 = v14;
  [MPContentItem performSuppressingChangeNotifications:v18];
  v3 = *(a1 + 48);
  v4 = *(*(v3 + 8) + 40);
  if (v4)
  {
    v5 = [v4 identifier];
    if (([*(a1 + 40) isEqualToString:v5] & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(v8 + 312);
        *buf = 138413314;
        v21 = v7;
        v22 = 2048;
        v23 = v8;
        v24 = 2112;
        v25 = v10;
        v26 = 2114;
        v27 = v9;
        v28 = 2114;
        v29 = v5;
        v11 = v7;
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "[InfoCenter] <%@: %p (%@)> _contentItemForIdentifier | contentItemID mismatch [MPNowPlayingPlaybackQueueDataSource produced incorrect content item] requestedID=%{public}@ contentItemID=%{public}@", buf, 0x34u);
      }
    }

    v3 = *(a1 + 48);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_70;
  block[3] = &unk_1E7681330;
  block[4] = v12;
  v17 = v3;
  v16 = *(a1 + 40);
  dispatch_async(v13, block);
}

void __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) playbackQueueDataSource];
  v2 = [v6 nowPlayingInfoCenter:*(a1 + 32) contentItemForID:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __77__MPNowPlayingInfoCenter__contentItemForIdentifier_alreadyOnDataSourceQueue___block_invoke_70(uint64_t *a1)
{
  [(MPNowPlayingInfoCenter *)a1[4] _onQueue_ensureContentItemStorageInitialized];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = *(a1[4] + 120);
  v4 = [v2 identifier];
  v5 = v4;
  if (!v4)
  {
    v5 = a1[5];
  }

  [v3 setObject:v2 forKeyedSubscript:v5];

  v6 = a1[4];
  v7 = [*(*(a1[6] + 8) + 40) identifier];
  [(MPNowPlayingInfoCenter *)v6 _updateBloomFilterWithContentItemID:v7];
}

- (id)_onQueue_stateDictionary
{
  v24[8] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self, @"_obj"];
  playerPath = self->_playerPath;
  v24[0] = v4;
  v24[1] = playerPath;
  v23[1] = @"_playerPath";
  v23[2] = @"contentItemIDs";
  contentItemIdentifiers = self->_contentItemIdentifiers;
  if (!contentItemIdentifiers)
  {
    contentItemIdentifiers = @"@";
  }

  v24[2] = contentItemIdentifiers;
  v23[3] = @"loadedRange";
  v7 = NSStringFromMSVSignedRange();
  v24[3] = v7;
  v23[4] = @"requestedRange";
  v8 = NSStringFromMSVSignedRange();
  v24[4] = v8;
  v23[5] = @"cachedContentItems";
  allKeys = [(MSVLRUDictionary *)self->_contentItems allKeys];
  v10 = allKeys;
  if (allKeys)
  {
    v11 = allKeys;
  }

  else
  {
    v11 = @"@";
  }

  v24[5] = v11;
  v23[6] = @"mutatedContentItems";
  allKeys2 = [(NSMutableDictionary *)self->_mutatedContentItems allKeys];
  v13 = allKeys2;
  if (allKeys2)
  {
    v14 = allKeys2;
  }

  else
  {
    v14 = @"@";
  }

  v24[6] = v14;
  v23[7] = @"mutatedPlaybackQueueRequests";
  allKeys3 = [(NSMutableDictionary *)self->_mutatedPlaybackQueueRequests allKeys];
  v16 = allKeys3;
  if (allKeys3)
  {
    v17 = allKeys3;
  }

  else
  {
    v17 = @"@";
  }

  v24[7] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v19 = [v3 dictionaryWithDictionary:v18];

  if (self->_contentItemBloomFilter)
  {
    contentItemBloomFilter = self->_contentItemBloomFilter;
  }

  else
  {
    contentItemBloomFilter = @"@";
  }

  [v19 setObject:contentItemBloomFilter forKeyedSubscript:@"bloomFilter"];
  nowPlayingContentItem = self->_nowPlayingContentItem;
  if (nowPlayingContentItem)
  {
    [v19 setObject:nowPlayingContentItem forKeyedSubscript:@"nowPlayingContentItem"];
  }

  if ([(NSDictionary *)self->_nowPlayingInfo count])
  {
    [v19 setObject:self->_nowPlayingInfo forKeyedSubscript:@"nowPlayingInfo"];
  }

  if (self->_nowPlayingInfo != self->_queuedNowPlayingInfo)
  {
    [v19 setObject:? forKeyedSubscript:?];
  }

  return v19;
}

- (void)_getTransportablePlaybackSessionRepresentationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dataSourceQueue = self->_dataSourceQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke;
  v12[3] = &unk_1E7681E88;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = requestCopy;
  v10 = requestCopy;
  v11 = completionCopy;
  dispatch_async(dataSourceQueue, v12);
}

void __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v3 = objc_opt_respondsToSelector();
  v4 = objc_alloc(MEMORY[0x1E69B13F0]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_2;
  v24[3] = &unk_1E7681358;
  v24[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  v5 = v16;
  v25 = v16;
  v6 = [v4 initWithDeallocHandler:v24];
  v7 = v6;
  if (v3)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_3;
    v21[3] = &unk_1E7681380;
    v22 = v6;
    v23 = *(a1 + 48);
    v10 = v7;
    [v2 nowPlayingInfoCenter:v8 getTransportablePlaybackSessionRepresentationForRequest:v9 completion:v21];

    v11 = v22;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
      v13 = [WeakRetained playbackQueueIdentifierForNowPlayingInfoCenter:*(a1 + 32)];
    }

    else
    {
      v13 = @"<missing queue identifier>";
    }

    v14 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_4;
    v17[3] = &unk_1E76813A8;
    v18 = v7;
    v19 = v13;
    v20 = *(a1 + 48);
    v11 = v13;
    v15 = v7;
    [v2 nowPlayingInfoCenter:v14 getTransportablePlaybackSessionRepresentationWithCompletion:v17];
  }
}

void __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_2(void *a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[4] file:@"MPNowPlayingInfoCenter.m" lineNumber:644 description:@"MPNowPlayingPlaybackQueueDataSource getTransportablePlaybackSessionRepresentationWithCompletion completion was released without being called."];
  }

  v2 = a1[5];
  Error = MRMediaRemoteCreateError();
  (*(v2 + 16))(v2, 0, Error);
}

void __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  (*(*(a1 + 40) + 16))();
}

void __95__MPNowPlayingInfoCenter__getTransportablePlaybackSessionRepresentationWithRequest_completion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v11 = [v9 stringByAppendingPathExtension:@"transportablePlaybackSession"];

  v10 = [MPNowPlayingInfoTransportableSessionResponse responseWithIdentifier:a1[5] sessionType:v11 data:v7];

  (*(a1[6] + 16))();
}

- (void)_getMetadataForContentItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__54662;
  v16 = __Block_byref_object_dispose__54663;
  v17 = 0;
  identifier = [itemCopy identifier];
  msv_dispatch_sync_on_queue();
  v9 = v13[5];
  if (!v9 && identifier)
  {
    v10 = [(MPNowPlayingInfoCenter *)self _contentItemForIdentifier:identifier];
    v11 = v13[5];
    v13[5] = v10;

    v9 = v13[5];
  }

  if (v9)
  {
    [itemCopy _mergeContentItem:?];
  }

  completionCopy[2](completionCopy, 0);

  _Block_object_dispose(&v12, 8);
}

void __64__MPNowPlayingInfoCenter__getMetadataForContentItem_completion___block_invoke(uint64_t *a1)
{
  [(MPNowPlayingInfoCenter *)a1[4] _onQueue_ensureContentItemStorageInitialized];
  v2 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_contentItemForIdentifier:(void *)identifier
{
  if (identifier)
  {
    identifier = [(MPNowPlayingInfoCenter *)identifier _contentItemForIdentifier:a2 alreadyOnDataSourceQueue:0];
    v2 = vars8;
  }

  return identifier;
}

- (id)_childContentItemForContentItem:(id)item index:(int64_t)index
{
  itemCopy = item;
  playbackQueueDataSource = [(MPNowPlayingInfoCenter *)self playbackQueueDataSource];
  if (objc_opt_respondsToSelector())
  {
    v8 = [playbackQueueDataSource nowPlayingInfoCenter:self childContentItemIDAtIndex:index ofItem:itemCopy];
    if (v8)
    {
      v9 = [(MPContentItem *)[MPNowPlayingContentItem alloc] initWithIdentifier:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_becomeActiveIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MPNowPlayingInfoCenter *)self isInvalidated])
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:6 debugDescription:@"MPNowPlayingInfoCenter was invalidated"];
    completionCopy[2](completionCopy, v5);
  }

  else
  {
    v6 = completionCopy;
    MRMediaRemoteSetNowPlayingPlayerIfPossible();
  }
}

void __64__MPNowPlayingInfoCenter__becomeActiveIfPossibleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 312);
      v7 = [v3 msv_description];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "becomeActivePlayerIfPossible: %{public}@ error=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 312);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "becomeActivePlayerIfPossible: %{public}@", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)_becomeActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MPNowPlayingInfoCenter *)self isInvalidated])
  {
    if (completionCopy)
    {
      v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:6 debugDescription:@"MPNowPlayingInfoCenter was invalidated"];
      completionCopy[2](completionCopy, v5);
    }
  }

  else
  {
    v6 = completionCopy;
    MRMediaRemoteSetNowPlayingPlayer();
  }
}

void __54__MPNowPlayingInfoCenter__becomeActiveWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 312);
      v7 = [v3 msv_description];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "becomeActivePlayer: %{public}@ error=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 312);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "becomeActivePlayer: %{public}@", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (id)_artworkCatalogForContentItem:(id)item
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54662;
  v10 = __Block_byref_object_dispose__54663;
  v11 = 0;
  itemCopy = item;
  msv_dispatch_sync_on_queue();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MPNowPlayingInfoCenter__artworkCatalogForContentItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(v2[41]);
    v4 = [(dispatch_queue_t *)v2 playbackQueueDataSource];
    if (objc_opt_respondsToSelector())
    {
      v2 = [v4 nowPlayingInfoCenter:v2 artworkCatalogForContentItem:v3];
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v2;
}

- (BOOL)supportsArtworkCatalogLoading
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __55__MPNowPlayingInfoCenter_supportsArtworkCatalogLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  *(*(*(a1 + 40) + 8) + 24) = objc_opt_respondsToSelector() & 1;
}

- (id)artworkCatalogBlockForContentItem:(id)item
{
  itemCopy = item;
  if ([(MPNowPlayingInfoCenter *)self supportsArtworkCatalogLoading])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__MPNowPlayingInfoCenter_artworkCatalogBlockForContentItem___block_invoke;
    v8[3] = &unk_1E7681240;
    v8[4] = self;
    v9 = itemCopy;
    v5 = _Block_copy(v8);
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDataSourceQueue:(id)queue
{
  queueCopy = queue;
  if (self->_dataSourceQueue != queueCopy)
  {
    v8 = queueCopy;
    if (queueCopy)
    {
      v5 = queueCopy;
    }

    else
    {
      v5 = MEMORY[0x1E69E96A0];
      v6 = MEMORY[0x1E69E96A0];
    }

    dataSourceQueue = self->_dataSourceQueue;
    self->_dataSourceQueue = v5;

    queueCopy = v8;
  }
}

- (void)setNowPlayingContentItem:(id)item
{
  itemCopy = item;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MPNowPlayingInfoCenter_setNowPlayingContentItem___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(accessQueue, v7);
}

void __51__MPNowPlayingInfoCenter_setNowPlayingContentItem___block_invoke(uint64_t a1)
{
  [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_ensureContentItemStorageInitialized];
  v2 = [*(*(a1 + 32) + 128) identifier];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 328);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MPNowPlayingInfoCenter_setNowPlayingContentItem___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (MPNowPlayingContentItem)nowPlayingContentItem
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__54662;
  v8 = __Block_byref_object_dispose__54663;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)invalidatePlaybackQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSourceQueue = self->_dataSourceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MPNowPlayingInfoCenter_invalidatePlaybackQueueWithCompletion___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dataSourceQueue, v7);
}

- (MPNowPlayingInfoLyricsDelegate)lyricsDelegate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__54662;
  v8 = __Block_byref_object_dispose__54663;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __40__MPNowPlayingInfoCenter_lyricsDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setLyricsDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MPNowPlayingInfoCenter_setLyricsDelegate___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(accessQueue, v7);
}

void __44__MPNowPlayingInfoCenter_setLyricsDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 192));
    v4 = *(a1 + 40);

    if (WeakRetained != v4)
    {
      objc_storeWeak((*(a1 + 32) + 192), *(a1 + 40));
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v5)
      {
        dispatch_assert_queue_V2(*(v5 + 40));
        if ((*(v5 + 288) & 1) == 0)
        {
          if (v6)
          {
            objc_initWeak(&location, v5);
            objc_initWeak(&from, v6);
            v8[1] = MEMORY[0x1E69E9820];
            v8[2] = 3221225472;
            v8[3] = __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke;
            v8[4] = &unk_1E7681540;
            v8[5] = v5;
            objc_copyWeak(&v9, &location);
            objc_copyWeak(&v10, &from);
            MRMediaRemoteSetBeginLyricsEventCallbackForPlayer();
            objc_copyWeak(&v7, &location);
            objc_copyWeak(v8, &from);
            MRMediaRemoteSetEndLyricsEventCallbackForPlayer();
            objc_destroyWeak(v8);
            objc_destroyWeak(&v7);
            objc_destroyWeak(&v10);
            objc_destroyWeak(&v9);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
          }

          else
          {
            MRMediaRemoteSetBeginLyricsEventCallbackForPlayer();
            MRMediaRemoteSetEndLyricsEventCallbackForPlayer();
          }
        }
      }
    }
  }
}

void __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(*(a1 + 32) + 328);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke_2;
  block[3] = &unk_1E7681518;
  objc_copyWeak(&v6, (a1 + 40));
  v7[1] = cf;
  objc_copyWeak(v7, (a1 + 48));
  dispatch_async(v4, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&v6);
}

void __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke_3(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(*(a1 + 32) + 328);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke_4;
  block[3] = &unk_1E7681518;
  objc_copyWeak(&v6, (a1 + 40));
  v7[1] = cf;
  objc_copyWeak(v7, (a1 + 48));
  dispatch_async(v4, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&v6);
}

void __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [[MPNowPlayingInfoLyricsEvent alloc] initWithMediaRemoteLyricsEvent:*(a1 + 48)];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 nowPlayingInfoCenter:WeakRetained didEndLyricsEvent:v2];

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __67__MPNowPlayingInfoCenter__onQueue_registerLyricsDelegateCallbacks___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [[MPNowPlayingInfoLyricsEvent alloc] initWithMediaRemoteLyricsEvent:*(a1 + 48)];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 nowPlayingInfoCenter:WeakRetained didEndLyricsEvent:v2];

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)setPlaybackQueueDataSource:(id)source
{
  sourceCopy = source;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MPNowPlayingInfoCenter_setPlaybackQueueDataSource___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(accessQueue, v7);
}

void __53__MPNowPlayingInfoCenter_setPlaybackQueueDataSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 184));
    v4 = *(a1 + 40);

    if (WeakRetained != v4)
    {
      objc_storeWeak((*(a1 + 32) + 184), *(a1 + 40));
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v5)
      {
        dispatch_assert_queue_V2(*(v5 + 40));
        if ((*(v5 + 288) & 1) == 0)
        {
          [(MPNowPlayingInfoCenter *)v5 _onQueue_clearPlaybackQueueDataSourceCallbacks];
          if (v6)
          {
            objc_initWeak(location, v5);
            if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
            {
              if (objc_opt_respondsToSelector())
              {
                v37[1] = MEMORY[0x1E69E9820];
                v37[2] = 3221225472;
                v37[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke;
                v37[4] = &unk_1E7681590;
                objc_copyWeak(&v38, location);
                MRMediaRemotePlaybackSessionSetMigrateBeginCallback();
                objc_destroyWeak(&v38);
              }

              if (objc_opt_respondsToSelector())
              {
                v36[1] = MEMORY[0x1E69E9820];
                v36[2] = 3221225472;
                v36[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_3;
                v36[4] = &unk_1E76815B8;
                objc_copyWeak(v37, location);
                MRMediaRemotePlaybackSessionSetMigrateEndCallback();
                objc_destroyWeak(v37);
              }

              v35[1] = MEMORY[0x1E69E9820];
              v35[2] = 3221225472;
              v35[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_5;
              v35[4] = &unk_1E7681608;
              objc_copyWeak(v36, location);
              MRMediaRemotePlaybackSessionSetRequestCallback();
              objc_destroyWeak(v36);
            }

            v7 = [objc_opt_class() serviceQueue];
            v34[1] = MEMORY[0x1E69E9820];
            v34[2] = 3221225472;
            v34[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_7;
            v34[4] = &unk_1E7681630;
            objc_copyWeak(v35, location);
            *(v5 + 200) = MRMediaRemotePlaybackQueueDataSourceAddCreatePlaybackQueueForRequestCallbackForPlayer();

            v8 = [objc_opt_class() serviceQueue];
            v33[1] = MEMORY[0x1E69E9820];
            v33[2] = 3221225472;
            v33[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_8;
            v33[4] = &unk_1E7681658;
            objc_copyWeak(v34, location);
            *(v5 + 208) = MRMediaRemotePlaybackQueueDataSourceAddCreateContentItemForIdentifierCallbackForPlayer();

            if (objc_opt_respondsToSelector())
            {
              v9 = [objc_opt_class() serviceQueue];
              v32[1] = MEMORY[0x1E69E9820];
              v32[2] = 3221225472;
              v32[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_10;
              v32[4] = &unk_1E76816A8;
              objc_copyWeak(v33, location);
              *(v5 + 216) = MRMediaRemotePlaybackQueueDataSourceAddCreateChildContentItemCallbackForPlayer();

              objc_destroyWeak(v33);
            }

            v10 = [objc_opt_class() serviceQueue];
            v31[1] = MEMORY[0x1E69E9820];
            v31[2] = 3221225472;
            v31[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_13;
            v31[4] = &unk_1E76816F8;
            objc_copyWeak(v32, location);
            *(v5 + 224) = MRMediaRemotePlaybackQueueDataSourceAddContentItemMetadataCallbackForPlayer();

            v11 = [objc_opt_class() serviceQueue];
            v30[1] = MEMORY[0x1E69E9820];
            v30[2] = 3221225472;
            v30[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_15;
            v30[4] = &unk_1E76816F8;
            objc_copyWeak(v31, location);
            *(v5 + 232) = MRMediaRemotePlaybackQueueDataSourceAddContentItemArtworkCallbackForPlayer();

            if (objc_opt_respondsToSelector())
            {
              v12 = [objc_opt_class() serviceQueue];
              v29[1] = MEMORY[0x1E69E9820];
              v29[2] = 3221225472;
              v29[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_143;
              v29[4] = &unk_1E76816F8;
              objc_copyWeak(v30, location);
              *(v5 + 240) = MRMediaRemotePlaybackQueueDataSourceAddContentItemFormattedArtworkCallbackForPlayer();

              objc_destroyWeak(v30);
            }

            if (objc_opt_respondsToSelector())
            {
              v13 = [objc_opt_class() serviceQueue];
              v28[1] = MEMORY[0x1E69E9820];
              v28[2] = 3221225472;
              v28[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_6_161;
              v28[4] = &unk_1E76816F8;
              objc_copyWeak(v29, location);
              *(v5 + 272) = MRMediaRemotePlaybackQueueDataSourceAddContentItemLyricsCallbackForPlayer();

              objc_destroyWeak(v29);
            }

            if (objc_opt_respondsToSelector())
            {
              v14 = [objc_opt_class() serviceQueue];
              v27[1] = MEMORY[0x1E69E9820];
              v27[2] = 3221225472;
              v27[3] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_10_168;
              v27[4] = &unk_1E76816F8;
              objc_copyWeak(v28, location);
              *(v5 + 248) = MRMediaRemotePlaybackQueueDataSourceAddContentItemInfoCallbackForPlayer();

              objc_destroyWeak(v28);
            }

            if (objc_opt_respondsToSelector())
            {
              v15 = [objc_opt_class() serviceQueue];
              v23 = MEMORY[0x1E69E9820];
              v24 = 3221225472;
              v25 = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_14_175;
              v26 = &unk_1E76816F8;
              objc_copyWeak(v27, location);
              *(v5 + 256) = MRMediaRemotePlaybackQueueDataSourceAddContentItemTranscriptAlignmentsCallbackForPlayer();

              objc_destroyWeak(v27);
            }

            v16 = objc_opt_respondsToSelector();
            v17 = objc_opt_respondsToSelector();
            v18 = v17;
            if ((v16 | v17))
            {
              v19 = [objc_opt_class() serviceQueue];
              objc_copyWeak(&v20, location);
              v21 = v16 & 1;
              v22 = v18 & 1;
              *(v5 + 264) = MRMediaRemotePlaybackQueueDataSourceAddContentItemLanguageOptionsCallbackForPlayer();

              objc_destroyWeak(&v20);
            }

            objc_destroyWeak(v31);
            objc_destroyWeak(v32);
            objc_destroyWeak(v34);
            objc_destroyWeak(v35);
            objc_destroyWeak(location);
          }
        }
      }
    }
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = MRPlaybackSessionRequestCopyRequestID();
    v7 = WeakRetained[41];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_2;
    block[3] = &unk_1E7681568;
    v10 = WeakRetained;
    v11 = v6;
    v12 = v4;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = a3;
    v9 = MRPlaybackSessionRequestCopyRequestID();
    v10 = WeakRetained[41];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_4;
    v13[3] = &unk_1E7681770;
    v14 = WeakRetained;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v11 = v8;
    v12 = v9;
    dispatch_async(v10, v13);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [_MPNowPlayingInfoTransportableSessionRequest requestWithMediaRemoteRequest:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_6;
  v9[3] = &unk_1E76815E0;
  v10 = v5;
  v8 = v5;
  [WeakRetained _getTransportablePlaybackSessionRepresentationWithRequest:v6 completion:v9];
}

id __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_7(uint64_t a1)
{
  aBlock[16] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v24[0] = 0;
    v24[1] = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__54662;
    v37 = __Block_byref_object_dispose__54663;
    v38 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3010000000;
    v32[3] = "";
    v32[4] = MRPlaybackQueueRequestGetRange();
    v32[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke;
    aBlock[3] = &unk_1E7681290;
    aBlock[4] = WeakRetained;
    aBlock[5] = v32;
    aBlock[6] = &v33;
    aBlock[7] = v24;
    v3 = _Block_copy(aBlock);
    msv_dispatch_sync_on_queue();
    v4 = v34[5];
    if (!v4)
    {
      *&v20 = MEMORY[0x1E69E9820];
      *(&v20 + 1) = 3221225472;
      *&v21 = __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_2;
      *(&v21 + 1) = &unk_1E76812B8;
      *&v22 = WeakRetained;
      *(&v22 + 1) = v32;
      *&v23 = sel__contentItemIDsInRange_itemsRange_;
      v5 = _Block_copy(&v20);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_3;
      v28 = &unk_1E7681308;
      v29 = WeakRetained;
      v31 = v32;
      v6 = v5;
      v30 = v6;
      msv_dispatch_sync_on_queue();
      msv_dispatch_sync_on_queue();

      v4 = v34[5];
    }

    v7 = v4;

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v33, 8);

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:aBlock count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = MRContentItemCreate();
          [v8 addObject:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:aBlock count:16];
      }

      while (v10);
    }

    v14 = objc_alloc(MEMORY[0x1E69B0AA8]);
    v15 = [v14 initWithContentItems:v8 location:v24[0]];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __57__MPNowPlayingInfoCenter__createPlaybackQueueForRequest___block_invoke;
    v28 = &unk_1E76823C0;
    v29 = WeakRetained;
    v16 = v15;
    v30 = v16;
    msv_dispatch_sync_on_queue();
    v17 = v30;
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_8(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = a2;
  v5 = WeakRetained[5];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_9;
  v15 = &unk_1E76823C0;
  v16 = WeakRetained;
  v17 = v4;
  v6 = v4;
  v7 = WeakRetained;
  dispatch_async(v5, &v12);
  v8 = [(MPNowPlayingInfoCenter *)v7 _contentItemForIdentifier:v6];
  v9 = v8;
  [v9 _mediaRemoteContentItem];
  SkeletonFrom = MRContentItemCreateSkeletonFrom();

  return SkeletonFrom;
}

uint64_t __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  Identifier = MRContentItemGetIdentifier();
  v3 = [(MPNowPlayingInfoCenter *)WeakRetained _contentItemForIdentifier:?];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = WeakRetained;
  v7 = v3;
  msv_dispatch_sync_on_queue();
  v4 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (MRContentItemGetHasMetadata())
  {
    v6[2](v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_14;
    v9[3] = &unk_1E76816D0;
    v10 = v6;
    [WeakRetained _getMetadataForContentItem:v8 completion:v9];
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3010000000;
  v53 = 0;
  v54 = 0;
  v52 = "";
  MRPlaybackQueueRequestGetArtworkWidth();
  v10 = v9;
  MRPlaybackQueueRequestGetArtworkHeight();
  v53 = v10;
  v54 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_16;
  aBlock[3] = &unk_1E7681748;
  v12 = WeakRetained;
  v47 = v12;
  v13 = v6;
  v48 = v13;
  v14 = _Block_copy(aBlock);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_18;
  v41[3] = &unk_1E76817C0;
  v45 = &v49;
  v15 = v12;
  v42 = v15;
  v16 = v14;
  v44 = v16;
  v17 = v8;
  v43 = v17;
  v18 = _Block_copy(v41);
  v19 = [v15 playbackQueueDataSource];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = v15[41];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_22;
    v36[3] = &unk_1E76817E8;
    v40 = &v49;
    v37 = v15;
    v38 = v17;
    v39 = v18;
    dispatch_async(v21, v36);

    v22 = v37;
  }

  else
  {
    Identifier = MRContentItemGetIdentifier();
    v22 = [(MPNowPlayingInfoCenter *)v15 _contentItemForIdentifier:?];
    v24 = [v22 artwork];

    if (v24)
    {
      if (_block_invoke_onceToken != -1)
      {
        dispatch_once(&_block_invoke_onceToken, &__block_literal_global_140);
      }

      v25 = v50[4];
      v26 = v50[5];
      v27 = *&MPNowPlayingContentItemArtworkMaxSize;
      if (v25 == *&MPNowPlayingContentItemArtworkMaxSize && v26 == *&qword_1EB097500)
      {
        v28 = [v22 artwork];
        [v28 bounds];
        v25 = v29;
        v26 = v30;

        v27 = *&MPNowPlayingContentItemArtworkMaxSize;
      }

      if (v25 == v27)
      {
        MSVGetMaximumScreenSize();
        v25 = v31;
      }

      if (v26 == *&qword_1EB097500)
      {
        MSVGetMaximumScreenSize();
        v26 = v32;
      }

      v33 = [v22 artwork];
      v34 = [v33 imageWithSize:{v25, v26}];

      (*(v18 + 2))(v18, v34, 0);
    }

    else
    {
      Error = MRMediaRemoteCreateError();
      (*(v13 + 2))(v13, Error);
      CFRelease(Error);
    }
  }

  _Block_object_dispose(&v49, 8);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_143(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v10 = [v9 remoteArtworks];

  if (v10)
  {
    v7[2](v7, 0);
  }

  else
  {
    v11 = a2;
    [v11 artworkWidth];
    v13 = v12;
    [v11 artworkHeight];
    v15 = v14;
    v16 = dispatch_group_create();
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2810000000;
    v46[3] = "";
    v47 = 0;
    v17 = MEMORY[0x1E695DF90];
    v18 = [v11 requestedRemoteArtworkFormats];
    v19 = [v17 dictionaryWithCapacity:{objc_msgSend(v18, "count")}];

    v20 = MEMORY[0x1E695DF70];
    v21 = [v11 requestedRemoteArtworkFormats];
    v22 = [v20 arrayWithCapacity:{objc_msgSend(v21, "count")}];

    dispatch_group_enter(v16);
    v23 = WeakRetained[41];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_2_145;
    block[3] = &unk_1E7681838;
    v37 = v11;
    v38 = v16;
    v39 = WeakRetained;
    v24 = v9;
    v44 = v13;
    v45 = v15;
    v40 = v24;
    v43 = v46;
    v25 = v19;
    v41 = v25;
    v26 = v22;
    v42 = v26;
    v27 = v16;
    v28 = v11;
    dispatch_async(v23, block);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_4_154;
    v31[3] = &unk_1E7681770;
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v35 = v7;
    v29 = v26;
    v30 = v25;
    dispatch_group_notify(v27, MEMORY[0x1E69E96A0], v31);

    _Block_object_dispose(v46, 8);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_6_161(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v9 = [v8 lyrics];

  if (v9)
  {
    v6[2](v6, 0);
  }

  else
  {
    v10 = WeakRetained[41];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_7_162;
    block[3] = &unk_1E7681568;
    v12 = WeakRetained;
    v13 = v8;
    v14 = v6;
    dispatch_async(v10, block);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_10_168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v9 = WeakRetained[41];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_11_169;
  block[3] = &unk_1E7681568;
  v14 = WeakRetained;
  v15 = v8;
  v16 = v6;
  v10 = v6;
  v11 = v8;
  v12 = WeakRetained;
  dispatch_async(v9, block);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_14_175(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v9 = WeakRetained[41];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_15_176;
  block[3] = &unk_1E7681568;
  v14 = WeakRetained;
  v15 = v8;
  v16 = v6;
  v10 = v6;
  v11 = v8;
  v12 = WeakRetained;
  dispatch_async(v9, block);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_18_184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [(MPContentItem *)[MPNowPlayingContentItem alloc] _initWithMediaRemoteContentItem:a3];
  v9 = dispatch_group_create();
  v10 = v9;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__54662;
  v28[4] = __Block_byref_object_dispose__54663;
  v29 = 0;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_enter(v9);
    v11 = WeakRetained[41];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_19_185;
    block[3] = &unk_1E7681900;
    v24 = WeakRetained;
    v25 = v8;
    v27 = v28;
    v26 = v10;
    dispatch_async(v11, block);
  }

  if (*(a1 + 41) == 1)
  {
    dispatch_group_enter(v10);
    v12 = WeakRetained[41];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_22_188;
    v18[3] = &unk_1E7681900;
    v19 = WeakRetained;
    v20 = v8;
    v22 = v28;
    v21 = v10;
    dispatch_async(v12, v18);
  }

  v13 = WeakRetained[6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_25;
  v15[3] = &unk_1E7681928;
  v16 = v6;
  v17 = v28;
  v14 = v6;
  dispatch_group_notify(v10, v13, v15);

  _Block_object_dispose(v28, 8);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_19_185(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_20_186;
  v8[3] = &unk_1E76818D8;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v10 = v7;
  v6 = [v2 nowPlayingInfoCenter:v4 availableLanguageOptionsForContentItem:v9 completion:v8];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_22_188(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_23_189;
  v8[3] = &unk_1E76818D8;
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v10 = v7;
  v6 = [v2 nowPlayingInfoCenter:v4 currentLanguageOptionsForContentItem:v9 completion:v8];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_23_189(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_24;
  v11[3] = &unk_1E76823C0;
  v12 = *(a1 + 32);
  v7 = v5;
  v13 = v7;
  [MPContentItem performSuppressingChangeNotifications:v11];
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_20_186(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_21_187;
  v11[3] = &unk_1E76823C0;
  v12 = *(a1 + 32);
  v7 = v5;
  v13 = v7;
  [MPContentItem performSuppressingChangeNotifications:v11];
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_15_176(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_16_177;
  v6[3] = &unk_1E76818B0;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = [v2 nowPlayingInfoCenter:v4 transcriptAlignmentsForContentItem:v7 completion:v6];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_16_177(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_17_178;
  v10[3] = &unk_1E76823C0;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  v7 = a3;
  [MPContentItem performSuppressingChangeNotifications:v10];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, v9);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_11_169(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_12_170;
  v6[3] = &unk_1E7681888;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = [v2 nowPlayingInfoCenter:v4 infoForContentItem:v7 completion:v6];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_12_170(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_13_171;
  v10[3] = &unk_1E76823C0;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  v7 = a3;
  [MPContentItem performSuppressingChangeNotifications:v10];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, v9);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_7_162(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueueDataSource];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_8_163;
  v6[3] = &unk_1E7681860;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = [v2 nowPlayingInfoCenter:v4 lyricsForContentItem:v7 completion:v6];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_8_163(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_9_164;
  v10[3] = &unk_1E76823C0;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  v7 = a3;
  [MPContentItem performSuppressingChangeNotifications:v10];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, v9);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_2_145(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [*(a1 + 32) requestedRemoteArtworkFormats];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        dispatch_group_enter(*(a1 + 40));
        v7 = [*(a1 + 48) playbackQueueDataSource];
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_3_146;
        v12[3] = &unk_1E7681810;
        v17 = *(a1 + 80);
        v13 = *(a1 + 64);
        v14 = v6;
        v15 = *(a1 + 72);
        v16 = *(a1 + 40);
        v10 = [v7 nowPlayingInfoCenter:v8 remoteArtworkForContentItem:v9 format:v6 size:v12 completion:{*(a1 + 88), *(a1 + 96)}];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_4_154(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_5_155;
  v6[3] = &unk_1E76823C0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [MPContentItem performSuppressingChangeNotifications:v6];
  if ([*(a1 + 48) count])
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) identifier];
    v5 = [v2 msv_errorWithDomain:@"MPNowPlayingInfoCenterErrorDomain" code:101 underlyingErrors:v3 debugDescription:{@"failed to create remoteArtwork for contentItemID: %@", v4}];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_3_146(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v6 = v5;
    if (!v6)
    {
      v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPNowPlayingInfoCenterErrorDomain" code:1001 debugDescription:@"playbackQueueDataSource failed to produce remoteArtwork"];
    }

    [*(a1 + 48) addObject:v6];
  }

  os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  dispatch_group_leave(*(a1 + 56));
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(*(a1 + 32) + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_17;
  v19[3] = &unk_1E7681720;
  v20 = v12;
  v21 = v11;
  v24 = a5;
  v25 = a6;
  v15 = *(a1 + 40);
  v22 = v13;
  v23 = v15;
  v16 = v13;
  v17 = v11;
  v18 = v12;
  dispatch_async(v14, v19);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = *(*(a1 + 56) + 8), v8 = *(v7 + 32), v9 = *(v7 + 40), [v5 size], v11 = v10, objc_msgSend(v5, "size"), v33.size.height = v12, v32.origin.x = 0.0, v32.origin.y = 0.0, v33.origin.x = 0.0, v33.origin.y = 0.0, v32.size.width = v8, v32.size.height = v9, v33.size.width = v11, CGRectContainsRect(v32, v33)))
  {
    v13 = *(*(a1 + 32) + 152);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_21;
    block[3] = &unk_1E7681770;
    v14 = &v27;
    v27 = *(a1 + 48);
    v15 = &v24;
    v24 = *(a1 + 40);
    v16 = &v25;
    v25 = v5;
    v26 = v6;
    dispatch_async(v13, block);
  }

  else
  {
    v17 = *(*(a1 + 56) + 8);
    if (*(v17 + 32) == *&MPNowPlayingContentItemArtworkMaxSize)
    {
      [v5 size];
      *(*(*(a1 + 56) + 8) + 32) = v18;
      v17 = *(*(a1 + 56) + 8);
    }

    if (*(v17 + 40) == *&qword_1EB097500)
    {
      [v5 size];
      *(*(*(a1 + 56) + 8) + 40) = v19;
      v17 = *(*(a1 + 56) + 8);
    }

    v20 = *(a1 + 32);
    v21 = v20[20];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_19;
    v28[3] = &unk_1E7681798;
    v14 = &v29;
    v29 = v20;
    v15 = &v31;
    v31 = *(a1 + 48);
    v16 = &v30;
    v30 = *(a1 + 40);
    v22 = [v21 resizeImage:v5 scaledFittingSize:0 useExactFittingSizeAsDestinationSize:0 saveToDestinationURL:v28 completionHandler:{*(v17 + 32), *(v17 + 40)}];
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_22(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v3 == *&MPNowPlayingContentItemArtworkMaxSize)
  {
    MSVGetMaximumScreenSize();
    v3 = v5;
  }

  if (v4 == *&qword_1EB097500)
  {
    MSVGetMaximumScreenSize();
    v4 = v6;
  }

  v8 = [*(a1 + 32) playbackQueueDataSource];
  v7 = [v8 nowPlayingInfoCenter:*(a1 + 32) artworkForContentItem:*(a1 + 40) size:*(a1 + 48) completion:{v3, v4}];
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_23()
{
  v0 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A238D000, v0, OS_LOG_TYPE_ERROR, "Using deprecated contentItem-based artwork.", v1, 2u);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 152);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_20;
  v10[3] = &unk_1E7681770;
  v14 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = UIImageJPEGRepresentation(*(a1 + 40), *MEMORY[0x1E69B1368]);
  [*(a1 + 40) size];
  (*(v2 + 16))(v2, v3, v4, *(a1 + 48));
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = UIImageJPEGRepresentation(*(a1 + 40), *MEMORY[0x1E69B1368]);
  [*(a1 + 40) size];
  (*(v2 + 16))(v2, v3, v4, *(a1 + 48));
}

uint64_t __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_17(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _mediaRemoteContentItem];
    MRContentItemSetArtworkData();
    [*(a1 + 40) _mediaRemoteContentItem];
    MRContentItemSetArtworkMIMEType();
    [*(a1 + 40) _mediaRemoteContentItem];
    MRContentItemSetArtworkDataSize();
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) _childContentItemForContentItem:*(a1 + 40) index:*(a1 + 56)];
  v3 = [v2 _mediaRemoteContentItem];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = CFRetain(v3);
    v4 = *(a1 + 32);
    v5 = v4[5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_12;
    v6[3] = &unk_1E76823C0;
    v7 = v4;
    v8 = v2;
    dispatch_async(v5, v6);
  }
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [(MPNowPlayingInfoCenter *)v1 _updateBloomFilterWithContentItemID:v2];
}

void __57__MPNowPlayingInfoCenter__createPlaybackQueueForRequest___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) playbackQueueDataSource];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v7 playbackQueueIdentifierForNowPlayingInfoCenter:*(a1 + 32)];
    if (v2)
    {
      [*(a1 + 40) setQueueIdentifier:v2];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [v7 playbackQueuePropertiesForNowPlayingInfoCenter:*(a1 + 32)];
    if (v3)
    {
      [*(a1 + 40) setProperties:v3];
    }
  }

  v4 = objc_opt_respondsToSelector();
  v5 = v7;
  if (v4)
  {
    v6 = [v7 playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 40) setAuxiliaryNowPlayingInfo:v6];
    }

    v5 = v7;
  }
}

void __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke(uint64_t *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 40));
  [(MPNowPlayingInfoCenter *)a1[4] _onQueue_ensureContentItemStorageInitialized];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  v4 = *(v2 + 96);
  v5 = *(v2 + 104);
  v6 = *(v3 + 32);
  if (v6 >= v4 && v6 - v4 < v5)
  {
    v8 = *(v3 + 40) <= 1 ? 1 : *(v3 + 40);
    v9 = v6 + v8 - 1;
    v10 = __OFSUB__(v9, v4);
    v11 = v9 - v4;
    if (v11 < 0 == v10 && v11 < v5)
    {
      v14 = MSVSignedIntersectionRange();
      v15 = v13;
      v16 = a1[4];
      v17 = *(v16 + 80);
      if (v17 < 0)
      {
        v17 = -v17;
      }

      v18 = [*(v16 + 112) subarrayWithRange:{v17 + v14, v13}];
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = a1[7];
      if (v21)
      {
        *v21 = v14;
        v21[1] = v15;
      }
    }
  }
}

void __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  [(MPNowPlayingInfoCenter *)*(a1 + 32) _onQueue_ensureContentItemStorageInitialized];
  v3 = [v23 count];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(v4 + 112) count];
    v6 = MSVReplacementRangeForRanges();
    v8 = v7;
    [*(*(a1 + 32) + 112) replaceObjectsInRange:v6 withObjectsFromArray:{v7, v23}];
    v9 = *(a1 + 32);
    *(v9 + 80) = MSVSignedUnionRange();
    *(v9 + 88) = v10;
    v11 = [*(*(a1 + 32) + 112) count];
    v4 = *(a1 + 32);
    if (v11 != *(v4 + 88))
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = [*(v13 + 112) count];
      v19 = *(*(a1 + 32) + 88);
      v20 = v14;
      v15 = [v23 count];
      v16 = NSStringFromMSVSignedRange();
      v17 = NSStringFromMSVSignedRange();
      v25.location = v6;
      v25.length = v8;
      v18 = NSStringFromRange(v25);
      [v21 handleFailureInMethod:v22 object:v13 file:@"MPNowPlayingInfoCenter.m" lineNumber:518 description:{@"CIIR: Mismatch in contentItemIdentifiers=%ld, loadedContentItemsRange=%ld, previousContentItemIDCount=%ld, dataSourceContentItemIDs=%ld, replacementRange: [(_loaded) %@ : (loaded) %@] => (replacement) %@", v20, v19, v5, v15, v16, v17, v18}];

      v4 = *(a1 + 32);
    }
  }

  *(v4 + 96) = MSVSignedUnionRange();
  *(v4 + 104) = v12;
}

void __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 48) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_4;
  v3[3] = &unk_1E76812E0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [(MPNowPlayingInfoCenter *)v1 _onDataSourceQueue_getContentItemIDsInRange:*(v2 + 40) completion:v3];
}

void __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPNowPlayingInfoCenter__contentItemIDsInRange_itemsRange___block_invoke_5;
  block[3] = &unk_1E7681358;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a3;
  v8 = v5;
  dispatch_sync(v6, block);
}

void __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 identifier];
    v7 = [v10 sessionType];
    v8 = [v10 data];
    v9 = MRPlaybackSessionCreate();

    (*(*(a1 + 32) + 16))();
    CFRelease(v9);
  }
}

uint64_t __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 184));
  [WeakRetained nowPlayingInfoCenter:a1[4] didEndMigrationWithIdentifier:a1[5] error:a1[6]];

  v3 = *(a1[7] + 16);

  return v3();
}

uint64_t __76__MPNowPlayingInfoCenter__onQueue_registerPlaybackQueueDataSourceCallbacks___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 184));
  [WeakRetained nowPlayingInfoCenter:a1[4] willBeginSessionMigrationWithIdentifier:a1[5]];

  v3 = *(a1[6] + 16);

  return v3();
}

- (void)setRepresentedApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(MPNowPlayingInfoCenter *)self isInvalidated])
  {
    v4 = [identifierCopy copy];
    representedApplicationBundleIdentifier = self->_representedApplicationBundleIdentifier;
    self->_representedApplicationBundleIdentifier = v4;

    MRNowPlayingPlayerPathGetClient();
    MRNowPlayingClientSetParentAppBundleIdentifier();
    MRNowPlayingPlayerPathGetOrigin();
    MRMediaRemoteUpdateClientProperties();
  }
}

- (void)resignActiveSystemFallback
{
  if (self->_fallbackActivity)
  {
    MRApplicationActivityEnd();
    CFRelease(self->_fallbackActivity);
    self->_fallbackActivity = 0;
  }
}

void __52__MPNowPlayingInfoCenter_resignActiveSystemFallback__block_invoke(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 && ([MEMORY[0x1E696ABC0] errorWithDomain:@"MediaRemote" code:a2 userInfo:0], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "MPNowPlayingInfoCenter resigned active system fallback error=%{public}@", &v6, 0xCu);
    }
  }

  else
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "MPNowPlayingInfoCenter resigned active system fallback", &v6, 2u);
    }
  }
}

- (void)becomeActiveSystemFallback
{
  [(MPNowPlayingInfoCenter *)self becomeActive];
  if (self->_fallbackActivity)
  {
    [(MPNowPlayingInfoCenter *)self resignActiveSystemFallback];
  }

  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "MPNowPlayingInfoCenter becoming active system fallback", v4, 2u);
  }

  MRNowPlayingPlayerPathGetClient();
  MRNowPlayingClientGetBundleIdentifier();
  self->_fallbackActivity = MRApplicationActivityCreate();
  MRApplicationActivityBegin();
}

void __52__MPNowPlayingInfoCenter_becomeActiveSystemFallback__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [a2 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "MPNowPlayingInfoCenter became active system fallback error=%{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "MPNowPlayingInfoCenter became active system fallback", &v6, 2u);
  }
}

- (NSString)playerID
{
  player = [(MRPlayerPath *)self->_playerPath player];
  identifier = [player identifier];
  v4 = [identifier copy];

  return v4;
}

- (MPNowPlayingPlaybackState)playbackState
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)setPlaybackState:(MPNowPlayingPlaybackState)playbackState
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__MPNowPlayingInfoCenter_setPlaybackState___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = playbackState;
  dispatch_async(accessQueue, v4);
}

void __43__MPNowPlayingInfoCenter_setPlaybackState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (*(v1 + 144) != v3)
    {
      *(v1 + 144) = v3;
      v4 = *(a1 + 40);
      if (v4 <= 2)
      {
        if (v4 == 1)
        {
          v5 = 1;
          goto LABEL_15;
        }

        if (v4 == 2)
        {
          v5 = 2;
          goto LABEL_15;
        }
      }

      else
      {
        switch(v4)
        {
          case 3:
            v5 = 3;
            goto LABEL_15;
          case 4:
            v5 = 4;
            goto LABEL_15;
          case 1000:
            v5 = 5;
LABEL_15:
            v6 = [objc_opt_class() serviceQueue];
            v7[0] = MEMORY[0x1E69E9820];
            v7[1] = 3221225472;
            v7[2] = __43__MPNowPlayingInfoCenter_setPlaybackState___block_invoke_2;
            v7[3] = &unk_1E76811D8;
            v7[4] = *(a1 + 32);
            v8 = v5;
            dispatch_async(v6, v7);

            return;
        }
      }

      v5 = 0;
      goto LABEL_15;
    }
  }
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  msv_dispatch_sync_on_queue();
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    playerPath = self->_playerPath;
    *buf = 138412802;
    v9 = v4;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = playerPath;
    v6 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[InfoCenter] <%@: %p (%@)> invalidated", buf, 0x20u);
  }

  v7 = objc_opt_class();
  objc_sync_enter(v7);
  [__infoCenterMap removeObjectForKey:self->_playerPath];
  objc_sync_exit(v7);
}

- (void)dealloc
{
  MEMORY[0x1A58DF190](self->_stateHandle, a2);
  [(MPNowPlayingInfoCenter *)self resignActiveSystemFallback];
  if (![(MPNowPlayingInfoCenter *)self isInvalidated])
  {
    v3 = [MPRemoteCommandCenter commandCenterForPlayerPath:self->_playerPath];
    if (!v3)
    {
      MRMediaRemoteRemovePlayer();
    }
  }

  objc_storeWeak(&self->_playbackQueueDataSource, 0);
  objc_storeWeak(&self->_lyricsDelegate, 0);
  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoCenter;
  [(MPNowPlayingInfoCenter *)&v4 dealloc];
}

- (MPNowPlayingInfoCenter)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-init is not supported, use +defaultCenter"}];

  return 0;
}

- (MPNowPlayingInfoCenter)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = MPNowPlayingInfoCenter;
  v6 = [(MPNowPlayingInfoCenter *)&v29 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke;
  block[3] = &unk_1E7682518;
  v8 = v6;
  v28 = v8;
  if (initWithPlayerPath__onceToken != -1)
  {
    dispatch_once(&initWithPlayerPath__onceToken, block);
    if (pathCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!pathCopy)
  {
LABEL_4:
    pathCopy = [MEMORY[0x1E69B0AD0] localPlayerPath];
  }

LABEL_5:
  v9 = [pathCopy copy];
  playerPath = v8->_playerPath;
  v8->_playerPath = v9;

  v11 = [objc_opt_class() infoCenterForPlayerPath:v8->_playerPath];

  if (v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"MPNowPlayingInfoCenter.m" lineNumber:138 description:{@"Cannot have two MPNowPlayingInfoCenters for the same playerPath: %@", pathCopy}];
  }

  v12 = objc_opt_class();
  objc_sync_enter(v12);
  [__infoCenterMap setObject:v8 forKey:v8->_playerPath];
  objc_sync_exit(v12);

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  objc_storeStrong(&v8->_dataSourceQueue, MEMORY[0x1E69E96A0]);
  v14 = dispatch_queue_create("com.apple.MediaPlayer.MPNowPlayingInfoCenter/accessQueue", 0);
  accessQueue = v8->_accessQueue;
  v8->_accessQueue = v14;

  v16 = dispatch_queue_create("com.apple.MediaPlayer.MPNowPlayingInfoCenter/calloutQueue", v13);
  calloutQueue = v8->_calloutQueue;
  v8->_calloutQueue = v16;

  v18 = dispatch_queue_create("com.apple.MediaPlayer.MPNowPlayingInfoCenter/workQueue", v13);
  workQueue = v8->_workQueue;
  v8->_workQueue = v18;

  v20 = [[MPArtworkResizeUtility alloc] initWithQualityOfService:25];
  artworkResizeUtility = v8->_artworkResizeUtility;
  v8->_artworkResizeUtility = v20;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel__contentItemChangedNotification_ name:@"_MPContentItemDidChangeNotification" object:0];

  [(MPNowPlayingInfoCenter *)v8 _initializeNowPlayingInfo];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke_2;
  v25[3] = &unk_1E7681F08;
  v26 = v8;
  v26->_stateHandle = __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke_2(v25);

LABEL_8:
  return v7;
}

void __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke()
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __infoCenterMap;
  __infoCenterMap = v0;

  objc_sync_exit(obj);
}

uint64_t __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v3, &location);
  v1 = MSVLogAddStateHandler();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
  return v1;
}

uint64_t __45__MPNowPlayingInfoCenter_initWithPlayerPath___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _onQueue_stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MPNowPlayingInfoCenter)initWithPlayerID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    defaultPlayer = [objc_alloc(MEMORY[0x1E69B0AC8]) initWithIdentifier:dCopy displayName:dCopy];
  }

  else
  {
    defaultPlayer = [MEMORY[0x1E69B0AC8] defaultPlayer];
  }

  v6 = defaultPlayer;
  v7 = objc_alloc(MEMORY[0x1E69B0AD0]);
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  localClient = [MEMORY[0x1E69B09D8] localClient];
  v10 = [v7 initWithOrigin:localOrigin client:localClient player:v6];

  v11 = [(MPNowPlayingInfoCenter *)self initWithPlayerPath:v10];
  return v11;
}

+ (id)infoCenterForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [__infoCenterMap objectForKey:pathCopy];
  objc_sync_exit(v4);

  return v5;
}

+ (id)infoCenterForPlayerID:(id)d
{
  v3 = MEMORY[0x1E69B0AC8];
  dCopy = d;
  v5 = [[v3 alloc] initWithIdentifier:dCopy displayName:dCopy];

  v6 = objc_alloc(MEMORY[0x1E69B0AD0]);
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  localClient = [MEMORY[0x1E69B09D8] localClient];
  v9 = [v6 initWithOrigin:localOrigin client:localClient player:v5];

  v10 = [objc_opt_class() infoCenterForPlayerPath:v9];

  return v10;
}

- (void)_onQueue_pushNowPlayingInfoAndRetry:(BOOL)retry
{
  retryCopy = retry;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_nowPlayingInfo != self->_queuedNowPlayingInfo)
  {
    if (_onQueue_pushNowPlayingInfoAndRetry____once != -1)
    {
      dispatch_once(&_onQueue_pushNowPlayingInfoAndRetry____once, &__block_literal_global_25_55256);
    }

    pushDate = self->_pushDate;
    if (!pushDate || (_onQueue_pushNowPlayingInfoAndRetry____isSystemApp & 1) != 0 || ([(NSDate *)pushDate timeIntervalSinceNow], fabs(v6) >= 0.5))
    {
      objc_storeStrong(&self->_nowPlayingInfo, self->_queuedNowPlayingInfo);
      date = [MEMORY[0x1E695DF00] date];
      v10 = self->_pushDate;
      self->_pushDate = date;

      v11 = _MPToMRNowPlayingInfoDictionary(self->_nowPlayingInfo, self->_publishedContext);
      convertedNowPlayingInfo = self->_convertedNowPlayingInfo;
      self->_convertedNowPlayingInfo = v11;

      v13 = [(NSDictionary *)self->_nowPlayingInfo objectForKeyedSubscript:@"artwork"];
      [(MPNowPlayingInfoCenterArtworkContext *)self->_publishedContext setArtwork:v13];

      v14 = [(NSDictionary *)self->_convertedNowPlayingInfo objectForKeyedSubscript:*MEMORY[0x1E69B0E80]];
      [(MPNowPlayingInfoCenterArtworkContext *)self->_publishedContext setArtworkIdentifier:v14];

      v15 = [(NSDictionary *)self->_convertedNowPlayingInfo objectForKeyedSubscript:*MEMORY[0x1E69B0E68]];
      [(MPNowPlayingInfoCenterArtworkContext *)self->_publishedContext setArtworkData:v15];

      v16 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "NPIC: setNowPlayingInfo: sending to MediaRemote", v18, 2u);
      }

      playerPath = [(MPNowPlayingInfoCenter *)self playerPath];
      MRMediaRemoteSetNowPlayingInfoForPlayer();
    }

    else if (retryCopy)
    {
      v7 = dispatch_time(0, 500000000);
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__MPNowPlayingInfoCenter_NowPlayingInfo___onQueue_pushNowPlayingInfoAndRetry___block_invoke_2;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_after(v7, calloutQueue, block);
    }
  }
}

void __78__MPNowPlayingInfoCenter_NowPlayingInfo___onQueue_pushNowPlayingInfoAndRetry___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MPNowPlayingInfoCenter_NowPlayingInfo___onQueue_pushNowPlayingInfoAndRetry___block_invoke_3;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

void __78__MPNowPlayingInfoCenter_NowPlayingInfo___onQueue_pushNowPlayingInfoAndRetry___block_invoke_27(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "NPIC: setNowPlayingInfo: finished error=%{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "NPIC: setNowPlayingInfo: finished", &v6, 2u);
  }
}

uint64_t __78__MPNowPlayingInfoCenter_NowPlayingInfo___onQueue_pushNowPlayingInfoAndRetry___block_invoke()
{
  result = SBSIsSystemApplication();
  _onQueue_pushNowPlayingInfoAndRetry____isSystemApp = result != 0;
  return result;
}

- (NSDictionary)nowPlayingInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55289;
  v10 = __Block_byref_object_dispose__55290;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MPNowPlayingInfoCenter_NowPlayingInfo__nowPlayingInfo__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MPNowPlayingInfoCenter_NowPlayingInfo__nowPlayingInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setNowPlayingInfo:(NSDictionary *)nowPlayingInfo
{
  v4 = [(NSDictionary *)nowPlayingInfo copy];
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPNowPlayingInfoCenter_NowPlayingInfo__setNowPlayingInfo___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __60__MPNowPlayingInfoCenter_NowPlayingInfo__setNowPlayingInfo___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _onQueue_pushNowPlayingInfoAndRetry:1];
}

+ (NSArray)supportedAnimatedArtworkKeys
{
  if (supportedAnimatedArtworkKeys_onceToken != -1)
  {
    dispatch_once(&supportedAnimatedArtworkKeys_onceToken, &__block_literal_global_55291);
  }

  v3 = supportedAnimatedArtworkKeys_supportedAnimatedArtworkKeys;

  return v3;
}

void __70__MPNowPlayingInfoCenter_NowPlayingInfo__supportedAnimatedArtworkKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v6[0] = @"MPNowPlayingInfoProperty1x1AnimatedArtwork";
    v2 = v6;
  }

  else
  {
    v5 = @"MPNowPlayingInfoProperty3x4AnimatedArtwork";
    v2 = &v5;
  }

  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v4 = supportedAnimatedArtworkKeys_supportedAnimatedArtworkKeys;
  supportedAnimatedArtworkKeys_supportedAnimatedArtworkKeys = v3;
}

@end