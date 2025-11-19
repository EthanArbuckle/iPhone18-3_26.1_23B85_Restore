@interface AVRouteDetector
+ (void)initialize;
- (AVRouteDetector)init;
- (BOOL)detectsCustomRoutes;
- (BOOL)isRouteDetectionEnabled;
- (BOOL)multipleRoutesDetected;
- (void)_didEnterBackground;
- (void)_didEnterForeground;
- (void)_updateMultipleRoutesDetected;
- (void)_updateRouteDetectionEnabled;
- (void)dealloc;
- (void)setDetectsCustomRoutes:(BOOL)detectsCustomRoutes;
- (void)setRouteDetectionEnabled:(BOOL)routeDetectionEnabled;
@end

@implementation AVRouteDetector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVRouteDetector)init
{
  v20.receiver = self;
  v20.super_class = AVRouteDetector;
  v2 = [(AVRouteDetector *)&v20 init];
  if (v2 && (v3 = objc_alloc_init(AVRouteDetectorInternal), (v2->_routeDetectorInternal = v3) != 0) && (v3->multipleRoutesDetected = 0, v2->_routeDetectorInternal->detectsCustomRoutes = 0, v2->_routeDetectorInternal->routeDetectionEnabled = 0, v2->_routeDetectorInternal->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avroutedetector.ivars"), (v2->_routeDetectorInternal->outputDeviceDiscoverySession = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:1]) != 0))
  {
    objc_initWeak(&location, v2);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    outputDeviceDiscoverySession = v2->_routeDetectorInternal->outputDeviceDiscoverySession;
    v6 = [MEMORY[0x1E696ADC8] mainQueue];
    v7 = *MEMORY[0x1E69587A0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __23__AVRouteDetector_init__block_invoke;
    v17[3] = &unk_1E7460BB0;
    objc_copyWeak(&v18, &location);
    v2->_routeDetectorInternal->outputDevicesChangeNotificationToken = [v4 addObserverForName:v7 object:outputDeviceDiscoverySession queue:v6 usingBlock:v17];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __23__AVRouteDetector_init__block_invoke_2;
    v15[3] = &unk_1E7460BB0;
    objc_copyWeak(&v16, &location);
    v2->_routeDetectorInternal->didEnterBackgroundNotificationToken = [v8 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v15];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __23__AVRouteDetector_init__block_invoke_3;
    v13[3] = &unk_1E7460BB0;
    objc_copyWeak(&v14, &location);
    v2->_routeDetectorInternal->didEnterForegroundNotificationToken = [v9 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v13];
    v10 = v2;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __23__AVRouteDetector_init__block_invoke_4;
    v12[3] = &unk_1E7460C00;
    v12[4] = v2;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __23__AVRouteDetector_init__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateMultipleRoutesDetected];
}

uint64_t __23__AVRouteDetector_init__block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didEnterBackground];
}

uint64_t __23__AVRouteDetector_init__block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didEnterForeground];
}

uint64_t __23__AVRouteDetector_init__block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AVRouteDetectorShouldAppBeConsideredForeground_sniffUIApplicationOnce != -1)
  {
    __23__AVRouteDetector_init__block_invoke_4_cold_1();
  }

  v3 = AVRouteDetectorShouldAppBeConsideredForeground_uiApplicationClass && (objc_opt_respondsToSelector() & 1) != 0 && (v2 = [AVRouteDetectorShouldAppBeConsideredForeground_uiApplicationClass performSelector:AVRouteDetectorShouldAppBeConsideredForeground_sharedApplicationSelector], (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend(v2, "performSelector:", AVRouteDetectorShouldAppBeConsideredForeground_applicationStateSelector) > 1;
  *(*(*(a1 + 32) + 8) + 65) = v3;
  if (*(*(*(a1 + 32) + 8) + 65) == 1)
  {
    if (dword_1EAEFCE90)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1EAEFCE90)
  {
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [*(a1 + 32) _updateRouteDetectionEnabled];
}

- (void)dealloc
{
  routeDetectorInternal = self->_routeDetectorInternal;
  if (routeDetectorInternal)
  {
    if (routeDetectorInternal->outputDevicesChangeNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      routeDetectorInternal = self->_routeDetectorInternal;
    }

    if (routeDetectorInternal->didEnterBackgroundNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      routeDetectorInternal = self->_routeDetectorInternal;
    }

    if (routeDetectorInternal->didEnterForegroundNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      routeDetectorInternal = self->_routeDetectorInternal;
    }

    routeDetectorInternal = self->_routeDetectorInternal;
    ivarAccessQueue = routeDetectorInternal->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      routeDetectorInternal = self->_routeDetectorInternal;
    }
  }

  v5.receiver = self;
  v5.super_class = AVRouteDetector;
  [(AVRouteDetector *)&v5 dealloc];
}

- (BOOL)isRouteDetectionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVRouteDetector_isRouteDetectionEnabled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRouteDetectionEnabled:(BOOL)routeDetectionEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVRouteDetector_setRouteDetectionEnabled___block_invoke;
  v6[3] = &unk_1E7462948;
  v7 = routeDetectionEnabled;
  v6[4] = self;
  v6[5] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v9 + 24) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__AVRouteDetector_setRouteDetectionEnabled___block_invoke_2;
    v5[3] = &unk_1E7460C00;
    v5[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v5);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __44__AVRouteDetector_setRouteDetectionEnabled___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 48);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __44__AVRouteDetector_setRouteDetectionEnabled___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateRouteDetectionEnabled];
  v2 = *(a1 + 32);

  return [v2 _updateMultipleRoutesDetected];
}

- (BOOL)detectsCustomRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVRouteDetector_detectsCustomRoutes__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDetectsCustomRoutes:(BOOL)detectsCustomRoutes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVRouteDetector_setDetectsCustomRoutes___block_invoke;
  v6[3] = &unk_1E7462948;
  v7 = detectsCustomRoutes;
  v6[4] = self;
  v6[5] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v9 + 24) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__AVRouteDetector_setDetectsCustomRoutes___block_invoke_2;
    v5[3] = &unk_1E7460C00;
    v5[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v5);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __42__AVRouteDetector_setDetectsCustomRoutes___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 48);
  if (*(v1 + 10) != v2)
  {
    *(v1 + 10) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __42__AVRouteDetector_setDetectsCustomRoutes___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateRouteDetectionEnabled];
  v2 = *(a1 + 32);

  return [v2 _updateMultipleRoutesDetected];
}

- (BOOL)multipleRoutesDetected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVRouteDetector_multipleRoutesDetected__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateMultipleRoutesDetected
{
  v3 = [(AVRouteDetector *)self isRouteDetectionEnabled];
  if (v3)
  {
    v4 = [(AVRouteDetector *)self _isAirPlayDevicePresenceDetected];
    v5 = [(AVRouteDetector *)self detectsCustomRoutes];
    LOBYTE(v3) = v5 || v4;
    if (v5 && !v4)
    {
      LOBYTE(v3) = [(AVRouteDetector *)self _isCustomRoutePresenceDetected];
    }
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  ivarAccessQueue = self->_routeDetectorInternal->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AVRouteDetector__updateMultipleRoutesDetected__block_invoke;
  v8[3] = &unk_1E7462948;
  v9 = v3;
  v8[4] = self;
  v8[5] = &v10;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  if (*(v11 + 24) == 1)
  {
    v7 = [MEMORY[0x1E696AD80] notificationWithName:@"AVRouteDetectorMultipleRoutesDetectedDidChangeNotification" object:self userInfo:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __48__AVRouteDetector__updateMultipleRoutesDetected__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 48);
  if (*(v1 + 9) != v2)
  {
    *(v1 + 9) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateRouteDetectionEnabled
{
  v3 = [(AVRouteDetector *)self isRouteDetectionEnabled];
  routeDetectorInternal = self->_routeDetectorInternal;
  if (!v3 || routeDetectorInternal->routeDetectionSuspended)
  {
    [(AVOutputDeviceDiscoverySession *)routeDetectorInternal->outputDeviceDiscoverySession setDiscoveryMode:0];
    customRouteDiscoverySession = self->_routeDetectorInternal->customRouteDiscoverySession;
LABEL_4:
    [(DADiscovery *)customRouteDiscoverySession invalidate];

    self->_routeDetectorInternal->customRouteDiscoverySession = 0;
    self->_routeDetectorInternal->customRoutesPresent = 0;
    return;
  }

  [(AVOutputDeviceDiscoverySession *)routeDetectorInternal->outputDeviceDiscoverySession setDiscoveryMode:1];
  v6 = [(AVRouteDetector *)self detectsCustomRoutes];
  customRouteDiscoverySession = self->_routeDetectorInternal->customRouteDiscoverySession;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!customRouteDiscoverySession)
  {
    v8 = objc_alloc_init(getDADiscoveryConfigurationClass());
    [v8 setBundleID:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")}];
    [v8 setBluetoothServices:0];
    [v8 setBluetoothCompanyIdentifiers:0];
    [v8 setBonjourServiceTypes:0];
    [v8 setPresenceOnly:1];
    self->_routeDetectorInternal->customRouteDiscoverySession = [objc_alloc(getDADiscoveryClass()) initWithConfiguration:v8 error:0];
    if (self->_routeDetectorInternal->customRouteDiscoverySession)
    {
      objc_initWeak(&location, self);
      [(DADiscovery *)self->_routeDetectorInternal->customRouteDiscoverySession setDispatchQueue:MEMORY[0x1E69E96A0]];
      v7 = self->_routeDetectorInternal->customRouteDiscoverySession;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__AVRouteDetector__updateRouteDetectionEnabled__block_invoke;
      v9[3] = &unk_1E74661B8;
      objc_copyWeak(&v10, &location);
      [(DADiscovery *)v7 setEventHandler:v9];
      [(DADiscovery *)self->_routeDetectorInternal->customRouteDiscoverySession activate];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
    }
  }
}

void *__47__AVRouteDetector__updateRouteDetectionEnabled__block_invoke(uint64_t a1, void *a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v4 = result;
    result = [result detectsCustomRoutes];
    if (result)
    {
      result = [a2 eventType];
      if (result == 50)
      {
        *(v4[1] + 64) = [a2 devicesPresent];

        return [v4 _updateMultipleRoutesDetected];
      }
    }
  }

  return result;
}

- (void)_didEnterBackground
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_routeDetectorInternal->routeDetectionSuspended = 1;
  [(AVRouteDetector *)self _updateRouteDetectionEnabled:v4];
}

- (void)_didEnterForeground
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_routeDetectorInternal->routeDetectionSuspended = 0;
  [(AVRouteDetector *)self _updateRouteDetectionEnabled:v4];
}

@end