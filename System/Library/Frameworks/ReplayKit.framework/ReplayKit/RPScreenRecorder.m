@interface RPScreenRecorder
+ (RPScreenRecorder)sharedRecorder;
+ (id)validateHQLRSessionInfo:(id)a3;
- (BOOL)checkContextID:(id)a3 withHandler:(id)a4;
- (BOOL)isAvailable;
- (BOOL)isConnectionInterruptedOrInvalid:(id)a3;
- (BOOL)screenRecordingAllowed;
- (BOOL)shouldNotifyDidStop;
- (CGSize)currentWindowSize;
- (RPScreenRecorder)init;
- (id)applicationWindow;
- (id)audioQueue;
- (id)currentWindowLayerContextID;
- (id)delegate;
- (id)handleUnavailableState;
- (id)processQueue;
- (id)videoQueue;
- (void)captureHandlerWithAudioSample:(id)a3 bufferType:(int64_t)a4;
- (void)captureHandlerWithSample:(id)a3 timingData:(id)a4;
- (void)clientDidUpdateBroadcastServiceInfo:(id)a3;
- (void)dealloc;
- (void)didStopRecordingWithError:(id)a3 previewViewController:(id)a4;
- (void)discardRecordingWithHandler:(void *)handler;
- (void)exportClipToURL:(NSURL *)url duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler;
- (void)handleUnavailableState;
- (void)instantiatePipView;
- (void)isScreenRecordingAvailable;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)a3 movieURL:(id)a4;
- (void)recordingLockInterrupted:(id)a3;
- (void)recordingTimerDidUpdate:(id)a3;
- (void)removePipView;
- (void)resumeHQLR;
- (void)resumeInAppBroadcast;
- (void)resumeInAppCapture;
- (void)resumeInAppClip;
- (void)resumeInAppRecording;
- (void)resumeSystemBroadcast;
- (void)resumeSystemRecording;
- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4;
- (void)saveVideo:(id)a3 handler:(id)a4;
- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4;
- (void)setBroadcastURL:(id)a3;
- (void)setCameraEnabled:(BOOL)cameraEnabled;
- (void)setCameraPosition:(RPCameraPosition)cameraPosition;
- (void)setDelegate:(id)delegate;
- (void)setMixedRealityCameraEnabled:(BOOL)a3;
- (void)setSecondDelegate:(id)a3;
- (void)setWindowRotationLocked:(BOOL)a3;
- (void)setupSystemBroadcastWithExtension:(id)a3 handler:(id)a4;
- (void)shouldResumeSessionType:(id)a3;
- (void)startCaptureWithHandler:(void *)captureHandler completionHandler:(void *)completionHandler;
- (void)startClipBufferingWithCompletionHandler:(void *)completionHandler;
- (void)startHQLRWithSessionInfo:(id)a3 handler:(id)a4;
- (void)startInAppBroadcastWithHandler:(id)a3;
- (void)startRecordingWithHandler:(void *)handler;
- (void)startSystemBroadcastWithHandler:(id)a3;
- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)a3 handler:(id)a4;
- (void)stopCaptureWithHandler:(void *)handler;
- (void)stopClipBufferingWithCompletionHandler:(void *)completionHandler;
- (void)stopHQLR:(id)a3;
- (void)stopInAppBroadcastWithHandler:(id)a3;
- (void)stopRecordingWithAdditionalShareFileAttachment:(id)a3 overrideShareMessage:(id)a4 previewViewControllerOverrideTintColor:(id)a5 handler:(id)a6;
- (void)stopRecordingWithHandler:(void *)handler;
- (void)stopRecordingWithOutputURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)stopRecordingWithVideoURLHandler:(id)a3;
- (void)stopSystemBroadcastWithHandler:(id)a3;
- (void)stopSystemRecording:(id)a3;
- (void)stopSystemRecordingWithURLHandler:(id)a3;
- (void)updateRecordingAvailability:(id)a3;
- (void)updateScreenRecordingStateWithCurrentState:(id)a3;
- (void)updateStateWithActive:(BOOL)a3 error:(id)a4;
@end

@implementation RPScreenRecorder

- (RPScreenRecorder)init
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = RPScreenRecorder;
  v2 = [(RPScreenRecorder *)&v6 init];
  if (v2)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v8 = "[RPScreenRecorder init]";
      v9 = 1024;
      v10 = 138;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
    }

    *(v2 + 9) = 0;
    v2[16] = 0;
    *(v2 + 6) = 0;
    v3 = *(v2 + 13);
    *(v2 + 13) = 0;

    v2[8] = 1;
    [v2 updateStateWithActive:0 error:0];
    [v2 isScreenRecordingAvailable];
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "[RPScreenRecorder setDelegate:]";
    v12 = 1024;
    v13 = 168;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate %p", &v10, 0x1Cu);
  }

  v5 = objc_storeWeak(&self->_delegate, v4);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v10 = 136446722;
      v11 = "[RPScreenRecorder setDelegate:]";
      v12 = 1024;
      v13 = 171;
      v14 = 1024;
      LODWORD(v15) = available;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v10, 0x18u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained screenRecorderDidChangeAvailability:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSecondDelegate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPScreenRecorder setSecondDelegate:]";
    v11 = 1024;
    v12 = 177;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d secondDelegate %p", &v9, 0x1Cu);
  }

  objc_storeStrong(&self->_secondDelegate, a3);
  secondDelegate = self->_secondDelegate;
  if (objc_opt_respondsToSelector())
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v9 = 136446722;
      v10 = "[RPScreenRecorder setSecondDelegate:]";
      v11 = 1024;
      v12 = 180;
      v13 = 1024;
      LODWORD(v14) = available;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v9, 0x18u);
    }

    [(RPScreenRecorderDelegate *)self->_secondDelegate screenRecorderDidChangeAvailability:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMixedRealityCameraEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[RPScreenRecorder setMixedRealityCameraEnabled:]";
    v8 = 1024;
    v9 = 200;
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    v13 = [(RPScreenRecorder *)self isMixedRealityCameraEnabled];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d :%d from current mixed reality camera state:%d", &v6, 0x1Eu);
  }

  if (self->_mixedRealityCameraEnabled != v3)
  {
    self->_mixedRealityCameraEnabled = v3;
  }

  [(RPScreenRecorder *)self notifyDelegateOfUpdatedState];
  v5 = *MEMORY[0x277D85DE8];
}

+ (RPScreenRecorder)sharedRecorder
{
  v13 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RPScreenRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRecorder_onceToken != -1)
  {
    dispatch_once(&sharedRecorder_onceToken, block);
  }

  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "+[RPScreenRecorder sharedRecorder]";
    v9 = 1024;
    v10 = 239;
    v11 = 2048;
    v12 = a1;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d Accessing the sharedRecorder %p", buf, 0x1Cu);
  }

  v3 = sharedRecorder_replayRecorder;
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __34__RPScreenRecorder_sharedRecorder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedRecorder_replayRecorder;
  sharedRecorder_replayRecorder = v2;

  v4 = [sharedRecorder_replayRecorder processQueue];
  dispatch_async(v4, &__block_literal_global_4);

  v5 = sharedRecorder_replayRecorder;

  return [v5 setCameraPosition:1];
}

void __34__RPScreenRecorder_sharedRecorder__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 addObserver:sharedRecorder_replayRecorder selector:sel_updateRecordingAvailability_ name:*MEMORY[0x277D25CA0] object:0];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[RPScreenRecorder dealloc]";
    v8 = 1024;
    v9 = 244;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RPScreenRecorder;
  [(RPScreenRecorder *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAvailable
{
  v13 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    available = self->_available;
    v7 = 136446722;
    v8 = "[RPScreenRecorder isAvailable]";
    v9 = 1024;
    v10 = 251;
    v11 = 1024;
    v12 = available;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d isAvailable %d", &v7, 0x18u);
  }

  v4 = self->_available;
  if (!v4)
  {
    [(RPScreenRecorder *)self isScreenRecordingAvailable];
    v4 = self->_available;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)stopRecordingWithVideoURLHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder stopRecordingWithVideoURLHandler:]";
    v8 = 1024;
    v9 = 272;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  [(RPScreenRecorder *)self stopSystemRecordingWithURLHandler:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingWithAdditionalShareFileAttachment:(id)a3 overrideShareMessage:(id)a4 previewViewControllerOverrideTintColor:(id)a5 handler:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "[RPScreenRecorder stopRecordingWithAdditionalShareFileAttachment:overrideShareMessage:previewViewControllerOverrideTintColor:handler:]";
    v17 = 1024;
    v18 = 285;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v15, 0x12u);
  }

  [(RPScreenRecorder *)self stopRecordingWithHandler:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingWithHandler:(void *)handler
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPScreenRecorder startRecordingWithHandler:]";
    v11 = 1024;
    v12 = 291;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startRecordingWithHandler:];
    }

    v5 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (self->_available)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke;
    v7[3] = &unk_278B61D70;
    v7[4] = self;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else if (v4)
  {
    v5 = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(v4 + 2))(v4, v5);
LABEL_15:
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startInAppRecordingWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:v11 withHandler:{v4, v6}];
  }
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPScreenRecorder startRecordingWithHandler:]_block_invoke";
    v23 = 1024;
    v24 = 324;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9;
  v16[3] = &unk_278B621C8;
  v20 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v7;
  v18 = v12;
  v19 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 16);

    v5();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9_cold_1();
  }
}

- (void)stopRecordingWithHandler:(void *)handler
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopRecordingWithHandler:]";
    v12 = 1024;
    v13 = 360;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke;
    v8[3] = &unk_278B62240;
    v8[4] = self;
    v9 = v4;
    [v5 stopInAppRecordingWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopRecordingWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateStateWithActive:0 error:v6];
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v6)
    {
      if (__RPLogLevel <= 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_cold_1(v6);
        }

        v7 = *(a1 + 40);
      }

      (*(v7 + 16))(v7, 0, v6);
    }

    else if (v5)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v13 = "[RPScreenRecorder stopRecordingWithHandler:]_block_invoke";
        v14 = 1024;
        v15 = 378;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop recording successful", buf, 0x12u);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_12;
      v9[3] = &unk_278B61D70;
      v10 = v5;
      v11 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_12(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_2;
  v2[3] = &unk_278B62218;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [RPPreviewViewController loadPreviewViewControllerWithMovieURL:v1 attachmentURL:0 overrideShareMessage:0 overrideTintColor:0 completion:v2];
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPScreenRecorder stopRecordingWithHandler:]_block_invoke_2";
    v9 = 1024;
    v10 = 394;
    v11 = 1024;
    v12 = v5 == 1;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d shouldApplyPadUILayout=%d", &v7, 0x18u);
  }

  if (v5 == 1)
  {
    [v3 setModalPresentationStyle:7];
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingWithOutputURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = url;
  v7 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPScreenRecorder stopRecordingWithOutputURL:completionHandler:]";
    v15 = 1024;
    v16 = 413;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (!self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopRecordingWithOutputURL:completionHandler:];
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v9 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    v7[2](v7, v9);

    goto LABEL_12;
  }

  if (!self->_systemRecording)
  {
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
  }

  v8 = +[RPDaemonProxy daemonProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__RPScreenRecorder_stopRecordingWithOutputURL_completionHandler___block_invoke;
  v11[3] = &unk_278B61E88;
  v11[4] = self;
  v12 = v7;
  [v8 stopInAppRecordingWithUrl:v6 handler:v11];

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

void __65__RPScreenRecorder_stopRecordingWithOutputURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setRecording:0];
  [*(a1 + 32) updateProcessIDForAudioCapture:0];
  [*(a1 + 32) updateStateWithActive:0 error:v4];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)discardRecordingWithHandler:(void *)handler
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPScreenRecorder discardRecordingWithHandler:]";
    v9 = 1024;
    v10 = 441;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  if (!self->_recording)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    [v5 discardInAppRecordingWithHandler:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pauseInAppRecording
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder pauseInAppRecording]";
    v7 = 1024;
    v8 = 449;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppRecording];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resumeInAppRecording
{
  v17 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v10 = "[RPScreenRecorder resumeInAppRecording]";
    v11 = 1024;
    v12 = 457;
    v13 = 1024;
    v14 = recording;
    v15 = 1024;
    v16 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v6 = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__RPScreenRecorder_resumeInAppRecording__block_invoke;
    v8[3] = &unk_278B62268;
    v8[4] = self;
    [v5 resumeInAppRecordingWithWindowLayerContextID:v6 completionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__RPScreenRecorder_resumeInAppRecording__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[RPScreenRecorder resumeInAppRecording]_block_invoke";
      v15 = 1024;
      v16 = 463;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v13, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startCaptureWithHandler:(void *)captureHandler completionHandler:(void *)completionHandler
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = captureHandler;
  v7 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPScreenRecorder startCaptureWithHandler:completionHandler:]";
    v15 = 1024;
    v16 = 479;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startCaptureWithHandler:completionHandler:];
    }

    v8 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (self->_available)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke;
    block[3] = &unk_278B62290;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (v7)
  {
    v8 = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(v7 + 2))(v7, v8);
LABEL_15:
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    v7 = [*(a1 + 48) copy];
    [*(a1 + 32) setCaptureHandler:v7];

    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v8 = [*(a1 + 32) isCameraEnabled];
    v9 = [*(a1 + 32) isMicrophoneEnabled];
    v10 = +[RPDaemonProxy daemonProxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2;
    v12[3] = &unk_278B621F0;
    v11 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v11;
    [v10 startInAppCaptureWithContextID:v2 windowSize:v9 microphoneEnabled:v8 cameraEnabled:v12 withHandler:{v4, v6}];
  }
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPScreenRecorder startCaptureWithHandler:completionHandler:]_block_invoke";
    v23 = 1024;
    v24 = 515;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19;
  v16[3] = &unk_278B621C8;
  v20 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v7;
  v18 = v12;
  v19 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 16);

    v5();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19_cold_1();
  }
}

- (void)stopCaptureWithHandler:(void *)handler
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopCaptureWithHandler:]";
    v12 = 1024;
    v13 = 552;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__RPScreenRecorder_stopCaptureWithHandler___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [v5 stopInAppCaptureWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopCaptureWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __43__RPScreenRecorder_stopCaptureWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)pauseInAppCapture
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder pauseInAppCapture]";
    v7 = 1024;
    v8 = 573;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppCapture];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resumeInAppCapture
{
  v17 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v10 = "[RPScreenRecorder resumeInAppCapture]";
    v11 = 1024;
    v12 = 581;
    v13 = 1024;
    v14 = recording;
    v15 = 1024;
    v16 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v6 = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__RPScreenRecorder_resumeInAppCapture__block_invoke;
    v8[3] = &unk_278B62268;
    v8[4] = self;
    [v5 resumeInAppCaptureWithWindowLayerContextID:v6 completionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __38__RPScreenRecorder_resumeInAppCapture__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[RPScreenRecorder resumeInAppCapture]_block_invoke";
      v15 = 1024;
      v16 = 587;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v13, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)captureHandlerWithSample:(id)a3 timingData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RPScreenRecorder *)self videoQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RPScreenRecorder_captureHandlerWithSample_timingData___block_invoke;
  block[3] = &unk_278B622B8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__RPScreenRecorder_captureHandlerWithSample_timingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ioSurface];
  memset(&v5, 0, sizeof(v5));
  [*(a1 + 40) getBytes:&v5 length:72];
  v4 = v5;
  v3 = RPSampleBufferUtilities_CreateSampleBufferFromIOSurface(v2, &v4);
  (*(*(*(a1 + 48) + 88) + 16))();
  CFRelease(v3);
}

- (void)captureHandlerWithAudioSample:(id)a3 bufferType:(int64_t)a4
{
  v6 = a3;
  v7 = [(RPScreenRecorder *)self audioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RPScreenRecorder_captureHandlerWithAudioSample_bufferType___block_invoke;
  block[3] = &unk_278B622E0;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __61__RPScreenRecorder_captureHandlerWithAudioSample_bufferType___block_invoke(uint64_t a1)
{
  DecodeAudioSampleBuffer = RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer(*(a1 + 32));
  if (DecodeAudioSampleBuffer)
  {
    v3 = DecodeAudioSampleBuffer;
    v4 = *(a1 + 48);
    (*(*(*(a1 + 40) + 88) + 16))();

    CFRelease(v3);
  }
}

- (void)startInAppBroadcastWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startInAppBroadcastWithHandler:]";
    v12 = 1024;
    v13 = 638;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startInAppBroadcastWithHandler:];
      if (v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4)
    {
LABEL_8:
      v5 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
LABEL_13:
      v6 = v5;
      v4[2](v4, v5);

      goto LABEL_14;
    }

    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startInAppBroadcastWithHandler:];
    }
  }

  else if (self->_available)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke;
    v8[3] = &unk_278B61D70;
    v8[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else if (v4)
  {
    v5 = [(RPScreenRecorder *)self handleUnavailableState];
    goto LABEL_13;
  }

LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startInAppBroadcastWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:0 listenerEndpoint:v11 withHandler:{v4, v6}];
  }
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPScreenRecorder startInAppBroadcastWithHandler:]_block_invoke";
    v23 = 1024;
    v24 = 672;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21;
  v16[3] = &unk_278B621C8;
  v20 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v7;
  v18 = v12;
  v19 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 16);

    v5();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21_cold_1();
  }
}

- (void)stopInAppBroadcastWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopInAppBroadcastWithHandler:]";
    v12 = 1024;
    v13 = 711;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [v5 stopInAppBroadcastWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopInAppBroadcastWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) updateStateWithActive:0 error:0];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)pauseInAppBroadcast
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPScreenRecorder pauseInAppBroadcast]";
    v7 = 1024;
    v8 = 733;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  if (self->_recording && !self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    [v3 pauseInAppBroadcast];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resumeInAppBroadcast
{
  v17 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v10 = "[RPScreenRecorder resumeInAppBroadcast]";
    v11 = 1024;
    v12 = 741;
    v13 = 1024;
    v14 = recording;
    v15 = 1024;
    v16 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v6 = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__RPScreenRecorder_resumeInAppBroadcast__block_invoke;
    v8[3] = &unk_278B62268;
    v8[4] = self;
    [v5 resumeInAppBroadcastWithWindowLayerContextID:v6 completionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__RPScreenRecorder_resumeInAppBroadcast__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[RPScreenRecorder resumeInAppBroadcast]_block_invoke";
      v15 = 1024;
      v16 = 747;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v13, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setBroadcastURL:(id)a3
{
  objc_storeStrong(&self->_broadcastURL, a3);
  v4 = a3;
  v5 = +[RPDaemonProxy daemonProxy];
  [v5 setBroadcastURL:v4];
}

- (void)clientDidUpdateBroadcastServiceInfo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  activeBroadcastController = self->_activeBroadcastController;
  if (activeBroadcastController)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_activeBroadcastController;
        v13 = 136446722;
        v14 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
        v15 = 1024;
        v16 = 769;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d activeBroadcastController: %@", &v13, 0x1Cu);
      }

      activeBroadcastController = self->_activeBroadcastController;
    }

    [(RPBroadcastController *)activeBroadcastController setServiceInfo:v4];
    v7 = [(RPBroadcastController *)self->_activeBroadcastController delegate];

    if (v7)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
        v13 = 136446722;
        v14 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
        v15 = 1024;
        v16 = 772;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d activeBroadcastController delegate: %@", &v13, 0x1Cu);
      }

      v9 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136446466;
          v14 = "[RPScreenRecorder clientDidUpdateBroadcastServiceInfo:]";
          v15 = 1024;
          v16 = 775;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate responds to protocol", &v13, 0x12u);
        }

        v11 = [(RPBroadcastController *)self->_activeBroadcastController delegate];
        [v11 broadcastController:self->_activeBroadcastController didUpdateServiceInfo:v4];
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
      }
    }

    else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
    }
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder clientDidUpdateBroadcastServiceInfo:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)a3 handler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]";
    v12 = 1024;
    v13 = 791;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(RPScreenRecorder *)self setSystemRecording:1];
  if (self->_available)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke;
    v8[3] = &unk_278B61D70;
    v8[4] = self;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else if (v5)
  {
    v6 = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_14:
    (*(v5 + 2))(v5, v6);
LABEL_15:
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Fbrootwindow.isa);
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) setWindowToRecord:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v39 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v14 = +[RPFeatureFlagUtility sharedInstance];
  v15 = [v14 screenRecordingCameraPip];

  if ((v15 & 1) == 0)
  {
    [*(a1 + 32) setCameraEnabled:0];
  }

  v16 = [*(a1 + 32) isMicrophoneEnabled];
  v17 = [*(a1 + 32) isCameraEnabled];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) isMixedRealityCameraEnabled];
    *buf = 136447234;
    v30 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]_block_invoke";
    v31 = 1024;
    v32 = 832;
    v33 = 1024;
    v34 = v16;
    v35 = 1024;
    v36 = v17;
    v37 = 1024;
    v38 = v18;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempting to start system recording with mic:%d cam:%d mixed reality cam:%d", buf, 0x24u);
  }

  v19 = +[RPDaemonProxy daemonProxy];
  v20 = [*(a1 + 32) isMixedRealityCameraEnabled];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27;
  v23[3] = &unk_278B61E88;
  v21 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v21;
  [v19 startSystemRecordingWithContextID:v9 windowSize:v16 microphoneEnabled:v17 cameraEnabled:v20 mixedRealityCameraEnabled:v23 withHandler:{v11, v13}];

  v22 = *MEMORY[0x277D85DE8];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startSystemRecordingWithMicrophoneEnabled:handler:]_block_invoke";
    v12 = 1024;
    v13 = 842;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28_cold_1();
  }
}

- (void)stopSystemRecording:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopSystemRecording:]";
    v12 = 1024;
    v13 = 869;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__RPScreenRecorder_stopSystemRecording___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [v5 stopSystemRecordingWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemRecording:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__RPScreenRecorder_stopSystemRecording___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  [*(a1 + 32) setSystemRecording:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)stopSystemRecordingWithURLHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopSystemRecordingWithURLHandler:]";
    v12 = 1024;
    v13 = 892;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__RPScreenRecorder_stopSystemRecordingWithURLHandler___block_invoke;
    v8[3] = &unk_278B62240;
    v8[4] = self;
    v9 = v4;
    [v5 stopSystemRecordingWithURLHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemRecordingWithURLHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __54__RPScreenRecorder_stopSystemRecordingWithURLHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) updateStateWithActive:0 error:v5];
  [*(a1 + 32) setSystemRecording:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)resumeSystemRecording
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPScreenRecorder resumeSystemRecording]";
    v8 = 1024;
    v9 = 915;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__RPScreenRecorder_resumeSystemRecording__block_invoke;
    v5[3] = &unk_278B61EB0;
    v5[4] = self;
    [v3 resumeSystemRecordingWithCompletionHandler:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __41__RPScreenRecorder_resumeSystemRecording__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__RPScreenRecorder_resumeSystemRecording__block_invoke_cold_1();
  }
}

- (void)setupSystemBroadcastWithExtension:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPScreenRecorder setupSystemBroadcastWithExtension:handler:]";
    v19 = 1024;
    v20 = 931;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 bundleIdentifier];

  v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v10 = objc_alloc_init(RPBroadcastConfiguration);
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10];
  v12 = +[RPDaemonProxy daemonProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke;
  v15[3] = &unk_278B61DE8;
  v16 = v6;
  v13 = v6;
  [v12 setupSystemBroadcastWithHostBundleID:v8 broadcastExtensionBundleID:v5 broadcastConfigurationData:v11 userInfo:v9 handler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && __RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startSystemBroadcastWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startSystemBroadcastWithHandler:]";
    v12 = 1024;
    v13 = 949;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startSystemBroadcastWithHandler:];
    }

    v5 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
    goto LABEL_13;
  }

  [(RPScreenRecorder *)self setSystemRecording:1];
  if (self->_available)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke;
    v8[3] = &unk_278B61D70;
    v8[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else if (v4)
  {
    v5 = [(RPScreenRecorder *)self handleUnavailableState];
LABEL_13:
    v6 = v5;
    (*(v4 + 2))(v4, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v4 = [v3 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        NSClassFromString(&cfstr_Fbrootwindow.isa);
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) setWindowToRecord:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v14 = +[RPFeatureFlagUtility sharedInstance];
  v15 = [v14 screenRecordingCameraPip];

  if ((v15 & 1) == 0)
  {
    [*(a1 + 32) setCameraEnabled:0];
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) isMicrophoneEnabled];
    v17 = [*(a1 + 32) isCameraEnabled];
    v18 = [*(a1 + 32) isMixedRealityCameraEnabled];
    *buf = 136447234;
    v32 = "[RPScreenRecorder startSystemBroadcastWithHandler:]_block_invoke";
    v33 = 1024;
    v34 = 977;
    v35 = 1024;
    v36 = v16;
    v37 = 1024;
    v38 = v17;
    v39 = 1024;
    v40 = v18;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempting to start system broadcast with mic:%d cam:%d mixed reality cam:%d", buf, 0x24u);
  }

  v19 = +[RPDaemonProxy daemonProxy];
  v20 = [*(a1 + 32) isMicrophoneEnabled];
  v21 = [*(a1 + 32) isCameraEnabled];
  v22 = [*(a1 + 32) isMixedRealityCameraEnabled];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34;
  v25[3] = &unk_278B61E88;
  v23 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v23;
  [v19 startSystemBroadcastWithContextID:v9 windowSize:v20 microphoneEnabled:v21 cameraEnabled:v22 mixedRealityCameraEnabled:0 listenerEndpoint:v25 withHandler:{v11, v13}];

  v24 = *MEMORY[0x277D85DE8];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startSystemBroadcastWithHandler:]_block_invoke";
    v12 = 1024;
    v13 = 988;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35_cold_1();
  }
}

- (void)stopSystemBroadcastWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopSystemBroadcastWithHandler:]";
    v12 = 1024;
    v13 = 1013;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RPScreenRecorder_stopSystemBroadcastWithHandler___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [v5 stopSystemBroadcastWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopSystemBroadcastWithHandler:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__RPScreenRecorder_stopSystemBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)resumeSystemBroadcast
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPScreenRecorder resumeSystemBroadcast]";
    v8 = 1024;
    v9 = 1031;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke;
    v5[3] = &unk_278B61EB0;
    v5[4] = self;
    [v3 resumeSystemBroadcastWithCompletionHandler:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke_cold_1();
  }
}

- (void)startHQLRWithSessionInfo:(id)a3 handler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[RPScreenRecorder startHQLRWithSessionInfo:handler:]";
    v16 = 1024;
    v17 = 1048;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d sessionInfo=%@", buf, 0x1Cu);
  }

  v8 = [RPScreenRecorder validateHQLRSessionInfo:v6];
  if (!v8)
  {
    if (self->_recording)
    {
      if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPScreenRecorder startHQLRWithSessionInfo:handler:];
      }

      v9 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [(RPScreenRecorder *)self setSystemRecording:1];
      if (self->_available)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke;
        block[3] = &unk_278B61E60;
        block[4] = self;
        v12 = v6;
        v13 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_21;
      }

      if (!v7)
      {
        goto LABEL_21;
      }

      v9 = [(RPScreenRecorder *)self handleUnavailableState];
    }

    (*(v7 + 2))(v7, v9);
LABEL_20:

    goto LABEL_21;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder startHQLRWithSessionInfo:handler:];
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    (*(v7 + 2))(v7, v8);
  }

LABEL_21:

  v10 = *MEMORY[0x277D85DE8];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
  v2 = +[RPDaemonProxy daemonProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2;
  v4[3] = &unk_278B61E88;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 startHQLRWithSessionInfo:v3 windowSize:v4 handler:{1920.0, 1080.0}];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startHQLRWithSessionInfo:handler:]_block_invoke";
    v12 = 1024;
    v13 = 1077;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38;
  block[3] = &unk_278B61E60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) updateStateWithActive:1 error:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 16);

    v4();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38_cold_1();
  }
}

- (void)stopHQLR:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopHQLR:]";
    v12 = 1024;
    v13 = 1104;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPScreenRecorder *)self isRecording])
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__RPScreenRecorder_stopHQLR___block_invoke;
    v8[3] = &unk_278B61E88;
    v8[4] = self;
    v9 = v4;
    [v5 stopHQLRWithHandler:v8];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopHQLR:];
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __29__RPScreenRecorder_stopHQLR___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateStateWithActive:0 error:?];
  [*(a1 + 32) setSystemRecording:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)resumeHQLR
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPScreenRecorder resumeHQLR]";
    v8 = 1024;
    v9 = 1127;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording && self->_paused)
  {
    v3 = +[RPDaemonProxy daemonProxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__RPScreenRecorder_resumeHQLR__block_invoke;
    v5[3] = &unk_278B61EB0;
    v5[4] = self;
    [v3 resumeHQLRWithCompletionHandler:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __30__RPScreenRecorder_resumeHQLR__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 setPaused:0];
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __30__RPScreenRecorder_resumeHQLR__block_invoke_cold_1();
  }
}

+ (id)validateHQLRSessionInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"saveToDestination"];
  v5 = [v3 objectForKeyedSubscript:@"fileURL"];

  if ([v4 isEqualToString:@"com.apple.replaykit.saveToURL"] && (!v5 || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6)))
  {
    v7 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5820 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startClipBufferingWithCompletionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder startClipBufferingWithCompletionHandler:]";
    v12 = 1024;
    v13 = 1153;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder startClipBufferingWithCompletionHandler:];
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v4)
    {
LABEL_8:
      v5 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5830 userInfo:0];
LABEL_13:
      v6 = v5;
      v4[2](v4, v5);
    }
  }

  else if (self->_available)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke;
    v8[3] = &unk_278B61D70;
    v8[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else if (v4)
  {
    v5 = [(RPScreenRecorder *)self handleUnavailableState];
    goto LABEL_13;
  }

LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentWindowLayerContextID];
  [*(a1 + 32) currentWindowSize];
  v4 = v3;
  v6 = v5;
  if ([*(a1 + 32) checkContextID:v2 withHandler:*(a1 + 40)])
  {
    [*(a1 + 32) registerAppForStateChangeSetRotationLock:1];
    v7 = [*(a1 + 32) isCameraEnabled];
    v8 = [*(a1 + 32) isMicrophoneEnabled];
    v9 = +[RPDaemonProxy daemonProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_278B621F0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v9 startClipBufferingWithContextID:v2 windowSize:v8 microphoneEnabled:v7 cameraEnabled:v11 withCompletionHandler:{v4, v6}];
  }
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPScreenRecorder startClipBufferingWithCompletionHandler:]_block_invoke";
    v23 = 1024;
    v24 = 1186;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d started", buf, 0x12u);
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50;
  v16[3] = &unk_278B621C8;
  v20 = a3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v7;
  v18 = v12;
  v19 = v13;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) instantiatePipView];
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  [*(a1 + 40) updateStateWithActive:1 error:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 16);

    v5();
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50_cold_1();
  }
}

- (void)stopClipBufferingWithCompletionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPScreenRecorder stopClipBufferingWithCompletionHandler:]";
    v12 = 1024;
    v13 = 1224;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (!self->_recording)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder stopClipBufferingWithCompletionHandler:];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5829 userInfo:0];
    v4[2](v4, v6);

    goto LABEL_10;
  }

  v5 = +[RPDaemonProxy daemonProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__RPScreenRecorder_stopClipBufferingWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B61E88;
  v8[4] = self;
  v9 = v4;
  [v5 stopClipBufferingWithCompletionHandler:v8];

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

void __59__RPScreenRecorder_stopClipBufferingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder stopClipBufferingWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 1228;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stopped", &v6, 0x12u);
  }

  [*(a1 + 32) updateStateWithActive:0 error:v3];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)exportClipToURL:(NSURL *)url duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = url;
  v9 = completionHandler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPScreenRecorder exportClipToURL:duration:completionHandler:]";
    v14 = 1024;
    v15 = 1245;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  if (self->_recording)
  {
    v10 = +[RPDaemonProxy daemonProxy];
    [v10 exportClipToURL:v8 duration:v9 completionHandler:duration];
LABEL_10:

    goto LABEL_11;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPScreenRecorder exportClipToURL:duration:completionHandler:];
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    v10 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5832 userInfo:0];
    v9[2](v9, v10);
    goto LABEL_10;
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resumeInAppClip
{
  v17 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136446978;
    v10 = "[RPScreenRecorder resumeInAppClip]";
    v11 = 1024;
    v12 = 1258;
    v13 = 1024;
    v14 = recording;
    v15 = 1024;
    v16 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording %d paused %d", buf, 0x1Eu);
  }

  if (self->_recording && self->_paused)
  {
    v5 = +[RPDaemonProxy daemonProxy];
    v6 = [(RPScreenRecorder *)self currentWindowLayerContextID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__RPScreenRecorder_resumeInAppClip__block_invoke;
    v8[3] = &unk_278B62268;
    v8[4] = self;
    [v5 resumeInAppClipWithWindowLayerContextID:v6 completionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __35__RPScreenRecorder_resumeInAppClip__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) setPaused:0];
  if (v7)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[RPScreenRecorder resumeInAppClip]_block_invoke";
      v15 = 1024;
      v16 = 1264;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d can not resume with error %@", &v13, 0x1Cu);
    }

    [*(a1 + 32) recordingDidStopWithError:v7 movieURL:0];
  }

  [*(a1 + 32) setHasUserConsentForCamera:a3];
  [*(a1 + 32) setHasUserConsentForMicrophone:a4];
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = v8[11];
  }

  else
  {
    v9 = 0;
  }

  [v8 setCameraEnabled:v9 & 1];
  v10 = *(a1 + 32);
  if (a4)
  {
    v11 = v10[10];
  }

  else
  {
    v11 = 0;
  }

  [v10 setMicrophoneEnabled:v11 & 1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)saveVideoToCameraRoll:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder saveVideoToCameraRoll:handler:]";
    v14 = 1024;
    v15 = 1281;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__RPScreenRecorder_saveVideoToCameraRoll_handler___block_invoke;
  v10[3] = &unk_278B61DE8;
  v11 = v6;
  v8 = v6;
  [v7 saveVideoToCameraRoll:v5 handler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __50__RPScreenRecorder_saveVideoToCameraRoll_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveClipToCameraRoll:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder saveClipToCameraRoll:handler:]";
    v14 = 1024;
    v15 = 1291;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__RPScreenRecorder_saveClipToCameraRoll_handler___block_invoke;
  v10[3] = &unk_278B61DE8;
  v11 = v6;
  v8 = v6;
  [v7 saveClipToCameraRoll:v5 handler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__RPScreenRecorder_saveClipToCameraRoll_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveVideo:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPScreenRecorder saveVideo:handler:]";
    v14 = 1024;
    v15 = 1300;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7 = +[RPDaemonProxy daemonProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__RPScreenRecorder_saveVideo_handler___block_invoke;
  v10[3] = &unk_278B61DE8;
  v11 = v6;
  v8 = v6;
  [v7 saveVideo:v5 handler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __38__RPScreenRecorder_saveVideo_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removePipView
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RPScreenRecorder_removePipView__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__RPScreenRecorder_removePipView__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPScreenRecorder removePipView]_block_invoke";
    v9 = 1024;
    v10 = 1312;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d remove camera pip from view", &v7, 0x12u);
  }

  [*(*(a1 + 32) + 40) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCameraEnabled:(BOOL)cameraEnabled
{
  v3 = cameraEnabled;
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPScreenRecorder setCameraEnabled:]";
    v8 = 1024;
    v9 = 1326;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera enabled %d", &v6, 0x18u);
  }

  if (self->_cameraEnabled != v3)
  {
    if ([(RPScreenRecorder *)self isRecording])
    {
      if (v3)
      {
        if (self->_hasUserConsentForCamera)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v6 = 136446466;
            v7 = "[RPScreenRecorder setCameraEnabled:]";
            v8 = 1024;
            v9 = 1334;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start camera pip", &v6, 0x12u);
          }

          [(RPPipViewController *)self->_pipViewController startPipSession];
        }

        else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136446466;
          v7 = "[RPScreenRecorder setCameraEnabled:]";
          v8 = 1024;
          v9 = 1332;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Camera must be enabled first prior to startRecording", &v6, 0x12u);
        }
      }

      else
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136446466;
          v7 = "[RPScreenRecorder setCameraEnabled:]";
          v8 = 1024;
          v9 = 1338;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop camera pip", &v6, 0x12u);
        }

        [(RPPipViewController *)self->_pipViewController stopPipSession];
        [(RPScreenRecorder *)self removePipView];
      }
    }

    self->_cameraEnabled = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setCameraPosition:(RPCameraPosition)cameraPosition
{
  v16 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "[RPScreenRecorder setCameraPosition:]";
    v12 = 1024;
    v13 = 1355;
    v14 = 1024;
    v15 = cameraPosition;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d camera position %d", &v10, 0x18u);
  }

  if (self->_cameraPosition != cameraPosition)
  {
    pipViewController = self->_pipViewController;
    if (!pipViewController)
    {
LABEL_13:
      self->_cameraPosition = cameraPosition;
      goto LABEL_14;
    }

    if (cameraPosition == RPCameraPositionFront)
    {
      v6 = 2;
    }

    else
    {
      if (cameraPosition != RPCameraPositionBack)
      {
        goto LABEL_11;
      }

      v6 = 1;
    }

    [(RPPipViewController *)pipViewController setCameraPosition:v6];
LABEL_11:
    if ([(RPScreenRecorder *)self isRecording])
    {
      v7 = +[RPDaemonProxy daemonProxy];
      v8 = [(RPScreenRecorder *)self pipViewController];
      [v7 reportCameraUsage:{objc_msgSend(v8, "cameraPosition")}];
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)instantiatePipView
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 orientation];

  if ([(RPScreenRecorder *)self isCameraEnabled])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[RPScreenRecorder instantiatePipView]";
      v14 = 1024;
      v15 = 1385;
      v16 = 1024;
      v17 = [(RPScreenRecorder *)self cameraPosition];
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d create pip for camera position %d", &v12, 0x18u);
    }

    if ([(RPScreenRecorder *)self cameraPosition]== RPCameraPositionFront)
    {
      v5 = 2;
    }

    else
    {
      if ([(RPScreenRecorder *)self cameraPosition]!= RPCameraPositionBack)
      {
LABEL_10:
        v7 = +[RPDaemonProxy daemonProxy];
        v8 = [(RPScreenRecorder *)self pipViewController];
        [v7 reportCameraUsage:{objc_msgSend(v8, "cameraPosition")}];

        v9 = [(RPScreenRecorder *)self pipViewController];
        v10 = [v9 view];
        [(RPScreenRecorder *)self setCameraPreviewView:v10];

        goto LABEL_11;
      }

      v5 = 1;
    }

    v6 = [[RPPipViewController alloc] initWithOrientation:v4 position:v5];
    [(RPScreenRecorder *)self setPipViewController:v6];

    goto LABEL_10;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)isScreenRecordingAvailable
{
  v3 = [(RPScreenRecorder *)self processQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RPScreenRecorder_isScreenRecordingAvailable__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__RPScreenRecorder_isScreenRecordingAvailable__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) screenRecordingAllowed];
  v3 = [*(a1 + 32) screenRecordingSupportedOnDevice];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v2 & v3;
  if (__RPLogLevel <= 1)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 8);
      v16 = 136447490;
      v17 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
      v18 = 1024;
      v19 = 1430;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = 1;
      v24 = 1024;
      v25 = v2;
      v26 = 1024;
      v27 = v6 & 1;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recording available %i with display available %i, allowed %i, and supported on device %i", &v16, 0x2Au);
    }
  }

  v8 = *(a1 + 32);
  if (v5 != *(v8 + 8))
  {
    WeakRetained = objc_loadWeakRetained((v8 + 24));
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 8);
        v16 = 136446722;
        v17 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
        v18 = 1024;
        v19 = 1434;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v16, 0x18u);
      }

      v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
      [v12 screenRecorderDidChangeAvailability:*(a1 + 32)];
    }

    v13 = *(*(a1 + 32) + 160);
    if (objc_opt_respondsToSelector())
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1 + 32) + 8);
        v16 = 136446722;
        v17 = "[RPScreenRecorder isScreenRecordingAvailable]_block_invoke";
        v18 = 1024;
        v19 = 1438;
        v20 = 1024;
        v21 = v14;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify client available %d", &v16, 0x18u);
      }

      [*(*(a1 + 32) + 160) screenRecorderDidChangeAvailability:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateStateWithActive:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[RPScreenRecorder updateStateWithActive:error:]";
    v10 = 1024;
    v11 = 1457;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v6 != 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d update state with isActive %d error %d", &v8, 0x1Eu);
  }

  if (v6 || !v4)
  {
    [(RPScreenRecorder *)self setRecording:0];
    [(RPScreenRecorder *)self removePipView];
    [(RPScreenRecorder *)self updateProcessIDForAudioCapture:0];
    [(RPScreenRecorder *)self setWindowRotationLocked:0];
  }

  else
  {
    [(RPScreenRecorder *)self setRecording:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)handleUnavailableState
{
  if ([(RPScreenRecorder *)self screenRecordingAllowed])
  {
    v3 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder handleUnavailableState];
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5802 userInfo:0];
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder handleUnavailableState];
    }
  }

  [(RPScreenRecorder *)self isScreenRecordingAvailable];

  return v3;
}

- (id)applicationWindow
{
  v14 = *MEMORY[0x277D85DE8];
  windowToRecord = self->_windowToRecord;
  if (windowToRecord)
  {
    v3 = windowToRecord;
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 delegate];

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 window], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446466;
        v11 = "[RPScreenRecorder applicationWindow]";
        v12 = 1024;
        v13 = 1550;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d appWindow: app doesn't have the window property set on UIApplicationDelegate. Using first window.", &v10, 0x12u);
      }

      v6 = [MEMORY[0x277D75128] sharedApplication];
      v7 = [v6 windows];
      v3 = [v7 firstObject];
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (CGSize)currentWindowSize
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = v9;

  if (!self->_systemRecording)
  {
    v11 = [(RPScreenRecorder *)self applicationWindow];
    [v11 frame];
    v5 = v12;
    v7 = v13;
  }

  v14 = v5;
  v15 = v10 * ceilf(v14);
  v16 = v7;
  v17 = v10 * ceilf(v16);
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446978;
    v22 = "[RPScreenRecorder currentWindowSize]";
    v23 = 1024;
    v24 = 1568;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = v17;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d scaled window size width %.1f x height:%.1f", &v21, 0x26u);
  }

  v18 = *MEMORY[0x277D85DE8];
  v19 = v15;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)currentWindowLayerContextID
{
  v3 = [(RPScreenRecorder *)self windowToRecord];

  if (v3)
  {
    v4 = [(UIWindow *)self->_windowToRecord layer];
    v5 = [v4 context];
    v6 = [v5 contextId];
  }

  else
  {
    if (self->_systemRecording)
    {
      v6 = 0xFFFFFFFFLL;
      goto LABEL_7;
    }

    v4 = [(RPScreenRecorder *)self applicationWindow];
    v5 = [v4 layer];
    v7 = [v5 context];
    v6 = [v7 contextId];
  }

LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v9 = [v8 stringValue];

  return v9;
}

- (void)setWindowRotationLocked:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__RPScreenRecorder_setWindowRotationLocked___block_invoke;
  v3[3] = &unk_278B62308;
  v4 = a3;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __44__RPScreenRecorder_setWindowRotationLocked___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v5 = 136446722;
    v6 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
    v7 = 1024;
    v8 = 1631;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setWindowRotationLocked: %i", &v5, 0x18u);
  }

  if (*(a1 + 40) == 1)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
      v7 = 1024;
      v8 = 1640;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d disabling autorotation", &v5, 0x12u);
    }

    v3 = [*(a1 + 32) applicationWindow];
    [v3 beginDisablingInterfaceAutorotation];
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[RPScreenRecorder setWindowRotationLocked:]_block_invoke";
      v7 = 1024;
      v8 = 1651;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enabling autorotation", &v5, 0x12u);
    }

    v3 = [*(a1 + 32) applicationWindow];
    [v3 endDisablingInterfaceAutorotation];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)audioQueue
{
  if (audioQueue_onceToken != -1)
  {
    [RPScreenRecorder audioQueue];
  }

  v3 = audioQueue_sAudioQueue;

  return v3;
}

void __30__RPScreenRecorder_audioQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.AudioSampleQueue", v2);
  v1 = audioQueue_sAudioQueue;
  audioQueue_sAudioQueue = v0;
}

- (id)videoQueue
{
  if (videoQueue_onceToken != -1)
  {
    [RPScreenRecorder videoQueue];
  }

  v3 = videoQueue_sVideoQueue;

  return v3;
}

void __30__RPScreenRecorder_videoQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.VideoSampleQueue", v2);
  v1 = videoQueue_sVideoQueue;
  videoQueue_sVideoQueue = v0;
}

- (id)processQueue
{
  if (processQueue_onceToken != -1)
  {
    [RPScreenRecorder processQueue];
  }

  v3 = processQueue_sProcessQueue;

  return v3;
}

void __32__RPScreenRecorder_processQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.capture.ProcessQueue", v2);
  v1 = processQueue_sProcessQueue;
  processQueue_sProcessQueue = v0;
}

- (void)recordingLockInterrupted:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPScreenRecorder recordingLockInterrupted:]";
    v7 = 1024;
    v8 = 1692;
    v9 = 1024;
    v10 = [v3 code];
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d recordingLockInterrupted error[%d]", &v5, 0x18u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)recordingTimerDidUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPScreenRecorder recordingTimerDidUpdate:]";
    v9 = 1024;
    v10 = 1697;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d time[%@]", &v7, 0x1Cu);
  }

  v5 = [(RPScreenRecorder *)self privateDelegate];
  [v5 recordingTimerDidUpdate:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordingDidPause
{
  if (self->_recording)
  {
    [(RPScreenRecorder *)self setPaused:1];
  }
}

- (void)shouldResumeSessionType:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    systemRecording = self->_systemRecording;
    recording = self->_recording;
    paused = self->_paused;
    *buf = 136447234;
    v15 = "[RPScreenRecorder shouldResumeSessionType:]";
    v16 = 1024;
    v17 = 1710;
    v18 = 1024;
    v19 = systemRecording;
    v20 = 1024;
    v21 = recording;
    v22 = 1024;
    v23 = paused;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d system recording %d isRecording %d paused %d", buf, 0x24u);
  }

  if (self->_recording && self->_paused)
  {
    if ([v4 isEqualToString:@"RPInAppRecording"])
    {
      [(RPScreenRecorder *)self resumeInAppRecording];
    }

    else if ([v4 isEqualToString:@"RPInAppCapture"])
    {
      [(RPScreenRecorder *)self resumeInAppCapture];
    }

    else if ([v4 isEqualToString:@"RPInAppBroadcast"])
    {
      [(RPScreenRecorder *)self resumeInAppBroadcast];
    }

    else if ([v4 isEqualToString:@"RPInAppClip"])
    {
      [(RPScreenRecorder *)self resumeInAppClip];
    }

    else
    {
      if (![v4 isEqualToString:@"RPHQLR"])
      {
        if ([v4 isEqualToString:@"RPSystemRecording"])
        {
          v8 = dispatch_time(0, 200000000);
          v9 = [(RPScreenRecorder *)self processQueue];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __44__RPScreenRecorder_shouldResumeSessionType___block_invoke;
          v13[3] = &unk_278B61B70;
          v13[4] = self;
          v10 = v13;
        }

        else
        {
          if (![v4 isEqualToString:@"RPSystemBroadcast"])
          {
            goto LABEL_21;
          }

          v8 = dispatch_time(0, 200000000);
          v9 = [(RPScreenRecorder *)self processQueue];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __44__RPScreenRecorder_shouldResumeSessionType___block_invoke_2;
          v12[3] = &unk_278B61B70;
          v12[4] = self;
          v10 = v12;
        }

        dispatch_after(v8, v9, v10);

        goto LABEL_21;
      }

      [(RPScreenRecorder *)self resumeHQLR];
    }
  }

LABEL_21:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateScreenRecordingStateWithCurrentState:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder updateScreenRecordingStateWithCurrentState:]";
    v8 = 1024;
    v9 = 1740;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d updateScreenRecordingStateWithCurrentState", &v6, 0x12u);
  }

  [(RPScreenRecorder *)self notifyDelegateOfUpdatedState];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordingDidStopWithError:(id)a3 movieURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke;
  block[3] = &unk_278B622B8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
    v15 = 1024;
    v16 = 1746;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    [v2 setWindowRotationLocked:0];
    v2 = *(a1 + 32);
  }

  [v2 updateStateWithActive:0 error:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((*(v3 + 16) & 1) != 0 || ([*(v3 + 96) delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, v3 = *(a1 + 32), (v5 & 1) == 0))
  {
    if ([v3 shouldNotifyDidStop])
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        if (__RPLogLevel <= 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 48);
            *buf = 136446722;
            v14 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
            v15 = 1024;
            v16 = 1770;
            v17 = 2112;
            v18 = v8;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL: %@", buf, 0x1Cu);
          }

          v7 = *(a1 + 48);
        }

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke_88;
        v11[3] = &unk_278B62330;
        v9 = *(a1 + 40);
        v11[4] = *(a1 + 32);
        v12 = v9;
        [RPPreviewViewController loadPreviewViewControllerWithMovieURL:v7 completion:v11];
      }

      else
      {
        [*(a1 + 32) didStopRecordingWithError:*(a1 + 40) previewViewController:0];
      }
    }
  }

  else
  {
    v6 = [*(v3 + 96) delegate];
    [v6 broadcastController:*(*(a1 + 32) + 96) didFinishWithError:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__RPScreenRecorder_recordingDidStopWithError_movieURL___block_invoke_88(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPScreenRecorder recordingDidStopWithError:movieURL:]_block_invoke";
    v7 = 1024;
    v8 = 1776;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d previewViewController %@", &v5, 0x1Cu);
  }

  [v3 setPreviewControllerDelegate:*(a1 + 32)];
  [*(a1 + 32) didStopRecordingWithError:*(a1 + 40) previewViewController:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConnectionInterruptedOrInvalid:(id)a3
{
  v3 = a3;
  v4 = [v3 code] == -5815 || objc_msgSend(v3, "code") == -5814;

  return v4;
}

- (BOOL)shouldNotifyDidStop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();
  }

  secondDelegate = self->_secondDelegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_secondDelegate;
    v7 = objc_opt_respondsToSelector();
  }

  return (v4 | v7) & 1;
}

- (void)didStopRecordingWithError:(id)a3 previewViewController:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(RPScreenRecorder *)self delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = [(RPScreenRecorder *)self delegate];
  v10 = v9;
  if (v8)
  {
    [v9 screenRecorder:self didStopRecordingWithPreviewViewController:v6 error:v17];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    v10 = [(RPScreenRecorder *)self delegate];
    [v10 screenRecorder:self didStopRecordingWithError:v17 previewViewController:v6];
  }

LABEL_6:
  v12 = [(RPScreenRecorder *)self secondDelegate];
  v13 = objc_opt_respondsToSelector();

  v14 = [(RPScreenRecorder *)self secondDelegate];
  v15 = v14;
  if (v13)
  {
    [v14 screenRecorder:self didStopRecordingWithPreviewViewController:v6 error:v17];
  }

  else
  {
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

    v15 = [(RPScreenRecorder *)self secondDelegate];
    [v15 screenRecorder:self didStopRecordingWithError:v17 previewViewController:v6];
  }

LABEL_11:
}

- (void)updateRecordingAvailability:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPScreenRecorder updateRecordingAvailability:]";
    v8 = 1024;
    v9 = 1838;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  [(RPScreenRecorder *)self isScreenRecordingAvailable];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkContextID:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPScreenRecorder checkContextID:withHandler:];
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v6)
    {
LABEL_5:
      v7 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
      v6[2](v6, v7);
    }
  }

LABEL_6:

  return v5 != 0;
}

- (BOOL)screenRecordingAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D26040]] != 2;

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startRecordingWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__RPScreenRecorder_startRecordingWithHandler___block_invoke_9_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop in app recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__RPScreenRecorder_stopRecordingWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingWithOutputURL:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop in app recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startCaptureWithHandler:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_startCaptureWithHandler_completionHandler___block_invoke_19_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopCaptureWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop in app capture because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startInAppBroadcastWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startInAppBroadcastWithHandler:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__RPScreenRecorder_startInAppBroadcastWithHandler___block_invoke_21_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopInAppBroadcastWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop in app broadcast because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__RPScreenRecorder_stopInAppBroadcastWithHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clientDidUpdateBroadcastServiceInfo:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d delegate DOES NOT responds to protocol", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clientDidUpdateBroadcastServiceInfo:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d delegate does not exist", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clientDidUpdateBroadcastServiceInfo:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d No active broadcast controller", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startSystemRecordingWithMicrophoneEnabled:handler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_27_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__RPScreenRecorder_startSystemRecordingWithMicrophoneEnabled_handler___block_invoke_28_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSystemRecording:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop system recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSystemRecordingWithURLHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop system recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__RPScreenRecorder_resumeSystemRecording__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Failed to resume system recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__RPScreenRecorder_setupSystemBroadcastWithExtension_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startSystemBroadcastWithHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_34_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__RPScreenRecorder_startSystemBroadcastWithHandler___block_invoke_35_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSystemBroadcastWithHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop system broadcast because we're not recording", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__RPScreenRecorder_resumeSystemBroadcast__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Failed to resume system broadcast", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startHQLRWithSessionInfo:handler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because destination file URL is unspecified", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startHQLRWithSessionInfo:handler:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RPScreenRecorder_startHQLRWithSessionInfo_handler___block_invoke_38_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopHQLR:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop system recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__RPScreenRecorder_resumeHQLR__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Failed to resume system recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startClipBufferingWithCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because we're already active with another session", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RPScreenRecorder_startClipBufferingWithCompletionHandler___block_invoke_50_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d undefined completion handler", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopClipBufferingWithCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to stop in app clip recording because we're not recording", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)exportClipToURL:duration:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to export app clip because clip buferring has not started", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleUnavailableState
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d failed to start because screen is not available", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkContextID:withHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d contextID is nil", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end