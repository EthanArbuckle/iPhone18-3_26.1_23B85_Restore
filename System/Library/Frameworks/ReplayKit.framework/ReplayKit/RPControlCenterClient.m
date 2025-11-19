@interface RPControlCenterClient
+ (id)sharedInstance;
+ (void)getSystemBroadcastExtensionInfo:(id)a3;
- (BOOL)currentAppUsingCamera;
- (BOOL)fetchIsCallActive;
- (BOOL)getHqlrAudioOnly;
- (BOOL)isAvailableAndInitialized;
- (BOOL)isClientRecordingTypeHQLR;
- (BOOL)isClientRecordingTypeSystemRecording;
- (BOOL)isScreenRecorderAvailable;
- (RPControlCenterClient)init;
- (id)getSessionType;
- (id)imageForBundleID:(id)a3 extensionInfo:(id)a4;
- (void)addDegate:(id)a3;
- (void)broadcastController:(id)a3 didFinishWithError:(id)a4;
- (void)broadcastController:(id)a3 didUpdateBroadcastURL:(id)a4;
- (void)broadcastController:(id)a3 didUpdateServiceInfo:(id)a4;
- (void)callDelegate:(id)a3;
- (void)cancelReadyToRecord;
- (void)cancelRecordingCountdown;
- (void)countdownInterruptWithStatus:(id)a3;
- (void)dealloc;
- (void)endReadyToRecord;
- (void)extensionWithBundleIDExists:(id)a3 handler:(id)a4;
- (void)getSystemBroadcastPickerInfo;
- (void)loadAvailableExtensionsWithHandler:(id)a3;
- (void)notifyClientDelegatesStart:(BOOL)a3;
- (void)recordingTimerDidUpdate:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)replayKitAngelDisconnected;
- (void)requestToCancelReadyToRecord;
- (void)resetBroadcastPickerPreferredExt;
- (void)screenRecorder:(id)a3 didStopRecordingWithPreviewViewController:(id)a4 error:(id)a5;
- (void)screenRecorderDidChangeAvailability:(id)a3;
- (void)screenRecorderDidUpdateState:(id)a3;
- (void)setCountdown:(id)a3;
- (void)setHqlrAudioOnly:(BOOL)a3;
- (void)setRecordingType:(unint64_t)a3;
- (void)setUpFrontBoardServices;
- (void)showRecordingBanner;
- (void)startBroadcastWithBroadcastController:(id)a3 handler:(id)a4;
- (void)startBroadcastWithExtensionBundleID:(id)a3 handler:(id)a4;
- (void)startBroadcastWithHandler:(id)a3;
- (void)startHQLRReadyToRecord:(id)a3;
- (void)startHQLRWithHandler:(id)a3;
- (void)startObservingCallIsActiveStateWithHandler:(id)a3;
- (void)startReadyToRecordBanner;
- (void)startRecordingCountdown;
- (void)startRecordingWithHandler:(id)a3;
- (void)stopCurrentSession;
- (void)stopCurrentSession:(id)a3;
- (void)stopHQLRRecordingWithHandler:(id)a3;
- (void)stopObservingCallIsActiveState;
- (void)stopReadyToRecordBanner;
- (void)stopRecordingCalled;
- (void)stopSystemRecordingWithHandler:(id)a3;
- (void)terminateAngelRecordingSession;
- (void)updateCallActive:(id)a3;
- (void)updateClientState;
- (void)updateStatusIsCountingDown:(BOOL)a3 IsRecording:(BOOL)a4;
@end

@implementation RPControlCenterClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RPControlCenterClient sharedInstance];
  }

  v3 = sharedInstance__sharedClient;

  return v3;
}

uint64_t __39__RPControlCenterClient_sharedInstance__block_invoke()
{
  sharedInstance__sharedClient = objc_alloc_init(RPControlCenterClient);

  return MEMORY[0x2821F96F8]();
}

- (RPControlCenterClient)init
{
  v37 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = RPControlCenterClient;
  v2 = [(RPControlCenterClient *)&v28 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    delegates = v2->_delegates;
    v2->_delegates = v3;

    currentTimerString = v2->_currentTimerString;
    v2->_currentTimerString = 0;

    v2->_isInitialized = 0;
    v6 = +[RPScreenRecorder sharedRecorder];
    screenRecorder = v2->_screenRecorder;
    v2->_screenRecorder = v6;

    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v2->_screenRecorder;
      *buf = 136446978;
      v30 = "[RPControlCenterClient init]";
      v31 = 1024;
      v32 = 89;
      v33 = 2048;
      v34 = v2;
      v35 = 2048;
      v36 = v8;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPControlCenterClient=%p RPScreenRecorder=%p", buf, 0x26u);
    }

    [(RPScreenRecorder *)v2->_screenRecorder setDelegate:v2];
    [(RPScreenRecorder *)v2->_screenRecorder setPrivateDelegate:v2];
    [(RPScreenRecorder *)v2->_screenRecorder setSystemRecording:1];
    v9 = [[RPBroadcastController alloc] initWithCurrentSession];
    broadcastController = v2->_broadcastController;
    v2->_broadcastController = v9;

    [(RPBroadcastController *)v2->_broadcastController setDelegate:v2];
    v2->_microphoneOn = [(RPScreenRecorder *)v2->_screenRecorder isMicrophoneEnabled];
    extensionBundleID = v2->_extensionBundleID;
    v2->_extensionBundleID = @"com.apple.replaykit.recordToCameraRoll";

    cameraDeviceID = v2->_cameraDeviceID;
    v2->_cameraDeviceID = @"screen";

    microphoneDeviceID = v2->_microphoneDeviceID;
    v2->_microphoneDeviceID = @"defaultAudio";

    v2->_broadcastMode = 0;
    v2->_recordingType = 0;
    [(RPControlCenterClient *)v2 updateStatusIsCountingDown:0 IsRecording:[(RPScreenRecorder *)v2->_screenRecorder isRecording]];
    v14 = [MEMORY[0x277CBEAA8] distantPast];
    pickerInfoCacheTime = v2->_pickerInfoCacheTime;
    v2->_pickerInfoCacheTime = v14;

    v16 = [MEMORY[0x277CBEAA8] distantPast];
    extensionCacheTime = v2->_extensionCacheTime;
    v2->_extensionCacheTime = v16;

    v18 = objc_opt_new();
    iconImageCache = v2->_iconImageCache;
    v2->_iconImageCache = v18;

    v20 = dispatch_queue_create("com.apple.replaykit.controlcenterclient", 0);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v20;

    v2->_countdownPaused = 0;
    countdownState = v2->_countdownState;
    v2->_countdownState = @"Countdown3";

    [(RPControlCenterClient *)v2 startObservingCallIsActiveStateWithHandler:0];
    [(RPControlCenterClient *)v2 setHighQualityLocalRecordingReady:0];
    readyToRecordTimer = v2->_readyToRecordTimer;
    v2->_readyToRecordTimer = 0;

    [(RPControlCenterClient *)v2 setUpFrontBoardServices];
    v24 = [[RPBackgroundActivity alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.replaykit.callrecording.ready"];
    readyToRecordBackgroundActivity = v2->_readyToRecordBackgroundActivity;
    v2->_readyToRecordBackgroundActivity = v24;

    v2->_hqlrAudioOnly = [(RPControlCenterClient *)v2 getHqlrAudioOnly];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPControlCenterClient dealloc]";
    v11 = 1024;
    v12 = 122;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  delegates = self->_delegates;
  self->_delegates = 0;

  broadcastController = self->_broadcastController;
  self->_broadcastController = 0;

  [(RPScreenRecorder *)self->_screenRecorder setDelegate:0];
  [(RPScreenRecorder *)self->_screenRecorder setPrivateDelegate:0];
  screenRecorder = self->_screenRecorder;
  self->_screenRecorder = 0;

  layoutMonitor = self->_layoutMonitor;
  if (layoutMonitor)
  {
    [(FBSDisplayLayoutMonitor *)layoutMonitor invalidate];
  }

  v8.receiver = self;
  v8.super_class = RPControlCenterClient;
  [(RPControlCenterClient *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[RPControlCenterClient addDegate:]";
    v8 = 1024;
    v9 = 136;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p", &v6, 0x26u);
  }

  [(NSPointerArray *)self->_delegates addPointer:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "[RPControlCenterClient removeDelegate:]";
    v11 = 1024;
    v12 = 141;
    v13 = 2048;
    v14 = self;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p", &v9, 0x26u);
  }

  v5 = [(NSPointerArray *)self->_delegates count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while ([(NSPointerArray *)self->_delegates pointerAtIndex:v7]!= v4)
    {
      if (v6 == ++v7)
      {
        goto LABEL_10;
      }
    }

    [(NSPointerArray *)self->_delegates removePointerAtIndex:v7];
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)callDelegate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSPointerArray *)self->_delegates allObjects];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277D85CD0];
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __38__RPControlCenterClient_callDelegate___block_invoke;
        v14[3] = &unk_278B61CF8;
        v12 = v4;
        v14[4] = v11;
        v15 = v12;
        dispatch_async(v9, v14);

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUpFrontBoardServices
{
  v3 = +[RPFeatureFlagUtility sharedInstance];
  v4 = [v3 alwaysOnDisplayEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [v5 setNeedsUserInteractivePriority:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__RPControlCenterClient_setUpFrontBoardServices__block_invoke;
    v8[3] = &unk_278B61D20;
    v8[4] = self;
    [v5 setTransitionHandler:v8];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v5];
    layoutMonitor = self->_layoutMonitor;
    self->_layoutMonitor = v6;
  }
}

void __48__RPControlCenterClient_setUpFrontBoardServices__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 displayBacklightLevel])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 136446978;
      v10 = "[RPControlCenterClient setUpFrontBoardServices]_block_invoke_2";
      v11 = 1024;
      v12 = 178;
      v13 = 2048;
      v14 = v5;
      v15 = 1024;
      v16 = [v4 displayBacklightLevel];
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Display layout updated displayBacklightLevel=%d", buf, 0x22u);
    }
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136446722;
      v10 = "[RPControlCenterClient setUpFrontBoardServices]_block_invoke";
      v11 = 1024;
      v12 = 169;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Display layout updated to minimum backlight", buf, 0x1Cu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__RPControlCenterClient_setUpFrontBoardServices__block_invoke_25;
    block[3] = &unk_278B61B70;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __48__RPControlCenterClient_setUpFrontBoardServices__block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[155] == 1)
  {
    [v2 cancelRecordingCountdown];
    [*(a1 + 32) notifyClientDelegatesStart:0];
    v2 = *(a1 + 32);
  }

  return [v2 terminateAngelRecordingSession];
}

- (void)loadAvailableExtensionsWithHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPControlCenterClient loadAvailableExtensionsWithHandler:]";
    v11 = 1024;
    v12 = 187;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RPControlCenterClient_loadAvailableExtensionsWithHandler___block_invoke;
  v7[3] = &unk_278B61D70;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPControlCenterClient_loadAvailableExtensionsWithHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 48) timeIntervalSinceNow];
  v3 = v2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[RPControlCenterClient loadAvailableExtensionsWithHandler:]_block_invoke";
    v17 = 1024;
    v18 = 191;
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d time since cache = %f", buf, 0x1Cu);
  }

  if (v3 >= -0.5)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136446722;
      v16 = "[RPControlCenterClient loadAvailableExtensionsWithHandler:]_block_invoke";
      v17 = 1024;
      v18 = 201;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p get cached availableExtensions", buf, 0x1Cu);
    }

    v11 = *(*(a1 + 32) + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 136446722;
      v16 = "[RPControlCenterClient loadAvailableExtensionsWithHandler:]_block_invoke";
      v17 = 1024;
      v18 = 193;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p fetching new copy of broadcast extensions.", buf, 0x1Cu);
    }

    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v8 = +[RPDaemonProxy daemonProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__RPControlCenterClient_loadAvailableExtensionsWithHandler___block_invoke_30;
    v13[3] = &unk_278B61D48;
    v9 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v9;
    [v8 getSystemBroadcastExtensionInfo:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__RPControlCenterClient_loadAvailableExtensionsWithHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 136446722;
    v13 = "[RPControlCenterClient loadAvailableExtensionsWithHandler:]_block_invoke";
    v14 = 1024;
    v15 = 196;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p fetched new copy of broadcast extensions", &v12, 0x1Cu);
  }

  v8 = [v5 copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)getHqlrAudioOnly
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterClient getHqlrAudioOnly]";
    v7 = 1024;
    v8 = 208;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting audio only value", &v5, 0x12u);
  }

  v2 = CFPreferencesCopyAppValue(@"RPAudioOnlySelection", @"com.apple.replayd");
  if (v2)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446722;
      v6 = "[RPControlCenterClient getHqlrAudioOnly]";
      v7 = 1024;
      v8 = 215;
      v9 = 1024;
      v10 = 1;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Found audio only location: %d", &v5, 0x18u);
    }

    CFRelease(v2);
  }

  result = v2 != 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setHqlrAudioOnly:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "[RPControlCenterClient setHqlrAudioOnly:]";
    v12 = 1024;
    v13 = 225;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting audio only value: %d", &v10, 0x18u);
  }

  hqlrAudioOnly = self->_hqlrAudioOnly;
  if (v3)
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", *MEMORY[0x277CBED28], @"com.apple.replayd");
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RPControlCenterClient setHqlrAudioOnly:]";
      v12 = 1024;
      v13 = 233;
      v6 = MEMORY[0x277D86220];
      v7 = " [INFO] %{public}s:%d Set RPHQLRAudioOnly to true";
LABEL_11:
      _os_log_impl(&dword_23A863000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x12u);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", 0, @"com.apple.replayd");
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RPControlCenterClient setHqlrAudioOnly:]";
      v12 = 1024;
      v13 = 237;
      v6 = MEMORY[0x277D86220];
      v7 = " [INFO] %{public}s:%d Removed RPHQLRAudioOnly key from preferences";
      goto LABEL_11;
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.replayd");
  if (hqlrAudioOnly != v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.replaykit.audioOnlyPreferenceChanged", 0, 0, 1u);
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RPControlCenterClient setHqlrAudioOnly:]";
      v12 = 1024;
      v13 = 248;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Posted Darwin notification for audio only change", &v10, 0x12u);
    }
  }

  self->_hqlrAudioOnly = v3;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)getSystemBroadcastPickerInfo
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSDate *)self->_pickerInfoCacheTime timeIntervalSinceNow];
  v4 = v3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPControlCenterClient getSystemBroadcastPickerInfo]";
    v12 = 1024;
    v13 = 256;
    v14 = 2048;
    v15 = *&v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d time since cache = %f", buf, 0x1Cu);
  }

  if (v4 >= -0.5)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPControlCenterClient getSystemBroadcastPickerInfo]";
      v12 = 1024;
      v13 = 267;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p get cached _preferredExtension and _shouldShowMicButton", buf, 0x1Cu);
    }
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPControlCenterClient getSystemBroadcastPickerInfo]";
      v12 = 1024;
      v13 = 259;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p fetching new copy of system broadcast picker info", buf, 0x1Cu);
    }

    v5 = [MEMORY[0x277CBEAA8] now];
    pickerInfoCacheTime = self->_pickerInfoCacheTime;
    self->_pickerInfoCacheTime = v5;

    v7 = +[RPDaemonProxy daemonProxy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__RPControlCenterClient_getSystemBroadcastPickerInfo__block_invoke;
    v9[3] = &unk_278B61D98;
    v9[4] = self;
    [v7 getSystemBroadcastPickerInfo:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__RPControlCenterClient_getSystemBroadcastPickerInfo__block_invoke(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 136447234;
    v12 = "[RPControlCenterClient getSystemBroadcastPickerInfo]_block_invoke";
    v13 = 1024;
    v14 = 262;
    v15 = 2048;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p preferredExtension=%@ showsMicButton=%d", &v11, 0x2Cu);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = v5;
  v9 = v5;

  *(*(a1 + 32) + 153) = a3;
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)getSystemBroadcastExtensionInfo:(id)a3
{
  v3 = a3;
  v4 = +[RPDaemonProxy daemonProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__RPControlCenterClient_getSystemBroadcastExtensionInfo___block_invoke;
  v6[3] = &unk_278B61DC0;
  v7 = v3;
  v5 = v3;
  [v4 getSystemBroadcastExtensionInfo:v6];
}

- (void)resetBroadcastPickerPreferredExt
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPControlCenterClient resetBroadcastPickerPreferredExt]";
    v6 = 1024;
    v7 = 278;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  v2 = +[RPDaemonProxy daemonProxy];
  [v2 setBroadcastPickerPreferredExt:0 showsMicButton:1];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)startBroadcastWithBroadcastController:(id)a3 handler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[RPControlCenterClient startBroadcastWithBroadcastController:handler:]";
    v16 = 1024;
    v17 = 283;
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  objc_storeStrong(&self->_broadcastController, a3);
  if (v7)
  {
    [(RPBroadcastController *)self->_broadcastController setDelegate:self];
    broadcastController = self->_broadcastController;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__RPControlCenterClient_startBroadcastWithBroadcastController_handler___block_invoke;
    v12[3] = &unk_278B61DE8;
    v13 = v8;
    [(RPBroadcastController *)broadcastController startSystemBroadcastWithHandler:v12];
    v10 = v13;
LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    v10 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
    (*(v8 + 2))(v8, 0, v10);
    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __71__RPControlCenterClient_startBroadcastWithBroadcastController_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2);
  }

  return result;
}

- (void)startBroadcastWithExtensionBundleID:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[RPControlCenterClient startBroadcastWithExtensionBundleID:handler:]";
    v17 = 1024;
    v18 = 300;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  if ([(RPScreenRecorder *)self->_screenRecorder isAvailable])
  {
    screenRecorder = self->_screenRecorder;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__RPControlCenterClient_startBroadcastWithExtensionBundleID_handler___block_invoke;
    v11[3] = &unk_278B61E10;
    v12 = v6;
    v13 = self;
    v14 = v7;
    [(RPScreenRecorder *)screenRecorder setupSystemBroadcastWithExtension:v12 handler:v11];

    v9 = v12;
LABEL_8:

    goto LABEL_9;
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_8;
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

void __69__RPControlCenterClient_startBroadcastWithExtensionBundleID_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [[RPBroadcastController alloc] initWithExtensionBundleID:*(a1 + 32) broadcastURL:0];
    [*(a1 + 40) startBroadcastWithBroadcastController:v4 handler:*(a1 + 48)];
  }
}

- (void)extensionWithBundleIDExists:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[RPControlCenterClient extensionWithBundleIDExists:handler:]";
    v17 = 1024;
    v18 = 320;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v8 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__RPControlCenterClient_extensionWithBundleIDExists_handler___block_invoke;
  v12[3] = &unk_278B61D48;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getSystemBroadcastExtensionInfo:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __61__RPControlCenterClient_extensionWithBundleIDExists_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) objectForKey:{@"extBundleID", v10}];
        if ([v8 isEqualToString:*(a1 + 32)])
        {
          (*(*(a1 + 40) + 16))();

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateStatusIsCountingDown:(BOOL)a3 IsRecording:(BOOL)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(RPControlCenterClient *)self isClientRecordingTypeHQLR])
  {
    v7 = 148;
  }

  else
  {
    if (![(RPControlCenterClient *)self isClientRecordingTypeSystemRecording])
    {
      goto LABEL_6;
    }

    v7 = 156;
  }

  *(&self->super.isa + v7) = a4;
  self->_lockUIControls = self->_isCountingDown || a4;
LABEL_6:
  self->_isCountingDown = a3;
  if (!a3)
  {
    [(RPControlCenterClient *)self setHqlrCountdownStarted:0];
    [(RPControlCenterClient *)self setSystemCountdownStarted:0];
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isCountingDown = self->_isCountingDown;
    recordingOn = self->_recordingOn;
    highQualityLocalRecordingOn = self->_highQualityLocalRecordingOn;
    lockUIControls = self->_lockUIControls;
    recordingType = self->_recordingType;
    v15 = 136448002;
    v16 = "[RPControlCenterClient updateStatusIsCountingDown:IsRecording:]";
    v17 = 1024;
    v18 = 346;
    v19 = 2048;
    v20 = self;
    v21 = 1024;
    v22 = isCountingDown;
    v23 = 1024;
    v24 = recordingOn;
    v25 = 1024;
    v26 = highQualityLocalRecordingOn;
    v27 = 1024;
    v28 = lockUIControls;
    v29 = 1024;
    v30 = recordingType;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p isCountingDown=%d recordingOn=%d highQualityLocalRecordingOn=%d lockUIControls=%d recordingType=%d", &v15, 0x3Au);
  }

  if (!a3)
  {
    self->_countdownPaused = 0;
    countdownState = self->_countdownState;
    self->_countdownState = @"Countdown3";

    if (!a4)
    {
      self->_recordingType = 0;
      self->_highQualityLocalRecordingOn = 0;
      self->_recordingOn = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientDelegatesStart:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPControlCenterClient notifyClientDelegatesStart:]";
      v12 = 1024;
      v13 = 363;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p is starting", buf, 0x1Cu);
    }

    v4 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v5 = __52__RPControlCenterClient_notifyClientDelegatesStart___block_invoke;
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPControlCenterClient notifyClientDelegatesStart:]";
      v12 = 1024;
      v13 = 370;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p failed to start", buf, 0x1Cu);
    }

    v4 = &v7;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v5 = __52__RPControlCenterClient_notifyClientDelegatesStart___block_invoke_48;
  }

  v4[2] = v5;
  v4[3] = &unk_278B61E38;
  v4[4] = self;
  [(RPControlCenterClient *)self callDelegate:v7, v8];
  v6 = *MEMORY[0x277D85DE8];
}

void __52__RPControlCenterClient_notifyClientDelegatesStart___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) updateStatusIsCountingDown:1 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v10 = 136448002;
    v11 = "[RPControlCenterClient notifyClientDelegatesStart:]_block_invoke";
    v12 = 1024;
    v13 = 366;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i", &v10, 0x3Eu);
  }

  [v3 sessionIsStarting];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__RPControlCenterClient_notifyClientDelegatesStart___block_invoke_48(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v10 = 136448002;
    v11 = "[RPControlCenterClient notifyClientDelegatesStart:]_block_invoke";
    v12 = 1024;
    v13 = 373;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i", &v10, 0x3Eu);
  }

  [v3 sessionDidFailToStart];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPControlCenterClient startRecordingWithHandler:]";
    v12 = 1024;
    v13 = 380;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  self->_broadcastMode = 0;
  if (!self->_recordingOn)
  {
    screenRecorder = self->_screenRecorder;
    v6 = [(RPScreenRecorder *)screenRecorder isMicrophoneEnabled];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RPControlCenterClient_startRecordingWithHandler___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [(RPScreenRecorder *)screenRecorder startSystemRecordingWithMicrophoneEnabled:v6 handler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__RPControlCenterClient_startRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RPControlCenterClient_startRecordingWithHandler___block_invoke_2;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__RPControlCenterClient_startRecordingWithHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startRecordingWithHandler:]_block_invoke";
      v10 = 1024;
      v11 = 400;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p failed to start system recording", buf, 0x1Cu);
    }

    [*(a1 + 40) notifyClientDelegatesStart:0];
    [*(a1 + 40) terminateAngelRecordingSession];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startRecordingWithHandler:]_block_invoke_2";
      v10 = 1024;
      v11 = 391;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p started system recording with no errors", buf, 0x1Cu);
    }

    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__RPControlCenterClient_startRecordingWithHandler___block_invoke_49;
    v7[3] = &unk_278B61E38;
    v7[4] = v4;
    [v4 callDelegate:v7];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__RPControlCenterClient_startRecordingWithHandler___block_invoke_49(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 88) = 2;
  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:1];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v9 = 136447746;
    v10 = "[RPControlCenterClient startRecordingWithHandler:]_block_invoke";
    v11 = 1024;
    v12 = 396;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v9, 0x38u);
  }

  [v3 didStartRecordingOrBroadcast];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startBroadcastWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "[RPControlCenterClient startBroadcastWithHandler:]";
    v14 = 1024;
    v15 = 416;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  self->_broadcastMode = 0;
  if (![(NSString *)self->_extensionBundleID isEqualToString:@"com.apple.replaykit.recordToCameraRoll"])
  {
    extensionBundleID = self->_extensionBundleID;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke;
    v11[3] = &unk_278B61EB0;
    v11[4] = self;
    [(RPControlCenterClient *)self extensionWithBundleIDExists:extensionBundleID handler:v11];
  }

  v6 = self->_extensionBundleID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_2;
  v9[3] = &unk_278B61ED8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(RPControlCenterClient *)self startBroadcastWithExtensionBundleID:v6 handler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  if (a2)
  {
    *(*(a1 + 32) + 144) = [v4 isEqualToString:@"com.apple.replaykit.recordToCameraRoll"] ^ 1;
  }

  else
  {
    *(v3 + 160) = @"com.apple.replaykit.recordToCameraRoll";

    *(*(a1 + 32) + 144) = 0;
  }
}

void __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_3;
  block[3] = &unk_278B61E60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startBroadcastWithHandler:]_block_invoke";
      v10 = 1024;
      v11 = 445;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p failed to start system broadcast", buf, 0x1Cu);
    }

    [*(a1 + 40) notifyClientDelegatesStart:0];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startBroadcastWithHandler:]_block_invoke_3";
      v10 = 1024;
      v11 = 435;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p started system broadcast with no errors", buf, 0x1Cu);
    }

    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_51;
    v7[3] = &unk_278B61E38;
    v7[4] = v4;
    [v4 callDelegate:v7];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__RPControlCenterClient_startBroadcastWithHandler___block_invoke_51(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 88) = 1;
  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:1];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v9 = 136447746;
    v10 = "[RPControlCenterClient startBroadcastWithHandler:]_block_invoke";
    v11 = 1024;
    v12 = 441;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v9, 0x38u);
  }

  [v3 didStartRecordingOrBroadcast];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)currentAppUsingCamera
{
  v14 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    hqlrContentModuleContext = self->_hqlrContentModuleContext;
    v8 = 136446722;
    v9 = "[RPControlCenterClient currentAppUsingCamera]";
    v10 = 1024;
    v11 = 458;
    v12 = 2112;
    v13 = hqlrContentModuleContext;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d context=%@", &v8, 0x1Cu);
  }

  v4 = [(CCUIContentModuleContext *)self->_hqlrContentModuleContext sensorActivityDataForActiveSensorType:0];
  v5 = v4 != 0;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)startHQLRWithHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[RPControlCenterClient startHQLRWithHandler:]";
    v18 = 1024;
    v19 = 464;
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  self->_broadcastMode = 0;
  v5 = MEMORY[0x277CBEB38];
  v14[0] = @"saveToDestination";
  v14[1] = @"microphoneDeviceID";
  microphoneDeviceID = self->_microphoneDeviceID;
  v15[0] = @"com.apple.replaykit.saveToFiles";
  v15[1] = microphoneDeviceID;
  v14[2] = @"audioOnly";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hqlrAudioOnly];
  v15[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v9 = [v5 dictionaryWithDictionary:v8];

  if ([(RPControlCenterClient *)self currentAppUsingCamera])
  {
    [(RPControlCenterClient *)v9 setObject:self->_cameraDeviceID forKeyedSubscript:@"cameraDeviceID"];
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[RPControlCenterClient startHQLRWithHandler:]";
    v18 = 1024;
    v19 = 476;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d sessionInfo %@", buf, 0x1Cu);
  }

  if (self->_highQualityLocalRecordingOn)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    screenRecorder = self->_screenRecorder;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__RPControlCenterClient_startHQLRWithHandler___block_invoke;
    v12[3] = &unk_278B61E88;
    v12[4] = self;
    v13 = v4;
    [(RPScreenRecorder *)screenRecorder startHQLRWithSessionInfo:v9 handler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__RPControlCenterClient_startHQLRWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RPControlCenterClient_startHQLRWithHandler___block_invoke_2;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __46__RPControlCenterClient_startHQLRWithHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startHQLRWithHandler:]_block_invoke";
      v10 = 1024;
      v11 = 492;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p failed to start HQLR", buf, 0x1Cu);
    }

    [*(a1 + 40) notifyClientDelegatesStart:0];
    [*(a1 + 40) terminateAngelRecordingSession];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 136446722;
      v9 = "[RPControlCenterClient startHQLRWithHandler:]_block_invoke_2";
      v10 = 1024;
      v11 = 483;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p started HQLR with no errors", buf, 0x1Cu);
    }

    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__RPControlCenterClient_startHQLRWithHandler___block_invoke_70;
    v7[3] = &unk_278B61E38;
    v7[4] = v4;
    [v4 callDelegate:v7];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__RPControlCenterClient_startHQLRWithHandler___block_invoke_70(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 88) = 3;
  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:1];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v10 = 136448002;
    v11 = "[RPControlCenterClient startHQLRWithHandler:]_block_invoke";
    v12 = 1024;
    v13 = 488;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i highQualityLocalRecordingOn:%i", &v10, 0x3Eu);
  }

  [v3 didStartRecordingOrBroadcast];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopCurrentSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "[RPControlCenterClient stopCurrentSession:]";
    v14 = 1024;
    v15 = 511;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  if (self->_broadcastMode)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPControlCenterClient stopCurrentSession:]";
      v14 = 1024;
      v15 = 536;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopping system broadcast", buf, 0x1Cu);
    }

    broadcastController = self->_broadcastController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__RPControlCenterClient_stopCurrentSession___block_invoke_71;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [(RPBroadcastController *)broadcastController finishSystemBroadcastWithHandler:v8];
    v6 = v9;
    goto LABEL_16;
  }

  if (![(RPScreenRecorder *)self->_screenRecorder isRecording])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__RPControlCenterClient_stopCurrentSession___block_invoke;
    block[3] = &unk_278B61D70;
    block[4] = self;
    v11 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = v11;
LABEL_16:

    goto LABEL_17;
  }

  [(RPControlCenterClient *)self stopRecordingCalled];
  if ([(RPControlCenterClient *)self isClientRecordingTypeHQLR])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPControlCenterClient stopCurrentSession:]";
      v14 = 1024;
      v15 = 518;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopping HQLR recording", buf, 0x1Cu);
    }

    [(RPControlCenterClient *)self stopHQLRRecordingWithHandler:v4];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPControlCenterClient stopCurrentSession:]";
      v14 = 1024;
      v15 = 521;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopping system recording", buf, 0x1Cu);
    }

    [(RPControlCenterClient *)self stopSystemRecordingWithHandler:v4];
  }

LABEL_17:

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __44__RPControlCenterClient_stopCurrentSession___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = v2[155];
    v4 = v2[154];
    v5 = v2[156];
    v6 = v2[148];
    v9 = 136447746;
    v10 = "[RPControlCenterClient stopCurrentSession:]_block_invoke";
    v11 = 1024;
    v12 = 527;
    v13 = 2048;
    v14 = v2;
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i highQualityLocalRecordingOn:%i", &v9, 0x34u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __44__RPControlCenterClient_stopCurrentSession___block_invoke_71(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__RPControlCenterClient_stopCurrentSession___block_invoke_2;
  v2[3] = &unk_278B61D70;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __44__RPControlCenterClient_stopCurrentSession___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v9 = 136446722;
    v10 = "[RPControlCenterClient stopCurrentSession:]_block_invoke_2";
    v11 = 1024;
    v12 = 539;
    v13 = 2048;
    v14 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopped system broadcast", &v9, 0x1Cu);
  }

  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v3[155];
    v5 = v3[154];
    v6 = v3[156];
    v9 = 136447490;
    v10 = "[RPControlCenterClient stopCurrentSession:]_block_invoke";
    v11 = 1024;
    v12 = 541;
    v13 = 2048;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v9, 0x2Eu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopHQLRRecordingWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPControlCenterClient stopHQLRRecordingWithHandler:]";
    v12 = 1024;
    v13 = 553;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  screenRecorder = self->_screenRecorder;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__RPControlCenterClient_stopHQLRRecordingWithHandler___block_invoke;
  v8[3] = &unk_278B61E88;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(RPScreenRecorder *)screenRecorder stopHQLR:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __54__RPControlCenterClient_stopHQLRRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RPControlCenterClient_stopHQLRRecordingWithHandler___block_invoke_2;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__RPControlCenterClient_stopHQLRRecordingWithHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v10 = 136446722;
    v11 = "[RPControlCenterClient stopHQLRRecordingWithHandler:]_block_invoke_2";
    v12 = 1024;
    v13 = 556;
    v14 = 2048;
    v15 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopped HQLR recording", &v10, 0x1Cu);
  }

  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v3[155];
    v5 = v3[154];
    v6 = v3[156];
    v7 = v3[148];
    v10 = 136447746;
    v11 = "[RPControlCenterClient stopHQLRRecordingWithHandler:]_block_invoke";
    v12 = 1024;
    v13 = 558;
    v14 = 2048;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i highQualityLocalRecordingOn:%i", &v10, 0x34u);
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) terminateAngelRecordingSession];
  }

  [*(a1 + 32) callDelegate:&__block_literal_global_75];
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopSystemRecordingWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPControlCenterClient stopSystemRecordingWithHandler:]";
    v12 = 1024;
    v13 = 574;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  screenRecorder = self->_screenRecorder;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__RPControlCenterClient_stopSystemRecordingWithHandler___block_invoke;
  v8[3] = &unk_278B61E88;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(RPScreenRecorder *)screenRecorder stopSystemRecording:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __56__RPControlCenterClient_stopSystemRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RPControlCenterClient_stopSystemRecordingWithHandler___block_invoke_2;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__RPControlCenterClient_stopSystemRecordingWithHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v9 = 136446722;
    v10 = "[RPControlCenterClient stopSystemRecordingWithHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 577;
    v13 = 2048;
    v14 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopped system recording", &v9, 0x1Cu);
  }

  [*(a1 + 32) updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v3[155];
    v5 = v3[154];
    v6 = v3[156];
    v9 = 136447490;
    v10 = "[RPControlCenterClient stopSystemRecordingWithHandler:]_block_invoke";
    v11 = 1024;
    v12 = 579;
    v13 = 2048;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v9, 0x2Eu);
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) terminateAngelRecordingSession];
  }

  [*(a1 + 32) callDelegate:&__block_literal_global_79];
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setRecordingType:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[RPControlCenterClient setRecordingType:]";
    v8 = 1024;
    v9 = 601;
    v10 = 2048;
    v11 = self;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p recordingType=%d", &v6, 0x22u);
  }

  self->_recordingType = a3;
  v5 = *MEMORY[0x277D85DE8];
}

- (id)getSessionType
{
  if ([(RPControlCenterClient *)self isClientRecordingTypeHQLR])
  {
    v3 = [(RPControlCenterClient *)self hqlrAudioOnly];
    v4 = @"hqlr";
    v5 = @"hqlrAudio";
  }

  else
  {
    v3 = [(RPControlCenterClient *)self isClientRecordingTypeSystemRecording];
    v4 = @"none";
    v5 = @"system";
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)updateClientState
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPControlCenterClient updateClientState]";
    v7 = 1024;
    v8 = 635;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  [(RPControlCenterClient *)self getSystemBroadcastPickerInfo];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__RPControlCenterClient_updateClientState__block_invoke;
  v4[3] = &unk_278B61F48;
  v4[4] = self;
  [(RPControlCenterClient *)self loadAvailableExtensionsWithHandler:v4];
  v3 = *MEMORY[0x277D85DE8];
}

void __42__RPControlCenterClient_updateClientState__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPControlCenterClient updateClientState]_block_invoke";
    v12 = 1024;
    v13 = 638;
    v14 = 2048;
    v15 = [v3 count];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Available Extensions: %lu", buf, 0x1Cu);
  }

  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RPControlCenterClient_updateClientState__block_invoke_92;
  v7[3] = &unk_278B61F20;
  v8 = v3;
  v9 = v4;
  v5 = v3;
  [v4 callDelegate:v7];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __42__RPControlCenterClient_updateClientState__block_invoke_92(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__RPControlCenterClient_updateClientState__block_invoke_2;
  v4[3] = &unk_278B61B70;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 didUpdateClientStateWithAvailableExtensions:v2 completionHandler:v4];
}

- (BOOL)isClientRecordingTypeHQLR
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recordingType = self->_recordingType;
    v6 = 136446722;
    v7 = "[RPControlCenterClient isClientRecordingTypeHQLR]";
    v8 = 1024;
    v9 = 648;
    v10 = 1024;
    v11 = recordingType;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d checking if recordingType %d is HQLR", &v6, 0x18u);
  }

  result = self->_recordingType - 3 < 2;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isClientRecordingTypeSystemRecording
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recordingType = self->_recordingType;
    v6 = 136446722;
    v7 = "[RPControlCenterClient isClientRecordingTypeSystemRecording]";
    v8 = 1024;
    v9 = 653;
    v10 = 1024;
    v11 = recordingType;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d checking if recordingType %d is system recording", &v6, 0x18u);
  }

  result = self->_recordingType - 1 < 2;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isScreenRecorderAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(RPScreenRecorder *)self->_screenRecorder isAvailable];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPControlCenterClient isScreenRecorderAvailable]";
    v7 = 1024;
    v8 = 659;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isAvailable %d", &v5, 0x18u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isAvailableAndInitialized
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(RPScreenRecorder *)self->_screenRecorder isAvailable];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isInitialized = self->_isInitialized;
    v8 = 136446978;
    v9 = "[RPControlCenterClient isAvailableAndInitialized]";
    v10 = 1024;
    v11 = 665;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = isInitialized;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isAvailable %d isInitialized %d", &v8, 0x1Eu);
  }

  v5 = v3 && self->_isInitialized;
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setCountdown:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Countdown3"])
  {
    v5 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__RPControlCenterClient_setCountdown___block_invoke;
    block[3] = &unk_278B61B70;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = dispatch_time(0, 1000000000);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__RPControlCenterClient_setCountdown___block_invoke_2;
    v7[3] = &unk_278B61C60;
    v7[4] = self;
    v8 = v4;
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __38__RPControlCenterClient_setCountdown___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = @"Countdown3";

  v4 = +[RPControlCenterAngelProxy sharedInstance];
  [v4 setCountdownState:@"Countdown3"];

  v5 = *(a1 + 32);

  return [v5 setCountdown:@"Countdown2"];
}

void __38__RPControlCenterClient_setCountdown___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[64] & 1) != 0 || ![v2 isCountingDown])
  {
    return;
  }

  if ([*(a1 + 40) isEqualToString:@"Countdown2"])
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = @"Countdown2";

    v5 = +[RPControlCenterAngelProxy sharedInstance];
    [v5 setCountdownState:@"Countdown2"];

    v6 = *(a1 + 32);
    v7 = @"Countdown1";
LABEL_7:

    [v6 setCountdown:v7];
    return;
  }

  if ([*(a1 + 40) isEqualToString:@"Countdown1"])
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = @"Countdown1";

    v10 = +[RPControlCenterAngelProxy sharedInstance];
    [v10 setCountdownState:@"Countdown1"];

    v6 = *(a1 + 32);
    v7 = @"CountdownComplete";
    goto LABEL_7;
  }

  if ([*(a1 + 40) isEqualToString:@"CountdownComplete"])
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    *(v11 + 72) = @"CountdownComplete";

    v13 = +[RPControlCenterAngelProxy sharedInstance];
    [v13 setCountdownState:@"CountdownComplete"];

    v14 = dispatch_time(0, 350000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__RPControlCenterClient_setCountdown___block_invoke_3;
    block[3] = &unk_278B61B70;
    block[4] = *(a1 + 32);
    dispatch_after(v14, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __38__RPControlCenterClient_setCountdown___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = *(a1 + 32);
  if ((*(result + 64) & 1) == 0)
  {
    result = [result isCountingDown];
    if (result)
    {
      if ([*(a1 + 32) hqlrCountdownStarted])
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v4 = 136446466;
          v5 = "[RPControlCenterClient setCountdown:]_block_invoke_3";
          v6 = 1024;
          v7 = 698;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Will start HQLR recording", &v4, 0x12u);
        }

        result = [*(a1 + 32) startHQLRWithHandler:&__block_literal_global_106];
      }

      else
      {
        result = *(a1 + 32);
        if (*(result + 88) == 2)
        {
          if (__RPLogLevel <= 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v4 = 136446466;
              v5 = "[RPControlCenterClient setCountdown:]_block_invoke";
              v6 = 1024;
              v7 = 703;
              _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Will start system recording", &v4, 0x12u);
            }

            result = *(a1 + 32);
          }

          result = [result startRecordingWithHandler:&__block_literal_global_109];
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __38__RPControlCenterClient_setCountdown___block_invoke_104()
{
  v5 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPControlCenterClient setCountdown:]_block_invoke";
    v3 = 1024;
    v4 = 700;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d HQLR start completed", &v1, 0x12u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __38__RPControlCenterClient_setCountdown___block_invoke_107()
{
  v5 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPControlCenterClient setCountdown:]_block_invoke";
    v3 = 1024;
    v4 = 705;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording start completed", &v1, 0x12u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)startObservingCallIsActiveStateWithHandler:(id)a3
{
  v4 = a3;
  fetchQueue = self->_fetchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RPControlCenterClient_startObservingCallIsActiveStateWithHandler___block_invoke;
  v7[3] = &unk_278B61D70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fetchQueue, v7);
}

void __68__RPControlCenterClient_startObservingCallIsActiveStateWithHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  v5 = MEMORY[0x277D26B50];
  v14[0] = *MEMORY[0x277D26B50];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [*(*(a1 + 32) + 112) setAttribute:v6 forKey:*MEMORY[0x277D26DD0] error:0];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_updateCallActive_ name:*v5 object:0];

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPControlCenterClient startObservingCallIsActiveStateWithHandler:]_block_invoke";
    v12 = 1024;
    v13 = 729;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Subscribed to AVSystemController_CallIsActiveDidChangeNotification", &v10, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingCallIsActiveState
{
  fetchQueue = self->_fetchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RPControlCenterClient_stopObservingCallIsActiveState__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(fetchQueue, block);
}

void __55__RPControlCenterClient_stopObservingCallIsActiveState__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 112) setAttribute:MEMORY[0x277CBEBF8] forKey:*MEMORY[0x277D26DD0] error:0];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x277D26B50] object:0];

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPControlCenterClient stopObservingCallIsActiveState]_block_invoke";
    v6 = 1024;
    v7 = 745;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Unsubscribe to AVSystemController_CallIsActiveDidChangeNotification", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)startHQLRReadyToRecord:(id)a3
{
  v4 = a3;
  if ([(RPControlCenterClient *)self fetchIsCallActive])
  {
    v4[2](v4);
  }

  else
  {
    [(RPControlCenterClient *)self setHighQualityLocalRecordingReady:1];
    self->_recordingType = 3;
    [(NSTimer *)self->_readyToRecordTimer invalidate];
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_endReadyToRecord selector:0 userInfo:0 repeats:60.0];
    readyToRecordTimer = self->_readyToRecordTimer;
    self->_readyToRecordTimer = v5;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__RPControlCenterClient_startHQLRReadyToRecord___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = v4;
    [(RPControlCenterClient *)self startObservingCallIsActiveStateWithHandler:v7];
  }
}

uint64_t __48__RPControlCenterClient_startHQLRReadyToRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__RPControlCenterClient_startHQLRReadyToRecord___block_invoke_2;
  v4[3] = &unk_278B61E38;
  v4[4] = v2;
  [v2 callDelegate:v4];
  [*(a1 + 32) startReadyToRecordBanner];
  return (*(*(a1 + 40) + 16))();
}

void __48__RPControlCenterClient_startHQLRReadyToRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v9 = v4[149];
    v11 = 136448258;
    v12 = "[RPControlCenterClient startHQLRReadyToRecord:]_block_invoke_2";
    v13 = 1024;
    v14 = 759;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i highQualityLocalRecordingReady:%i", &v11, 0x44u);
  }

  [v3 sessionIsStarting];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endReadyToRecord
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPControlCenterClient endReadyToRecord]";
    v8 = 1024;
    v9 = 771;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Timeout for Ready to Record. Cancelling", buf, 0x12u);
  }

  if ([(RPControlCenterClient *)self highQualityLocalRecordingReady])
  {
    [(RPControlCenterClient *)self setHighQualityLocalRecordingReady:0];
    [(NSTimer *)self->_readyToRecordTimer invalidate];
    readyToRecordTimer = self->_readyToRecordTimer;
    self->_readyToRecordTimer = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__RPControlCenterClient_endReadyToRecord__block_invoke;
  v5[3] = &unk_278B61E38;
  v5[4] = self;
  [(RPControlCenterClient *)self callDelegate:v5];
  [(RPControlCenterClient *)self stopReadyToRecordBanner];
  v4 = *MEMORY[0x277D85DE8];
}

void __41__RPControlCenterClient_endReadyToRecord__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v9 = v4[149];
    v11 = 136448258;
    v12 = "[RPControlCenterClient endReadyToRecord]_block_invoke";
    v13 = 1024;
    v14 = 778;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i highQualityLocalRecordingReady:%i", &v11, 0x44u);
  }

  [v3 sessionIsStarting];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCallActive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[RPControlCenterClient updateCallActive:]";
    v13 = 1024;
    v14 = 785;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVSystemController notification: %@", buf, 0x1Cu);
  }

  fetchQueue = self->_fetchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__RPControlCenterClient_updateCallActive___block_invoke;
  v8[3] = &unk_278B61C60;
  v9 = v4;
  v10 = self;
  v6 = v4;
  dispatch_async(fetchQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__RPControlCenterClient_updateCallActive___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D26B58]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v14 = "[RPControlCenterClient updateCallActive:]_block_invoke";
      v15 = 1024;
      v16 = 794;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notification value for isCallActive=%@", buf, 0x1Cu);
    }

    if (v4 && [*(a1 + 40) highQualityLocalRecordingReady])
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v14 = "[RPControlCenterClient updateCallActive:]_block_invoke";
        v15 = 1024;
        v16 = 796;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Call became active during ready to record", buf, 0x12u);
      }

      [*(a1 + 40) setHqlrCountdownStarted:1];
      [*(a1 + 40) notifyClientDelegatesStart:1 withRecordingType:3];
      [*(a1 + 40) endReadyToRecord];
      [*(a1 + 40) setRecordingType:3];
      v5 = +[RPFeatureFlagUtility sharedInstance];
      v6 = [v5 systemBannerEnabled];

      if (v6)
      {
        v7 = dispatch_time(0, 1000000000);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __42__RPControlCenterClient_updateCallActive___block_invoke_118;
        v12[3] = &unk_278B61B70;
        v12[4] = *(a1 + 40);
        v8 = MEMORY[0x277D85CD0];
        v9 = v12;
      }

      else
      {
        v7 = dispatch_time(0, 3000000000);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __42__RPControlCenterClient_updateCallActive___block_invoke_2;
        v11[3] = &unk_278B61B70;
        v11[4] = *(a1 + 40);
        v8 = MEMORY[0x277D85CD0];
        v9 = v11;
      }

      dispatch_after(v7, v8, v9);
    }
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __42__RPControlCenterClient_updateCallActive___block_invoke_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__RPControlCenterClient_updateCallActive___block_invoke_118(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[RPControlCenterAngelProxy sharedInstance];
  [v3 setDelegate:v2];

  v4 = +[RPControlCenterAngelProxy sharedInstance];
  v5 = [*(a1 + 32) getSessionType];
  [v4 startRecordingCountdownWithSessionType:v5];

  v6 = *(a1 + 32);

  return [v6 setCountdown:@"Countdown3"];
}

uint64_t __42__RPControlCenterClient_updateCallActive___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__RPControlCenterClient_updateCallActive___block_invoke_3;
  v3[3] = &unk_278B61B70;
  v3[4] = v1;
  return [v1 startHQLRWithHandler:v3];
}

uint64_t __42__RPControlCenterClient_updateCallActive___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPControlCenterClient updateCallActive:]_block_invoke_3";
    v8 = 1024;
    v9 = 812;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Started HQLR via ready to record", buf, 0x12u);
  }

  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__RPControlCenterClient_updateCallActive___block_invoke_119;
  v5[3] = &unk_278B61E38;
  v5[4] = v2;
  result = [v2 callDelegate:v5];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __42__RPControlCenterClient_updateCallActive___block_invoke_119(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v9 = v4[149];
    v11 = 136448258;
    v12 = "[RPControlCenterClient updateCallActive:]_block_invoke";
    v13 = 1024;
    v14 = 814;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i highQualityLocalRecordingReady:%i", &v11, 0x44u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchIsCallActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fetchQueue = self->_fetchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RPControlCenterClient_fetchIsCallActive__block_invoke;
  block[3] = &unk_278B61F70;
  block[4] = &v6;
  dispatch_sync(fetchQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__RPControlCenterClient_fetchIsCallActive__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26B48]];

  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 136446722;
    v7 = "[RPControlCenterClient fetchIsCallActive]_block_invoke";
    v8 = 1024;
    v9 = 831;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d returning call active=%d", &v6, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startReadyToRecordBanner
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPControlCenterClient startReadyToRecordBanner]";
    v10 = 1024;
    v11 = 840;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Showing Ready to Record banner state", buf, 0x12u);
  }

  v3 = +[RPControlCenterAngelProxy sharedInstance];
  [v3 setDelegate:self];

  v4 = +[RPControlCenterAngelProxy sharedInstance];
  [v4 startReadyToRecord];

  readyToRecordBackgroundActivity = self->_readyToRecordBackgroundActivity;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RPControlCenterClient_startReadyToRecordBanner__block_invoke;
  v7[3] = &unk_278B61B70;
  v7[4] = self;
  [(RPBackgroundActivity *)readyToRecordBackgroundActivity activateWithUserInteractionHandler:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __49__RPControlCenterClient_startReadyToRecordBanner__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RPControlCenterClient_startReadyToRecordBanner__block_invoke_2;
  block[3] = &unk_278B61B70;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)stopReadyToRecordBanner
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterClient stopReadyToRecordBanner]";
    v7 = 1024;
    v8 = 854;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Dismissing Ready to Record banner state", &v5, 0x12u);
  }

  v3 = +[RPControlCenterAngelProxy sharedInstance];
  [v3 stopReadyToRecord];

  [(RPBackgroundActivity *)self->_readyToRecordBackgroundActivity deactivate];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingCountdown
{
  v15 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPControlCenterClient startRecordingCountdown]";
    v11 = 1024;
    v12 = 862;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v9, 0x1Cu);
  }

  v3 = +[RPFeatureFlagUtility sharedInstance];
  v4 = [v3 systemBannerEnabled];

  if (v4)
  {
    v5 = +[RPControlCenterAngelProxy sharedInstance];
    [v5 setDelegate:self];

    v6 = +[RPControlCenterAngelProxy sharedInstance];
    v7 = [(RPControlCenterClient *)self getSessionType];
    [v6 startRecordingCountdownWithSessionType:v7];

    [(RPControlCenterClient *)self setCountdown:@"Countdown3"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelRecordingCountdown
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPControlCenterClient cancelRecordingCountdown]";
    v9 = 1024;
    v10 = 873;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v7, 0x1Cu);
  }

  v3 = +[RPFeatureFlagUtility sharedInstance];
  v4 = [v3 systemBannerEnabled];

  if (v4)
  {
    v5 = +[RPControlCenterAngelProxy sharedInstance];
    [v5 cancelRecordingCountdown];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)showRecordingBanner
{
  v2 = +[RPFeatureFlagUtility sharedInstance];
  v3 = [v2 systemBannerEnabled];

  if (v3)
  {
    v4 = +[RPControlCenterAngelProxy sharedInstance];
    [v4 showRecordingBanner];
  }
}

- (void)stopRecordingCalled
{
  v2 = +[RPFeatureFlagUtility sharedInstance];
  v3 = [v2 systemBannerEnabled];

  if (v3)
  {
    v4 = +[RPControlCenterAngelProxy sharedInstance];
    [v4 stopRecordingCalled];
  }
}

- (void)terminateAngelRecordingSession
{
  v2 = +[RPFeatureFlagUtility sharedInstance];
  v3 = [v2 systemBannerEnabled];

  if (v3)
  {
    v4 = +[RPControlCenterAngelProxy sharedInstance];
    [v4 hideAndStopRecordingBanner];
  }
}

- (void)screenRecorder:(id)a3 didStopRecordingWithPreviewViewController:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[RPControlCenterClient screenRecorder:didStopRecordingWithPreviewViewController:error:]";
    v17 = 1024;
    v18 = 908;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v15, 0x1Cu);
  }

  [(RPControlCenterClient *)self updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isCountingDown = self->_isCountingDown;
    lockUIControls = self->_lockUIControls;
    recordingOn = self->_recordingOn;
    v15 = 136447490;
    v16 = "[RPControlCenterClient screenRecorder:didStopRecordingWithPreviewViewController:error:]";
    v17 = 1024;
    v18 = 910;
    v19 = 2048;
    v20 = self;
    v21 = 1024;
    v22 = isCountingDown;
    v23 = 1024;
    v24 = lockUIControls;
    v25 = 1024;
    v26 = recordingOn;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v15, 0x2Eu);
  }

  if (v10)
  {
    if ([v10 code] != -5815)
    {
      if ([v10 code] != -5817)
      {
        goto LABEL_12;
      }

      [(RPControlCenterClient *)self startObservingCallIsActiveStateWithHandler:0];
    }

    [(RPControlCenterClient *)self notifyClientDelegatesStart:0];
LABEL_12:
    if ([v10 code])
    {
      [(RPControlCenterClient *)self terminateAngelRecordingSession];
    }
  }

  [(RPControlCenterClient *)self callDelegate:&__block_literal_global_121];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)screenRecorderDidChangeAvailability:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[RPControlCenterClient screenRecorderDidChangeAvailability:]";
    v11 = 1024;
    v12 = 933;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RPControlCenterClient_screenRecorderDidChangeAvailability___block_invoke;
  v7[3] = &unk_278B61E38;
  v8 = v4;
  v5 = v4;
  [(RPControlCenterClient *)self callDelegate:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __61__RPControlCenterClient_screenRecorderDidChangeAvailability___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 didChangeAvailability:{objc_msgSend(v2, "isAvailable")}];
}

- (void)screenRecorderDidUpdateState:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(RPControlCenterClient *)self isClientRecordingTypeHQLR])
  {
    v4 = 148;
LABEL_5:
    *(&self->super.isa + v4) = [(RPScreenRecorder *)self->_screenRecorder isRecording];
    goto LABEL_6;
  }

  if ([(RPControlCenterClient *)self isClientRecordingTypeSystemRecording])
  {
    v4 = 156;
    goto LABEL_5;
  }

LABEL_6:
  self->_microphoneOn = [(RPScreenRecorder *)self->_screenRecorder isMicrophoneEnabled];
  self->_mixedRealityCameraOn = [(RPScreenRecorder *)self->_screenRecorder isMixedRealityCameraEnabled];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447746;
    v7 = "[RPControlCenterClient screenRecorderDidUpdateState:]";
    v8 = 1024;
    v9 = 947;
    v10 = 2048;
    v11 = self;
    v12 = 1024;
    v13 = [(RPControlCenterClient *)self recordingOn];
    v14 = 1024;
    v15 = [(RPControlCenterClient *)self microphoneOn];
    v16 = 1024;
    v17 = [(RPControlCenterClient *)self mixedRealityCameraOn];
    v18 = 1024;
    v19 = [(RPControlCenterClient *)self highQualityLocalRecordingOn];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p recordingOn:%d microphoneOn:%d mixedRealityCameraOn:%d highQualityLocalRecordingOn:%d", &v6, 0x34u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)broadcastController:(id)a3 didFinishWithError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446722;
    v13 = "[RPControlCenterClient broadcastController:didFinishWithError:]";
    v14 = 1024;
    v15 = 953;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v12, 0x1Cu);
  }

  [(RPControlCenterClient *)self updateStatusIsCountingDown:0 IsRecording:0];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isCountingDown = self->_isCountingDown;
    lockUIControls = self->_lockUIControls;
    recordingOn = self->_recordingOn;
    v12 = 136447490;
    v13 = "[RPControlCenterClient broadcastController:didFinishWithError:]";
    v14 = 1024;
    v15 = 955;
    v16 = 2048;
    v17 = self;
    v18 = 1024;
    v19 = isCountingDown;
    v20 = 1024;
    v21 = lockUIControls;
    v22 = 1024;
    v23 = recordingOn;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i", &v12, 0x2Eu);
  }

  if (v7)
  {
    if ([v7 code] == -5815)
    {
      [(RPControlCenterClient *)self notifyClientDelegatesStart:0];
    }

    [(RPControlCenterClient *)self terminateAngelRecordingSession];
  }

  [(RPControlCenterClient *)self callDelegate:&__block_literal_global_123];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)broadcastController:(id)a3 didUpdateServiceInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPControlCenterClient broadcastController:didUpdateServiceInfo:]";
    v11 = 1024;
    v12 = 970;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)broadcastController:(id)a3 didUpdateBroadcastURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "[RPControlCenterClient broadcastController:didUpdateBroadcastURL:]";
    v11 = 1024;
    v12 = 975;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p broadcastURL=%@", &v9, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordingTimerDidUpdate:(id)a3
{
  objc_storeStrong(&self->_currentTimerString, a3);

  [(RPControlCenterClient *)self callDelegate:&__block_literal_global_125];
}

- (void)stopCurrentSession
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[RPControlCenterClient stopCurrentSession]";
    v6 = 1024;
    v7 = 988;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v4, 0x1Cu);
  }

  if ([(RPControlCenterClient *)self isCountingDown])
  {
    [(RPControlCenterClient *)self notifyClientDelegatesStart:0];
  }

  else if ([(RPControlCenterClient *)self isClientRecordingTypeHQLR])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446722;
      v5 = "[RPControlCenterClient stopCurrentSession]";
      v6 = 1024;
      v7 = 993;
      v8 = 2048;
      v9 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopping HQLR recording", &v4, 0x1Cu);
    }

    [(RPControlCenterClient *)self stopHQLRRecordingWithHandler:0];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446722;
      v5 = "[RPControlCenterClient stopCurrentSession]";
      v6 = 1024;
      v7 = 996;
      v8 = 2048;
      v9 = self;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Stopping system recording", &v4, 0x1Cu);
    }

    [(RPControlCenterClient *)self stopSystemRecordingWithHandler:0];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)requestToCancelReadyToRecord
{
  v21 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPControlCenterClient requestToCancelReadyToRecord]";
    v19 = 1024;
    v20 = 1003;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSPointerArray *)self->_delegates allObjects];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__RPControlCenterClient_requestToCancelReadyToRecord__block_invoke;
        block[3] = &unk_278B61B70;
        block[4] = v9;
        dispatch_async(v7, block);
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __53__RPControlCenterClient_requestToCancelReadyToRecord__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 presentCancelReadyToRecord];
  }

  return result;
}

- (void)cancelReadyToRecord
{
  if ([(RPControlCenterClient *)self highQualityLocalRecordingReady])
  {
    [(RPControlCenterClient *)self setHighQualityLocalRecordingReady:0];
    [(NSTimer *)self->_readyToRecordTimer invalidate];
    readyToRecordTimer = self->_readyToRecordTimer;
    self->_readyToRecordTimer = 0;

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__RPControlCenterClient_cancelReadyToRecord__block_invoke;
    v4[3] = &unk_278B61E38;
    v4[4] = self;
    [(RPControlCenterClient *)self callDelegate:v4];
    [(RPControlCenterClient *)self stopReadyToRecordBanner];
  }
}

void __44__RPControlCenterClient_cancelReadyToRecord__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v4[155];
    v6 = v4[154];
    v7 = v4[156];
    v8 = v4[148];
    v9 = v4[149];
    v11 = 136448258;
    v12 = "[RPControlCenterClient cancelReadyToRecord]_block_invoke";
    v13 = 1024;
    v14 = 1020;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p delegate=%p updated status to isCountingDown:%i lockUIControls:%i, recordingOn:%i, highQualityLocalRecordingOn:%i highQualityLocalRecordingReady:%i", &v11, 0x44u);
  }

  [v3 didStopRecordingOrBroadcast];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)replayKitAngelDisconnected
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RPControlCenterClient_replayKitAngelDisconnected__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__RPControlCenterClient_replayKitAngelDisconnected__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = v2[155];
    v4 = v2[156];
    v5 = v2[148];
    v8 = 136447490;
    v9 = "[RPControlCenterClient replayKitAngelDisconnected]_block_invoke";
    v10 = 1024;
    v11 = 1029;
    v12 = 2048;
    v13 = v2;
    v14 = 1024;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p isCountingDown:%i, recordingOn:%i highQualityLocalRecordingOn:%d", &v8, 0x2Eu);
  }

  [*(a1 + 32) notifyClientDelegatesStart:0];
  result = [*(a1 + 32) stopSystemRecordingWithHandler:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)countdownInterruptWithStatus:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPControlCenterClient countdownInterruptWithStatus:]";
    v12 = 1024;
    v13 = 1037;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RPControlCenterClient_countdownInterruptWithStatus___block_invoke;
  v7[3] = &unk_278B61C60;
  v8 = v4;
  v9 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __54__RPControlCenterClient_countdownInterruptWithStatus___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"countdownStatusPause"];
  if (result)
  {
    *(*(a1 + 40) + 64) = 1;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"countdownStatusResume"];
    if (result)
    {
      *(*(a1 + 40) + 64) = 0;
      v3 = *(a1 + 40);
      v4 = v3[9];

      return [v3 setCountdown:v4];
    }
  }

  return result;
}

- (id)imageForBundleID:(id)a3 extensionInfo:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_iconImageCache objectForKeyedSubscript:v6];
  if (v8)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "[RPControlCenterClient imageForBundleID:extensionInfo:]";
      v17 = 1024;
      v18 = 1062;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using cached image for extension", &v15, 0x12u);
    }
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "[RPControlCenterClient imageForBundleID:extensionInfo:]";
      v17 = 1024;
      v18 = 1052;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d image not found for extension", &v15, 0x12u);
    }

    v9 = MEMORY[0x277D755B8];
    v10 = [v7 objectForKey:@"extAppImgData"];
    v11 = [v9 imageWithData:v10];

    v21.width = 29.0;
    v21.height = 29.0;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    [v11 drawInRect:{0.0, 0.0, 29.0, 29.0}];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [(NSDictionary *)self->_iconImageCache setValue:v12 forKey:v6];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

void __42__RPControlCenterClient_updateCallActive___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RPControlCenterClient updateCallActive:]_block_invoke";
  v3 = 1024;
  v4 = 790;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d failed to retrieve CallIsActive from AVSystemController_CallIsActiveDidChangeNotification", &v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

@end