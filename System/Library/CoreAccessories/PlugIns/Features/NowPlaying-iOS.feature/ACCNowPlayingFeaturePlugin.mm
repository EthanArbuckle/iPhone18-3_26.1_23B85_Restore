@interface ACCNowPlayingFeaturePlugin
+ (BOOL)isMusicAppVisible;
+ (id)getItemDictionaryForContentItem:(id)item infoMask:(unsigned int)mask;
- (BOOL)_nowPlayingAppIsIPodApp;
- (BOOL)_nowPlayingAppIsIPodRadio;
- (BOOL)_nowPlayingIsStreaming;
- (BOOL)setPlaybackElapsedTime:(id)time;
- (BOOL)setPlaybackQueueIndex:(id)index;
- (NSString)description;
- (NSString)pluginName;
- (id)currentMediaItemArtwork;
- (id)currentMediaItemAttributes;
- (id)currentPlaybackAppBundleID;
- (id)currentPlaybackAppName;
- (id)currentPlaybackAttributes;
- (unsigned)currentPlaybackStateMR;
- (void)_generatePlaybackQueueItemsWithPropertyList:(id)list request:(id)request completionHandler:(id)handler continueQuery:(id)query;
- (void)_nowPlayingAppDidChange;
- (void)_nowPlayingArtworkDidChange;
- (void)_nowPlayingInfoDebounceTimerKick:(int)kick;
- (void)_nowPlayingInfoDebounceTimerStop:(int)stop;
- (void)_nowPlayingInfoDidChange;
- (void)_nowPlayingIsStreaming;
- (void)_nowPlayingPlaybackQueueDidChange;
- (void)_nowPlayingStateDidChange;
- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d;
- (void)currentMediaItemArtwork;
- (void)currentMediaItemAttributes;
- (void)currentPlaybackAttributes;
- (void)initPlugin;
- (void)nowPlayingAppDidChange:(id)change;
- (void)nowPlayingArtworkDidChange:(id)change;
- (void)nowPlayingInfoDidChange:(id)change;
- (void)nowPlayingPlaybackQueueDidChange:(id)change;
- (void)nowPlayingStateDidChange:(id)change;
- (void)nowPlayingSupportedCommandsDidChange:(id)change;
- (void)requestPlaybackQueueListInfo:(id)info requestID:(id)d startIndex:(unsigned int)index upToCount:(unsigned int)count infoMask:(unsigned int)mask;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCNowPlayingFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCNowPlayingFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCNowPlayingFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:0];
  v3 = dispatch_queue_create("ACCNowPlayingFeaturePlugin", 0);
  [(ACCNowPlayingFeaturePlugin *)self setQueue:v3];

  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingInfo:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrPlaybackState:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrSupportedCommands:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrArtworkData:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrArtworkDataHash:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingAppBundleID:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingAppName:0];
  v4 = dispatch_queue_create("ACCNowPlayingMRCompletionQ", 0);
  [(ACCNowPlayingFeaturePlugin *)self setCompletionQueue:v4];

  [(ACCNowPlayingFeaturePlugin *)self setCachedMediaItemAttributes:0];
  [(ACCNowPlayingFeaturePlugin *)self setCachedMediaItemArtworkHash:0];
  [(ACCNowPlayingFeaturePlugin *)self setCachedPlaybackAttributes:0];
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:0];
  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoSendPartialOnTimeout:0];

  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:0];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "Starting Now Playing feature plugin...", buf, 2u);
  }

  v6 = objc_alloc(MEMORY[0x277CD5FC0]);
  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v8 = [v6 initWithClientIdentifier:@"com.apple.accessoryd.mediaplayer" queue:queue];
  [(ACCNowPlayingFeaturePlugin *)self setMpMusicPlayerControllerHandler:v8];

  v9 = [objc_alloc(MEMORY[0x277CE8300]) initWithDelegate:self];
  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingClient:v9];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:v10];

  v11 = dispatch_queue_create("com.apple.iap2d.nowPlayPBQueueListQ", 0);
  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingInfoPBQueueListQ:v11];

  self->_nowPlayingInfoDebounceTimerRunningMask = 0;
  v12 = [[ACCSettingsState alloc] initWithKey:@"NowPlayingInfoDebounce" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:500 invalidValue:0];
  nowPlayingInfoDebounceTimerValue = self->_nowPlayingInfoDebounceTimerValue;
  self->_nowPlayingInfoDebounceTimerValue = v12;

  queue2 = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
  nowPlayingInfoDebounceTimer = self->_nowPlayingInfoDebounceTimer;
  self->_nowPlayingInfoDebounceTimer = v15;

  nowPlayingInfoDebounceTimer = [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDebounceTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke;
  handler[3] = &unk_2789E4CC0;
  handler[4] = self;
  dispatch_source_set_event_handler(nowPlayingInfoDebounceTimer, handler);

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDebounceTimerStop:127];
  nowPlayingInfoDebounceTimer2 = [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDebounceTimer];
  dispatch_resume(nowPlayingInfoDebounceTimer2);

  v19 = [[ACCSettingsState alloc] initWithKey:@"MaxPlaybackQueueInfoCount" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:2000 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:v19];

  v20 = [[ACCSettingsState alloc] initWithKey:@"PlaybackQueueInfoTimeoutMs" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:5000 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:v20];

  v21 = [[ACCSettingsState alloc] initWithKey:@"PlaybackQueueInfoSendPartialOnTimeout" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:3 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoSendPartialOnTimeout:v21];

  v22 = [[ACCSettingsState alloc] initWithKey:@"MeasureMemoryUsage" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:0 invalidValue:-1];
  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:v22];

  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  measureMemoryUsage = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
  LODWORD(queue) = [measureMemoryUsage BOOLValue];

  if (queue)
  {
    v24 = [[ACCMemUsageStat alloc] initWithName:@"ACCNowPlayingUpdate"];
    [(ACCNowPlayingFeaturePlugin *)self setMemUse:v24];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v25, OS_LOG_TYPE_INFO, "Adding notification observers...", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_nowPlayingInfoDidChange_ name:*MEMORY[0x277D27BC8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_nowPlayingStateDidChange_ name:*MEMORY[0x277D27B38] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_nowPlayingStateDidChange_ name:*MEMORY[0x277D27B50] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_nowPlayingAppDidChange_ name:*MEMORY[0x277D27B20] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_nowPlayingSupportedCommandsDidChange_ name:*MEMORY[0x277D27E48] object:0];

  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_nowPlayingPlaybackQueueDidChange_ name:*MEMORY[0x277CD5C48] object:0];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_nowPlayingArtworkDidChange_ name:*MEMORY[0x277D27E88] object:0];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  queue3 = [(ACCNowPlayingFeaturePlugin *)self queue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke_153;
  v35[3] = &unk_2789E4CC0;
  v35[4] = self;
  dispatch_sync(queue3, v35);

  [(ACCNowPlayingFeaturePlugin *)self nowPlayingStateDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingAppDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingSupportedCommandsDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:1];
}

void __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = 0;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 67109120;
    v19 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired: mask = 0x%02x", &v18, 8u);
  }

  if ((v3 & 0x11) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = 67109120;
      v19 = 17;
      _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingInfoDidChange", &v18, 8u);
    }

    [*(a1 + 32) _nowPlayingInfoDidChange];
  }

  if ((v3 & 0xA) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 67109120;
      v19 = 10;
      _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingStateDidChange", &v18, 8u);
    }

    [*(a1 + 32) _nowPlayingStateDidChange];
  }

  if ((v3 & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 67109120;
      v19 = 4;
      _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingAppDidChange", &v18, 8u);
    }

    [*(a1 + 32) _nowPlayingAppDidChange];
    if ((v3 & 0x20) == 0)
    {
LABEL_33:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = 67109120;
    v19 = 32;
    _os_log_impl(&dword_233600000, v13, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingPlaybackQueueDidChange", &v18, 8u);
  }

  [*(a1 + 32) _nowPlayingPlaybackQueueDidChange];
  if ((v3 & 0x40) != 0)
  {
LABEL_53:
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 67109120;
      v19 = 64;
      _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingArtworkDidChange", &v18, 8u);
    }

    [*(a1 + 32) _nowPlayingArtworkDidChange];
  }

LABEL_62:
  v17 = *MEMORY[0x277D85DE8];
}

void __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke_153(uint64_t a1)
{
  v1 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  [v1 beginGeneratingPlaybackNotifications];
}

- (void)stopPlugin
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Now Playing feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "Removing all notification observers...", buf, 2u);
  }

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ACCNowPlayingFeaturePlugin_stopPlugin__block_invoke;
  block[3] = &unk_2789E4CC0;
  block[4] = self;
  dispatch_sync(queue, block);

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v9 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *MEMORY[0x277CD5C30];
    v12 = *MEMORY[0x277CD5C28];
    *buf = 134218240;
    v18 = v11;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_DEFAULT, "Revert to Default MediaRemote NPQ Max Item Count: Reverse %ld, Forward %ld", buf, 0x16u);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  nowPlayingClient = [(ACCNowPlayingFeaturePlugin *)self nowPlayingClient];
  [nowPlayingClient setDelegate:0];

  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingClient:0];
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:0];
  [(ACCNowPlayingFeaturePlugin *)self setMpMusicPlayerControllerHandler:0];
  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:0];
  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:0];
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:0];
  v15 = *MEMORY[0x277D85DE8];
}

void __40__ACCNowPlayingFeaturePlugin_stopPlugin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  [v1 endGeneratingPlaybackNotifications];
}

- (void)_nowPlayingInfoDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_nowPlayingStateDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingStateDidChange: Gather and process info", v6, 2u);
  }

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDidChange];
}

- (void)_nowPlayingAppDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingAppDidChange: Gather and process info", v6, 2u);
  }

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDidChange];
}

- (void)_nowPlayingPlaybackQueueDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingPlaybackQueueDidChange: Tell client playbackQueueListDidChange", v7, 2u);
  }

  nowPlayingClient = [(ACCNowPlayingFeaturePlugin *)self nowPlayingClient];
  [nowPlayingClient playbackQueueListDidChange];
}

- (void)_nowPlayingArtworkDidChange
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nowPlayingInfoDidChange:(id)change
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v18 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]";
    v19 = 2112;
    v20 = changeCopy;
    v21 = 2048;
    v22 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_158;
  v15[3] = &unk_2789E4CC0;
  v15[4] = self;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
}

void __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = COERCE_DOUBLE(a2);
  if (*&a3 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x2383A7090](a3);
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke_2";
    v84 = 2048;
    v85 = *&a3;
    v86 = 2112;
    v87 = *&v5;
    _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_INFO, "%s: artwork: %p, nowPlayingInfo: %@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  v13 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 length];
    *buf = 136316162;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v84 = 2048;
    v85 = v12 - v13;
    v86 = 2048;
    v87 = v6;
    v88 = 2048;
    v89 = v16;
    v90 = 2112;
    v91 = v5;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), artwork: %p (%lu bytes), nowPlayingInfo: %@", buf, 0x34u);
  }

  v80 = v6;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v17 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  v20 = MEMORY[0x277D27BD8];
  v81 = a1;
  if (v19)
  {
    log = v17;
    v21 = *MEMORY[0x277D27C80];
    v77 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C80]];
    v71 = [*&v5 objectForKeyedSubscript:v21];
    [v71 timeIntervalSince1970];
    v23 = v22;
    v75 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BE0]];
    v69 = [*&v5 objectForKeyedSubscript:*v20];
    v24 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C40]];
    v66 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BC0]];
    v25 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C48]];
    v68 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CA0]];
    v62 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BA0]];
    v64 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v26 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C08]];
    v27 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C58]];
    v28 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C60]];
    v29 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C28]];
    *buf = 138415618;
    v83 = v77;
    v84 = 2048;
    v85 = v23;
    v86 = 2112;
    v87 = v75;
    v88 = 2112;
    v89 = v69;
    v90 = 2112;
    v91 = *&v24;
    v92 = 2112;
    v93 = v66;
    v94 = 2112;
    v95 = v25;
    v96 = 2112;
    v97 = v68;
    v98 = 2112;
    v99 = v62;
    v100 = 2112;
    v101 = v64;
    v102 = 2112;
    v103 = v26;
    v104 = 2112;
    v105 = v27;
    v106 = 2112;
    v107 = v28;
    v108 = 2112;
    v109 = v29;
    _os_log_impl(&dword_233600000, log, OS_LOG_TYPE_INFO, "nowPlayingInfoDidChange nowPlayingInfo: \nnowPlayingInfoInfo Playback Info \n    Timestamp: %@ (%f) \n    ElapsedTime: %@ / %@ \n    PlaybackRate: %@ (%@) \n    Index / Count: %@ / %@ \n    Chapter: %@ / %@ \n    IsAd: %@ \n    RadioStation: %@ (%@)\n    IsMusicApp: %@\n", buf, 0x8Eu);

    a1 = v81;
    v20 = MEMORY[0x277D27BD8];

    v17 = log;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v30 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v30 = MEMORY[0x277D86220];
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v78 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CC0]];
    [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C88]];
    v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    loga = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
    v72 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
    v70 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
    v32 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BB0]];
    v33 = [*&v5 objectForKeyedSubscript:*v20];
    v34 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CB0]];
    v65 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CA8]];
    v67 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BD0]];
    v35 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C98]];
    v63 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v36 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C20]];
    v37 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C18]];
    v38 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B88]];
    *buf = 138415874;
    v83 = v78;
    v84 = 2112;
    v85 = v76;
    v86 = 2112;
    v87 = loga;
    v88 = 2112;
    v89 = v72;
    v90 = 2112;
    v91 = *&v70;
    v92 = 2112;
    v93 = v32;
    v94 = 2112;
    v95 = v33;
    v96 = 2112;
    v97 = v34;
    v98 = 2112;
    v99 = v65;
    v100 = 2112;
    v101 = v67;
    v102 = 2112;
    v103 = v35;
    v104 = 2112;
    v105 = v63;
    v106 = 2112;
    v107 = v36;
    v108 = 2112;
    v109 = v37;
    v110 = 2112;
    v111 = v38;
    _os_log_impl(&dword_233600000, v30, OS_LOG_TYPE_INFO, "nowPlayingInfoDidChange nowPlayingInfo: \nnowPlayingInfo Item Info \n    PID: %@ \n    Title: %@ \n    Album: %@ \n    Artist: %@ \n    Genre: %@ \n    Composer: %@ \n    Duration: %@ \n    Album Index/Count: %@ / %@ \n    Disc Index/Count: %@ / %@ \n    Chapter Count: %@ \n    Liked / Banned: %@ / %@ \n    artworkID; %@ \n", buf, 0x98u);

    a1 = v81;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v39 = *gLogObjects;
    v40 = v80;
  }

  else
  {
    v40 = v80;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v39 = MEMORY[0x277D86220];
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(*(a1 + 32) + 64);
    *buf = 136315394;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v84 = 2112;
    v85 = v42;
    _os_log_impl(&dword_233600000, v39, OS_LOG_TYPE_DEFAULT, "%s: old nowPlayingInfo: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v43 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v84 = 2112;
    v85 = v5;
    _os_log_impl(&dword_233600000, v43, OS_LOG_TYPE_DEFAULT, "%s: -> new nowPlayingInfo: %@", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (v40)
  {
    v45 = [v40 SHA256];
  }

  else
  {
    v45 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v46 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v46 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *&v48 = COERCE_DOUBLE([*(*(a1 + 32) + 80) length]);
    v49 = *(*(a1 + 32) + 88);
    *buf = 136315650;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v84 = 2048;
    v85 = *&v48;
    v86 = 2112;
    v87 = v49;
    _os_log_impl(&dword_233600000, v46, OS_LOG_TYPE_DEFAULT, "%s: old ArtworkData: %lu bytes / hash %@", buf, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v50 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v50 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *&v52 = COERCE_DOUBLE([v40 length]);
    *buf = 136315650;
    v83 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v84 = 2048;
    v85 = *&v52;
    v86 = 2112;
    v87 = v45;
    _os_log_impl(&dword_233600000, v50, OS_LOG_TYPE_DEFAULT, "%s: -> new ArtworkData: %lu bytes / hash %@", buf, 0x20u);
  }

  v53 = *(a1 + 32);
  v54 = *(v53 + 80);
  *(v53 + 80) = v40;
  v55 = v40;

  v56 = *(a1 + 32);
  v57 = *(v56 + 88);
  *(v56 + 88) = v45;
  v58 = v45;

  v59 = [*(*(a1 + 32) + 56) intValue];
  v60 = *(a1 + 32);
  if (v59 < 1)
  {
    [v60 _nowPlayingInfoDidChange];
  }

  else
  {
    [v60 _nowPlayingInfoDebounceTimerKick:1];
  }

  v61 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_158(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:1];
  }

  return result;
}

- (void)nowPlayingStateDidChange:(id)change
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v18 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]";
    v19 = 2112;
    v20 = changeCopy;
    v21 = 2048;
    v22 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_161;
  v15[3] = &unk_2789E4CC0;
  v15[4] = self;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

uint64_t __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_2(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]_block_invoke_2";
    v20 = 1024;
    LODWORD(v21) = a2;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "%s: playbackState %d", &v18, 0x12u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 16);
    v18 = 136315906;
    v19 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]_block_invoke";
    v20 = 2048;
    v21 = v9 - v10;
    v22 = 1024;
    v23 = v13;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), playbackState %d -> %d", &v18, 0x22u);
  }

  *(*(a1 + 32) + 16) = a2;
  v14 = [*(*(a1 + 32) + 56) intValue];
  v15 = *(a1 + 32);
  if (v14 < 1)
  {
    result = [v15 _nowPlayingStateDidChange];
  }

  else
  {
    result = [v15 _nowPlayingInfoDebounceTimerKick:2];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_161(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:2];
  }

  return result;
}

- (void)nowPlayingAppDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 138412546;
    v18 = changeCopy;
    v19 = 2048;
    v20 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingAppDidChange: Notification received: %@, debounce=%ld", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_167;
  v15[3] = &unk_2789E4CC0;
  v15[4] = self;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingClientForOrigin();
}

void __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
  DisplayName = MRNowPlayingClientGetDisplayName();
  if (BundleIdentifier)
  {
    v8 = BundleIdentifier;
  }

  else
  {
    v8 = &stru_2848EA190;
  }

  v9 = v8;
  if (DisplayName)
  {
    v10 = DisplayName;
  }

  else
  {
    v10 = &stru_2848EA190;
  }

  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v32 = 136315650;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke_2";
    v34 = 2112;
    v35 = *&a2;
    v36 = 2112;
    v37 = a3;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_INFO, "%s: clientRef: %@, errorRef: %@", &v32, 0x20u);
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  [v15 timeIntervalSince1970];
  v17 = v16;

  v18 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v19 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  v21 = v17 - v18;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(a1 + 32) + 96);
    v32 = 136315906;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke";
    v34 = 2048;
    v35 = v21;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_233600000, v19, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), appBundleID %@ -> %@", &v32, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 96), v8);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 32) + 104);
    v32 = 136315906;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke";
    v34 = 2048;
    v35 = v21;
    v36 = 2112;
    v37 = v25;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_233600000, v23, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), appName %@ -> %@", &v32, 0x2Au);
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 104);
  *(v26 + 104) = v11;
  v28 = v11;

  v29 = [*(*(a1 + 32) + 56) intValue];
  v30 = *(a1 + 32);
  if (v29 < 1)
  {
    [v30 _nowPlayingAppDidChange];
  }

  else
  {
    [v30 _nowPlayingInfoDebounceTimerKick:4];
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_167(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:4];
  }

  return result;
}

- (void)nowPlayingPlaybackQueueDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    v10 = 138412546;
    v11 = changeCopy;
    v12 = 2048;
    v13 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingPlaybackQueueDidChange: Notification received: %@, debounce=%ld", &v10, 0x16u);
  }

  if ([(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue]< 1)
  {
    [(ACCNowPlayingFeaturePlugin *)self _nowPlayingPlaybackQueueDidChange];
  }

  else
  {
    [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDebounceTimerKick:32];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)nowPlayingArtworkDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 138412546;
    v18 = changeCopy;
    v19 = 2048;
    v20 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingArtworkDidChange: Notification received: %@, debounce=%ld", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_170;
  v15[3] = &unk_2789E4CC0;
  v15[4] = self;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingArtwork();
}

void __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = MEMORY[0x2383A7090](a2);
  }

  else
  {
    v4 = 0;
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v32 = 136315394;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke_2";
    v34 = 2048;
    v35 = *&a2;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: artwork: %p", &v32, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = *(a1 + 40);
  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_233600000, v13, OS_LOG_TYPE_INFO, "#Artwork No artwork image received from MediaRemote!", &v32, 2u);
    }

    if (v4)
    {
      goto LABEL_16;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_16:
  v12 = [v4 SHA256];
LABEL_27:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = v10 - v11;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(*(a1 + 32) + 80) length];
    v19 = *(*(a1 + 32) + 88);
    v32 = 136315906;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke";
    v34 = 2048;
    v35 = v17;
    v36 = 2048;
    v37 = v18;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), old ArtworkData: %lu bytes / hash %@", &v32, 0x2Au);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v4 length];
    v32 = 136315906;
    v33 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke";
    v34 = 2048;
    v35 = v17;
    v36 = 2048;
    v37 = v22;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_233600000, v20, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), -> new ArtworkData: %lu bytes / hash %@", &v32, 0x2Au);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 80);
  *(v23 + 80) = v4;
  v25 = v4;

  v26 = *(a1 + 32);
  v27 = *(v26 + 88);
  *(v26 + 88) = v12;
  v28 = v12;

  v29 = [*(*(a1 + 32) + 56) intValue];
  v30 = *(a1 + 32);
  if (v29 < 1)
  {
    [v30 _nowPlayingArtworkDidChange];
  }

  else
  {
    [v30 _nowPlayingInfoDebounceTimerKick:64];
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_170(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:64];
  }

  return result;
}

- (void)nowPlayingSupportedCommandsDidChange:(id)change
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v18 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]";
    v19 = 2112;
    v20 = changeCopy;
    v21 = 2048;
    v22 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_173;
  v15[3] = &unk_2789E4CC0;
  v15[4] = self;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  MRMediaRemoteGetSupportedCommands();
}

void __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke_2";
    v25 = 2112;
    v26 = *&v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "%s: commands: %@", &v23, 0x16u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  v13 = v9 - v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 72);
    v23 = 136315650;
    v24 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke";
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms) old supportedCommands: %@", &v23, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke";
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms) -> new supportedCommands: %@", &v23, 0x20u);
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v3;
  v19 = v3;

  v20 = [*(*(a1 + 32) + 56) intValue];
  v21 = *(a1 + 32);
  if (v20 < 1)
  {
    [v21 _nowPlayingInfoDidChange];
  }

  else
  {
    [v21 _nowPlayingInfoDebounceTimerKick:1];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_173(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:1];
  }

  return result;
}

- (unsigned)currentPlaybackStateMR
{
  v12 = *MEMORY[0x277D85DE8];
  mrPlaybackState = self->_mrPlaybackState;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ACCNowPlayingFeaturePlugin currentPlaybackStateMR]";
    v10 = 1024;
    v11 = mrPlaybackState;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "%s: %d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return mrPlaybackState;
}

- (id)currentPlaybackAppBundleID
{
  v11 = *MEMORY[0x277D85DE8];
  mrNowPlayingAppBundleID = self->_mrNowPlayingAppBundleID;
  if (!mrNowPlayingAppBundleID)
  {
    mrNowPlayingAppBundleID = &stru_2848EA190;
  }

  v3 = mrNowPlayingAppBundleID;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "currentPlaybackAppBundleID: %@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)currentPlaybackAppName
{
  v11 = *MEMORY[0x277D85DE8];
  mrNowPlayingAppName = self->_mrNowPlayingAppName;
  if (!mrNowPlayingAppName)
  {
    mrNowPlayingAppName = &stru_2848EA190;
  }

  v3 = mrNowPlayingAppName;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "currentPlaybackAppName: %@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)currentMediaItemAttributes
{
  v106 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_mrNowPlayingInfo;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v9 = MEMORY[0x277D27CC0];
  v10 = MEMORY[0x277D27C88];
  v11 = MEMORY[0x277D27BD8];
  v68 = dictionary;
  v69 = v4;
  selfCopy = self;
  if (v8)
  {
    v71 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CC0]];
    v70 = [(NSDictionary *)v4 objectForKeyedSubscript:*v10];
    v65 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
    v64 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
    v63 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
    v61 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27BB0]];
    v60 = [(NSDictionary *)v4 objectForKeyedSubscript:*v11];
    v12 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CB0]];
    v13 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CA8]];
    v14 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27BD0]];
    v15 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27C98]];
    [(NSDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v16 = log = v7;
    v17 = [(NSDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x277D27C20]];
    v18 = [(NSDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x277D27C18]];
    v19 = [(NSDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x277D27B88]];
    *buf = 138415874;
    *v78 = v71;
    *&v78[8] = 2112;
    v79 = v70;
    v80 = 2112;
    v81 = v65;
    v82 = 2112;
    v83 = v64;
    v84 = 2112;
    v85 = v63;
    v86 = 2112;
    v87 = v61;
    v88 = 2112;
    v89 = v60;
    v90 = 2112;
    v91 = v12;
    v92 = 2112;
    v93 = v13;
    v94 = 2112;
    v95 = v14;
    v20 = v14;
    v96 = 2112;
    v97 = v15;
    v98 = 2112;
    v99 = v16;
    v100 = 2112;
    v101 = v17;
    v102 = 2112;
    v103 = v18;
    v104 = 2112;
    v105 = v19;
    _os_log_impl(&dword_233600000, log, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes nowPlayingInfo: \nnowPlayingInfo Item Info \n    PID: %@ \n    Title: %@ \n    Album: %@ \n    Artist: %@ \n    Genre: %@ \n    Composer: %@ \n    Duration: %@ \n    Album Index/Count: %@ / %@ \n    Disc Index/Count: %@ / %@ \n    Chapter Count: %@ \n    Liked / Banned: %@ / %@ \n    artworkID; %@ \n", buf, 0x98u);

    v9 = MEMORY[0x277D27CC0];
    v11 = MEMORY[0x277D27BD8];
    v10 = MEMORY[0x277D27C88];

    v7 = log;
    self = selfCopy;

    dictionary = v68;
    v4 = v69;
  }

  v21 = &unk_2848EBE10;
  [dictionary copyToKey:*MEMORY[0x277CE8378] fromKey:*v9 inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8388] fromKey:*v10 inDictionary:v4 objectIfNil:&stru_2848EA190];
  v22 = *v11;
  v23 = [(NSDictionary *)v4 objectForKey:*v11];

  if (v23)
  {
    v24 = [(NSDictionary *)v4 objectForKey:v22];
    [v24 doubleValue];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v25 * 1000.0)];
  }

  [dictionary setObject:v21 forKey:*MEMORY[0x277CE8380]];
  [dictionary copyToKey:*MEMORY[0x277CE8318] fromKey:*MEMORY[0x277D27B60] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8328] fromKey:*MEMORY[0x277D27CB0] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8320] fromKey:*MEMORY[0x277D27CA8] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8310] fromKey:*MEMORY[0x277D27BD0] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8308] fromKey:*MEMORY[0x277D27C98] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8330] fromKey:*MEMORY[0x277D27B70] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8350] fromKey:*MEMORY[0x277D27C00] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8348] fromKey:*MEMORY[0x277D27BB0] inDictionary:v4 objectIfNil:&stru_2848EA190];
  v26 = MEMORY[0x277CBEC28];
  [dictionary copyToKey:*MEMORY[0x277CE8370] fromKey:*MEMORY[0x277D27C20] inDictionary:v4 objectIfNil:MEMORY[0x277CBEC28]];
  [dictionary copyToKey:*MEMORY[0x277CE8360] fromKey:*MEMORY[0x277D27C18] inDictionary:v4 objectIfNil:v26];
  [dictionary copyToKey:*MEMORY[0x277CE8340] fromKey:*MEMORY[0x277D27C90] inDictionary:v4 objectIfNil:v26];
  [dictionary copyToKey:*MEMORY[0x277CE8338] fromKey:*MEMORY[0x277D27B88] inDictionary:v4 objectIfNil:&stru_2848EA190];
  v27 = self->_mrSupportedCommands;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v28 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v78 = v27;
    _os_log_impl(&dword_233600000, v28, OS_LOG_TYPE_INFO, "currentMediaItemAttributes supportedCommands: %@", buf, 0xCu);
  }

  v66 = v21;

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = v27;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = 0;
    v35 = *v73;
    v36 = MEMORY[0x277D86220];
    while (1)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v73 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v38 = MEMORY[0x2383A6FE0](*(*(&v72 + 1) + 8 * i));
        if (v38 == 22)
        {
          v42 = gLogObjects;
          v43 = gNumLogObjects;
          if (gLogObjects)
          {
            v44 = gNumLogObjects < 1;
          }

          else
          {
            v44 = 1;
          }

          if (v44)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v78 = v42;
              *&v78[8] = 1024;
              LODWORD(v79) = v43;
              _os_log_error_impl(&dword_233600000, v36, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v45 = v36;
            v41 = v36;
          }

          else
          {
            v41 = *gLogObjects;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v78 = 22;
            *&v78[4] = 1024;
            *&v78[6] = v33 & 1;
            _os_log_impl(&dword_233600000, v41, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes supportedCommands: %d, isBanSupported=%d", buf, 0xEu);
          }

          v33 = 1;
        }

        else
        {
          if (v38 != 21)
          {
            continue;
          }

          v39 = gLogObjects;
          v40 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v41 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v78 = v39;
              *&v78[8] = 1024;
              LODWORD(v79) = v40;
              _os_log_error_impl(&dword_233600000, v36, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v46 = v36;
            v41 = v36;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v78 = 21;
            *&v78[4] = 1024;
            *&v78[6] = v34 & 1;
            _os_log_impl(&dword_233600000, v41, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes supportedCommands: %d, isLikeSupported=%d", buf, 0xEu);
          }

          v34 = 1;
        }
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (!v32)
      {
        goto LABEL_53;
      }
    }
  }

  v33 = 0;
  v34 = 0;
LABEL_53:

  v47 = [MEMORY[0x277CCABB0] numberWithBool:v34 & 1];
  [v68 setObject:v47 forKey:*MEMORY[0x277CE8368]];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:v33 & 1];
  [v68 setObject:v48 forKey:*MEMORY[0x277CE8358]];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v49 = *gLogObjects;
    v50 = v69;
    v52 = v66;
    v51 = selfCopy;
  }

  else
  {
    v50 = v69;
    v52 = v66;
    v51 = selfCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v49 = MEMORY[0x277D86220];
    v53 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    [ACCNowPlayingFeaturePlugin currentMediaItemAttributes];
  }

  cachedMediaItemAttributes = [(ACCNowPlayingFeaturePlugin *)v51 cachedMediaItemAttributes];

  if (!cachedMediaItemAttributes)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v55 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v55 = MEMORY[0x277D86220];
      v56 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin currentMediaItemAttributes];
    }

    [(ACCNowPlayingFeaturePlugin *)v51 setCachedMediaItemAttributes:v68];
  }

  v57 = [v68 copy];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (id)currentMediaItemArtwork
{
  v33[3] = *MEMORY[0x277D85DE8];
  mrArtworkData = [(ACCNowPlayingFeaturePlugin *)self mrArtworkData];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)mrArtworkData currentMediaItemArtwork];
  }

  if (!mrArtworkData)
  {
    goto LABEL_57;
  }

  v6 = CGImageSourceCreateWithData(mrArtworkData, 0);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)v6 currentMediaItemArtwork];
  }

  data = [MEMORY[0x277CBEB28] data];
  v10 = CGImageDestinationCreateWithData(data, *MEMORY[0x277CC20C8], 1uLL, 0);
  v11 = *MEMORY[0x277CD2D48];
  v33[0] = &unk_2848EBE40;
  v12 = *MEMORY[0x277CD3038];
  v32[0] = v11;
  v32[1] = v12;
  null = [MEMORY[0x277CBEB68] null];
  v33[1] = null;
  v32[2] = *MEMORY[0x277CD3258];
  null2 = [MEMORY[0x277CBEB68] null];
  v33[2] = null2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  CGImageDestinationAddImageFromSource(v10, v6, 0, v15);

  v16 = CGImageDestinationFinalize(v10);
  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v16)
  {
    if (v18)
    {
      v19 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    v22 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (v22)
    {
      v23 = CGImageSourceCreateWithData(data, 0);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v24 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v24 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(ACCNowPlayingFeaturePlugin *)v23 currentMediaItemArtwork];
      }

      if (v23)
      {
        CFRelease(v23);
      }
    }

    v26 = data;
    if (v10)
    {
LABEL_53:
      CFRelease(v10);
    }
  }

  else
  {
    if (v18)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v20 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ACCNowPlayingFeaturePlugin currentMediaItemArtwork];
    }

    v26 = 0;
    if (v10)
    {
      goto LABEL_53;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (!v26)
  {
LABEL_57:
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v28 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)v26 currentMediaItemArtwork];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)currentPlaybackAttributes
{
  v134 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = self->_mrNowPlayingInfo;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)&self->_mrNowPlayingInfo currentPlaybackAttributes];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  selfCopy = self;
  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v10 = MEMORY[0x277D27C80];
  v11 = MEMORY[0x277D27BE0];
  v12 = MEMORY[0x277D27BD8];
  v13 = MEMORY[0x277D27C40];
  v14 = MEMORY[0x277D27C28];
  v89 = v3;
  if (v9)
  {
    v15 = *MEMORY[0x277D27C80];
    v101 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C80]];
    v93 = [(NSDictionary *)v3 objectForKeyedSubscript:v15];
    [v93 timeIntervalSince1970];
    v17 = v16;
    v99 = [(NSDictionary *)v3 objectForKeyedSubscript:*v11];
    v97 = [(NSDictionary *)v3 objectForKeyedSubscript:*v12];
    v95 = [(NSDictionary *)v3 objectForKeyedSubscript:*v13];
    v91 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27BC0]];
    v90 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C48]];
    v18 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27CA0]];
    v19 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27BA0]];
    v20 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v21 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C08]];
    v22 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C58]];
    v23 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C60]];
    v24 = [(NSDictionary *)v89 objectForKeyedSubscript:*MEMORY[0x277D27C28]];
    *buf = 138415618;
    *v109 = v101;
    *&v109[8] = 2048;
    *&v109[10] = v17;
    v110 = 2112;
    v111 = v99;
    v112 = 2112;
    v113 = v97;
    v114 = 2112;
    v115 = v95;
    v116 = 2112;
    v117 = v91;
    v118 = 2112;
    v119 = v90;
    v120 = 2112;
    v121 = v18;
    v122 = 2112;
    v123 = v19;
    v25 = v19;
    v124 = 2112;
    v125 = v20;
    v126 = 2112;
    v127 = v21;
    v128 = 2112;
    v129 = v22;
    v130 = 2112;
    v131 = v23;
    v132 = 2112;
    v133 = v24;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes nowPlayingInfo: \nnowPlayingInfoInfo Playback Info \n    Timestamp: %@ (%f) \n    ElapsedTime: %@ / %@ \n    PlaybackRate: %@ (%@) \n    Index / Count: %@ / %@ \n    Chapter: %@ / %@ \n    IsAd: %@ \n    RadioStation: %@ (%@)\n    IsMusicApp: %@\n", buf, 0x8Eu);

    v3 = v89;
    v11 = MEMORY[0x277D27BE0];

    v13 = MEMORY[0x277D27C40];
    v12 = MEMORY[0x277D27BD8];

    v14 = MEMORY[0x277D27C28];
    v10 = MEMORY[0x277D27C80];
  }

  v26 = [(NSDictionary *)v3 objectForKeyedSubscript:*v11];
  v27 = [(NSDictionary *)v3 objectForKeyedSubscript:*v12];
  v28 = *v13;
  v29 = [(NSDictionary *)v3 objectForKeyedSubscript:*v13];
  v30 = [(NSDictionary *)v3 objectForKeyedSubscript:*v10];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{(calculateCurrentElapsedTime(v26, v27, v29, v30) * 1000.0)}];
  [dictionary setObject:v31 forKey:*MEMORY[0x277CE83A0]];

  [dictionary copyToKey:*MEMORY[0x277CE83C8] fromKey:*MEMORY[0x277D27C48] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83C0] fromKey:*MEMORY[0x277D27CA0] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83B8] fromKey:*MEMORY[0x277D27BA0] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83F0] fromKey:*MEMORY[0x277D27C08] inDictionary:v3 objectIfNil:MEMORY[0x277CBEC28]];
  [dictionary copyToKey:*MEMORY[0x277CE83F8] fromKey:*MEMORY[0x277D27C58] inDictionary:v3 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8400] fromKey:*MEMORY[0x277D27C60] inDictionary:v3 objectIfNil:&stru_2848EA190];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [dictionary setObject:v32 forKey:*MEMORY[0x277CE8408]];

  v33 = [(NSDictionary *)v3 objectForKey:v28];
  v34 = [(NSDictionary *)v3 objectForKey:*MEMORY[0x277D27BC0]];
  v35 = *v14;
  v36 = [(NSDictionary *)v3 objectForKey:*v14];
  v85 = v36;
  if (v36)
  {
    bOOLValue = [v36 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v38 = calculatePlaybackSpeed(v33, v34, bOOLValue);
  [dictionary setObject:v38 forKey:*MEMORY[0x277CE83B0]];

  v87 = v33;
  v39 = convertPlaybackStatus([(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackStateMR], v33, v34);
  [dictionary setObject:v39 forKey:*MEMORY[0x277CE83E8]];

  currentPlaybackAppName = [(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackAppName];
  [dictionary setObject:currentPlaybackAppName forKey:*MEMORY[0x277CE8398] objectIfNil:&stru_2848EA190];

  currentPlaybackAppBundleID = [(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackAppBundleID];
  [dictionary setObject:currentPlaybackAppBundleID forKey:*MEMORY[0x277CE8390] objectIfNil:&stru_2848EA190];

  [dictionary copyToKey:*MEMORY[0x277CE83A8] fromKey:v35 inDictionary:v3 objectIfNil:MEMORY[0x277CBEC28]];
  v100 = *MEMORY[0x277CE83D0];
  [dictionary setObject:&unk_2848EBE28 forKey:?];
  v98 = *MEMORY[0x277CE83E0];
  [dictionary setObject:&unk_2848EBE28 forKey:?];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v96 = *MEMORY[0x277CE83D8];
  [dictionary setObject:v42 forKey:?];

  v43 = selfCopy->_mrSupportedCommands;
  v44 = v43;
  if (gLogObjects)
  {
    v45 = gNumLogObjects <= 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  v86 = v34;
  if (v43)
  {
    if (v46)
    {
      v47 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v47 = MEMORY[0x277D86220];
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v109 = v44;
      _os_log_impl(&dword_233600000, v47, OS_LOG_TYPE_INFO, "currentPlaybackAttributes supportedCommands: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v46)
    {
      v47 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v47 = MEMORY[0x277D86220];
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [ACCNowPlayingFeaturePlugin currentPlaybackAttributes];
    }
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v50 = v44;
  v51 = [(NSArray *)v50 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v104;
    v94 = *MEMORY[0x277D27AB0];
    v54 = MEMORY[0x277D86220];
    v92 = *MEMORY[0x277D27AA8];
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v104 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v56 = MEMORY[0x2383A6FE0](*(*(&v103 + 1) + 8 * i));
        if (MRMediaRemoteCommandInfoGetEnabled())
        {
          v57 = gLogObjects;
          v58 = gNumLogObjects;
          if (gLogObjects)
          {
            v59 = gNumLogObjects < 1;
          }

          else
          {
            v59 = 1;
          }

          if (v59)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v109 = v57;
              *&v109[8] = 1024;
              *&v109[10] = v58;
              _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v60 = v54;
            v61 = v54;
          }

          else
          {
            v61 = *gLogObjects;
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v109 = v56;
            _os_log_impl(&dword_233600000, v61, OS_LOG_TYPE_INFO, "currentPlaybackAttributes supportedCommands: supportedCommand=%d", buf, 8u);
          }

          switch(v56)
          {
            case 26:
              v65 = MRMediaRemoteCommandInfoCopyValueForKey();
              v69 = gLogObjects;
              v70 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v71 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v109 = v69;
                  *&v109[8] = 1024;
                  *&v109[10] = v70;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v77 = v54;
                v71 = v54;
              }

              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v109 = 26;
                *&v109[4] = 2112;
                *&v109[6] = v65;
                _os_log_impl(&dword_233600000, v71, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, ShuffleMode=%@", buf, 0x12u);
              }

              v73 = convertShuffleMode(v65);
              v74 = dictionary;
              v75 = v73;
              v76 = v98;
              break;
            case 25:
              v65 = MRMediaRemoteCommandInfoCopyValueForKey();
              v66 = gLogObjects;
              v67 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v68 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v109 = v66;
                  *&v109[8] = 1024;
                  *&v109[10] = v67;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v72 = v54;
                v68 = v54;
              }

              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v109 = 25;
                *&v109[4] = 2112;
                *&v109[6] = v65;
                _os_log_impl(&dword_233600000, v68, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, RepeastMode=%@", buf, 0x12u);
              }

              v73 = convertRepeatMode(v65);
              v74 = dictionary;
              v75 = v73;
              v76 = v100;
              break;
            case 24:
              v62 = gLogObjects;
              v63 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v64 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v109 = v62;
                  *&v109[8] = 1024;
                  *&v109[10] = v63;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v78 = v54;
                v64 = v54;
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v109 = 24;
                _os_log_impl(&dword_233600000, v64, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, SetTimeElpasedAvailable", buf, 8u);
              }

              v65 = [MEMORY[0x277CCABB0] numberWithBool:1];
              [dictionary setObject:v65 forKey:v96];
              goto LABEL_90;
            default:
              continue;
          }

          [v74 setObject:v75 forKey:v76];

LABEL_90:
          continue;
        }
      }

      v52 = [(NSArray *)v50 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v52);
  }

  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)selfCopy cachedPlaybackAttributes];

  if (!cachedPlaybackAttributes)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v80 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v80 = MEMORY[0x277D86220];
      v81 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin currentPlaybackAttributes];
    }

    [(ACCNowPlayingFeaturePlugin *)selfCopy setCachedPlaybackAttributes:dictionary];
  }

  v82 = [dictionary copy];

  v83 = *MEMORY[0x277D85DE8];

  return v82;
}

- (BOOL)setPlaybackElapsedTime:(id)time
{
  v11 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = timeCopy;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "Received set playback elapsed time: %@", &v9, 0xCu);
  }

  [timeCopy unsignedLongValue];
  MRMediaRemoteSetElapsedTime();

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setPlaybackQueueIndex:(id)index
{
  v22 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = indexCopy;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "Received set playback queue index: %@", buf, 0xCu);
  }

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke;
  block[3] = &unk_2789E4DD8;
  block[4] = self;
  v14 = indexCopy;
  v15 = &v16;
  v9 = indexCopy;
  dispatch_sync(queue, block);

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  if (v2)
  {
    v3 = (a1 + 40);
    v4 = [v2 nowPlayingItemAtIndex:{objc_msgSend(*(a1 + 40), "unsignedLongValue")}];
    if (v4)
    {
      [v2 setNowPlayingItem:v4];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v7 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_4();
    }
  }
}

- (void)requestPlaybackQueueListInfo:(id)info requestID:(id)d startIndex:(unsigned int)index upToCount:(unsigned int)count infoMask:(unsigned int)mask
{
  v52 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v15 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C0]];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  intValue = [(ACCSettingsState *)self->_maxPlaybackQueueInfoCount intValue];
  if (intValue >= 1 && ((v18 = intValue, intValue >= count) ? (v19 = count == 0) : (v19 = 1), v19 ? (v20 = unsignedIntegerValue > intValue) : (v20 = 0), v20))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v39 = infoCopy;
      v40 = 2048;
      v41 = v18;
      v42 = 1024;
      indexCopy = count;
      v44 = 1024;
      countCopy2 = unsignedIntegerValue;
      _os_log_impl(&dword_233600000, v27, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: accessoryUID %@, ignore request, maxPlaybackQueueInfoCount=%ld upToCount=%u count=%u !!!!!!!!", buf, 0x22u);
    }
  }

  else
  {
    intValue2 = [(ACCSettingsState *)self->_playbackQueueInfoTimeoutMs intValue];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v23 = v22 * 1000.0;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v39 = infoCopy;
      v40 = 2112;
      v41 = dCopy;
      v42 = 1024;
      indexCopy = index;
      v44 = 1024;
      countCopy2 = count;
      v46 = 1024;
      maskCopy = mask;
      v48 = 2048;
      v49 = intValue2;
      v50 = 2048;
      v51 = v23;
      _os_log_impl(&dword_233600000, v24, OS_LOG_TYPE_DEFAULT, "Received requestPlaybackQueueListInfo: %@ requestID: %@ startIndex: %u upToCount: %u infoMask: 0x%x, playbackQueueInfoTimeoutMs=%ld startTimeMs=%lld", buf, 0x3Cu);
    }

    nowPlayingInfoPBQueueListQ = self->_nowPlayingInfoPBQueueListQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke;
    block[3] = &unk_2789E4EA0;
    block[4] = self;
    v31 = infoCopy;
    maskCopy2 = mask;
    indexCopy2 = index;
    countCopy3 = count;
    v32 = dCopy;
    v33 = v23;
    v34 = intValue2;
    dispatch_async(nowPlayingInfoPBQueueListQ, block);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    goto LABEL_14;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: create new accessory object for accessoryUID %@", buf, 0xCu);
  }

  v3 = [[_ACCNowPlayingPBQUpdateRequestAccessory alloc] initWithAccessoryUID:*(a1 + 40)];
  v8 = *(*(a1 + 32) + 136);
  v9 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 accessoryUID];
  [v8 setObject:v3 forKey:v9];

  if (v3)
  {
LABEL_14:
    v10 = *(a1 + 72);
    v11 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 currentRequestID];
    if (v11)
    {
    }

    else if (*(a1 + 48))
    {
      v16 = [[_ACCNowPlayingPBQUpdateRequest alloc] initWithID:*(a1 + 48) startIndex:*(a1 + 76) upToCount:*(a1 + 80) infoMask:*(a1 + 72) allowNonLibrary:v10 >= 0];
      [(_ACCNowPlayingPBQUpdateRequest *)v16 setStartTimeMs:*(a1 + 56)];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v17 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 40);
        *buf = 138412546;
        v32 = v20;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_233600000, v17, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: %@ created request %@", buf, 0x16u);
      }

      [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 setCurrentRequestID:*(a1 + 48)];
      [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 setCurrentRequest:v16];
      goto LABEL_38;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 138412546;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_233600000, v12, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: requestID %@ already exists for accessory %@, ignore request (should cancel request first)", buf, 0x16u);
    }

    v16 = 0;
LABEL_38:
    v21 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 queue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_184;
    v27[3] = &unk_2789E4E78;
    v22 = *(a1 + 64);
    v27[4] = *(a1 + 32);
    v28 = v3;
    v29 = v16;
    v30 = v22;
    v23 = v16;
    v18 = v3;
    dispatch_async(v21, v27);

    goto LABEL_39;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v18 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 40);
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_233600000, v18, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: failed to find accessory for accessoryUID %@", buf, 0xCu);
  }

LABEL_39:

  v24 = *MEMORY[0x277D85DE8];
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_184(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2;
  v18[3] = &unk_2789E4E28;
  v18[4] = *(a1 + 32);
  v2 = MEMORY[0x2383A73E0](v18);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_188;
  v17[3] = &unk_2789E4E50;
  v3 = *(a1 + 56);
  v17[4] = *(a1 + 32);
  v17[5] = v3;
  v4 = MEMORY[0x2383A73E0](v17);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: call _generatePlaybackQueueItemsWithPropertyList, accessory=%@ request=%@", buf, 0x16u);
  }

  [*(a1 + 32) _generatePlaybackQueueItemsWithPropertyList:*(a1 + 40) request:*(a1 + 48) completionHandler:v2 continueQuery:v4];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 48) startTimeMs];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    *buf = 134218498;
    v20 = (v10 * 1000.0) - v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: finished in %lld ms, accessory=%@ request=%@", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v41 = v9;
    _os_log_impl(&dword_233600000, v12, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: completionCB: %@, reqID=%@ info=%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v13 = *(a1 + 32);
  v14 = *(v13 + 184);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_185;
  block[3] = &unk_2789E4E00;
  v33 = buf;
  block[4] = v13;
  v15 = v7;
  v32 = v15;
  dispatch_sync(v14, block);
  v16 = *(*&buf[8] + 40);
  if (v16)
  {
    v17 = [v16 currentRequestID];
    v18 = [v8 isEqualToString:v17];

    if (v18)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v19 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v19 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138412802;
        v35 = v15;
        v36 = 2112;
        v37 = v8;
        v38 = 2112;
        v39 = v9;
        _os_log_impl(&dword_233600000, v19, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: completionCB: %@, reqID=%@, call playbackQueueListInfoResponse info=%@", v34, 0x20u);
      }

      [*(*(a1 + 32) + 24) playbackQueueListInfoResponse:v15 requestID:v8 info:v9];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2_cold_4();
    }

    v25 = *(a1 + 32);
    v26 = *(v25 + 184);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_186;
    v28[3] = &unk_2789E4DD8;
    v28[4] = v25;
    v29 = v15;
    v30 = buf;
    dispatch_sync(v26, v28);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412290;
      v35 = v15;
      _os_log_impl(&dword_233600000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] requestPlaybackQueueListInfo: completionCB: %@, no accessory obejct to handle completion!", v34, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_185(void *a1)
{
  v2 = [*(a1[4] + 136) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_186(void *a1)
{
  [*(a1[4] + 136) removeObjectForKey:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_188(uint64_t a1, void *a2, void *a3, char a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ((a4 & 0x7F) != 0 || *(a1 + 40) == -1 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v10 = (v9 * 1000.0), *(a1 + 40) + objc_msgSend(v8, "startTimeMs") > v10))
  {
    v11 = 0;
    if (v7 && v8)
    {
      v12 = [v8 requestID];
      v13 = [v7 currentRequestID];
      v11 = [v12 isEqualToString:v13];
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 accessoryUID];
      v17 = [v8 requestID];
      v18 = [v8 startTimeMs];
      v19 = *(a1 + 40);
      v20 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
      v26 = 138413570;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v10;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = [v20 intValue];
      _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: continueCB: %@, request %@ timed out!, start=%lld cur=%lld timeout=%ld !!!!!!!! (SendPartialOnTimeout=%ld)", &v26, 0x3Eu);
    }

    v21 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
    if ([v21 intValue] == 1)
    {
    }

    else
    {
      v22 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
      v23 = [v22 intValue];

      if (v23 != 3)
      {
        v11 = 0;
        goto LABEL_20;
      }
    }

    v11 = 0xFFFFFFFFLL;
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = infoCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_233600000, v10, OS_LOG_TYPE_DEFAULT, "Received cancelRequestPlaybackQueueListInfo: %@ requestID: %@", buf, 0x16u);
  }

  nowPlayingInfoPBQueueListQ = self->_nowPlayingInfoPBQueueListQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke;
  block[3] = &unk_2789E4EC8;
  block[4] = self;
  v16 = infoCopy;
  v17 = dCopy;
  v12 = dCopy;
  v13 = infoCopy;
  dispatch_async(nowPlayingInfoPBQueueListQ, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 136) objectForKey:a1[5]];
  v3 = v2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v2)
  {
    if (v5)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v16 = a1[5];
    v25 = 138412290;
    v26 = v16;
    v17 = "cancelRequestPlaybackQueueListInfo: failed to find accessory for accessoryUID %@";
    v18 = v7;
    v19 = 12;
    goto LABEL_44;
  }

  if (v5)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_2();
  }

  v9 = a1[6];
  v10 = [v3 currentRequestID];
  v11 = [v9 isEqualToString:v10];

  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v11)
  {
    if (v13)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v23 = a1[5];
    v22 = a1[6];
    v25 = 138412546;
    v26 = v22;
    v27 = 2112;
    v28 = v23;
    v17 = "cancelRequestPlaybackQueueListInfo: failed to find requestID %@ for accessory %@";
    v18 = v7;
    v19 = 22;
LABEL_44:
    _os_log_impl(&dword_233600000, v18, OS_LOG_TYPE_DEFAULT, v17, &v25, v19);
LABEL_45:

    goto LABEL_46;
  }

  if (v13)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_5();
  }

  [v3 setCurrentRequestID:0];
  [v3 setCurrentRequest:0];
LABEL_46:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_generatePlaybackQueueItemsWithPropertyList:(id)list request:(id)request completionHandler:(id)handler continueQuery:(id)query
{
  v222 = *MEMORY[0x277D85DE8];
  listCopy = list;
  requestCopy = request;
  handlerCopy = handler;
  queryCopy = query;
  v13 = 0x2812FF000uLL;
  v14 = 0x2812FF000uLL;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    accessoryUID = [listCopy accessoryUID];
    requestID = [requestCopy requestID];
    *buf = 138413314;
    *v206 = accessoryUID;
    *&v206[8] = 2112;
    *v207 = requestID;
    *&v207[8] = 1024;
    *&v207[10] = [requestCopy startIndex];
    v14 = 0x2812FF000uLL;
    *&v207[14] = 1024;
    *&v207[16] = [requestCopy upToCount];
    *&v207[20] = 1024;
    *&v207[22] = [requestCopy infoMask];
    _os_log_impl(&dword_233600000, v17, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@ startIndex: %u upToCount: %u infoMask:%xh", buf, 0x28u);
  }

  v20 = queryCopy[2](queryCopy, listCopy, requestCopy, 0);
  if (v20 > 0)
  {
    measureMemoryUsage = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
    v202 = queryCopy;
    v203 = listCopy;
    if ([measureMemoryUsage BOOLValue])
    {
      memUse = self->_memUse;

      if (!memUse)
      {
        v23 = 0;
LABEL_33:
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        requestID2 = [requestCopy requestID];
        v37 = *MEMORY[0x277CE8430];
        [v35 setObject:requestID2 forKey:*MEMORY[0x277CE8430]];

        if (![(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodApp]|| [(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodRadio]|| [(ACCNowPlayingFeaturePlugin *)self _nowPlayingIsStreaming])
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v38 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v38 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID2 = [v203 accessoryUID];
            [requestCopy requestID];
            v42 = v41 = self;
            *buf = 138412546;
            *v206 = accessoryUID2;
            *&v206[8] = 2112;
            *v207 = v42;
            _os_log_impl(&dword_233600000, v38, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, 3rd party app / streaming, pbqList not available", buf, 0x16u);

            self = v41;
            v14 = 0x2812FF000uLL;
          }

          [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          accessoryUID3 = [v203 accessoryUID];
          requestID3 = [requestCopy requestID];
          handlerCopy[2](handlerCopy, accessoryUID3, requestID3, v35);

          startTime = 0;
LABEL_45:
          unsignedIntegerValue = 0;
LABEL_46:

          measureMemoryUsage2 = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
          if ([measureMemoryUsage2 BOOLValue])
          {
            v47 = self->_memUse;

            queryCopy = v202;
            if (v47)
            {
              [(ACCMemUsageStat *)self->_memUse update];
              v48 = *(v13 + 1984);
              v198 = v35;
              if (v48 && *(v14 + 1976) >= 1)
              {
                v49 = *v48;
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
                }

                v49 = MEMORY[0x277D86220];
                v50 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v195 = startTime;
                selfCopy = self;
                accessoryUID4 = [v203 accessoryUID];
                requestID4 = [requestCopy requestID];
                startIndex = [requestCopy startIndex];
                upToCount = [requestCopy upToCount];
                infoMask = [requestCopy infoMask];
                if (v23)
                {
                  date = [MEMORY[0x277CBEAA8] date];
                  startTime = [v23 startTime];
                  requestID10 = date;
                  [date timeIntervalSinceDate:startTime];
                }

                else
                {
                  v57 = 0;
                }

                v65 = selfCopy->_memUse;
                *buf = 138414338;
                *v206 = accessoryUID4;
                *&v206[8] = 2112;
                *v207 = requestID4;
                *&v207[8] = 1024;
                *&v207[10] = startIndex;
                *&v207[14] = 1024;
                *&v207[16] = upToCount;
                *&v207[20] = 1024;
                *&v207[22] = infoMask;
                *&v207[26] = 2048;
                *&v207[28] = v57;
                *&v207[36] = 1024;
                *&v207[38] = v195;
                *&v207[42] = 1024;
                *&v207[44] = unsignedIntegerValue;
                *&v207[48] = 2112;
                *&v207[50] = v65;
                _os_log_impl(&dword_233600000, v49, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@ startIndex: %u upToCount: %u infoMask: 0x%x, \n  Finished in %f sec, curIndex=%d / %d, memUse:\n%@", buf, 0x48u);
                if (v23)
                {
                }

                queryCopy = v202;
                self = selfCopy;
                v14 = 0x2812FF000uLL;
                v13 = 0x2812FF000uLL;
              }

              v66 = *(v13 + 1984);
              if (v66 && *(v14 + 1976) >= 1)
              {
                v67 = *v66;
                v35 = v198;
              }

              else
              {
                v35 = v198;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
                }

                v67 = MEMORY[0x277D86220];
                v68 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v206 = v23;
                _os_log_impl(&dword_233600000, v67, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: markStat: \nmark: \n%@", buf, 0xCu);
              }

              [(ACCMemUsageStat *)self->_memUse removeMark:@"npPbqUpdateMark"];
              v23 = 0;
            }
          }

          else
          {

            queryCopy = v202;
          }

          listCopy = v203;
          goto LABEL_84;
        }

        cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
        v59 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C0]];
        unsignedIntegerValue = [v59 unsignedIntegerValue];

        cachedPlaybackAttributes2 = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
        v61 = [cachedPlaybackAttributes2 objectForKey:*MEMORY[0x277CE83C8]];
        startTime = [v61 unsignedIntegerValue];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v62 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
          }

          v62 = MEMORY[0x277D86220];
          v63 = MEMORY[0x277D86220];
        }

        v196 = startTime;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          accessoryUID5 = [v203 accessoryUID];
          [requestCopy requestID];
          v157 = v23;
          v159 = v158 = self;
          *buf = 138413058;
          *v206 = accessoryUID5;
          *&v206[8] = 2112;
          *v207 = v159;
          *&v207[8] = 1024;
          *&v207[10] = unsignedIntegerValue;
          *&v207[14] = 1024;
          *&v207[16] = v196;
          _os_log_debug_impl(&dword_233600000, v62, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, count=%d curIndex=%d", buf, 0x22u);

          self = v158;
          v23 = v157;
          startTime = v196;
        }

        if (!unsignedIntegerValue)
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v70 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v70 = MEMORY[0x277D86220];
            v73 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID6 = [v203 accessoryUID];
            [requestCopy requestID];
            v76 = v75 = self;
            *buf = 138412546;
            *v206 = accessoryUID6;
            *&v206[8] = 2112;
            *v207 = v76;
            _os_log_impl(&dword_233600000, v70, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, No QueueCount", buf, 0x16u);

            self = v75;
            v14 = 0x2812FF000uLL;
            startTime = v196;
          }

          [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          accessoryUID3 = [v203 accessoryUID];
          requestID5 = [requestCopy requestID];
          handlerCopy[2](handlerCopy, accessoryUID3, requestID5, v35);

          goto LABEL_45;
        }

        if (v202[2](v202, v203, requestCopy, 0) < 1)
        {
          accessoryUID3 = logObjectForModule();
          if (os_log_type_enabled(accessoryUID3, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID7 = [v203 accessoryUID];
            requestID6 = [requestCopy requestID];
            *buf = 138412546;
            *v206 = accessoryUID7;
            *&v206[8] = 2112;
            *v207 = requestID6;
            _os_log_impl(&dword_233600000, accessoryUID3, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB false before retrieve list, skip processing.", buf, 0x16u);
          }

          goto LABEL_46;
        }

        v182 = v37;
        v199 = v35;
        accessoryUID3 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([requestCopy upToCount])
        {
          startIndex2 = [requestCopy startIndex];
        }

        else
        {
          startIndex2 = 0;
        }

        upToCount2 = [requestCopy upToCount];
        v79 = unsignedIntegerValue;
        v80 = unsignedIntegerValue;
        if (upToCount2)
        {
          upToCount3 = [requestCopy upToCount];
          v79 = unsignedIntegerValue;
          v80 = unsignedIntegerValue;
          if (upToCount3 < unsignedIntegerValue)
          {
            upToCount4 = [requestCopy upToCount];
            v79 = unsignedIntegerValue;
            v80 = upToCount4;
          }
        }

        v83 = v79 - startIndex2;
        LODWORD(requestID10) = v80;
        if (v83 >= v80)
        {
          v84 = v80;
        }

        else
        {
          v84 = v83;
        }

        v189 = v84;
        v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
        v183 = *MEMORY[0x277CE8418];
        [v35 setObject:v85 forKey:?];

        v188 = startIndex2;
        v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
        [v35 setObject:v86 forKey:*MEMORY[0x277CE8438]];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v87 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
          }

          v87 = MEMORY[0x277D86220];
          v88 = MEMORY[0x277D86220];
        }

        v185 = v23;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          startTime2 = [v23 startTime];
          [startTime2 timeIntervalSince1970];
          *buf = 134218240;
          *v206 = unsignedIntegerValue;
          *&v206[8] = 2048;
          *v207 = v90;
          _os_log_impl(&dword_233600000, v87, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: Start retrieving queued track info: count=%lu startTimeInterval=%f", buf, 0x16u);
        }

        if (v202[2](v202, v203, requestCopy, 0) >= 1 && +[ACCNowPlayingFeaturePlugin isMusicAppVisible])
        {
          v91 = logObjectForModule();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            *v206 = startIndex2;
            *&v206[4] = 1024;
            *&v206[6] = requestID10;
            *v207 = 1024;
            *&v207[2] = v189;
            *&v207[6] = 1024;
            *&v207[8] = v189 + startIndex2;
            _os_log_debug_impl(&dword_233600000, v91, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: startIndex=%d contentSize=%d contentCount=%d endIndex=%d", buf, 0x1Au);
          }

          mpMusicPlayerControllerHandler = [(ACCNowPlayingFeaturePlugin *)self mpMusicPlayerControllerHandler];
          v184 = v35 == 0;
          v186 = mpMusicPlayerControllerHandler;
          if (v189)
          {
            v192 = 0;
            v93 = 0;
            v94 = "exist";
            if (!mpMusicPlayerControllerHandler)
            {
              v94 = "null";
            }

            v181 = v94;
            v95 = 1;
            while (1)
            {
              if (v202[2](v202, v203, requestCopy, v93) <= 0)
              {
                goto LABEL_200;
              }

              v96 = [v186 nowPlayingItemAtIndex:?];
              v97 = gLogObjects;
              v98 = gNumLogObjects;
              v99 = !gLogObjects || gNumLogObjects < 1;
              requestID10 = v96;
              if (v99)
              {
                v100 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v206 = v97;
                  *&v206[8] = 1024;
                  *v207 = v98;
                  _os_log_error_impl(&dword_233600000, v100, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v101 = v100;
                v103 = v100;
                v102 = requestID10;
              }

              else
              {
                v102 = v96;
                v103 = *gLogObjects;
              }

              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218496;
                *v206 = v93;
                *&v206[8] = 2048;
                *v207 = v188 + v93;
                *&v207[8] = 1024;
                *&v207[10] = unsignedIntegerValue;
                _os_log_debug_impl(&dword_233600000, v103, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d]", buf, 0x1Cu);
              }

              v190 = v102 != 0;
              if (!v102)
              {
                break;
              }

              if (![v102 persistentID] || (objc_msgSend(v102, "existsInLibrary") & 1) == 0)
              {
                allowNonLibrary = [requestCopy allowNonLibrary];
                v105 = gLogObjects;
                v106 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v107 = *gLogObjects;
                }

                else
                {
                  v111 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v206 = v105;
                    *&v206[8] = 1024;
                    *v207 = v106;
                    _os_log_error_impl(&dword_233600000, v111, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v112 = v111;
                  v107 = v111;
                  v102 = requestID10;
                }

                if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                {
                  title = [v102 title];
                  persistentID = [v102 persistentID];
                  *buf = 134219010;
                  *v206 = v93;
                  *&v206[8] = 2048;
                  *v207 = unsignedIntegerValue;
                  *&v207[8] = 2112;
                  *&v207[10] = v102;
                  *&v207[18] = 2112;
                  *&v207[20] = title;
                  *&v207[28] = 2048;
                  *&v207[30] = persistentID;
                  _os_log_impl(&dword_233600000, v107, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: i=%lu/%lu Found non-library item %@ (%@ : %llu)", buf, 0x34u);
                }

                v95 &= allowNonLibrary;

                v192 = 1;
                v35 = v199;
              }

              if ((v95 & 1) != 0 && v35)
              {
                v115 = gLogObjects;
                v116 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v117 = *gLogObjects;
                }

                else
                {
                  v117 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v206 = v115;
                    *&v206[8] = 1024;
                    *v207 = v116;
                    _os_log_error_impl(&dword_233600000, v117, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v119 = v117;
                }

                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                {
                  persistentID2 = [v102 persistentID];
                  title2 = [v102 title];
                  artist = [v102 artist];
                  albumTitle = [v102 albumTitle];
                  *buf = 134219522;
                  *v206 = v93;
                  *&v206[8] = 2048;
                  *v207 = v188 + v93;
                  *&v207[8] = 1024;
                  *&v207[10] = unsignedIntegerValue;
                  *&v207[14] = 2048;
                  *&v207[16] = persistentID2;
                  *&v207[24] = 2112;
                  *&v207[26] = title2;
                  *&v207[34] = 2112;
                  *&v207[36] = artist;
                  *&v207[44] = 2112;
                  *&v207[46] = albumTitle;
                  _os_log_debug_impl(&dword_233600000, v117, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d]   mediaItem:(pid=%llu title='%@' artist='%@' album='%@')", buf, 0x44u);
                }

                v110 = +[ACCNowPlayingFeaturePlugin getItemDictionaryForContentItem:infoMask:](ACCNowPlayingFeaturePlugin, "getItemDictionaryForContentItem:infoMask:", v102, [requestCopy infoMask]);
                [accessoryUID3 addObject:v110];
LABEL_162:

                v95 = v190;
              }

              measureMemoryUsage3 = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
              startTime = v196;
              if (![measureMemoryUsage3 BOOLValue])
              {
                goto LABEL_171;
              }

              v121 = self->_memUse;

              if (v121 && ((v93 & 0x7F) == 0 || unsignedIntegerValue - 1 == v93))
              {
                [(ACCMemUsageStat *)self->_memUse update];
                if (v185)
                {
                  [v185 timeIntervalSinceLastUpdate];
                  if (v122 >= 1.0)
                  {
                    measureMemoryUsage3 = logObjectForModule();
                    if (os_log_type_enabled(measureMemoryUsage3, OS_LOG_TYPE_DEBUG))
                    {
                      residentMem = [v185 residentMem];
                      last = [residentMem last];
                      residentMem2 = [v185 residentMem];
                      v126 = [residentMem2 last] / 1000000.0;
                      residentMem3 = [v185 residentMem];
                      v173 = [residentMem3 max];
                      residentMem4 = [v185 residentMem];
                      v127 = [residentMem4 max] / 1000000.0;
                      virtualMem = [v185 virtualMem];
                      last2 = [virtualMem last];
                      virtualMem2 = [v185 virtualMem];
                      v128 = [virtualMem2 last] / 1000000.0;
                      virtualMem3 = [v185 virtualMem];
                      v168 = [virtualMem3 max];
                      virtualMem4 = [v185 virtualMem];
                      v129 = [virtualMem4 max] / 1000000.0;
                      physFootprintMem = [v185 physFootprintMem];
                      last3 = [physFootprintMem last];
                      physFootprintMem2 = [v185 physFootprintMem];
                      v130 = [physFootprintMem2 last] / 1000000.0;
                      physFootprintMem3 = [v185 physFootprintMem];
                      v166 = [physFootprintMem3 max];
                      physFootprintMem4 = [v185 physFootprintMem];
                      v133 = [physFootprintMem4 max];
                      *buf = 134221568;
                      *v206 = v93;
                      *&v206[8] = 1024;
                      *v207 = v189;
                      *&v207[4] = 1024;
                      *&v207[6] = unsignedIntegerValue;
                      *&v207[10] = 2048;
                      *&v207[12] = last;
                      *&v207[20] = 2048;
                      *&v207[22] = v126;
                      *&v207[30] = 2048;
                      *&v207[32] = v173;
                      *&v207[40] = 2048;
                      *&v207[42] = v127;
                      *&v207[50] = 2048;
                      *&v207[52] = last2;
                      v208 = 2048;
                      v209 = v128;
                      v210 = 2048;
                      v211 = v168;
                      v212 = 2048;
                      v213 = v129;
                      v214 = 2048;
                      v215 = last3;
                      v216 = 2048;
                      v217 = v130;
                      v218 = 2048;
                      v219 = v166;
                      v220 = 2048;
                      v221 = v133 / 1000000.0;
                      _os_log_debug_impl(&dword_233600000, measureMemoryUsage3, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu / %d / %d, memUse[resident=%llu(%.3fM)/%llu(%.3fM) virtual=%llu(%.3fM)/%llu(%.3fM) physFootprint=%llu(%.3fM)/=%llu(%.3fM)]", buf, 0x90u);
                    }

LABEL_171:
                  }
                }
              }

              if (v192 & v184)
              {
                v35 = v199;
                goto LABEL_200;
              }

              ++v93;
              v35 = v199;
              if (v93 >= v189 || ((v95 ^ 1) & 1) != 0)
              {
                goto LABEL_200;
              }
            }

            v108 = gLogObjects;
            v109 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v110 = *gLogObjects;
            }

            else
            {
              v110 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v206 = v108;
                *&v206[8] = 1024;
                *v207 = v109;
                _os_log_error_impl(&dword_233600000, v110, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v118 = v110;
            }

            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219266;
              *v206 = v93;
              *&v206[8] = 2048;
              *v207 = v188 + v93;
              *&v207[8] = 1024;
              *&v207[10] = unsignedIntegerValue;
              *&v207[14] = 2048;
              *&v207[16] = unsignedIntegerValue;
              *&v207[24] = 2048;
              *&v207[26] = v93;
              *&v207[34] = 2080;
              *&v207[36] = v181;
              _os_log_impl(&dword_233600000, v110, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d] Unexpected end of playback queue list, expected count=%lu but only got to index=%lu, systemMusicPlayer = %s", buf, 0x3Au);
            }

            v192 = 1;
            goto LABEL_162;
          }

          LOBYTE(v192) = 0;
          LOBYTE(v95) = 1;
LABEL_200:
          v160 = logObjectForModule();
          if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
          {
            v161 = [accessoryUID3 count];
            *buf = 134218752;
            *v206 = unsignedIntegerValue;
            *&v206[8] = 1024;
            *v207 = v192 & 1;
            *&v207[4] = 1024;
            *&v207[6] = v95 & 1;
            startTime = v196;
            v35 = v199;
            *&v207[10] = 2048;
            *&v207[12] = v161;
            _os_log_impl(&dword_233600000, v160, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: after iteration, count=%lu foundNonLibrary=%d pbqListAvailable=%d metaList.count=%lu", buf, 0x22u);
          }

          v13 = 0x2812FF000;
          if ((v95 & 1) == 0)
          {
            [v35 removeAllObjects];
            requestID7 = [requestCopy requestID];
            [v35 setObject:requestID7 forKey:v182];

            [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          }

          v163 = v202[2](v202, v203, requestCopy, 0);
          if (v163)
          {
            if ((v95 & 1) == 0)
            {
              v147 = 0;
LABEL_196:
              v148 = logObjectForModule();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
              {
                v149 = [accessoryUID3 count];
                [v199 objectForKey:v183];
                v151 = v150 = self;
                unsignedLongValue = [v151 unsignedLongValue];
                [v185 timeIntervalSinceStart];
                *buf = 134219008;
                *v206 = v149;
                *&v206[8] = 2048;
                *v207 = unsignedLongValue;
                *&v207[8] = 1024;
                *&v207[10] = v192 & 1;
                startTime = v196;
                *&v207[14] = 1024;
                *&v207[16] = v147;
                *&v207[20] = 2048;
                *&v207[22] = v153;
                _os_log_impl(&dword_233600000, v148, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: End retrieving queued track items (count=%lu(req'd=%lu), foundNonLibrary=%d pbqListAvailable=%d): timeSinceStart=%f", buf, 0x2Cu);

                self = v150;
              }

              accessoryUID8 = [v203 accessoryUID];
              requestID8 = [requestCopy requestID];
              handlerCopy[2](handlerCopy, accessoryUID8, requestID8, v199);

              v14 = 0x2812FF000;
LABEL_209:
              v23 = v185;

              v35 = v199;
              goto LABEL_46;
            }

            v138 = v163;
LABEL_186:
            playbackQueueInfoSendPartialOnTimeout = [(ACCNowPlayingFeaturePlugin *)self playbackQueueInfoSendPartialOnTimeout];
            if ([playbackQueueInfoSendPartialOnTimeout intValue] == 3)
            {
              v140 = [accessoryUID3 count];

              if (v140 >= v189)
              {
LABEL_193:
                [v199 setObject:accessoryUID3 forKey:*MEMORY[0x277CE8420]];
                v145 = [MEMORY[0x277CCABB0] numberWithBool:v192 & 1];
                [v199 setObject:v145 forKey:*MEMORY[0x277CE8428]];

                [v199 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE8410]];
                if (v138 < 0)
                {
                  v146 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[NSObject count](accessoryUID3, "count")}];
                  [v199 setObject:v146 forKey:v183];
                }

                v147 = 1;
                goto LABEL_196;
              }

              v141 = logObjectForModule();
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                v142 = [accessoryUID3 count];
                *buf = 134217984;
                *v206 = v189 - v142;
                _os_log_impl(&dword_233600000, v141, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: list not full, fill %lu items with 0 pid!", buf, 0xCu);
              }

              playbackQueueInfoSendPartialOnTimeout = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{&unk_2848EBE28, *MEMORY[0x277CE8468], 0}];
              v143 = [accessoryUID3 count];
              v144 = v189 - v143;
              if (v189 > v143)
              {
                do
                {
                  [accessoryUID3 addObject:playbackQueueInfoSendPartialOnTimeout];
                  --v144;
                }

                while (v144);
              }
            }

            goto LABEL_193;
          }
        }

        else
        {
          v13 = 0x2812FF000uLL;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v134 = *gLogObjects;
            v135 = v203;
          }

          else
          {
            v135 = v203;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v134 = MEMORY[0x277D86220];
            v136 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_233600000, v134, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: no systemMusicPlayer!", buf, 2u);
          }

          v137 = v202[2](v202, v135, requestCopy, 0);
          if (v137)
          {
            v138 = v137;
            LOBYTE(v192) = 0;
            goto LABEL_186;
          }
        }

        accessoryUID8 = logObjectForModule();
        if (os_log_type_enabled(accessoryUID8, OS_LOG_TYPE_DEFAULT))
        {
          accessoryUID9 = [v203 accessoryUID];
          requestID9 = [requestCopy requestID];
          *buf = 138412546;
          *v206 = accessoryUID9;
          *&v206[8] = 2112;
          *v207 = requestID9;
          _os_log_impl(&dword_233600000, accessoryUID8, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB false attempting to retrieve list, skip processing.", buf, 0x16u);
        }

        goto LABEL_209;
      }

      [(ACCMemUsageStat *)self->_memUse mark:@"npPbqUpdateMark"];
      v23 = [(ACCMemUsageStat *)self->_memUse getMark:@"npPbqUpdateMark"];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        measureMemoryUsage = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        measureMemoryUsage = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(measureMemoryUsage, OS_LOG_TYPE_INFO))
      {
        accessoryUID10 = [listCopy accessoryUID];
        requestID10 = [requestCopy requestID];
        residentMem5 = [v23 residentMem];
        selfCopy2 = self;
        start = [residentMem5 start];
        virtualMem5 = [v23 virtualMem];
        start2 = [virtualMem5 start];
        physFootprintMem5 = [v23 physFootprintMem];
        start3 = [physFootprintMem5 start];
        *buf = 138413314;
        *v206 = accessoryUID10;
        *&v206[8] = 2112;
        *v207 = requestID10;
        *&v207[8] = 2048;
        *&v207[10] = start;
        self = selfCopy2;
        v14 = 0x2812FF000uLL;
        *&v207[18] = 2048;
        *&v207[20] = start2;
        *&v207[28] = 2048;
        *&v207[30] = start3;
        _os_log_impl(&dword_233600000, measureMemoryUsage, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, memUse:[residentStart=%llu virtualStart=%llu ]hysFootprintStart=%llu]", buf, 0x34u);

        v13 = 0x2812FF000uLL;
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_33;
  }

  v24 = v20;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v23 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    accessoryUID11 = [listCopy accessoryUID];
    requestID11 = [requestCopy requestID];
    *buf = 138412802;
    *v206 = accessoryUID11;
    *&v206[8] = 2112;
    *v207 = requestID11;
    *&v207[8] = 1024;
    *&v207[10] = v24;
    _os_log_impl(&dword_233600000, v23, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB=%d, @ enter, skip processing.", buf, 0x1Cu);
  }

LABEL_84:

  v69 = *MEMORY[0x277D85DE8];
}

- (BOOL)_nowPlayingAppIsIPodApp
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v3 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83A8]];

  LOBYTE(cachedPlaybackAttributes) = [v3 BOOLValue];
  return cachedPlaybackAttributes;
}

- (BOOL)_nowPlayingAppIsIPodRadio
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v3 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE8400]];

  if (v3)
  {
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_nowPlayingIsStreaming
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v4 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C8]];

  cachedPlaybackAttributes2 = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v6 = [cachedPlaybackAttributes2 objectForKey:*MEMORY[0x277CE83C0]];

  LODWORD(cachedPlaybackAttributes2) = [v6 unsignedLongValue];
  _nowPlayingAppIsIPodRadio = [(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodRadio];
  v8 = (cachedPlaybackAttributes2 - 0x7FFFFFFF) < 0x80000002 || _nowPlayingAppIsIPodRadio;
  if (v8 && [v4 unsignedLongValue])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin _nowPlayingIsStreaming];
    }
  }

  return v8;
}

- (void)_nowPlayingInfoDebounceTimerKick:(int)kick
{
  v22 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingInfoDebounceTimerRunningMask = self->_nowPlayingInfoDebounceTimerRunningMask;
    v18 = 67109376;
    kickCopy = kick;
    v20 = 1024;
    v21 = nowPlayingInfoDebounceTimerRunningMask;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "_nowPlayingInfoDebounceTimerKick: event = 0x%02x, _nowPlayingInfoDebounceTimerRunningMask = 0x%02x", &v18, 0xEu);
  }

  v9 = self->_nowPlayingInfoDebounceTimerRunningMask;
  if (!kick || v9)
  {
    self->_nowPlayingInfoDebounceTimerRunningMask = v9 | kick;
  }

  else
  {
    self->_nowPlayingInfoDebounceTimerRunningMask = kick;
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    nowPlayingInfoDebounceTimer = self->_nowPlayingInfoDebounceTimer;
    v12 = dispatch_time(0, 1000000 * intValue);
    if (intValue <= 1000)
    {
      v13 = 1000000 * (intValue / 10);
    }

    else
    {
      v13 = 100000000;
    }

    dispatch_source_set_timer(nowPlayingInfoDebounceTimer, v12, 0xFFFFFFFFFFFFFFFFLL, v13);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = self->_nowPlayingInfoDebounceTimerRunningMask;
    v18 = 67109376;
    kickCopy = v9;
    v20 = 1024;
    v21 = v16;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_INFO, "_nowPlayingInfoDebounceTimerKick: _nowPlayingInfoDebounceTimerRunningMask 0x%02x -> 0x%02x", &v18, 0xEu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_nowPlayingInfoDebounceTimerStop:(int)stop
{
  v18 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingInfoDebounceTimerRunningMask = self->_nowPlayingInfoDebounceTimerRunningMask;
    v14 = 67109376;
    stopCopy = stop;
    v16 = 1024;
    v17 = nowPlayingInfoDebounceTimerRunningMask;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "_nowPlayingInfoDebounceTimerStop: event = 0x%02x, _nowPlayingInfoDebounceTimerRunningMask = 0x%02x", &v14, 0xEu);
  }

  v9 = self->_nowPlayingInfoDebounceTimerRunningMask;
  self->_nowPlayingInfoDebounceTimerRunningMask = v9 & ~stop;
  if ((v9 & ~stop) == 0)
  {
    dispatch_source_set_timer(self->_nowPlayingInfoDebounceTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = self->_nowPlayingInfoDebounceTimerRunningMask;
    v14 = 67109376;
    stopCopy = v9;
    v16 = 1024;
    v17 = v12;
    _os_log_impl(&dword_233600000, v10, OS_LOG_TYPE_INFO, "_nowPlayingInfoDebounceTimerStop: _nowPlayingInfoDebounceTimerRunningMask 0x%02x -> 0x%02x", &v14, 0xEu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isMusicAppVisible
{
  if (GetMediaLibraryHelper___mediaLibraryHelperInitOnce != -1)
  {
    +[ACCNowPlayingFeaturePlugin isMusicAppVisible];
  }

  v3 = GetMediaLibraryHelper___mediaLibraryHelper;

  return [v3 showMusic];
}

+ (id)getItemDictionaryForContentItem:(id)item infoMask:(unsigned int)mask
{
  itemCopy = item;
  v6 = 0;
  if (!itemCopy || !mask)
  {
    goto LABEL_33;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = 0;
  v20 = *MEMORY[0x277CE8458];
  v21 = *MEMORY[0x277CD5710];
  v8 = *MEMORY[0x277CD5750];
  v27 = *MEMORY[0x277CE8460];
  v9 = *MEMORY[0x277CD56B8];
  v26 = *MEMORY[0x277CE8440];
  v10 = *MEMORY[0x277CD56E8];
  v25 = *MEMORY[0x277CE8450];
  v11 = *MEMORY[0x277CD56D0];
  v24 = *MEMORY[0x277CE8448];
  v12 = *MEMORY[0x277CD58B8];
  v23 = *MEMORY[0x277CE8470];
  v22 = *MEMORY[0x277CE8468];
  while (1)
  {
    if (((mask >> v7) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v7 > 11)
    {
      break;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v13 = [itemCopy valueForProperty:v12];
        if (v13)
        {
          v14 = v6;
          v15 = v13;
          v16 = v23;
LABEL_25:
          [v14 setObject:v15 forKey:{v16, v20}];
        }

LABEL_26:

        goto LABEL_27;
      }

      if (v7 == 6)
      {
        v13 = [itemCopy valueForProperty:v11];
        if (v13)
        {
          v14 = v6;
          v15 = v13;
          v16 = v24;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      persistentID = [itemCopy persistentID];
      if (persistentID)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
        v14 = v6;
        v15 = v13;
        v16 = v22;
        goto LABEL_25;
      }
    }

LABEL_27:
    if (++v7 == 19)
    {
      goto LABEL_33;
    }
  }

  if (v7 <= 15)
  {
    if (v7 == 12)
    {
      v13 = [itemCopy valueForProperty:v10];
      if (v13)
      {
        v14 = v6;
        v15 = v13;
        v16 = v25;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (v7 == 14)
    {
      v13 = [itemCopy valueForProperty:v9];
      if (v13)
      {
        v14 = v6;
        v15 = v13;
        v16 = v26;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v7 == 16)
  {
    v13 = [itemCopy valueForProperty:v8];
    if (v13)
    {
      v14 = v6;
      v15 = v13;
      v16 = v27;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v7 != 18)
  {
    goto LABEL_27;
  }

  v18 = [itemCopy valueForProperty:v21];
  if (v18)
  {
    [v6 setObject:v18 forKey:v20];
  }

LABEL_33:

  return v6;
}

- (void)currentMediaItemAttributes
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)currentMediaItemArtwork
{
  v7 = *MEMORY[0x277D85DE8];
  [self length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)currentPlaybackAttributes
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_nowPlayingIsStreaming
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end