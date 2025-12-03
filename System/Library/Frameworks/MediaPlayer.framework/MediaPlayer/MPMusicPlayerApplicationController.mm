@interface MPMusicPlayerApplicationController
- (MPMusicPlayerApplicationController)initWithClientIdentifier:(id)identifier queue:(id)queue;
- (id)_mediaItemsForContentItemIDs:(id)ds;
- (id)_nowPlaying;
- (void)_clearConnection;
- (void)_establishConnectionIfNeeded;
- (void)_setApplicationMusicPlayerTransitionType:(int64_t)type;
- (void)_setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration;
- (void)beginGeneratingPlaybackNotifications;
- (void)beginPlaybackAtHostTime:(id *)time;
- (void)dealloc;
- (void)endGeneratingPlaybackNotifications;
- (void)onApplicationServer:(id)server;
- (void)onApplicationServerAsync:(id)async errorHandler:(id)handler;
- (void)performQueueTransaction:(void *)queueTransaction completionHandler:(void *)completionHandler;
- (void)prerollWithCompletion:(id)completion;
- (void)setDisableAutoPlay:(BOOL)play;
- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing;
- (void)setDisableRepeat:(BOOL)repeat;
- (void)setDisableShuffle:(BOOL)shuffle;
- (void)setRelativeVolume:(float)volume;
@end

@implementation MPMusicPlayerApplicationController

- (void)onApplicationServer:(id)server
{
  serverCopy = server;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MPMusicPlayerApplicationController_onApplicationServer___block_invoke;
  v6[3] = &unk_1E7680C80;
  v7 = serverCopy;
  v5 = serverCopy;
  [(MPMusicPlayerController *)self onServer:v6];
}

- (void)onApplicationServerAsync:(id)async errorHandler:(id)handler
{
  asyncCopy = async;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MPMusicPlayerApplicationController_onApplicationServerAsync_errorHandler___block_invoke;
  v8[3] = &unk_1E7680610;
  v9 = asyncCopy;
  v7 = asyncCopy;
  [(MPMusicPlayerController *)self onServerAsync:v8 errorHandler:handler];
}

- (id)_nowPlaying
{
  if (self->super._connection)
  {
    v5.receiver = self;
    v5.super_class = MPMusicPlayerApplicationController;
    _nowPlaying = [(MPMusicPlayerController *)&v5 _nowPlaying];
  }

  else
  {
    _nowPlaying = 0;
  }

  return _nowPlaying;
}

- (void)_establishConnectionIfNeeded
{
  v42.receiver = self;
  v42.super_class = MPMusicPlayerApplicationController;
  [(MPMusicPlayerController *)&v42 _establishConnectionIfNeeded];
  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    os_unfair_lock_lock(&self->super._lock);
    connection = self->super._connection;
    objc_initWeak(location, self);
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v5 = os_signpost_id_generate(v4);

    if (!self->_serviceConnection)
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v7 = v6;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "applicationQueuePlayer:xpc:connect", &unk_1A2797D62, buf, 2u);
      }

      v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MediaPlayer.RemotePlayerService"];
      serviceConnection = self->_serviceConnection;
      self->_serviceConnection = v8;

      v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA410];
      [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:v10];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_155;
      v38[3] = &unk_1E76825E8;
      objc_copyWeak(&v39, location);
      [(NSXPCConnection *)self->_serviceConnection setInterruptionHandler:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_156;
      v36[3] = &unk_1E76825E8;
      objc_copyWeak(&v37, location);
      [(NSXPCConnection *)self->_serviceConnection setInvalidationHandler:v36];
      [(NSXPCConnection *)self->_serviceConnection resume];
      v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v12 = v11;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v12, OS_SIGNPOST_INTERVAL_END, v5, "applicationQueuePlayer:xpc:connect", &unk_1A2797D62, buf, 2u);
      }

      if ([(MPMusicPlayerController *)self notificationsCounter]>= 1)
      {
        remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
        [remoteObjectProxy setWantsReverseProcessAssertion:1];
      }

      objc_destroyWeak(&v37);
      objc_destroyWeak(&v39);
    }

    if (!connection || (v14 = self->_lastWokeDate) == 0 || ([(NSDate *)v14 timeIntervalSinceNow], v15 < -1.0))
    {
      v16 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v17 = v16;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v5, "applicationQueuePlayer:xpc:connect:wake", &unk_1A2797D62, buf, 2u);
      }

      v18 = MRMediaRemoteNowPlayingWakePlayerServiceProcess();
      v19 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v20 = v19;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v20, OS_SIGNPOST_INTERVAL_END, v5, "applicationQueuePlayer:xpc:connect:wake", &unk_1A2797D62, buf, 2u);
      }

      if (v18)
      {
        date = [MEMORY[0x1E695DF00] date];
        lastWokeDate = self->_lastWokeDate;
        self->_lastWokeDate = date;
      }

      else
      {
        v24 = self->_lastWokeDate;
        self->_lastWokeDate = 0;

        lastWokeDate = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
        if (os_log_type_enabled(&lastWokeDate->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A238D000, &lastWokeDate->super, OS_LOG_TYPE_ERROR, "applicationQueuePlayer _establishConnectionIfNeeded timeout [ping did not pong]", buf, 2u);
        }
      }
    }

    if (self->super._connection)
    {
      if (connection)
      {
LABEL_31:
        os_unfair_lock_unlock(&self->super._lock);
LABEL_32:
        objc_destroyWeak(location);
        return;
      }
    }

    else
    {
      v25 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v26 = v25;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v5, "applicationMusicPlayer:connect", &unk_1A2797D62, buf, 2u);
      }

      v27 = self->_serviceConnection;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_158;
      v35[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v35[4] = v5;
      v28 = [(NSXPCConnection *)v27 synchronousRemoteObjectProxyWithErrorHandler:v35];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_160;
      v32 = &unk_1E76805E8;
      selfCopy = self;
      objc_copyWeak(v34, location);
      v34[1] = v5;
      [v28 getServerEndpointWithReply:&v29];

      objc_destroyWeak(v34);
      if (connection)
      {
        goto LABEL_31;
      }
    }

    [(MPMusicPlayerController *)self _validateServer:v29];
    os_unfair_lock_unlock(&self->super._lock);
    if (self->super._connection)
    {
      if (*(&self->_disableAutoPlay + 1))
      {
        [(MPMusicPlayerApplicationController *)self setDisableAutomaticCanBeNowPlaying:1];
      }

      if (self->_transitionType == 1)
      {
        [(MPMusicPlayerApplicationController *)self _setApplicationMusicPlayerTransitionType:self->_crossFadeDuration withDuration:?];
      }

      else
      {
        [(MPMusicPlayerApplicationController *)self _setApplicationMusicPlayerTransitionType:?];
      }
    }

    goto LABEL_32;
  }

  v23 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "applicationMusicPlayer _establishConnectionIfNeeded failed [👮‍♂️ denied due to authorization status]", location, 2u);
  }
}

void __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "applicationController: xpc service connection interrupted", v3, 2u);
  }

  [WeakRetained _clearConnection];
}

void __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_156(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "applicationController: xpc service connection invalidated", v3, 2u);
  }

  [WeakRetained _clearConnection];
}

void __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_158(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "applicationMusicPlayer: failed to get synchronousRemoteObject %{public}@", &v8, 0xCu);
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 138543362;
    v9 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "applicationMusicPlayer:connect", "error=%{public}@", &v8, 0xCu);
  }
}

void __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_160(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA3B0];
  [*(*(a1 + 32) + 32) setRemoteObjectInterface:v7];

  v8 = [*(*(a1 + 32) + 32) remoteObjectInterface];
  v9 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v11 = [v9 setWithArray:v10];
  [v8 setClasses:v11 forSelector:sel_getNowPlayingsForContentItemIDs_reply_ argumentIndex:0 ofReply:1];

  v12 = [*(*(a1 + 32) + 32) remoteObjectInterface];
  v13 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v15 = [v13 setWithArray:v14];
  [v12 setClasses:v15 forSelector:sel_beginPlaybackAtHostTime_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1581E18];
  [*(*(a1 + 32) + 32) setExportedInterface:v16];

  v17 = [MEMORY[0x1E69B14E8] proxyWithObject:*(a1 + 32) protocol:&unk_1F1581E18];
  [*(*(a1 + 32) + 32) setExportedObject:v17];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_2;
  v22[3] = &unk_1E76825E8;
  objc_copyWeak(&v23, (a1 + 40));
  [*(*(a1 + 32) + 32) setInvalidationHandler:v22];
  [*(*(a1 + 32) + 32) resume];
  v18 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v19 = v18;
  v20 = *(a1 + 48);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v19, OS_SIGNPOST_INTERVAL_END, v20, "applicationMusicPlayer:connect", &unk_1A2797D62, v21, 2u);
  }

  objc_destroyWeak(&v23);
}

void __66__MPMusicPlayerApplicationController__establishConnectionIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "applicationMusicPlayer: connection invalidated", v3, 2u);
  }

  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  serviceConnection = self->_serviceConnection;
  self->_serviceConnection = 0;

  v4.receiver = self;
  v4.super_class = MPMusicPlayerApplicationController;
  [(MPMusicPlayerController *)&v4 _clearConnection];
}

- (id)_mediaItemsForContentItemIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [dsCopy count];
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "_mediaItemsForContentItemIDs", "contentItemIDs.count=%llu", &buf, 0xCu);
  }

  spid = v6;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__51129;
  v35 = __Block_byref_object_dispose__51130;
  v36 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__MPMusicPlayerApplicationController__mediaItemsForContentItemIDs___block_invoke;
  v28[3] = &unk_1E76805A0;
  v10 = dsCopy;
  v29 = v10;
  p_buf = &buf;
  [(MPMusicPlayerApplicationController *)self onApplicationServer:v28];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = *(*(&buf + 1) + 40);
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        itemIdentifier = [v16 itemIdentifier];
        if (itemIdentifier)
        {
          v18 = [(MPMusicPlayerController *)self _mediaItemFromNowPlaying:v16];
          if (v18)
          {
            [v11 setObject:v18 forKey:itemIdentifier];
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v20 = v19;
  if (v9 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v19))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v20, OS_SIGNPOST_INTERVAL_END, spid, "_mediaItemsForContentItemIDs", &unk_1A2797D62, v23, 2u);
  }

  _Block_object_dispose(&buf, 8);

  return v11;
}

void __67__MPMusicPlayerApplicationController__mediaItemsForContentItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MPMusicPlayerApplicationController__mediaItemsForContentItemIDs___block_invoke_2;
  v7[3] = &unk_1E7680578;
  v5 = v4;
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a2 getNowPlayingsForContentItemIDs:v5 reply:v7];
}

void __67__MPMusicPlayerApplicationController__mediaItemsForContentItemIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) count];
      v9 = [v6 msv_description];
      v12 = 134218242;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed getting nowPlayings for contentItemIDs (count: %llu) error=%{public}@", &v12, 0x16u);
    }
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing
{
  *(&self->_disableAutoPlay + 1) = playing;
  if (self->super._connection)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __73__MPMusicPlayerApplicationController_setDisableAutomaticCanBeNowPlaying___block_invoke;
    v3[3] = &__block_descriptor_33_e52_v16__0___MPMusicPlayerControllerApplicationServer__8l;
    playingCopy = playing;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v3];
  }
}

- (void)setRelativeVolume:(float)volume
{
  v3 = fminf(volume, 1.0);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MPMusicPlayerApplicationController_setRelativeVolume___block_invoke;
  v4[3] = &__block_descriptor_36_e52_v16__0___MPMusicPlayerControllerApplicationServer__8l;
  v5 = v3;
  [(MPMusicPlayerApplicationController *)self onApplicationServer:v4];
}

- (void)beginPlaybackAtHostTime:(id *)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__MPMusicPlayerApplicationController_beginPlaybackAtHostTime___block_invoke;
  v3[3] = &__block_descriptor_56_e61_v24__0___MPMusicPlayerControllerApplicationServer__8___B___16l;
  v4 = *time;
  [(MPMusicPlayerApplicationController *)self onApplicationServerAsync:v3 errorHandler:&__block_literal_global_51139];
}

void __62__MPMusicPlayerApplicationController_beginPlaybackAtHostTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E695E480];
  v8 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = CMTimeCopyAsDictionary(&v8, v4);
  [v6 beginPlaybackAtHostTime:{v7, *&v8.value, v8.epoch}];

  v5[2](v5);
}

void __62__MPMusicPlayerApplicationController_beginPlaybackAtHostTime___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Failed to beginPlaybackAtHostTime with error: %{public}@", &v4, 0xCu);
  }
}

- (void)prerollWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke;
  v8[3] = &unk_1E7680510;
  v9 = completionCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke_3;
  v6[3] = &unk_1E76816D0;
  v7 = v9;
  v5 = v9;
  [(MPMusicPlayerApplicationController *)self onApplicationServerAsync:v8 errorHandler:v6];
}

void __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke_2;
  v7[3] = &unk_1E76804E8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 prerollWithCompletion:v7];
}

void __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to prerollWithCompletion with error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __60__MPMusicPlayerApplicationController_prerollWithCompletion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_setApplicationMusicPlayerTransitionType:(int64_t)type
{
  self->_transitionType = type;
  if (type == 1)
  {
    self->_crossFadeDuration = 4.0;
  }

  if (self->super._connection)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__MPMusicPlayerApplicationController__setApplicationMusicPlayerTransitionType___block_invoke;
    v5[3] = &unk_1E76804C0;
    v5[4] = self;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v5];
  }
}

- (void)_setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration
{
  if (type)
  {
    self->_transitionType = type;
    if (type == 1)
    {
      self->_crossFadeDuration = duration;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMusicPlayerApplicationController.m" lineNumber:179 description:@"Duration cannot be passed in with TransitionTypeNone"];

    self->_transitionType = 0;
  }

  if (self->super._connection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__MPMusicPlayerApplicationController__setApplicationMusicPlayerTransitionType_withDuration___block_invoke;
    v7[3] = &unk_1E76804C0;
    v7[4] = self;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v7];
  }
}

- (void)setDisableShuffle:(BOOL)shuffle
{
  v5 = *(&self->_disableAutoPlay + 2);
  if (v5 == shuffle)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__MPMusicPlayerApplicationController_setDisableShuffle___block_invoke;
    v6[3] = &__block_descriptor_33_e52_v16__0___MPMusicPlayerControllerApplicationServer__8l;
    v7 = v5;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v6];
  }
}

- (void)setDisableRepeat:(BOOL)repeat
{
  v5 = *(&self->_disableAutoPlay + 3);
  if (v5 == repeat)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__MPMusicPlayerApplicationController_setDisableRepeat___block_invoke;
    v6[3] = &__block_descriptor_33_e52_v16__0___MPMusicPlayerControllerApplicationServer__8l;
    v7 = v5;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v6];
  }
}

- (void)setDisableAutoPlay:(BOOL)play
{
  v5 = *(&self->_disableAutoPlay + 4);
  if (v5 == play)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__MPMusicPlayerApplicationController_setDisableAutoPlay___block_invoke;
    v6[3] = &__block_descriptor_33_e52_v16__0___MPMusicPlayerControllerApplicationServer__8l;
    v7 = v5;
    [(MPMusicPlayerApplicationController *)self onApplicationServer:v6];
  }
}

- (void)performQueueTransaction:(void *)queueTransaction completionHandler:(void *)completionHandler
{
  v6 = queueTransaction;
  v7 = completionHandler;
  v8 = [[MPMusicPlayerControllerMutableQueue alloc] initWithController:self];
  objc_initWeak(&location, v8);
  v6[2](v6, v8);
  modifications = [(MPMusicPlayerControllerMutableQueue *)v8 modifications];

  v10 = objc_loadWeakRetained(&location);
  [v10 fault];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke;
  v15[3] = &unk_1E7680478;
  v11 = modifications;
  v16 = v11;
  selfCopy = self;
  v18 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_4;
  v13[3] = &unk_1E7680CA8;
  v13[4] = self;
  v12 = v18;
  v14 = v12;
  [(MPMusicPlayerApplicationController *)self onApplicationServerAsync:v15 errorHandler:v13];

  objc_destroyWeak(&location);
}

void __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7680450;
  v6 = a1[4];
  v7 = a1[6];
  v9[4] = a1[5];
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [a2 performQueueModifications:v6 completion:v9];
}

void __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MPMusicPlayerControllerQueue alloc] initWithController:*(a1 + 32)];
  objc_initWeak(&location, v4);
  (*(*(a1 + 40) + 16))();

  v5 = objc_loadWeakRetained(&location);
  [v5 fault];

  objc_destroyWeak(&location);
}

void __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_3;
    block[3] = &unk_1E7681568;
    block[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void __80__MPMusicPlayerApplicationController_performQueueTransaction_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [[MPMusicPlayerControllerQueue alloc] initWithController:*(a1 + 32)];
  objc_initWeak(&location, v2);
  (*(*(a1 + 48) + 16))();

  v3 = objc_loadWeakRetained(&location);
  [v3 fault];

  objc_destroyWeak(&location);
}

- (void)endGeneratingPlaybackNotifications
{
  v4.receiver = self;
  v4.super_class = MPMusicPlayerApplicationController;
  [(MPMusicPlayerController *)&v4 endGeneratingPlaybackNotifications];
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  [remoteObjectProxy setWantsReverseProcessAssertion:{-[MPMusicPlayerController notificationsCounter](self, "notificationsCounter") > 0}];
}

- (void)beginGeneratingPlaybackNotifications
{
  v4.receiver = self;
  v4.super_class = MPMusicPlayerApplicationController;
  [(MPMusicPlayerController *)&v4 beginGeneratingPlaybackNotifications];
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  [remoteObjectProxy setWantsReverseProcessAssertion:{-[MPMusicPlayerController notificationsCounter](self, "notificationsCounter") > 0}];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = MPMusicPlayerApplicationController;
  [(MPMusicPlayerController *)&v3 dealloc];
}

- (MPMusicPlayerApplicationController)initWithClientIdentifier:(id)identifier queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerApplicationController;
  result = [(MPMusicPlayerController *)&v5 initWithClientIdentifier:identifier queue:queue];
  if (result)
  {
    *(&result->_disableAutoPlay + 4) = 1;
  }

  return result;
}

@end