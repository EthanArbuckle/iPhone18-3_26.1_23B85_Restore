@interface MPMusicPlayerSystemController
- (BOOL)_shouldAccessCache;
- (id)_nowPlaying;
- (id)_queueDescriptor;
- (int64_t)playbackState;
- (void)_establishConnectionIfNeeded;
- (void)onSystemServer:(id)a3;
- (void)openToPlayQueueDescriptor:(id)a3;
@end

@implementation MPMusicPlayerSystemController

- (void)onSystemServer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MPMusicPlayerSystemController_onSystemServer___block_invoke;
  v6[3] = &unk_1E7680C80;
  v7 = v4;
  v5 = v4;
  [(MPMusicPlayerController *)self onServer:v6];
}

- (BOOL)_shouldAccessCache
{
  if (self->super._connection)
  {
    return 0;
  }

  if (+[MPMediaLibrary authorizationStatus]!= MPMediaLibraryAuthorizationStatusAuthorized)
  {
    return 0;
  }

  v2 = +[MPMusicPlayerControllerSystemCache sharedCache];
  v3 = [v2 hasCachedData];

  if (!v3)
  {
    return 0;
  }

  return MRMediaRemoteIsMusicAppInstalled();
}

- (id)_nowPlaying
{
  if (self->super._connection || (MRMediaRemoteSystemMediaApplicationIsRunning() & 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = MPMusicPlayerSystemController;
    v3 = [(MPMusicPlayerController *)&v6 _nowPlaying];
  }

  else if ([(MPMusicPlayerSystemController *)self _shouldAccessCache])
  {
    v5 = +[MPMusicPlayerControllerSystemCache sharedCache];
    v3 = [v5 nowPlaying];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_queueDescriptor
{
  if (self->super._connection || (MRMediaRemoteSystemMediaApplicationIsRunning() & 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = MPMusicPlayerSystemController;
    v3 = [(MPMusicPlayerController *)&v6 _queueDescriptor];
  }

  else if ([(MPMusicPlayerSystemController *)self _shouldAccessCache])
  {
    v5 = +[MPMusicPlayerControllerSystemCache sharedCache];
    v3 = [v5 queueDescriptor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_establishConnectionIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = MPMusicPlayerSystemController;
  [(MPMusicPlayerController *)&v29 _establishConnectionIfNeeded];
  if (+[MPMediaLibrary authorizationStatus]== MPMediaLibraryAuthorizationStatusAuthorized)
  {
    os_unfair_lock_lock(&self->super._lock);
    connection = self->super._connection;
    if (connection)
    {
LABEL_3:
      v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v5 = os_signpost_id_generate(v4);

      v6 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v7 = v6;
      v8 = v5 - 1;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "systemMusicPlayer:connect", &unk_1A2797D62, &buf, 2u);
      }

      if (connection)
      {
        if ((MRMediaRemoteSystemMediaApplicationWake() & 1) == 0)
        {
          v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "systemMusicPlayer _establishConnectionIfNeeded timeout [ping did not pong]", &buf, 2u);
          }

          v10 = 0;
          goto LABEL_22;
        }
      }

      else
      {
        [(NSXPCConnection *)self->super._connection resume];
        v17 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
        v18 = v17;
        if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v17))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v18, OS_SIGNPOST_EVENT, v5, "systemMusicPlayer:connect", "resumed connection", &buf, 2u);
        }

        [(MPMusicPlayerController *)self _validateServer];
      }

      v10 = 1;
LABEL_22:
      v19 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      v20 = v19;
      if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v10;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v20, OS_SIGNPOST_INTERVAL_END, v5, "systemMusicPlayer:connect", "woke=%{BOOL}u", &buf, 8u);
      }

      goto LABEL_32;
    }

    if (MRMediaRemoteIsMusicAppInstalled())
    {
      if (MRMediaRemoteSystemMediaApplicationWake())
      {
        v12 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.Music.MPMusicPlayerControllerInternal" options:0];
        v13 = self->super._connection;
        self->super._connection = v12;

        objc_initWeak(&buf, self);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __61__MPMusicPlayerSystemController__establishConnectionIfNeeded__block_invoke;
        v27[3] = &unk_1E76825E8;
        objc_copyWeak(&v28, &buf);
        [(NSXPCConnection *)self->super._connection setInterruptionHandler:v27];
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __61__MPMusicPlayerSystemController__establishConnectionIfNeeded__block_invoke_9;
        v25 = &unk_1E76825E8;
        objc_copyWeak(&v26, &buf);
        [(NSXPCConnection *)self->super._connection setInvalidationHandler:&v22];
        v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F15AA470, v22, v23, v24, v25}];
        [(NSXPCConnection *)self->super._connection setRemoteObjectInterface:v14];

        v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1581E18];
        [(NSXPCConnection *)self->super._connection setExportedInterface:v15];

        v16 = [MEMORY[0x1E69B14E8] proxyWithObject:self protocol:&unk_1F1581E18];
        [(NSXPCConnection *)self->super._connection setExportedObject:v16];

        objc_destroyWeak(&v26);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&buf);
        goto LABEL_3;
      }

      v21 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_ERROR, "systemMusicPlayer _establishConnectionIfNeeded failed [application failed to launch]", &buf, 2u);
      }
    }

    else
    {
      v21 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_ERROR, "systemMusicPlayer _establishConnectionIfNeeded failed [application not installed]", &buf, 2u);
      }
    }

LABEL_32:
    os_unfair_lock_unlock(&self->super._lock);
    return;
  }

  v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "systemMusicPlayer _establishConnectionIfNeeded failed [👮‍♂️ denied due to authorization status]", &buf, 2u);
  }
}

void __61__MPMusicPlayerSystemController__establishConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "systemMusicPlayer connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void __61__MPMusicPlayerSystemController__establishConnectionIfNeeded__block_invoke_9(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "systemMusicPlayer connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)openToPlayQueueDescriptor:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v6 = os_signpost_id_make_with_pointer(v5, v4);

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "openToPlayQueueDescriptor", &unk_1A2797D62, buf, 2u);
  }

  [(MPMusicPlayerController *)self setQueueWithDescriptor:v4];
  v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "openToPlayQueueDescriptor:prepare", &unk_1A2797D62, buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MPMusicPlayerSystemController_openToPlayQueueDescriptor___block_invoke;
  v11[3] = &unk_1E7680C50;
  v11[4] = self;
  v11[5] = v6;
  [(MPMusicPlayerController *)self prepareToPlayWithCompletionHandler:v11];
}

void __59__MPMusicPlayerSystemController_openToPlayQueueDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "openToPlayQueueDescriptor:prepare", &unk_1A2797D62, buf, 2u);
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "openToPlayQueueDescriptor: failed [prepare failed] error=%{public}@", buf, 0xCu);
    }

    v9 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v10 = v9;
    v11 = *(a1 + 40);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 138543362;
      v16 = v3;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_END, v11, "openToPlayQueueDescriptor", "error=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "openToPlayQueueDescriptor:openURL", &unk_1A2797D62, buf, 2u);
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"music://show-now-playing"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__MPMusicPlayerSystemController_openToPlayQueueDescriptor___block_invoke_1;
    v14[3] = &unk_1E7681978;
    v13 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v14[5] = v13;
    MPUIApplicationOpenURL(v10, MEMORY[0x1E695E0F8], v14);
  }
}

void __59__MPMusicPlayerSystemController_openToPlayQueueDescriptor___block_invoke_1(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 67109120;
    v13[1] = a2;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "openToPlayQueueDescriptor:openURL", "success=%{BOOL}u", v13, 8u);
  }

  if (a2)
  {
    [*(a1 + 32) play];
    v7 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v8 = v7;
    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v13[0]) = 0;
      v10 = &unk_1A2797D62;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "openToPlayQueueDescriptor", v10, v13, 2u);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "openToPlayQueueDescriptor: failed [open URL failed]", v13, 2u);
    }

    v12 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    v8 = v12;
    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v13[0]) = 0;
      v10 = "failed to open URL";
      goto LABEL_13;
    }
  }
}

- (int64_t)playbackState
{
  if (self->super._connection || (MRMediaRemoteSystemMediaApplicationIsRunning() & 1) != 0)
  {
    v5.receiver = self;
    v5.super_class = MPMusicPlayerSystemController;
    return [(MPMusicPlayerController *)&v5 playbackState];
  }

  else if ([(MPMusicPlayerSystemController *)self _shouldAccessCache])
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "systemMusicPlayer playbackState returning paused due to cached data", buf, 2u);
    }

    return 2;
  }

  else
  {
    return 0;
  }
}

@end