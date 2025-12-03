@interface MPNetworkObserver
+ (MPNetworkObserver)sharedNetworkObserver;
- (BOOL)isMusicCellularStreamingAllowed;
- (BOOL)isUsingNetwork;
- (BOOL)isVideoCellularStreamingAllowed;
- (MPNetworkObserver)init;
- (id)_init;
- (void)beginUsingNetwork;
- (void)dealloc;
- (void)endUsingNetwork;
- (void)setMusicCellularDownloadingAllowed:(BOOL)allowed;
- (void)setMusicCellularStreamingAllowed:(BOOL)allowed;
- (void)setVideoCellularStreamingAllowed:(BOOL)allowed;
@end

@implementation MPNetworkObserver

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MPNetworkObserver_isUsingNetwork__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMusicCellularDownloadingAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v14 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "[MPNetworkObserver setMusicCellularDownloadingAllowed:]";
    v10 = 2114;
    v11 = @"AllowsCellularDataDownloads";
    v12 = 1024;
    v13 = allowedCopy;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Changing %{public}@ preference to %{BOOL}u.", &v8, 0x1Cu);
  }

  v5 = MEMORY[0x1E695E4D0];
  if (!allowedCopy)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"AllowsCellularDataDownloads", *v5, @"com.apple.Music");
  CFPreferencesAppSynchronize(@"com.apple.Music");
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Music-AllowsCellularDataDownloads"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
}

- (void)setVideoCellularStreamingAllowed:(BOOL)allowed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPNetworkObserver_setVideoCellularStreamingAllowed___block_invoke;
  block[3] = &unk_1E7676008;
  allowedCopy = allowed;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(accessQueue, block);
  if (*(v9 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPNetworkObserverIsVideoCellularStreamingAllowedDidChangeNotification" object:self];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __54__MPNetworkObserver_setVideoCellularStreamingAllowed___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32) != *(result + 48))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 32) = *(result + 48);
    CFPreferencesSetAppValue(@"CellularDataMode", [MEMORY[0x1E696AD98] numberWithBool:*(*(result + 32) + 32)], @"com.apple.videos-preferences");

    return CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
  }

  return result;
}

- (BOOL)isVideoCellularStreamingAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MPNetworkObserver_isVideoCellularStreamingAllowed__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMusicCellularStreamingAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v4 = +[MPPlaybackUserDefaults standardUserDefaults];
  v6 = v4;
  if (allowedCopy)
  {
    v5 = 64;
  }

  else
  {
    v5 = 0;
  }

  [v4 setPreferredMusicLowBandwidthResolution:v5];
}

- (BOOL)isMusicCellularStreamingAllowed
{
  v2 = +[MPPlaybackUserDefaults standardUserDefaults];
  v3 = [v2 preferredMusicLowBandwidthResolution] > 0;

  return v3;
}

- (void)endUsingNetwork
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPNetworkObserver_endUsingNetwork__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __36__MPNetworkObserver_endUsingNetwork__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 16) = v4;
    v5 = *(a1 + 32);
    if (!*(v5 + 16))
    {
      v6 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__MPNetworkObserver_endUsingNetwork__block_invoke_2;
      block[3] = &unk_1E7682518;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

void __36__MPNetworkObserver_endUsingNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPNetworkObserverIsUsingNetworkDidChangeNotification" object:*(a1 + 32)];
}

- (void)beginUsingNetwork
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPNetworkObserver_beginUsingNetwork__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __38__MPNetworkObserver_beginUsingNetwork__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v1 = *(a1 + 32);
  if (*(v1 + 16) == 1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MPNetworkObserver_beginUsingNetwork__block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v1;
    dispatch_async(v2, block);
  }
}

void __38__MPNetworkObserver_beginUsingNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPNetworkObserverIsUsingNetworkDidChangeNotification" object:*(a1 + 32)];
}

- (void)dealloc
{
  notify_cancel(self->_musicCellularNetworkingAllowedNotifyToken);
  notify_cancel(self->_videosPreferencesChangedToken);
  v3.receiver = self;
  v3.super_class = MPNetworkObserver;
  [(MPNetworkObserver *)&v3 dealloc];
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = MPNetworkObserver;
  v2 = [(MPNetworkObserver *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPNetworkObserver", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    objc_initWeak(&location, v2);
    v5 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__MPNetworkObserver__init__block_invoke;
    handler[3] = &unk_1E7676D98;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.mobileipod.playbackPreferencesChanged-MusicAllowsCellularData", &v2->_musicCellularNetworkingAllowedNotifyToken, v5, handler);

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26__MPNetworkObserver__init__block_invoke_2;
    v10[3] = &unk_1E7676D98;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.Music-AllowsCellularDataDownloads", &v2->_musicCellularNetworkingAllowedNotifyToken, v5, v10);

    v2->_videosAllowsCellularStreaming = CFPreferencesGetAppBooleanValue(@"CellularDataMode", @"com.apple.videos-preferences", 0) != 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__MPNetworkObserver__init__block_invoke_3;
    v7[3] = &unk_1E7675FE0;
    objc_copyWeak(&v9, &location);
    v8 = v2;
    notify_register_dispatch("com.apple.videos-preferences-changed", &v2->_videosPreferencesChangedToken, v5, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__MPNetworkObserver__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"MPNetworkObserverIsMusicCellularStreamingAllowedDidChangeNotification" object:v3];

    WeakRetained = v3;
  }
}

void __26__MPNetworkObserver__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    CFPreferencesAppSynchronize(@"com.apple.Music");
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"MPNetworkObserverIsMusicCellularDownloadingAllowedDidChangeNotification" object:v3];

    WeakRetained = v3;
  }
}

void __26__MPNetworkObserver__init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
    v3 = CFPreferencesGetAppBooleanValue(@"CellularDataMode", @"com.apple.videos-preferences", 0) != 0;
    v4 = *(a1 + 32);
    if (*(v4 + 32) != v3)
    {
      v5 = *(v4 + 24);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __26__MPNetworkObserver__init__block_invoke_4;
      v10 = &unk_1E7682280;
      v11 = v4;
      v12 = v3;
      dispatch_sync(v5, &v7);
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"MPNetworkObserverIsVideoCellularStreamingAllowedDidChangeNotification" object:WeakRetained];
    }
  }
}

- (MPNetworkObserver)init
{
  [MEMORY[0x1E695DF30] raise:@"MPNetworkObserverInitException" format:{@"-init is not supported, use +sharedNetworkObserver"}];

  return 0;
}

+ (MPNetworkObserver)sharedNetworkObserver
{
  if (sharedNetworkObserver___once != -1)
  {
    dispatch_once(&sharedNetworkObserver___once, &__block_literal_global_3230);
  }

  v3 = sharedNetworkObserver___sharedNetworkObserver;

  return v3;
}

void __42__MPNetworkObserver_sharedNetworkObserver__block_invoke()
{
  v0 = [[MPNetworkObserver alloc] _init];
  v1 = sharedNetworkObserver___sharedNetworkObserver;
  sharedNetworkObserver___sharedNetworkObserver = v0;
}

@end