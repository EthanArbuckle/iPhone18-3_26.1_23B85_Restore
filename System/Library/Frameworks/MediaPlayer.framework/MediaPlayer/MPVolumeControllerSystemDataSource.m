@interface MPVolumeControllerSystemDataSource
- (MPVolumeControllerDataSourceDelegate)delegate;
- (MPVolumeControllerSystemDataSource)initWithVolumeAudioCategories:(id)a3;
- (MPVolumeControllerSystemDataSource)initWithVolumeAudioCategory:(id)a3;
- (NSString)description;
- (NSString)volumeControlLabel;
- (float)_effectiveVolume;
- (id)_categoryForActiveCategory:(id)a3 currentCategory:(id)a4 categories:(id)a5;
- (id)_mediaPlaybackVolumeAudioCategory;
- (id)_reloadQueue;
- (id)initCommon;
- (void)_mediaServerDiedNotification:(id)a3;
- (void)_notifyVolumeDidChage:(float)a3 silenceVolumeHUD:(BOOL)a4;
- (void)_reload;
- (void)_routeDidChangeNotification:(id)a3;
- (void)_setVolumeAudioCategory:(id)a3;
- (void)_setup;
- (void)_systemVolumeDidChange:(id)a3;
- (void)_tearDown;
- (void)adjustVolumeValue:(float)a3;
- (void)dealloc;
- (void)endDecreasingRelativeVolume;
- (void)endIncreasingRelativeVolume;
- (void)getVolumeValueWithCompletion:(id)a3;
- (void)reload;
- (void)setMuted:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)setVolumeAudioCategory:(id)a3;
- (void)updateVolume:(float)a3 silenceVolumeHUD:(BOOL)a4;
- (void)updateVolumeControlCapabilities:(unsigned int)a3;
- (void)updateVolumeMuted:(BOOL)a3;
@end

@implementation MPVolumeControllerSystemDataSource

- (id)_mediaPlaybackVolumeAudioCategory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPVolumeControllerSystemDataSource__mediaPlaybackVolumeAudioCategory__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (_mediaPlaybackVolumeAudioCategory___token != -1)
  {
    dispatch_once(&_mediaPlaybackVolumeAudioCategory___token, block);
  }

  return _mediaPlaybackVolumeAudioCategory___mediaPlaybackVolumeAudioCategory;
}

void __71__MPVolumeControllerSystemDataSource__mediaPlaybackVolumeAudioCategory__block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 40) volumeCategoryForAudioCategory:@"MediaPlayback"];
  v2 = _mediaPlaybackVolumeAudioCategory___mediaPlaybackVolumeAudioCategory;
  _mediaPlaybackVolumeAudioCategory___mediaPlaybackVolumeAudioCategory = v1;
}

- (float)_effectiveVolume
{
  if ([(MPVolumeControllerSystemDataSource *)self _supportsNativeMute])
  {
    return self->_volume;
  }

  result = 0.0;
  if (!self->_muted)
  {
    return self->_volume;
  }

  return result;
}

- (void)_reload
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v3 = [(NSString *)self->_volumeAudioCategory copy];
  if (v3)
  {
    self->_reloading = 1;
    *&self->_volumeInitialized = 0;
    self->_volumeMutedInitialized = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [(MPVolumeControllerSystemDataSource *)self _reloadQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__MPVolumeControllerSystemDataSource__reload__block_invoke;
    block[3] = &unk_1E767FE48;
    block[4] = self;
    v11 = v14;
    v12 = v18;
    v13 = v16;
    v9 = v3;
    v10 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MPVolumeControllerSystemDataSource__reload__block_invoke_27;
    v7[3] = &unk_1E767C9B8;
    v7[4] = self;
    v7[5] = v16;
    v7[6] = v18;
    v7[7] = v14;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], v7);
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

- (id)_reloadQueue
{
  if (_reloadQueue___token != -1)
  {
    dispatch_once(&_reloadQueue___token, &__block_literal_global_8465);
  }

  v3 = _reloadQueue__queue;

  return v3;
}

- (void)reload
{
  if (self->_reloading)
  {
    self->_needsReloading = 1;
  }

  else
  {
    [(MPVolumeControllerSystemDataSource *)self _reload];
  }
}

void __45__MPVolumeControllerSystemDataSource__reload__block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 40) attributeForKey:*MEMORY[0x1E69AEA90]];
  *(*(a1[6] + 8) + 24) = [v2 BOOLValue];

  [*(a1[4] + 40) getVolume:*(a1[7] + 8) + 24 forCategory:a1[5]];
  v3 = [*(a1[4] + 40) currentRouteHasVolumeControl];
  if (v3)
  {
    *(*(a1[8] + 8) + 24) = 10;
  }

  v4 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(*(a1[7] + 8) + 24);
    v8 = a1[4];
    v9 = a1[5];
    v10 = 138544642;
    v11 = v6;
    v12 = 2048;
    v13 = v8;
    v14 = 2048;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController reloading volume: %f | category: %{public}@ | hasVolumeControl: %{BOOL}u | capabilities: %@", &v10, 0x3Au);
  }
}

void __45__MPVolumeControllerSystemDataSource__reload__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPVolumeControllerSystemDataSource__reload__block_invoke_2;
  block[3] = &unk_1E7676F40;
  block[4] = v3;
  v9 = *(a1 + 56);
  v5 = v2;
  v6 = *(a1 + 72);
  v8 = v5;
  v10 = v6;
  dispatch_sync(v4, block);
  dispatch_group_leave(*(a1 + 48));
}

_BYTE *__45__MPVolumeControllerSystemDataSource__reload__block_invoke_27(void *a1, double a2)
{
  result = a1[4];
  if ((result[11] & 1) == 0)
  {
    [result updateVolumeControlCapabilities:*(*(a1[5] + 8) + 24)];
    result = a1[4];
  }

  if ((result[10] & 1) == 0)
  {
    LODWORD(a2) = *(*(a1[6] + 8) + 24);
    [result updateVolume:0 silenceVolumeHUD:a2];
    result = a1[4];
  }

  if ((result[12] & 1) == 0)
  {
    [result updateVolumeMuted:*(*(a1[7] + 8) + 24)];
    result = a1[4];
  }

  result[8] = 0;
  v4 = a1[4];
  if (*(v4 + 9) == 1)
  {
    *(v4 + 9) = 0;
    v5 = a1[4];

    return [v5 reload];
  }

  return result;
}

- (NSString)volumeControlLabel
{
  v2 = +[MPAVRoutingController systemRoute];
  if ([v2 isDeviceSpeakerRoute])
  {
    v3 = &stru_1F149ECA8;
  }

  else
  {
    v3 = [v2 routeName];
  }

  return v3;
}

- (MPVolumeControllerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_tearDown
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  *&self->_volumeInitialized = 0;
  self->_volumeMutedInitialized = 0;
  [v4 removeObserver:self name:*MEMORY[0x1E69AEA78] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69AECE8] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69AEAA0] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69AECB8] object:0];
  v3 = +[MPAVRoutingController systemRoute];
  [v4 removeObserver:self name:@"MPAVRouteDidChangeNotification" object:v3];
}

- (void)_setup
{
  avscQueue = self->_avscQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPVolumeControllerSystemDataSource__setup__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(avscQueue, block);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__routeDidChangeNotification_ name:@"MPAVRouteDidChangeNotification" object:0];
}

void __44__MPVolumeControllerSystemDataSource__setup__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = MEMORY[0x1E69AEA78];
  v6 = MEMORY[0x1E69AECD8];
  if (*MEMORY[0x1E69AEA78])
  {
    v7 = *(*(a1 + 32) + 40);
    v25[0] = *MEMORY[0x1E69AEA78];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v7 setAttribute:v8 forKey:*v6 error:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:*(a1 + 32) selector:sel__systemVolumeCapabilitiesDidChange_ name:*v5 object:*(*(a1 + 32) + 40)];
  }

  v10 = MEMORY[0x1E69AECE8];
  if (*MEMORY[0x1E69AECE8])
  {
    v11 = *(*(a1 + 32) + 40);
    v24 = *MEMORY[0x1E69AECE8];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [v11 setAttribute:v12 forKey:*v6 error:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:*(a1 + 32) selector:sel__systemVolumeDidChange_ name:*v10 object:*(*(a1 + 32) + 40)];
  }

  v14 = MEMORY[0x1E69AEAA0];
  if (*MEMORY[0x1E69AEAA0])
  {
    v15 = *(*(a1 + 32) + 40);
    v23 = *MEMORY[0x1E69AEAA0];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v15 setAttribute:v16 forKey:*v6 error:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:*(a1 + 32) selector:sel__systemMuteDidChange_ name:*v14 object:*(*(a1 + 32) + 40)];
  }

  v18 = MEMORY[0x1E69AECB8];
  if (*MEMORY[0x1E69AECB8])
  {
    v19 = *(*(a1 + 32) + 40);
    v22 = *MEMORY[0x1E69AECB8];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v19 setAttribute:v20 forKey:*v6 error:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:*(a1 + 32) selector:sel__mediaServerDiedNotification_ name:*v18 object:0];
  }
}

- (id)_categoryForActiveCategory:(id)a3 currentCategory:(id)a4 categories:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 containsObject:v8])
  {
    v11 = v8;
  }

  else if ([v10 containsObject:@"Audio/Video"])
  {
    v11 = [(MPVolumeControllerSystemDataSource *)self _mediaPlaybackVolumeAudioCategory];
  }

  else if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v10 anyObject];
  }

  v12 = v11;

  return v12;
}

- (void)_systemVolumeDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AEA18]];
  [v6 floatValue];
  v8 = v7;

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AEA10]];

  v11 = [v4 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69AEA08]];
  v13 = [v12 BOOLValue];

  v14 = [v4 userInfo];

  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69AE9F8]];

  v16 = [v10 isEqualToString:@"RouteChange"];
  v17 = [v10 isEqualToString:@"CategoryChange"];
  v18 = [(NSString *)self->_volumeAudioCategory copy];
  if ((v16 & 1) != 0 || v17)
  {
    v19 = [(MPVolumeControllerSystemDataSource *)self _categoryForActiveCategory:v15 currentCategory:self->_volumeAudioCategory categories:self->_volumeAudioCategories];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MPVolumeControllerSystemDataSource__systemVolumeDidChange___block_invoke;
    block[3] = &unk_1E76823C0;
    block[4] = self;
    v30 = v19;
    v20 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([v15 isEqualToString:v18])
  {
    v21 = 1.0;
    if (v8 <= 1.0)
    {
      v21 = v8;
    }

    v23[1] = 3221225472;
    v23[0] = MEMORY[0x1E69E9820];
    v23[2] = __61__MPVolumeControllerSystemDataSource__systemVolumeDidChange___block_invoke_2;
    v23[3] = &unk_1E7676F68;
    v22 = fmaxf(v21, 0.0);
    v23[4] = self;
    v26 = v8;
    v24 = v15;
    v25 = v10;
    v28 = v13;
    v27 = v22;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }
}

void __61__MPVolumeControllerSystemDataSource__systemVolumeDidChange___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) volumeControlCapabilities];
  v2 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  v3 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v11 = 138544898;
    v12 = v4;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v5;
    v17 = 2114;
    v18 = v7;
    v19 = 2112;
    v20 = v2;
    v21 = 2114;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController volume changed to: %f | category: %{public}@ | capabilities: %@ | reason: %{public}@ | silence: %{BOOL}u", &v11, 0x44u);
  }

  LODWORD(v10) = *(a1 + 60);
  [*(a1 + 32) updateVolume:*(a1 + 64) silenceVolumeHUD:v10];
}

- (void)_routeDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  v5 = +[MPAVRoutingController systemRoute];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MPVolumeControllerSystemDataSource__routeDidChangeNotification___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __66__MPVolumeControllerSystemDataSource__routeDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v3 = [v2 volumeControlLabel];
  [WeakRetained volumeControllerDataSource:v2 didChangeVolumeLabel:v3];
}

- (void)_mediaServerDiedNotification:(id)a3
{
  [(MPVolumeControllerSystemDataSource *)self _tearDown];
  [(MPVolumeControllerSystemDataSource *)self _setup];

  [(MPVolumeControllerSystemDataSource *)self reload];
}

- (void)endDecreasingRelativeVolume
{
  v3 = [(MPVolumeControllerSystemDataSource *)self volumeAudioCategory];
  v4 = [(MPVolumeControllerSystemDataSource *)self _mediaPlaybackVolumeAudioCategory];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
    [v6 adjustVolume:5 queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_34];
  }
}

- (void)endIncreasingRelativeVolume
{
  v3 = [(MPVolumeControllerSystemDataSource *)self volumeAudioCategory];
  v4 = [(MPVolumeControllerSystemDataSource *)self _mediaPlaybackVolumeAudioCategory];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
    [v6 adjustVolume:2 queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_32];
  }
}

- (void)getVolumeValueWithCompletion:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_volumeInitialized)
  {
    [(MPVolumeControllerSystemDataSource *)self volume];
    v10[2]();
  }

  else
  {
    pendingVolumeCompletions = self->_pendingVolumeCompletions;
    if (!pendingVolumeCompletions)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_pendingVolumeCompletions;
      self->_pendingVolumeCompletions = v6;

      v4 = v10;
      pendingVolumeCompletions = self->_pendingVolumeCompletions;
    }

    v8 = [v4 copy];
    v9 = _Block_copy(v8);
    [(NSMutableArray *)pendingVolumeCompletions addObject:v9];
  }
}

- (void)adjustVolumeValue:(float)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3 * 100000.0;
  v5 = floorf(v4) * 0.00001;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Adjusting local endpoint volume by: %f", &v8, 0x20u);
  }

  v7 = fmax(fmin((self->_volume + v5), 1.0), 0.0);
  *&v7 = v7;
  [(MPVolumeControllerSystemDataSource *)self setVolume:v7];
}

void __50__MPVolumeControllerSystemDataSource__reloadQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaPlayer.SystemVolumeDataSource.reloadQueue", v2);
  v1 = _reloadQueue__queue;
  _reloadQueue__queue = v0;
}

- (void)updateVolumeMuted:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_volumeMutedInitialized || self->_muted != a3)
  {
    self->_volumeMutedInitialized = 1;
    self->_muted = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained volumeControllerDataSource:self didChangeMuted:v3];
    v6 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
    v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      volume = self->_volume;
      volumeAudioCategory = self->_volumeAudioCategory;
      volumeControlAvailable = self->_volumeControlAvailable;
      muted = self->_muted;
      v13 = 138544898;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2048;
      v18 = volume;
      v19 = 2114;
      v20 = volumeAudioCategory;
      v21 = 1024;
      v22 = volumeControlAvailable;
      v23 = 2112;
      v24 = v6;
      v25 = 1024;
      v26 = muted;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController update mute to: %f | category %{public}@ | available: %{BOOL}u | capabilities: %@ | muted: %{BOOL}u", &v13, 0x40u);
    }
  }
}

- (void)updateVolumeControlCapabilities:(unsigned int)a3
{
  v3 = *&a3;
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if ((!self->_volumeControlCapabilitiesInitialized || ((v3 >> 1) & 1) != self->_volumeControlAvailable) && (self->_volumeControlAvailable = (v3 & 2) >> 1, [WeakRetained volumeControllerDataSource:self didChangeVolumeControlAvailability:(v3 & 2) != 0], !self->_volumeControlCapabilitiesInitialized) || self->_volumeControlCapabilities != v3)
  {
    self->_volumeControlCapabilitiesInitialized = 1;
    self->_volumeControlCapabilities = v3;
    [v6 volumeControllerDataSource:self didChangeVolumeCapabilities:v3];
    v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      volume = self->_volume;
      volumeAudioCategory = self->_volumeAudioCategory;
      muted = self->_muted;
      v12 = 138544898;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = volume;
      v18 = 2114;
      v19 = volumeAudioCategory;
      v20 = 1024;
      v21 = (v3 >> 1) & 1;
      v22 = 1024;
      v23 = v3;
      v24 = 1024;
      v25 = muted;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController update volume capabilities to: %f | category %{public}@ | available: %{BOOL}u | capabilities: %u | muted: %{BOOL}u", &v12, 0x3Cu);
    }
  }
}

- (void)_notifyVolumeDidChage:(float)a3 silenceVolumeHUD:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    *&v7 = a3;
    [WeakRetained volumeControllerDataSource:self didChangeVolume:v4 silenceVolumeHUD:v7];
  }

  else
  {
    *&v7 = a3;
    [WeakRetained volumeControllerDataSource:self didChangeVolume:v7];
  }
}

- (void)updateVolume:(float)a3 silenceVolumeHUD:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (!self->_volumeInitialized)
  {
    goto LABEL_5;
  }

  v6 = self->_volume - a3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.00000011921)
  {
LABEL_5:
    self->_volumeInitialized = 1;
    self->_volume = a3;
    [(MPVolumeControllerSystemDataSource *)self _effectiveVolume];
    [(MPVolumeControllerSystemDataSource *)self _notifyVolumeDidChage:v4 silenceVolumeHUD:?];
    v7 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
    v8 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      volume = self->_volume;
      volumeAudioCategory = self->_volumeAudioCategory;
      volumeControlAvailable = self->_volumeControlAvailable;
      muted = self->_muted;
      *buf = 138544898;
      v27 = v9;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = volume;
      v32 = 2114;
      v33 = volumeAudioCategory;
      v34 = 1024;
      v35 = volumeControlAvailable;
      v36 = 2112;
      v37 = v7;
      v38 = 1024;
      v39 = muted;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController update volume to: %f | category %{public}@ | available: %{BOOL}u | capabilities: %@ | muted: %{BOOL}u", buf, 0x40u);
    }
  }

  pendingVolumeCompletions = self->_pendingVolumeCompletions;
  if (pendingVolumeCompletions)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = pendingVolumeCompletions;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v21 + 1) + 8 * i) + 16))(self->_volume);
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }

    v20 = self->_pendingVolumeCompletions;
    self->_pendingVolumeCompletions = 0;
  }
}

- (void)setMuted:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_muted != a3)
  {
    v3 = a3;
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      volumeAudioCategory = self->_volumeAudioCategory;
      *buf = 138544130;
      v12 = v6;
      v13 = 2048;
      v14 = self;
      v15 = 1024;
      v16 = v3;
      v17 = 2114;
      v18 = volumeAudioCategory;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController set mute to: %{BOOL}u | category %{public}@", buf, 0x26u);
    }

    [(MPVolumeControllerSystemDataSource *)self updateVolumeMuted:v3];
    if (![(MPVolumeControllerSystemDataSource *)self _supportsNativeMute])
    {
      [(MPVolumeControllerSystemDataSource *)self _effectiveVolume];
      [(MPVolumeControllerSystemDataSource *)self _notifyVolumeDidChage:0 silenceVolumeHUD:?];
    }

    avscQueue = self->_avscQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__MPVolumeControllerSystemDataSource_setMuted___block_invoke;
    v9[3] = &unk_1E7682280;
    v9[4] = self;
    v10 = v3;
    dispatch_async(avscQueue, v9);
  }
}

void __47__MPVolumeControllerSystemDataSource_setMuted___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v1 setAttribute:v2 forKey:*MEMORY[0x1E69AEA90] error:0];
}

- (void)setVolume:(float)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_volume != a3)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      volumeAudioCategory = self->_volumeAudioCategory;
      *buf = 138544130;
      v13 = v6;
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = a3;
      v18 = 2114;
      v19 = volumeAudioCategory;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> AVSystemController set volume to: %f | category %{public}@", buf, 0x2Au);
    }

    *&v8 = a3;
    [(MPVolumeControllerSystemDataSource *)self updateVolume:0 silenceVolumeHUD:v8];
    avscQueue = self->_avscQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__MPVolumeControllerSystemDataSource_setVolume___block_invoke;
    v10[3] = &unk_1E76811D8;
    v10[4] = self;
    v11 = a3;
    dispatch_async(avscQueue, v10);
  }
}

- (void)_setVolumeAudioCategory:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> changed volumeAudioCategory to: %{public}@", &v7, 0x20u);
  }

  volumeAudioCategory = self->_volumeAudioCategory;
  self->_volumeAudioCategory = v4;
}

- (void)setVolumeAudioCategory:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(MPVolumeControllerSystemDataSource *)self _mediaPlaybackVolumeAudioCategory];
  }

  volumeAudioCategories = self->_volumeAudioCategories;
  v10 = v4;
  if (!volumeAudioCategories || (v6 = [(NSSet *)volumeAudioCategories containsObject:v4], v4 = v10, v6))
  {
    volumeAudioCategory = self->_volumeAudioCategory;
    if (volumeAudioCategory != v4)
    {
      v8 = [(NSString *)volumeAudioCategory isEqual:v10];
      v4 = v10;
      if ((v8 & 1) == 0)
      {
        [(MPVolumeControllerSystemDataSource *)self _setVolumeAudioCategory:v10];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained volumeControllerDataSource:self didChangeVolumeAudioCategory:v10];

        [(MPVolumeControllerSystemDataSource *)self reload];
        v4 = v10;
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_volumeControlAvailable)
  {
    v5 = @"available";
  }

  else
  {
    v5 = @"not available";
  }

  return [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];
}

- (void)dealloc
{
  [(MPVolumeControllerSystemDataSource *)self _tearDown];
  v3.receiver = self;
  v3.super_class = MPVolumeControllerSystemDataSource;
  [(MPVolumeControllerSystemDataSource *)&v3 dealloc];
}

- (MPVolumeControllerSystemDataSource)initWithVolumeAudioCategories:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MPVolumeControllerSystemDataSource *)self initCommon];
  if (v6)
  {
    if (!v5 || ![v5 count])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:v6 file:@"MPVolumeControllerSystemDataSource.m" lineNumber:97 description:@"Must provide at least one cateogry"];
    }

    v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = v6;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> init volumeAudioCategories: %{public}@", buf, 0x20u);
    }

    avscQueue = v6->_avscQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__MPVolumeControllerSystemDataSource_initWithVolumeAudioCategories___block_invoke;
    v11[3] = &unk_1E76823C0;
    v12 = v6;
    v13 = v5;
    dispatch_async(avscQueue, v11);
  }

  return v6;
}

void __68__MPVolumeControllerSystemDataSource_initWithVolumeAudioCategories___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__MPVolumeControllerSystemDataSource_initWithVolumeAudioCategories___block_invoke_2;
  v16[3] = &unk_1E7676F18;
  v3 = *(a1 + 40);
  v17 = *(a1 + 32);
  v4 = [v3 msv_compactMap:v16];
  v5 = [v2 initWithArray:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;

  v8 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 32);
    v11 = *(v10 + 88);
    *buf = 138543874;
    v19 = v9;
    v20 = 2048;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> resolved volumeAudioCategories to: %{public}@", buf, 0x20u);
  }

  v12 = *(*(a1 + 32) + 40);
  v15 = 0;
  [v12 getActiveCategoryVolume:0 andName:&v15];
  v13 = v15;
  v14 = [*(a1 + 32) _categoryForActiveCategory:v13 currentCategory:0 categories:*(*(a1 + 32) + 88)];
  [*(a1 + 32) _setVolumeAudioCategory:v14];
  [*(a1 + 32) reload];
}

- (MPVolumeControllerSystemDataSource)initWithVolumeAudioCategory:(id)a3
{
  v4 = a3;
  v5 = [(MPVolumeControllerSystemDataSource *)self initCommon];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v4 = [(MPVolumeControllerSystemDataSource *)v5 _mediaPlaybackVolumeAudioCategory];
    }

    [(MPVolumeControllerSystemDataSource *)v6 _setVolumeAudioCategory:v4];
    [(MPVolumeControllerSystemDataSource *)v6 reload];
  }

  return v6;
}

- (id)initCommon
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MPVolumeControllerSystemDataSource;
  v2 = [(MPVolumeControllerSystemDataSource *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      *buf = 138543618;
      v10 = v4;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> init", buf, 0x16u);
    }

    v5 = dispatch_queue_create("com.apple.MediaPlayer.SystemVolumeDataSource.avscQueue", 0);
    avscQueue = v2->_avscQueue;
    v2->_avscQueue = v5;

    v2->_supportNativeMute = MSVDeviceIsAppleTV() ^ 1;
    [(MPVolumeControllerSystemDataSource *)v2 _setup];
  }

  return v2;
}

@end