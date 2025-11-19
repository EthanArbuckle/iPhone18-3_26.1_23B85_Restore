@interface MPMusicPlayerController
+ (MPMusicPlayerApplicationController)applicationQueuePlayer;
+ (MPMusicPlayerController)alloc;
+ (MPMusicPlayerController)systemMusicPlayer;
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (BOOL)setNowPlayingUID:(unint64_t)a3 error:(id *)a4;
- (MPMediaItem)nowPlayingItem;
- (MPMusicPlaybackState)playbackState;
- (MPMusicPlayerController)initWithClientIdentifier:(id)a3 queue:(id)a4;
- (MPMusicRepeatMode)repeatMode;
- (MPMusicShuffleMode)shuffleMode;
- (MPNowPlayingInfoAudioFormat)nowPlayingAudioFormat;
- (NSUInteger)indexOfNowPlayingItem;
- (double)currentPlaybackTime;
- (float)currentPlaybackRate;
- (id)_mediaItemFromNowPlaying:(id)a3;
- (id)_nowPlaying;
- (id)_queueDescriptor;
- (id)_snapshot;
- (id)nowPlayingAtIndex:(int64_t)a3;
- (id)nowPlayingItemAtIndex:(unint64_t)a3;
- (id)queueAsQuery;
- (id)queueAsRadioStation;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (int64_t)_serverRepeatMode;
- (int64_t)_serverShuffleMode;
- (unint64_t)nowPlayingUID;
- (unint64_t)nowPlayingUIDAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItems;
- (void)_clearConnection;
- (void)_establishConnectionIfNeeded;
- (void)_handleMediaServicesLost:(id)a3;
- (void)_handleMediaServicesReset:(id)a3;
- (void)_onQueue_applyServerStateUpdateRecord:(id)a3;
- (void)_postPrivateQueueDidChangeNotificationWithContentItemIDs:(id)a3;
- (void)_setNowPlayingItem:(id)a3 itemIdentifier:(id)a4;
- (void)_setServerRepeatMode:(int64_t)a3;
- (void)_setServerShuffleMode:(int64_t)a3;
- (void)_validateServer;
- (void)_wakeServerIfConnectedForReason:(id)a3;
- (void)appendQueueDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor;
- (void)applyServerStateUpdateRecord:(id)a3;
- (void)beginSeekingBackward;
- (void)beginSeekingForward;
- (void)dealloc;
- (void)endSeeking;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
- (void)onServer:(id)a3;
- (void)onServerAsync:(id)a3 errorHandler:(id)a4 timeout:(double)a5 retryEnabled:(BOOL)a6;
- (void)pause;
- (void)pauseWithFadeoutDuration:(double)a3;
- (void)play;
- (void)prepareToPlay;
- (void)prepareToPlayWithCompletionHandler:(id)a3 timeout:(double)a4;
- (void)prependQueueDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor;
- (void)serverItemDidEnd;
- (void)serverPlaybackModeDidChangeAffectingQueue:(BOOL)a3;
- (void)serverQueueDidEnd;
- (void)setCurrentPlaybackRate:(float)a3;
- (void)setCurrentPlaybackTime:(double)a3;
- (void)setNowPlayingItem:(MPMediaItem *)nowPlayingItem;
- (void)setPrioritizeStartupOverQuality:(BOOL)a3;
- (void)setQueueWithDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor;
- (void)setQueueWithItemCollection:(MPMediaItemCollection *)itemCollection;
- (void)setQueueWithQuery:(id)a3 firstItem:(id)a4;
- (void)setQueueWithRadioStation:(id)a3;
- (void)setQueueWithStoreIDs:(NSArray *)storeIDs;
- (void)setRepeatMode:(MPMusicRepeatMode)repeatMode;
- (void)setServerNowPlaying:(id)a3;
- (void)setServerQueueDescriptor:(id)a3;
- (void)setServerTimeSnapshot:(id)a3;
- (void)setShuffleMode:(MPMusicShuffleMode)shuffleMode;
- (void)shuffle;
- (void)skipToBeginning;
- (void)skipToBeginningOrPreviousItem;
- (void)skipToNextItem;
- (void)skipToPreviousItem;
- (void)stop;
- (void)volumeController:(id)a3 mutedStateDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation MPMusicPlayerController

- (void)_postPrivateQueueDidChangeNotificationWithContentItemIDs:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSString *)self->_clientIdentifier isEqualToString:@"MusicKit_applicationMusicPlayer"])
  {
    v5 = self->_lastContentItemIDs;
    v6 = v5;
    if (v5 == v4)
    {
LABEL_8:

      goto LABEL_9;
    }

    v7 = [(NSArray *)v5 isEqual:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v4 copy];
      lastContentItemIDs = self->_lastContentItemIDs;
      self->_lastContentItemIDs = v8;

      if (v4)
      {
        v11 = @"_contentItemIDs";
        v12[0] = v4;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      }

      else
      {
        v6 = 0;
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"_MPMusicPlayerControllerQueueDidChangeNotification" object:self userInfo:v6];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)_mediaItemFromNowPlaying:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    objc_initWeak(&location, self);
    v7 = [_MPMusicPlayerControllerArtworkToken alloc];
    v8 = [v4 artworkIdentifier];
    v9 = [v4 itemIdentifier];
    v10 = [(_MPMusicPlayerControllerArtworkToken *)v7 initWithArtworkIdentifier:v8 contentItemID:v9];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__MPMusicPlayerController__mediaItemFromNowPlaying___block_invoke;
    v16[3] = &unk_1E7680AD8;
    objc_copyWeak(&v18, &location);
    v11 = v10;
    v17 = v11;
    [v6 setFallbackArtworkCatalogBlock:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v12 = [_MPMusicPlayerMediaItemProxy alloc];
  v13 = [v4 itemIdentifier];
  v14 = [(_MPMusicPlayerMediaItemProxy *)v12 initWithItemIdentifier:v13 item:v5];

  return v14;
}

MPArtworkCatalog *__52__MPMusicPlayerController__mediaItemFromNowPlaying___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[MPArtworkCatalog alloc] initWithToken:*(a1 + 32) dataSource:WeakRetained];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_snapshot
{
  serverTimeSnapshot = self->_serverTimeSnapshot;
  if (!serverTimeSnapshot)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v5 = os_signpost_id_generate(v4);

    v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "getTimeSnapshot", &unk_1A2797D62, buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__MPMusicPlayerController__snapshot__block_invoke;
    v11[3] = &unk_1E7680790;
    v11[4] = self;
    [(MPMusicPlayerController *)self onServer:v11];
    v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v5, "getTimeSnapshot", &unk_1A2797D62, buf, 2u);
    }

    serverTimeSnapshot = self->_serverTimeSnapshot;
  }

  return serverTimeSnapshot;
}

uint64_t __36__MPMusicPlayerController__snapshot__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__MPMusicPlayerController__snapshot__block_invoke_2;
  v3[3] = &unk_1E7680AB0;
  v3[4] = *(a1 + 32);
  return [a2 getTimeSnapshotWithReply:v3];
}

- (id)_nowPlaying
{
  serverNowPlaying = self->_serverNowPlaying;
  if (!serverNowPlaying)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v5 = os_signpost_id_generate(v4);

    v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "getNowPlaying", &unk_1A2797D62, buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__MPMusicPlayerController__nowPlaying__block_invoke;
    v11[3] = &unk_1E7680790;
    v11[4] = self;
    [(MPMusicPlayerController *)self onServer:v11];
    v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v5, "getNowPlaying", &unk_1A2797D62, buf, 2u);
    }

    serverNowPlaying = self->_serverNowPlaying;
  }

  return serverNowPlaying;
}

uint64_t __38__MPMusicPlayerController__nowPlaying__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__MPMusicPlayerController__nowPlaying__block_invoke_2;
  v3[3] = &unk_1E7680A88;
  v3[4] = *(a1 + 32);
  return [a2 getNowPlayingWithReply:v3];
}

void __38__MPMusicPlayerController__nowPlaying__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 msv_description];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Failed to get server now playing error=%{public}@", &v13, 0xCu);
    }
  }

  objc_storeStrong((*(a1 + 32) + 56), a2);
  v10 = *(a1 + 32);
  if ((*(v10 + 44) & 1) == 0 && !*(v10 + 104) && *(v10 + 56))
  {
    *(v10 + 44) = 1;
    v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "_nowPlaying getter marking player as prepared to play because we have a valid server now playing object.", &v13, 2u);
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"MPMediaPlaybackIsPreparedToPlayDidChangeNotification" object:*(a1 + 32)];
  }
}

- (id)_queueDescriptor
{
  serverQueueDescriptor = self->_serverQueueDescriptor;
  if (!serverQueueDescriptor)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v5 = os_signpost_id_generate(v4);

    v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "getDescriptor", &unk_1A2797D62, buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__MPMusicPlayerController__queueDescriptor__block_invoke;
    v11[3] = &unk_1E7680790;
    v11[4] = self;
    [(MPMusicPlayerController *)self onServer:v11];
    v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v5, "getDescriptor", &unk_1A2797D62, buf, 2u);
    }

    serverQueueDescriptor = self->_serverQueueDescriptor;
  }

  return serverQueueDescriptor;
}

uint64_t __43__MPMusicPlayerController__queueDescriptor__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__MPMusicPlayerController__queueDescriptor__block_invoke_2;
  v3[3] = &unk_1E7680A60;
  v3[4] = *(a1 + 32);
  return [a2 getDescriptorWithReply:v3];
}

void __43__MPMusicPlayerController__queueDescriptor__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 msv_description];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed to get server queue descriptor error=%{public}@", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v5;
}

- (void)onServerAsync:(id)a3 errorHandler:(id)a4 timeout:(double)a5 retryEnabled:(BOOL)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  [(MPMusicPlayerController *)self _establishConnectionIfNeeded];
  v12 = objc_alloc(MEMORY[0x1E69B13F0]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke;
  v38[3] = &unk_1E7681CA0;
  v38[4] = self;
  v13 = [v12 initWithTimeout:v38 interruptionHandler:1.0];
  v14 = objc_alloc(MEMORY[0x1E69B13F0]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_164;
  v36[3] = &unk_1E76809C0;
  v36[4] = self;
  v15 = v11;
  v37 = v15;
  v16 = [v14 initWithTimeout:v36 interruptionHandler:a5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_168;
  aBlock[3] = &unk_1E76809E8;
  v17 = v13;
  v34 = v17;
  v18 = v16;
  v35 = v18;
  v19 = _Block_copy(aBlock);
  connection = self->_connection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_2;
  v28[3] = &unk_1E7680A38;
  v21 = v19;
  v32 = a6;
  v28[4] = self;
  v29 = v21;
  v22 = v10;
  v30 = v22;
  v23 = v15;
  v31 = v23;
  v24 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
  if (v24 || !v21[2](v21))
  {
    (*(v22 + 2))(v22, v24, v21);
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A278];
    v40[0] = @"Failed to obtain remoteObject [nil server]";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v27 = [v25 errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:10 userInfo:v26];

    (*(v23 + 2))(v23, v27);
  }
}

uint64_t __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "ASYNC-WATCHDOG-1: Attempting to wake up the remote process", v6, 2u);
    }

    return [*(v4 + 32) _establishConnectionIfNeeded];
  }

  return result;
}

void __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_164(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "ASYNC-WATCHDOG-2: Tearing down connection", v7, 2u);
    }

    [*(a1 + 32) _clearConnection];
    v4 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"Remote call timed out";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v4 errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:9 userInfo:v5];

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_168(uint64_t a1)
{
  [*(a1 + 32) disarm];
  v2 = *(a1 + 40);

  return [v2 disarm];
}

void __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    if (*(a1 + 64) == 1 && ([v3 code] == 4097 || objc_msgSend(v3, "code") == 4099) && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250]), v4, v5))
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "XPC connection was interrupted or invalidated while obtaining remoteObject, retrying", buf, 2u);
      }

      v7 = *(a1 + 32);
      v8 = *(v7 + 128);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__MPMusicPlayerController_onServerAsync_errorHandler_timeout_retryEnabled___block_invoke_170;
      block[3] = &unk_1E7680A10;
      block[4] = v7;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v8, block);
    }

    else
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v3;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Failed to obtain remoteObject: %{public}@", buf, 0xCu);
      }

      v10 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696AA08];
      v17 = v3;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [v10 errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:10 userInfo:v11];

      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)onServer:(id)a3
{
  v4 = a3;
  [(MPMusicPlayerController *)self _establishConnectionIfNeeded];
  v5 = objc_alloc(MEMORY[0x1E69B13F0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__MPMusicPlayerController_onServer___block_invoke;
  v11[3] = &unk_1E7681CA0;
  v11[4] = self;
  v6 = [v5 initWithTimeout:v11 interruptionHandler:1.0];
  v7 = objc_alloc(MEMORY[0x1E69B13F0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__MPMusicPlayerController_onServer___block_invoke_160;
  v10[3] = &unk_1E7681CA0;
  v10[4] = self;
  v8 = [v7 initWithTimeout:v10 interruptionHandler:4.0];
  v9 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_163_51645];
  v4[2](v4, v9);

  [v6 disarm];
  [v8 disarm];
}

uint64_t __36__MPMusicPlayerController_onServer___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "SYNC-WATCHDOG-1: Attempting to wake up the remote process", v6, 2u);
    }

    return [*(v4 + 32) _establishConnectionIfNeeded];
  }

  return result;
}

uint64_t __36__MPMusicPlayerController_onServer___block_invoke_160(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "SYNC-WATCHDOG-2: Tearing down connection", v6, 2u);
    }

    return [*(v4 + 32) _clearConnection];
  }

  return result;
}

void __36__MPMusicPlayerController_onServer___block_invoke_161(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Failed to obtain synchronousRemoteObject: %{public}@", &v4, 0xCu);
  }
}

- (void)_handleMediaServicesReset:(id)a3
{
  if (self->_mediaServiceLost)
  {
    self->_mediaServiceLost = 0;
    v5 = [a3 name];
    [(MPMusicPlayerController *)self _wakeServerIfConnectedForReason:v5];
  }
}

- (void)_handleMediaServicesLost:(id)a3
{
  if (!self->_mediaServiceLost)
  {
    self->_mediaServiceLost = 1;
    v5 = [a3 name];
    [(MPMusicPlayerController *)self _wakeServerIfConnectedForReason:v5];
  }
}

- (void)_wakeServerIfConnectedForReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_serverValidated)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Wake server reason:%{public}@", &v6, 0xCu);
    }

    [(MPMusicPlayerController *)self onServer:&__block_literal_global_156_51651];
  }
}

- (void)_validateServer
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "validateServer", &unk_1A2797D62, buf, 2u);
  }

  v7 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_152_51657];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MPMusicPlayerController__validateServer__block_invoke_153;
  v8[3] = &unk_1E7680978;
  v8[4] = self;
  v8[5] = v4;
  [v7 getTimeSnapshotWithReply:v8];
}

void __42__MPMusicPlayerController__validateServer__block_invoke_153(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Server validation returned with snapshot %@", &v8, 0xCu);
  }

  *(*(a1 + 32) + 25) = 1;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "validateServer", &unk_1A2797D62, &v8, 2u);
  }
}

void __42__MPMusicPlayerController__validateServer__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Server validation failed with error=%@", &v4, 0xCu);
  }
}

- (void)_establishConnectionIfNeeded
{
  if (dyld_program_sdk_at_least())
  {
    [MPMediaLibrary requestAuthorization:&__block_literal_global_144_51664];
  }

  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"MPMusicPlayerController.m" lineNumber:987 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[MPMusicPlayerController class]"}];
  }
}

- (void)_clearConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MPMusicPlayerController__clearConnection__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__MPMusicPlayerController__clearConnection__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 25);
  *(v2 + 25) = 0;
  [*(*(a1 + 32) + 32) setInvalidationHandler:0];
  [*(*(a1 + 32) + 32) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  *(v10 + 72) = 0;

  *(*(a1 + 32) + 44) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (v3 == 1)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [*(a1 + 32) _postPrivateQueueDidChangeNotificationWithContentItemIDs:0];
    [v12 postNotificationName:@"MPMusicPlayerControllerQueueDidChangeNotification" object:*(a1 + 32)];
    [v12 postNotificationName:@"MPMusicPlayerControllerNowPlayingItemDidChangeNotification" object:*(a1 + 32)];
    [v12 postNotificationName:@"MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:*(a1 + 32)];
  }
}

- (void)volumeController:(id)a3 mutedStateDidChange:(BOOL)a4
{
  v5 = [(MPMusicPlayerController *)self queue:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPMusicPlayerController_volumeController_mutedStateDidChange___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v5, block);
}

void __64__MPMusicPlayerController_volumeController_mutedStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPMusicPlayerControllerVolumeDidChangeNotification" object:*(a1 + 32)];
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = [(MPMusicPlayerController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPMusicPlayerController_volumeController_volumeValueDidChange___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v5, block);
}

void __65__MPMusicPlayerController_volumeController_volumeValueDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPMusicPlayerControllerVolumeDidChangeNotification" object:*(a1 + 32)];
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 token];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v14[3] = &unk_1E7680930;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3;
  v12[3] = &unk_1E76816D0;
  v13 = v17;
  v9 = v17;
  v10 = v6;
  v11 = v8;
  [(MPMusicPlayerController *)self onServerAsync:v14 errorHandler:v12 timeout:0 retryEnabled:4.0];
}

void __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v6[1];
    v6 = v6[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v11 = a2;
  [v8 scaledFittingSize];
  v13 = v12;
  v15 = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2;
  v17[3] = &unk_1E7680908;
  v19 = v5;
  v18 = *(a1 + 40);
  v20 = *(a1 + 48);
  v16 = v5;
  [v11 getImageForArtworkIdentifier:v10 itemIdentifier:v9 atSize:v17 reply:{v13, v15}];
}

void __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to loadRepresentationForArtworkCatalog with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696AA08];
  v10 = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [v6 errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:500 userInfo:v7];
  (*(v5 + 16))(v5, 0, v8);
}

void __81__MPMusicPlayerController_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    if (v10)
    {
      v6 = [MEMORY[0x1E69DCAB8] imageWithData:v10];
      v7 = [*(a1 + 32) visualIdenticalityIdentifier];
      [*(a1 + 32) scaledFittingSize];
      v8 = [MPArtworkRepresentation representationForVisualIdentity:v7 withSize:v6 image:?];

      (*(*(a1 + 48) + 16))();
LABEL_4:

      goto LABEL_7;
    }

    v9 = *(a1 + 48);
    if (!v5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:404 userInfo:0];
      (*(v9 + 16))(v9, 0, v6);
      goto LABEL_4;
    }

    (*(v9 + 16))(v9, 0, v5);
  }

LABEL_7:
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v3 = [a3 token];
  if (v3)
  {
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 != 0;

  return v5;
}

- (void)serverQueueDidEnd
{
  v3 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v3 setQueueDidEnd:1];
  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v3];
}

- (void)serverItemDidEnd
{
  v3 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v3 setItemDidEnd:1];
  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v3];
}

- (void)serverPlaybackModeDidChangeAffectingQueue:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setHasRepeatMode:1];
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setQueueDidChange:v3];
  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v5];
}

- (void)setServerTimeSnapshot:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setHasTimeSnapshot:1];
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setTimeSnapshot:v4];

  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v5];
}

- (void)setServerNowPlaying:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setHasNowPlaying:1];
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setNowPlaying:v4];

  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v5];
}

- (void)setServerQueueDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPMusicPlayerServerStateUpdateRecord);
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setHasQueueDescriptor:1];
  [(MPMusicPlayerServerStateUpdateRecord *)v5 setQueueDescriptor:v4];

  [(MPMusicPlayerServerStateUpdateRecord *)v5 setQueueDidChange:1];
  [(MPMusicPlayerController *)self applyServerStateUpdateRecord:v5];
}

- (void)_onQueue_applyServerStateUpdateRecord:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v4 hasQueueDescriptor])
  {
    v5 = [v4 queueDescriptor];
    serverQueueDescriptor = self->_serverQueueDescriptor;
    self->_serverQueueDescriptor = v5;
  }

  v7 = [v4 hasNowPlaying];
  if (v7)
  {
    v8 = [v4 nowPlaying];
    objc_storeStrong(&self->_serverNowPlaying, v8);
    if (self->_isPreparedToPlay || self->_targetQueueDescriptor || !self->_serverNowPlaying)
    {
      v9 = 0;
    }

    else
    {
      self->_isPreparedToPlay = 1;
      v36 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_DEFAULT, "applyServerStateUpdateRecord marking player as prepared to play because we have a valid server now playing object.", v37, 2u);
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if ([v4 hasTimeSnapshot])
  {
    v10 = [v4 timeSnapshot];
    objc_storeStrong(&self->_serverTimeSnapshot, v10);
    lastServerTimeSnapshot = self->_lastServerTimeSnapshot;
    if (lastServerTimeSnapshot)
    {
      v12 = [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)lastServerTimeSnapshot state];
      if (v12 == [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)v10 state])
      {
        [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)self->_lastServerTimeSnapshot rate];
        v14 = v13;
        [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)v10 rate];
        v16 = v15;
        v17 = v14 != v15;
        if ([(MPMusicPlayerControllerNowPlayingTimeSnapshot *)v10 state]!= 1)
        {
          if (v14 == v16)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        goto LABEL_16;
      }

      if ([(MPMusicPlayerControllerNowPlayingTimeSnapshot *)v10 state]== 1)
      {
        v17 = 1;
LABEL_16:
        [(MPMusicPlayerControllerNowPlayingTimeSnapshot *)v10 rate];
        if (v18 == 0.0 || !v17)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_18:
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:@"MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:self];

LABEL_19:
    v20 = self->_lastServerTimeSnapshot;
    self->_lastServerTimeSnapshot = v10;
  }

  if (([v4 hasRepeatMode] & 1) != 0 || objc_msgSend(v4, "hasShuffleMode"))
  {
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:self];
  }

  if ([v4 hasContentItemIDs])
  {
    v22 = [v4 contentItemIDs];
    [(MPMusicPlayerController *)self _postPrivateQueueDidChangeNotificationWithContentItemIDs:v22];
  }

  if ([v4 queueDidChange])
  {
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 postNotificationName:@"MPMusicPlayerControllerQueueDidChangeNotification" object:self];
  }

  if ([v4 itemDidEnd])
  {
    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 postNotificationName:@"MPMusicPlayerControllerItemPlaybackDidEndNotification" object:self];
  }

  if ([v4 queueDidEnd])
  {
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 postNotificationName:@"_MPMusicPlayerControllerQueueDidEndNotification" object:self];
  }

  if (v7)
  {
    v26 = [(MPMusicPlayerControllerNowPlaying *)self->_lastServerNowPlaying itemIdentifier];
    v27 = [v8 itemIdentifier];
    if (v26 == v27 || [v26 isEqual:v27])
    {
      v28 = [v4 hasTimeMetadata];

      if ((v28 & 1) == 0)
      {
LABEL_38:
        v30 = [(MPMusicPlayerControllerNowPlaying *)self->_lastServerNowPlaying artworkIdentifier];
        v31 = [v8 artworkIdentifier];
        v32 = v31;
        if (v30 == v31)
        {
        }

        else
        {
          v33 = [v30 isEqual:v31];

          if (v33)
          {
LABEL_43:
            objc_storeStrong(&self->_lastServerNowPlaying, v8);
            goto LABEL_44;
          }

          v30 = [MEMORY[0x1E696AD88] defaultCenter];
          [v30 postNotificationName:@"_MPMusicPlayerControllerArtworkDidChangeNotification" object:self];
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 postNotificationName:@"MPMusicPlayerControllerNowPlayingItemDidChangeNotification" object:self];

    goto LABEL_38;
  }

LABEL_44:
  if ([v4 audioFormatDidChange])
  {
    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 postNotificationName:@"MPMusicPlayerControllerPlaybackStateDidChangeNotification" object:self];
  }

  if (v9)
  {
    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 postNotificationName:@"MPMediaPlaybackIsPreparedToPlayDidChangeNotification" object:self];
  }
}

- (void)applyServerStateUpdateRecord:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MPMusicPlayerController_applyServerStateUpdateRecord___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)endSeeking
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "endSeeking", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_136_51686];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "endSeeking", &unk_1A2797D62, v10, 2u);
  }
}

- (void)beginSeekingBackward
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "beginSeekingBackward", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_134_51692];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "beginSeekingBackward", &unk_1A2797D62, v10, 2u);
  }
}

- (void)beginSeekingForward
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "beginSeekingForward", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_132_51698];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "beginSeekingForward", &unk_1A2797D62, v10, 2u);
  }
}

- (void)setCurrentPlaybackRate:(float)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    v13 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setCurrentPlaybackRate", "rate=%g", buf, 0xCu);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MPMusicPlayerController_setCurrentPlaybackRate___block_invoke;
  v10[3] = &__block_descriptor_44_e41_v16__0___MPMusicPlayerControllerServer__8l;
  v11 = a3;
  v10[4] = v6;
  [(MPMusicPlayerController *)self onServer:v10];
}

uint64_t __50__MPMusicPlayerController_setCurrentPlaybackRate___block_invoke(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPMusicPlayerController_setCurrentPlaybackRate___block_invoke_2;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = *(a1 + 32);
  return [a2 setPlaybackRate:v4 completion:a3];
}

void __50__MPMusicPlayerController_setCurrentPlaybackRate___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "setCurrentPlaybackRate", &unk_1A2797D62, v5, 2u);
  }
}

- (float)currentPlaybackRate
{
  v2 = [(MPMusicPlayerController *)self _snapshot];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (void)setCurrentPlaybackTime:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    v12 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setCurrentPlaybackTime", "time=%g", buf, 0xCu);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__MPMusicPlayerController_setCurrentPlaybackTime___block_invoke;
  v10[3] = &__block_descriptor_48_e41_v16__0___MPMusicPlayerControllerServer__8l;
  *&v10[4] = a3;
  v10[5] = v6;
  [(MPMusicPlayerController *)self onServer:v10];
}

uint64_t __50__MPMusicPlayerController_setCurrentPlaybackTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPMusicPlayerController_setCurrentPlaybackTime___block_invoke_2;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = *(a1 + 40);
  return [a2 setElapsedTime:v4 completion:v2];
}

void __50__MPMusicPlayerController_setCurrentPlaybackTime___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "setCurrentPlaybackTime", &unk_1A2797D62, v5, 2u);
  }
}

- (double)currentPlaybackTime
{
  v2 = [(MPMusicPlayerController *)self _snapshot];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)stop
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "stop", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_127_51714];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "stop", &unk_1A2797D62, v10, 2u);
  }
}

- (void)pause
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pause", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_125];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "pause", &unk_1A2797D62, v10, 2u);
  }
}

- (void)play
{
  if (![(MPMusicPlayerController *)self isPreparedToPlay])
  {
    [(MPMusicPlayerController *)self prepareToPlay];
  }

  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "play", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_123];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "play", &unk_1A2797D62, v10, 2u);
  }
}

- (void)prepareToPlay
{
  if ([(MPMusicPlayerController *)self isPreparedToPlay])
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "prepareToPlay short-circuit [already prepared to play]";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
      _os_log_impl(&dword_1A238D000, v5, v6, v4, buf, 2u);
    }
  }

  else
  {
    targetQueueDescriptor = self->_targetQueueDescriptor;
    v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v3 = v8;
    if (targetQueueDescriptor)
    {
      v9 = os_signpost_id_generate(v8);

      v10 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v11 = v10;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "prepareToPlay:sync", &unk_1A2797D62, buf, 2u);
      }

      serverNowPlaying = self->_serverNowPlaying;
      self->_serverNowPlaying = 0;

      serverTimeSnapshot = self->_serverTimeSnapshot;
      self->_serverTimeSnapshot = 0;

      serverQueueDescriptor = self->_serverQueueDescriptor;
      self->_serverQueueDescriptor = 0;

      v15 = self->_targetQueueDescriptor;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __40__MPMusicPlayerController_prepareToPlay__block_invoke;
      v16[3] = &unk_1E76808A0;
      v18 = self;
      v19 = v9;
      v17 = v15;
      v3 = v15;
      [(MPMusicPlayerController *)self onServer:v16];
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = "prepareToPlay failed [no target descriptor]";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }
  }
}

void __40__MPMusicPlayerController_prepareToPlay__block_invoke(int8x16_t *a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MPMusicPlayerController_prepareToPlay__block_invoke_2;
  v3[3] = &unk_1E7680878;
  v5 = a1[3].i64[0];
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [a2 setDescriptor:v2.i64[0] completion:v3];
}

void __40__MPMusicPlayerController_prepareToPlay__block_invoke_2(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to prepareToPlay error=%{public}@", &v13, 0xCu);
    }
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v7 = v6;
  v8 = a1[6];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_END, v8, "prepareToPlay:sync", &unk_1A2797D62, &v13, 2u);
  }

  if (!v3)
  {
    v9 = a1[4];
    if (*(v9 + 104) == a1[5])
    {
      *(v9 + 44) = 1;
      v10 = a1[4];
      v11 = *(v10 + 104);
      *(v10 + 104) = 0;

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"MPMediaPlaybackIsPreparedToPlayDidChangeNotification" object:a1[4]];
    }
  }
}

- (MPNowPlayingInfoAudioFormat)nowPlayingAudioFormat
{
  v2 = [(MPMusicPlayerController *)self _nowPlaying];
  v3 = [v2 audioFormat];

  return v3;
}

- (unint64_t)numberOfItems
{
  v2 = [(MPMusicPlayerController *)self _nowPlaying];
  v3 = [v2 count];

  return v3;
}

- (void)skipToBeginningOrPreviousItem
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "skipToBeginningOrPreviousItem", &unk_1A2797D62, buf, 2u);
  }

  serverNowPlaying = self->_serverNowPlaying;
  self->_serverNowPlaying = 0;

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_121_51735];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v4, "skipToBeginningOrPreviousItem", &unk_1A2797D62, v11, 2u);
  }
}

- (void)pauseWithFadeoutDuration:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = a3;
    *buf = 134217984;
    v15 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "pauseWithFadeoutDuration", "duration=%f", buf, 0xCu);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__MPMusicPlayerController_pauseWithFadeoutDuration___block_invoke;
  v13[3] = &__block_descriptor_40_e41_v16__0___MPMusicPlayerControllerServer__8l;
  *&v13[4] = a3;
  [(MPMusicPlayerController *)self onServer:v13];
  v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v12 = v11;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v12, OS_SIGNPOST_INTERVAL_END, v6, "pauseWithFadeoutDuration", &unk_1A2797D62, buf, 2u);
  }
}

- (void)shuffle
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "shuffle", &unk_1A2797D62, buf, 2u);
  }

  serverNowPlaying = self->_serverNowPlaying;
  self->_serverNowPlaying = 0;

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_119_51746];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v4, "shuffle", &unk_1A2797D62, v11, 2u);
  }
}

- (id)nowPlayingItemAtIndex:(unint64_t)a3
{
  v4 = [(MPMusicPlayerController *)self nowPlayingAtIndex:a3];
  v5 = [(MPMusicPlayerController *)self _mediaItemFromNowPlaying:v4];

  return v5;
}

- (id)nowPlayingAtIndex:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "nowPlayingAtIndex", "index=%lld", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__51752;
  v18 = __Block_byref_object_dispose__51753;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__MPMusicPlayerController_nowPlayingAtIndex___block_invoke;
  v14[3] = &unk_1E7680740;
  v14[4] = &buf;
  v14[5] = a3;
  [(MPMusicPlayerController *)self onServer:v14];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v6, "nowPlayingAtIndex", &unk_1A2797D62, v13, 2u);
  }

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v11;
}

uint64_t __45__MPMusicPlayerController_nowPlayingAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MPMusicPlayerController_nowPlayingAtIndex___block_invoke_2;
  v4[3] = &unk_1E7680850;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [a2 getNowPlayingAtIndex:v2 reply:v4];
}

void __45__MPMusicPlayerController_nowPlayingAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 msv_description];
      v11 = 134218242;
      v12 = MEMORY[0x1E69E98A8];
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed getting nowPlayingAtIndex: %ld error=%{public}@", &v11, 0x16u);
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (id)queueAsRadioStation
{
  v2 = [(MPMusicPlayerController *)self _queueDescriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 radioStation];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v2 playParametersQueue];
      v5 = [v4 firstObject];

      v3 = [[MPRadioStation alloc] initWithPlayParameters:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)queueAsQuery
{
  v2 = [(MPMusicPlayerController *)self _queueDescriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 query];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueueWithRadioStation:(id)a3
{
  v4 = a3;
  v5 = [[MPMusicPlayerRadioStationQueueDescriptor alloc] initWithRadioStation:v4];

  [(MPMusicPlayerController *)self setQueueWithDescriptor:v5];
}

- (void)setQueueWithQuery:(id)a3 firstItem:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [[MPMusicPlayerMediaItemQueueDescriptor alloc] initWithQuery:v6];

  if (v8)
  {
    [(MPMusicPlayerMediaItemQueueDescriptor *)v7 setStartItem:v8];
  }

  [(MPMusicPlayerController *)self setQueueWithDescriptor:v7];
}

- (void)skipToPreviousItem
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "skipToPreviousItem", &unk_1A2797D62, buf, 2u);
  }

  serverNowPlaying = self->_serverNowPlaying;
  self->_serverNowPlaying = 0;

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_113_51763];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v4, "skipToPreviousItem", &unk_1A2797D62, v11, 2u);
  }
}

- (void)skipToBeginning
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "skipToBeginning", &unk_1A2797D62, buf, 2u);
  }

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_111];
  v8 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_END, v4, "skipToBeginning", &unk_1A2797D62, v10, 2u);
  }
}

- (void)skipToNextItem
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "skipToNextItem", &unk_1A2797D62, buf, 2u);
  }

  serverNowPlaying = self->_serverNowPlaying;
  self->_serverNowPlaying = 0;

  serverTimeSnapshot = self->_serverTimeSnapshot;
  self->_serverTimeSnapshot = 0;

  [(MPMusicPlayerController *)self onServer:&__block_literal_global_109_51773];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v4, "skipToNextItem", &unk_1A2797D62, v11, 2u);
  }
}

- (void)prepareToPlayWithCompletionHandler:(id)a3 timeout:(double)a4
{
  v6 = a3;
  if ([(MPMusicPlayerController *)self isPreparedToPlay])
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "prepareToPlay short-circuit [already prepared to play]", buf, 2u);
    }

    v6[2](v6, 0);
  }

  else
  {
    targetQueueDescriptor = self->_targetQueueDescriptor;
    v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v10 = v9;
    if (targetQueueDescriptor)
    {
      v11 = os_signpost_id_generate(v9);

      v12 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "prepareToPlay:async", &unk_1A2797D62, buf, 2u);
      }

      serverNowPlaying = self->_serverNowPlaying;
      self->_serverNowPlaying = 0;

      serverQueueDescriptor = self->_serverQueueDescriptor;
      self->_serverQueueDescriptor = 0;

      v16 = self->_targetQueueDescriptor;
      [(MPMusicPlayerQueueDescriptor *)v16 setDisableQueueModifications:self->_userQueueModificationsDisabled];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke;
      v22[3] = &unk_1E76807E0;
      v26 = v11;
      v23 = v16;
      v24 = self;
      v25 = v6;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_103;
      v19[3] = &unk_1E7680808;
      v21 = v11;
      v19[4] = self;
      v20 = v25;
      v17 = v16;
      [(MPMusicPlayerController *)self onServerAsync:v22 errorHandler:v19 timeout:1 retryEnabled:a4];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "prepareToPlay failed [no target descriptor]", buf, 2u);
      }

      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:1 userInfo:0];
      (v6)[2](v6, v18);
    }
  }
}

void __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "prepareToPlay connected to server, setting queue descriptor", buf, 2u);
  }

  v8 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_100;
  v12[3] = &unk_1E76807B8;
  v16 = *(a1 + 56);
  v14 = v5;
  v11 = *(a1 + 32);
  v9 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v15 = *(a1 + 48);
  v10 = v5;
  [v6 setDescriptor:v8 completion:v12];
}

void __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_103(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to prepareToPlay with error: %{public}@", buf, 0xCu);
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "prepareToPlay:async", "nil server", buf, 2u);
  }

  v8 = *(*(a1 + 32) + 128);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_104;
  v11[3] = &unk_1E76824C8;
  v9 = *(a1 + 40);
  v12 = v3;
  v13 = v9;
  v10 = v3;
  dispatch_async(v8, v11);
}

void __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_104(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPMusicPlayerControllerErrorDomain" code:6 underlyingError:*(a1 + 32) debugDescription:@"Prepare to play failed"];
  (*(v1 + 16))(v1, v2);
}

void __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_100(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to prepareToPlay error=%{public}@", buf, 0xCu);
    }
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_END, v8, "prepareToPlay:async", &unk_1A2797D62, buf, 2u);
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v9 = *(*(a1 + 32) + 128);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_101;
    v13[3] = &unk_1E7681770;
    v10 = v3;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = *(a1 + 56);
    dispatch_async(v9, v13);
  }
}

uint64_t __70__MPMusicPlayerController_prepareToPlayWithCompletionHandler_timeout___block_invoke_101(void *a1)
{
  if (!a1[4])
  {
    v2 = a1[5];
    if (*(v2 + 104) == a1[6])
    {
      *(v2 + 44) = 1;
      v6 = a1[5];
      v7 = *(v6 + 104);
      *(v6 + 104) = 0;

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"MPMediaPlaybackIsPreparedToPlayDidChangeNotification" object:a1[5]];

      v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "prepareToPlay completed with current target queue descriptor";
        v5 = buf;
        goto LABEL_7;
      }
    }

    else
    {
      v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v4 = "prepareToPlay completed with past queue descriptor";
        v5 = &v10;
LABEL_7:
        _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }
  }

  return (*(a1[7] + 16))(a1[7]);
}

- (void)appendQueueDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = descriptor;
  userQueueModificationsDisabled = self->_userQueueModificationsDisabled;
  v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  p_super = v6;
  if (userQueueModificationsDisabled)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = self;
      _os_log_impl(&dword_1A238D000, p_super, OS_LOG_TYPE_ERROR, "[MPMusicPlayerController:%p] appendQueueDescriptor | ignoring append [userQueueModificationsDisabled]", buf, 0xCu);
    }
  }

  else
  {
    v8 = os_signpost_id_make_with_pointer(v6, v4);

    v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 138543362;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "appendQueueDescriptor", "descriptor=%{public}@", buf, 0xCu);
    }

    serverNowPlaying = self->_serverNowPlaying;
    self->_serverNowPlaying = 0;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__MPMusicPlayerController_appendQueueDescriptor___block_invoke;
    v14[3] = &unk_1E7680790;
    v15 = v4;
    [(MPMusicPlayerController *)self onServer:v14];
    v12 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v13, OS_SIGNPOST_INTERVAL_END, v8, "appendQueueDescriptor", &unk_1A2797D62, buf, 2u);
    }

    p_super = &v15->super;
  }
}

void __49__MPMusicPlayerController_appendQueueDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 msv_description];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "appendQueueDescriptor failed error=%{public}@", &v5, 0xCu);
    }
  }
}

- (void)prependQueueDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = descriptor;
  userQueueModificationsDisabled = self->_userQueueModificationsDisabled;
  v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  p_super = v6;
  if (userQueueModificationsDisabled)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = self;
      _os_log_impl(&dword_1A238D000, p_super, OS_LOG_TYPE_ERROR, "[MPMusicPlayerController:%p] prependQueueDescriptor | ignoring prepend [userQueueModificationsDisabled]", buf, 0xCu);
    }
  }

  else
  {
    v8 = os_signpost_id_make_with_pointer(v6, v4);

    v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 138543362;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "prependQueueDescriptor", "descriptor=%{public}@", buf, 0xCu);
    }

    serverNowPlaying = self->_serverNowPlaying;
    self->_serverNowPlaying = 0;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__MPMusicPlayerController_prependQueueDescriptor___block_invoke;
    v14[3] = &unk_1E7680790;
    v15 = v4;
    [(MPMusicPlayerController *)self onServer:v14];
    v12 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v13, OS_SIGNPOST_INTERVAL_END, v8, "prependQueueDescriptor", &unk_1A2797D62, buf, 2u);
    }

    p_super = &v15->super;
  }
}

void __50__MPMusicPlayerController_prependQueueDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 msv_description];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "prependQueueDescriptor failed error=%{public}@", &v5, 0xCu);
    }
  }
}

- (void)setQueueWithDescriptor:(MPMusicPlayerQueueDescriptor *)descriptor
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = descriptor;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_make_with_pointer(v5, v4);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 138543362;
    v16 = v4;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setQueue", "descriptor=%{public}@", &v15, 0xCu);
  }

  self->_isPreparedToPlay = 0;
  v9 = [(MPMusicPlayerQueueDescriptor *)v4 copy];
  targetQueueDescriptor = self->_targetQueueDescriptor;
  self->_targetQueueDescriptor = v9;

  if ((self->_repeatMode - 1) >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = self->_repeatMode - 1;
  }

  [(MPMusicPlayerQueueDescriptor *)self->_targetQueueDescriptor setRepeatType:v11];
  if ((self->_shuffleMode - 1) >= 3)
  {
    v12 = 1000;
  }

  else
  {
    v12 = self->_shuffleMode - 1;
  }

  [(MPMusicPlayerQueueDescriptor *)self->_targetQueueDescriptor setShuffleType:v12];
  [(MPMusicPlayerQueueDescriptor *)self->_targetQueueDescriptor setPrioritizeStartupOverQuality:[(MPMusicPlayerController *)self prioritizeStartupOverQuality]];
  v13 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v14, OS_SIGNPOST_INTERVAL_END, v6, "setQueue", &unk_1A2797D62, &v15, 2u);
  }
}

- (void)setQueueWithStoreIDs:(NSArray *)storeIDs
{
  v4 = storeIDs;
  v5 = [[MPMusicPlayerStoreQueueDescriptor alloc] initWithStoreIDs:v4];

  [(MPMusicPlayerController *)self setQueueWithDescriptor:v5];
}

- (void)setQueueWithItemCollection:(MPMediaItemCollection *)itemCollection
{
  v4 = itemCollection;
  v5 = [[MPMusicPlayerMediaItemQueueDescriptor alloc] initWithItemCollection:v4];

  [(MPMusicPlayerController *)self setQueueWithDescriptor:v5];
}

- (NSUInteger)indexOfNowPlayingItem
{
  v2 = [(MPMusicPlayerController *)self _nowPlaying];
  v3 = [v2 index];

  return v3;
}

- (void)_setNowPlayingItem:(id)a3 itemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v12 = os_signpost_id_make_with_pointer(v11, v10);

  v13 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "setNowPlayingItem", &unk_1A2797D62, buf, 2u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__MPMusicPlayerController__setNowPlayingItem_itemIdentifier___block_invoke;
  v19[3] = &unk_1E7680768;
  v20 = v6;
  v21 = v8;
  v15 = v8;
  v16 = v6;
  [(MPMusicPlayerController *)self onServer:v19];
  v17 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v18 = v17;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v18, OS_SIGNPOST_INTERVAL_END, v12, "setNowPlayingItem", &unk_1A2797D62, buf, 2u);
  }
}

void __61__MPMusicPlayerController__setNowPlayingItem_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 msv_description];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Failed to set now playing item error=%{public}@", &v5, 0xCu);
    }
  }
}

- (unint64_t)nowPlayingUIDAtIndex:(unint64_t)a3
{
  v3 = [(MPMusicPlayerController *)self nowPlayingAtIndex:a3];
  v4 = [v3 itemUID];

  return v4;
}

- (BOOL)setNowPlayingUID:(unint64_t)a3 error:(id *)a4
{
  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = os_signpost_id_generate(v7);

  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "setNowPlayingUID", &unk_1A2797D62, buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__51752;
  v21 = __Block_byref_object_dispose__51753;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__MPMusicPlayerController_setNowPlayingUID_error___block_invoke;
  v16[3] = &unk_1E7680740;
  v16[4] = buf;
  v16[5] = a3;
  [(MPMusicPlayerController *)self onServer:v16];
  v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v12, OS_SIGNPOST_INTERVAL_END, v8, "setNowPlayingUID", &unk_1A2797D62, v15, 2u);
  }

  if (a4)
  {
    *a4 = *(v18 + 5);
  }

  v13 = *(v18 + 5) != 0;
  _Block_object_dispose(buf, 8);

  return v13;
}

uint64_t __50__MPMusicPlayerController_setNowPlayingUID_error___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPMusicPlayerController_setNowPlayingUID_error___block_invoke_2;
  v4[3] = &unk_1E7680718;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [a2 setNowPlayingUID:v2 completion:v4];
}

void __50__MPMusicPlayerController_setNowPlayingUID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to set now playing UID error=%{public}@", &v8, 0xCu);
    }
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

- (unint64_t)nowPlayingUID
{
  v2 = [(MPMusicPlayerController *)self _nowPlaying];
  v3 = [v2 itemUID];

  return v3;
}

- (void)setNowPlayingItem:(MPMediaItem *)nowPlayingItem
{
  v8 = nowPlayingItem;
  if ([(MPMusicPlayerController *)self isPreparedToPlay]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = v8;
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v6 = [(MPMediaItem *)v7 itemIdentifier];
      v4 = [(MPMediaItem *)v7 item];
    }

    else
    {
      v6 = 0;
    }

    [(MPMusicPlayerController *)self _setNowPlayingItem:v4 itemIdentifier:v6];
  }

  else
  {
    [(MPMusicPlayerQueueDescriptor *)self->_targetQueueDescriptor setStartItem:v8];
  }
}

- (MPMediaItem)nowPlayingItem
{
  v3 = [(MPMusicPlayerController *)self _nowPlaying];
  v4 = [(MPMusicPlayerController *)self _mediaItemFromNowPlaying:v3];

  return v4;
}

- (void)setPrioritizeStartupOverQuality:(BOOL)a3
{
  v3 = a3;
  self->_prioritizeStartupOverQuality = a3;
  v5 = [(MPMusicPlayerController *)self targetQueueDescriptor];

  if (v5)
  {
    v6 = [(MPMusicPlayerController *)self targetQueueDescriptor];
    [v6 setPrioritizeStartupOverQuality:v3];
  }
}

- (void)_setServerShuffleMode:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    v13 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setShuffleMode", "shuffleMode=%ld", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MPMusicPlayerController__setServerShuffleMode___block_invoke;
  v11[3] = &__block_descriptor_40_e41_v16__0___MPMusicPlayerControllerServer__8l;
  v11[4] = a3;
  [(MPMusicPlayerController *)self onServer:v11];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v6, "setShuffleMode", &unk_1A2797D62, buf, 2u);
  }
}

- (int64_t)_serverShuffleMode
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "getShuffleMode", &unk_1A2797D62, buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__MPMusicPlayerController__serverShuffleMode__block_invoke;
  v12[3] = &unk_1E76806D0;
  v12[4] = buf;
  [(MPMusicPlayerController *)self onServer:v12];
  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_END, v4, "getShuffleMode", &unk_1A2797D62, v11, 2u);
  }

  v9 = *(v14 + 3);
  _Block_object_dispose(buf, 8);
  return v9;
}

uint64_t __45__MPMusicPlayerController__serverShuffleMode__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__MPMusicPlayerController__serverShuffleMode__block_invoke_2;
  v3[3] = &unk_1E76806A8;
  v3[4] = *(a1 + 32);
  return [a2 getShuffleModeWithReply:v3];
}

- (void)_setServerRepeatMode:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    v13 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "setRepeatMode", "repeatMode=%ld", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MPMusicPlayerController__setServerRepeatMode___block_invoke;
  v11[3] = &__block_descriptor_40_e41_v16__0___MPMusicPlayerControllerServer__8l;
  v11[4] = a3;
  [(MPMusicPlayerController *)self onServer:v11];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v6, "setRepeatMode", &unk_1A2797D62, buf, 2u);
  }
}

- (int64_t)_serverRepeatMode
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v4 = os_signpost_id_generate(v3);

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "getRepeatMode", &unk_1A2797D62, buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MPMusicPlayerController__serverRepeatMode__block_invoke;
  v12[3] = &unk_1E76806D0;
  v12[4] = buf;
  [(MPMusicPlayerController *)self onServer:v12];
  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_END, v4, "getRepeatMode", &unk_1A2797D62, v11, 2u);
  }

  v9 = *(v14 + 3);
  _Block_object_dispose(buf, 8);
  return v9;
}

uint64_t __44__MPMusicPlayerController__serverRepeatMode__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MPMusicPlayerController__serverRepeatMode__block_invoke_2;
  v3[3] = &unk_1E76806A8;
  v3[4] = *(a1 + 32);
  return [a2 getRepeatModeWithReply:v3];
}

- (void)setShuffleMode:(MPMusicShuffleMode)shuffleMode
{
  self->_shuffleMode = shuffleMode;
  v5 = [(MPMusicPlayerController *)self targetQueueDescriptor];

  if (v5)
  {
    if ((self->_shuffleMode - 1) >= 3)
    {
      v6 = 1000;
    }

    else
    {
      v6 = self->_shuffleMode - 1;
    }

    v7 = [(MPMusicPlayerController *)self targetQueueDescriptor];
    [v7 setShuffleType:v6];
  }

  if ([(MPMusicPlayerController *)self isPreparedToPlay])
  {

    [(MPMusicPlayerController *)self _setServerShuffleMode:shuffleMode];
  }
}

- (MPMusicShuffleMode)shuffleMode
{
  if (![(MPMusicPlayerController *)self isPreparedToPlay])
  {
    return self->_shuffleMode;
  }

  return [(MPMusicPlayerController *)self _serverShuffleMode];
}

- (void)setRepeatMode:(MPMusicRepeatMode)repeatMode
{
  self->_repeatMode = repeatMode;
  v5 = [(MPMusicPlayerController *)self targetQueueDescriptor];

  if (v5)
  {
    if ((self->_repeatMode - 1) >= 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = self->_repeatMode - 1;
    }

    v7 = [(MPMusicPlayerController *)self targetQueueDescriptor];
    [v7 setRepeatType:v6];
  }

  if ([(MPMusicPlayerController *)self isPreparedToPlay])
  {

    [(MPMusicPlayerController *)self _setServerRepeatMode:repeatMode];
  }
}

- (MPMusicRepeatMode)repeatMode
{
  if (![(MPMusicPlayerController *)self isPreparedToPlay])
  {
    return self->_repeatMode;
  }

  return [(MPMusicPlayerController *)self _serverRepeatMode];
}

- (MPMusicPlaybackState)playbackState
{
  v2 = [(MPMusicPlayerController *)self _snapshot];
  v3 = [v2 state];

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MPMusicPlayerController;
  [(MPMusicPlayerController *)&v3 dealloc];
}

- (MPMusicPlayerController)initWithClientIdentifier:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(MPMusicPlayerController *)self isMemberOfClass:objc_opt_class()])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MPMusicPlayerController.m" lineNumber:122 description:@"Must initialize a concrete instance of MPMusicPlayerController."];
  }

  v25.receiver = self;
  v25.super_class = MPMusicPlayerController;
  v9 = [(MPMusicPlayerController *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_serverValidated = 0;
    if (v8)
    {
      v11 = v8;
      queue = v10->_queue;
      v10->_queue = v11;
    }

    else
    {
      v13 = MEMORY[0x1E69E96A0];
      v14 = MEMORY[0x1E69E96A0];
      queue = v10->_queue;
      v10->_queue = v13;
    }

    v10->_lock._os_unfair_lock_opaque = 0;
    v15 = [v7 copy];
    clientIdentifier = v10->_clientIdentifier;
    v10->_clientIdentifier = v15;

    v17 = [MPVolumeController alloc];
    v18 = objc_alloc_init(MPVolumeControllerSystemDataSource);
    v19 = [(MPVolumeController *)v17 initWithDataSource:v18];
    volumeController = v10->_volumeController;
    v10->_volumeController = v19;

    [(MPVolumeController *)v10->_volumeController setDelegate:v10];
    *&v10->_shuffleMode = vdupq_n_s64(1uLL);
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v10 selector:sel__handleMediaServicesLost_ name:*MEMORY[0x1E6958110] object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v10 selector:sel__handleMediaServicesReset_ name:*MEMORY[0x1E6958128] object:0];
  }

  return v10;
}

+ (MPMusicPlayerController)alloc
{
  if (objc_opt_class() == a1)
  {

    return [MPMusicPlayerSystemController alloc];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___MPMusicPlayerController;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }
}

+ (MPMusicPlayerApplicationController)applicationQueuePlayer
{
  if (applicationQueuePlayer_onceToken != -1)
  {
    dispatch_once(&applicationQueuePlayer_onceToken, &__block_literal_global_56_51867);
  }

  v3 = applicationQueuePlayer___applicationMusicPlayer;

  return v3;
}

void __49__MPMusicPlayerController_applicationQueuePlayer__block_invoke()
{
  v0 = [[MPMusicPlayerApplicationController alloc] initWithClientIdentifier:@"applicationQueuePlayer" queue:0];
  v1 = applicationQueuePlayer___applicationMusicPlayer;
  applicationQueuePlayer___applicationMusicPlayer = v0;
}

+ (MPMusicPlayerController)systemMusicPlayer
{
  if (systemMusicPlayer_onceToken != -1)
  {
    dispatch_once(&systemMusicPlayer_onceToken, &__block_literal_global_51873);
  }

  v3 = systemMusicPlayer___systemMusicPlayer;

  return v3;
}

void __44__MPMusicPlayerController_systemMusicPlayer__block_invoke()
{
  v0 = [(MPMusicPlayerController *)[MPMusicPlayerSystemController alloc] initWithClientIdentifier:@"systemMusicPlayer" queue:0];
  v1 = systemMusicPlayer___systemMusicPlayer;
  systemMusicPlayer___systemMusicPlayer = v0;
}

@end