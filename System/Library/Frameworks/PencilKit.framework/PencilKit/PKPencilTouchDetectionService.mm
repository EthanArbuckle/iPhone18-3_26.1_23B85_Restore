@interface PKPencilTouchDetectionService
+ (id)sharedInstance;
+ (void)beginObservingTouchesForDetection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)timestampIndicatesRecentUsage:(id)usage;
- (PKPencilTouchDetectionService)init;
- (id)stringForTouchDetectionPencilType:(int64_t)type;
- (void)_updateActivePencilUsageForTouchType:(int64_t)type;
- (void)dealloc;
- (void)loadDefaultsIfNecessary;
- (void)loadTimestampsIfNecessary;
- (void)pencilType:(int64_t)type hasRecentlyBeenUsedWithCompletionHandler:(id)handler;
- (void)persistTimestamps;
- (void)postUpdateNotificationIfNecessary;
- (void)reset:(id)reset;
- (void)resumeConnectionIfIdle;
- (void)updateTimestampForType:(int64_t)type;
@end

@implementation PKPencilTouchDetectionService

+ (void)beginObservingTouchesForDetection
{
  sharedInstance = [self sharedInstance];
  [sharedInstance resumeConnectionIfIdle];
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
    configurationForDefaultMainDisplayMonitor = [v6 configurationForDefaultMainDisplayMonitor];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__PKPencilTouchDetectionService_init__block_invoke;
    v21[3] = &unk_1E82DA4E8;
    v9 = v2;
    v22 = v9;
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v21];
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
    v12 = [v10 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
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
    mainIdentity = [v16 mainIdentity];
    mEMORY[0x1E69DD778] = [MEMORY[0x1E69DD778] sharedInstance];
    [mEMORY[0x1E69DD778] addGestureRecognizer:v9->_detectionGesture recognitionEvent:2 toDisplayWithIdentity:mainIdentity];
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

- (void)reset:(id)reset
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  [(PKPencilTouchDetectionService *)self setTimestamps:v4];

  [(PKPencilTouchDetectionService *)self setUserInfoForNotification:0];
}

- (void)resumeConnectionIfIdle
{
  if (![(PKPencilTouchDetectionService *)self isListening])
  {
    listener = [(PKPencilTouchDetectionService *)self listener];
    [listener resume];

    [(PKPencilTouchDetectionService *)self setIsListening:1];
  }
}

- (void)loadDefaultsIfNecessary
{
  pencilDefaults = [(PKPencilTouchDetectionService *)self pencilDefaults];

  if (!pencilDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    [(PKPencilTouchDetectionService *)self setPencilDefaults:v4];
  }
}

- (void)loadTimestampsIfNecessary
{
  timestamps = [(PKPencilTouchDetectionService *)self timestamps];

  if (!timestamps)
  {
    [(PKPencilTouchDetectionService *)self loadDefaultsIfNecessary];
    pencilDefaults = [(PKPencilTouchDetectionService *)self pencilDefaults];
    v7 = [pencilDefaults objectForKey:@"TouchTimestamps"];

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
  timestamps = [(PKPencilTouchDetectionService *)self timestamps];

  if (timestamps)
  {
    [(PKPencilTouchDetectionService *)self loadDefaultsIfNecessary];
    pencilDefaults = [(PKPencilTouchDetectionService *)self pencilDefaults];
    timestamps2 = [(PKPencilTouchDetectionService *)self timestamps];
    [pencilDefaults setObject:timestamps2 forKey:@"TouchTimestamps"];
  }
}

- (BOOL)timestampIndicatesRecentUsage:(id)usage
{
  if (!usage)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  usageCopy = usage;
  v5 = [v3 now];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:8 value:1 toDate:usageCopy options:0];

  v8 = [v5 compare:v7] == -1;
  return v8;
}

- (void)postUpdateNotificationIfNecessary
{
  userInfoForNotification = [(PKPencilTouchDetectionService *)self userInfoForNotification];

  if (userInfoForNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    userInfoForNotification2 = [(PKPencilTouchDetectionService *)self userInfoForNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.pencilkit.pktouchdetectionupdate", 0, userInfoForNotification2, 1u);

    [(PKPencilTouchDetectionService *)self setUserInfoForNotification:0];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listener = self->_listener;
  if (listener == listener)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4811328];
    [connectionCopy setExportedInterface:v8];
  }

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return listener == listener;
}

- (void)pencilType:(int64_t)type hasRecentlyBeenUsedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = handlerCopy;
    [(PKPencilTouchDetectionService *)self loadTimestampsIfNecessary];
    v7 = @"Unknown";
    if (type == 1)
    {
      v7 = @"Crayon";
    }

    if (!type)
    {
      v7 = @"Pencil";
    }

    v8 = v7;
    timestamps = [(PKPencilTouchDetectionService *)self timestamps];
    v10 = [timestamps objectForKey:v8];

    v11[2](v11, [(PKPencilTouchDetectionService *)self timestampIndicatesRecentUsage:v10]);
    handlerCopy = v11;
  }
}

- (void)_updateActivePencilUsageForTouchType:(int64_t)type
{
  v13[2] = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v7 = v6;

  [(PKPencilTouchDetectionService *)self activePencilUsageTimestamp];
  if (v7 - v8 > 60.0)
  {
    [(PKPencilTouchDetectionService *)self setActivePencilUsageTimestamp:v7];
    v12[0] = @"com.apple.pencilkit.pkactivepencilusage.type";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v12[1] = @"com.apple.pencilkit.pkactivepencilusage.interval";
    v13[0] = v9;
    v13[1] = &unk_1F47C1F18;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.pencilkit.pkactivepencilusage" object:self userInfo:v10];
  }
}

- (void)updateTimestampForType:(int64_t)type
{
  [(PKPencilTouchDetectionService *)self loadTimestampsIfNecessary];
  v5 = @"Unknown";
  if (type == 1)
  {
    v5 = @"Crayon";
  }

  if (!type)
  {
    v5 = @"Pencil";
  }

  v14 = v5;
  timestamps = [(PKPencilTouchDetectionService *)self timestamps];
  v7 = [timestamps objectForKey:v14];

  if (v7)
  {
    v8 = ![(PKPencilTouchDetectionService *)self timestampIndicatesRecentUsage:v7];
  }

  else
  {
    v8 = 0;
  }

  timestamps2 = [(PKPencilTouchDetectionService *)self timestamps];
  v10 = [MEMORY[0x1E695DF00] now];
  [timestamps2 setObject:v10 forKey:v14];

  if (type)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      if (!v8)
      {
LABEL_12:
        if ([dictionary count])
        {
          [(PKPencilTouchDetectionService *)self setUserInfoForNotification:dictionary];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      [dictionary setObject:v13 forKey:@"com.apple.pencilkit.pktouchdetectionupdate.firstUse"];

      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [dictionary setObject:v12 forKey:@"com.apple.pencilkit.pktouchdetectionupdate.reactivation"];

    goto LABEL_12;
  }

LABEL_15:
  [(PKPencilTouchDetectionService *)self _updateActivePencilUsageForTouchType:type];
}

- (id)stringForTouchDetectionPencilType:(int64_t)type
{
  v3 = @"Crayon";
  if (type != 1)
  {
    v3 = 0;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"Pencil";
  }
}

@end