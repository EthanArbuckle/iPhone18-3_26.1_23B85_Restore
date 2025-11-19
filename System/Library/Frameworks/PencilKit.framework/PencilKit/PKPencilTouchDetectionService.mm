@interface PKPencilTouchDetectionService
+ (id)sharedInstance;
+ (void)beginObservingTouchesForDetection;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)timestampIndicatesRecentUsage:(id)a3;
- (PKPencilTouchDetectionService)init;
- (id)stringForTouchDetectionPencilType:(int64_t)a3;
- (void)_updateActivePencilUsageForTouchType:(int64_t)a3;
- (void)dealloc;
- (void)loadDefaultsIfNecessary;
- (void)loadTimestampsIfNecessary;
- (void)pencilType:(int64_t)a3 hasRecentlyBeenUsedWithCompletionHandler:(id)a4;
- (void)persistTimestamps;
- (void)postUpdateNotificationIfNecessary;
- (void)reset:(id)a3;
- (void)resumeConnectionIfIdle;
- (void)updateTimestampForType:(int64_t)a3;
@end

@implementation PKPencilTouchDetectionService

+ (void)beginObservingTouchesForDetection
{
  v2 = [a1 sharedInstance];
  [v2 resumeConnectionIfIdle];
}

+ (id)sharedInstance
{
  if (qword_1ED6A51A0 != -1)
  {
    dispatch_once(&qword_1ED6A51A0, &__block_literal_global_54);
  }

  v3 = _MergedGlobals_147;

  return v3;
}

void __47__PKPencilTouchDetectionService_sharedInstance__block_invoke()
{
  if (PK_UIApplicationIsSystemShell_onceToken != -1)
  {
    dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
  }

  if (PK_UIApplicationIsSystemShell___result == 1)
  {
    v0 = objc_alloc_init(PKPencilTouchDetectionService);
    v1 = _MergedGlobals_147;
    _MergedGlobals_147 = v0;
  }
}

- (PKPencilTouchDetectionService)init
{
  v23.receiver = self;
  v23.super_class = PKPencilTouchDetectionService;
  v2 = [(PKPencilTouchDetectionService *)&v23 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Starting Touch Detection Service", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.pencilkit.pktouchdetection"];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_isListening = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v6 = qword_1ED6A51A8;
    v32 = qword_1ED6A51A8;
    if (!qword_1ED6A51A8)
    {
      *buf = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke;
      v27 = &unk_1E82D6498;
      v28 = &v29;
      __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(buf);
      v6 = v30[3];
    }

    v7 = v6;
    _Block_object_dispose(&v29, 8);
    v8 = [v6 configurationForDefaultMainDisplayMonitor];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__PKPencilTouchDetectionService_init__block_invoke;
    v21[3] = &unk_1E82DA4E8;
    v9 = v2;
    v22 = v9;
    [v8 setTransitionHandler:v21];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v10 = qword_1ED6A51B0;
    v32 = qword_1ED6A51B0;
    if (!qword_1ED6A51B0)
    {
      *buf = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getFBSDisplayLayoutMonitorClass_block_invoke;
      v27 = &unk_1E82D6498;
      v28 = &v29;
      __getFBSDisplayLayoutMonitorClass_block_invoke(buf);
      v10 = v30[3];
    }

    v11 = v10;
    _Block_object_dispose(&v29, 8);
    v12 = [v10 monitorWithConfiguration:v8];
    displayLayoutMonitor = v9->_displayLayoutMonitor;
    v9->_displayLayoutMonitor = v12;

    v14 = [[PKPencilTouchDetectionGestureRecognizer alloc] initWithTarget:v9 action:sel__nop_];
    detectionGesture = v9->_detectionGesture;
    v9->_detectionGesture = v14;

    [(PKPencilTouchDetectionGestureRecognizer *)v9->_detectionGesture setDelegate:v9];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v16 = qword_1ED6A51B8;
    v32 = qword_1ED6A51B8;
    if (!qword_1ED6A51B8)
    {
      *buf = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getFBDisplayManagerClass_block_invoke;
      v27 = &unk_1E82D6498;
      v28 = &v29;
      __getFBDisplayManagerClass_block_invoke(buf);
      v16 = v30[3];
    }

    v17 = v16;
    _Block_object_dispose(&v29, 8);
    v18 = [v16 mainIdentity];
    v19 = [MEMORY[0x1E69DD778] sharedInstance];
    [v19 addGestureRecognizer:v9->_detectionGesture recognitionEvent:2 toDisplayWithIdentity:v18];
  }

  return v2;
}

uint64_t __37__PKPencilTouchDetectionService_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wereFrontBoardOverlaysEnabled];
  v3 = MEMORY[0x1E69DDA98];
  if ((v2 & 1) == 0 && [*MEMORY[0x1E69DDA98] _areFrontBoardInputOverlaysEnabled])
  {
    [*(a1 + 32) persistTimestamps];
    [*(a1 + 32) postUpdateNotificationIfNecessary];
  }

  v4 = [*v3 _areFrontBoardInputOverlaysEnabled];
  v5 = *(a1 + 32);

  return [v5 setWereFrontBoardOverlaysEnabled:v4];
}

- (void)dealloc
{
  [(PKPencilTouchDetectionService *)self persistTimestamps];
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = PKPencilTouchDetectionService;
  [(PKPencilTouchDetectionService *)&v3 dealloc];
}

- (void)reset:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  [(PKPencilTouchDetectionService *)self setTimestamps:v4];

  [(PKPencilTouchDetectionService *)self setUserInfoForNotification:0];
}

- (void)resumeConnectionIfIdle
{
  if (![(PKPencilTouchDetectionService *)self isListening])
  {
    v3 = [(PKPencilTouchDetectionService *)self listener];
    [v3 resume];

    [(PKPencilTouchDetectionService *)self setIsListening:1];
  }
}

- (void)loadDefaultsIfNecessary
{
  v3 = [(PKPencilTouchDetectionService *)self pencilDefaults];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    [(PKPencilTouchDetectionService *)self setPencilDefaults:v4];
  }
}

- (void)loadTimestampsIfNecessary
{
  v3 = [(PKPencilTouchDetectionService *)self timestamps];

  if (!v3)
  {
    [(PKPencilTouchDetectionService *)self loadDefaultsIfNecessary];
    v4 = [(PKPencilTouchDetectionService *)self pencilDefaults];
    v7 = [v4 objectForKey:@"TouchTimestamps"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v7 mutableCopy];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v6 = v5;
    [(PKPencilTouchDetectionService *)self setTimestamps:v5];
  }
}

- (void)persistTimestamps
{
  v3 = [(PKPencilTouchDetectionService *)self timestamps];

  if (v3)
  {
    [(PKPencilTouchDetectionService *)self loadDefaultsIfNecessary];
    v5 = [(PKPencilTouchDetectionService *)self pencilDefaults];
    v4 = [(PKPencilTouchDetectionService *)self timestamps];
    [v5 setObject:v4 forKey:@"TouchTimestamps"];
  }
}

- (BOOL)timestampIndicatesRecentUsage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 now];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 dateByAddingUnit:8 value:1 toDate:v4 options:0];

  v8 = [v5 compare:v7] == -1;
  return v8;
}

- (void)postUpdateNotificationIfNecessary
{
  v3 = [(PKPencilTouchDetectionService *)self userInfoForNotification];

  if (v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = [(PKPencilTouchDetectionService *)self userInfoForNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.pencilkit.pktouchdetectionupdate", 0, v5, 1u);

    [(PKPencilTouchDetectionService *)self setUserInfoForNotification:0];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  listener = self->_listener;
  if (listener == a3)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4811328];
    [v6 setExportedInterface:v8];
  }

  [v6 setExportedObject:self];
  [v6 resume];

  return listener == a3;
}

- (void)pencilType:(int64_t)a3 hasRecentlyBeenUsedWithCompletionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    [(PKPencilTouchDetectionService *)self loadTimestampsIfNecessary];
    v7 = @"Unknown";
    if (a3 == 1)
    {
      v7 = @"Crayon";
    }

    if (!a3)
    {
      v7 = @"Pencil";
    }

    v8 = v7;
    v9 = [(PKPencilTouchDetectionService *)self timestamps];
    v10 = [v9 objectForKey:v8];

    v11[2](v11, [(PKPencilTouchDetectionService *)self timestampIndicatesRecentUsage:v10]);
    v6 = v11;
  }
}

- (void)_updateActivePencilUsageForTouchType:(int64_t)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AE30] processInfo];
  [v5 systemUptime];
  v7 = v6;

  [(PKPencilTouchDetectionService *)self activePencilUsageTimestamp];
  if (v7 - v8 > 60.0)
  {
    [(PKPencilTouchDetectionService *)self setActivePencilUsageTimestamp:v7];
    v12[0] = @"com.apple.pencilkit.pkactivepencilusage.type";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12[1] = @"com.apple.pencilkit.pkactivepencilusage.interval";
    v13[0] = v9;
    v13[1] = &unk_1F47C1F18;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"com.apple.pencilkit.pkactivepencilusage" object:self userInfo:v10];
  }
}

- (void)updateTimestampForType:(int64_t)a3
{
  [(PKPencilTouchDetectionService *)self loadTimestampsIfNecessary];
  v5 = @"Unknown";
  if (a3 == 1)
  {
    v5 = @"Crayon";
  }

  if (!a3)
  {
    v5 = @"Pencil";
  }

  v14 = v5;
  v6 = [(PKPencilTouchDetectionService *)self timestamps];
  v7 = [v6 objectForKey:v14];

  if (v7)
  {
    v8 = ![(PKPencilTouchDetectionService *)self timestampIndicatesRecentUsage:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKPencilTouchDetectionService *)self timestamps];
  v10 = [MEMORY[0x1E695DF00] now];
  [v9 setObject:v10 forKey:v14];

  if (a3)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      if (!v8)
      {
LABEL_12:
        if ([v11 count])
        {
          [(PKPencilTouchDetectionService *)self setUserInfoForNotification:v11];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v11 setObject:v13 forKey:@"com.apple.pencilkit.pktouchdetectionupdate.firstUse"];

      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 setObject:v12 forKey:@"com.apple.pencilkit.pktouchdetectionupdate.reactivation"];

    goto LABEL_12;
  }

LABEL_15:
  [(PKPencilTouchDetectionService *)self _updateActivePencilUsageForTouchType:a3];
}

- (id)stringForTouchDetectionPencilType:(int64_t)a3
{
  v3 = @"Crayon";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Pencil";
  }
}

@end