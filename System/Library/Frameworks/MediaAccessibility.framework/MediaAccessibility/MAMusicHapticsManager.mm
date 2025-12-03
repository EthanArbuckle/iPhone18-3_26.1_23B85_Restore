@interface MAMusicHapticsManager
+ (MAMusicHapticsManager)sharedManager;
- (MAMusicHapticsManager)init;
- (id)_hapticMusicServerClient;
- (id)addStatusObserver:(id)observer;
- (id)addStatusObserverBlock:(id)block;
- (void)_clearAHAPCache;
- (void)appSupportsMusicHaptics:(id)haptics completionHandler:(id)handler;
- (void)checkHapticTrackAvailabilityForMediaMatchingCode:(id)code completionHandler:(id)handler;
- (void)removeStatusObserver:(id)observer;
- (void)userInterfaceClient:(id)client processMessageFromServerAsynchronously:(id)asynchronously withIdentifier:(unint64_t)identifier completion:(id)completion;
@end

@implementation MAMusicHapticsManager

+ (MAMusicHapticsManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MAMusicHapticsManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __38__MAMusicHapticsManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (MAMusicHapticsManager)init
{
  v13.receiver = self;
  v13.super_class = MAMusicHapticsManager;
  v2 = [(MAMusicHapticsManager *)&v13 init];
  sharedInstance = [getAXSettingsClass() sharedInstance];
  v4 = [sharedInstance valueForKey:@"hapticMusicActive"];
  -[MAMusicHapticsManager setMusicHapticsActive:](v2, "setMusicHapticsActive:", [v4 BOOLValue]);

  sharedInstance2 = [getAXSettingsClass() sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__MAMusicHapticsManager_init__block_invoke;
  v11[3] = &unk_1E7A94108;
  v6 = v2;
  v12 = v6;
  [sharedInstance2 registerUpdateBlock:v11 forRetrieveSelector:sel_hapticMusicActive withListener:v6];

  v7 = objc_opt_new();
  [(MAMusicHapticsManager *)v6 setAhapAvailableCache:v7];

  v8 = objc_opt_new();
  [(MAMusicHapticsManager *)v6 setAppSupportsCache:v8];

  v9 = objc_opt_new();
  [(MAMusicHapticsManager *)v6 setPendingAvailableObservers:v9];

  [(MAMusicHapticsManager *)v6 _clearAHAPCache];
  return v6;
}

void __29__MAMusicHapticsManager_init__block_invoke(uint64_t a1)
{
  v3 = [getAXSettingsClass() sharedInstance];
  v2 = [v3 valueForKey:@"hapticMusicActive"];
  [*(a1 + 32) setMusicHapticsActive:{objc_msgSend(v2, "BOOLValue")}];
}

- (void)_clearAHAPCache
{
  v3 = dispatch_time(0, 86400000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MAMusicHapticsManager__clearAHAPCache__block_invoke;
  block[3] = &unk_1E7A94108;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

uint64_t __40__MAMusicHapticsManager__clearAHAPCache__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ahapAvailableCache];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 _clearAHAPCache];
}

- (id)_hapticMusicServerClient
{
  client = [(MAMusicHapticsManager *)self client];

  if (!client)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v4 = getAXUIClientClass_softClass;
    v20 = getAXUIClientClass_softClass;
    if (!getAXUIClientClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getAXUIClientClass_block_invoke;
      v16[3] = &unk_1E7A93FF8;
      v16[4] = &v17;
      __getAXUIClientClass_block_invoke(v16);
      v4 = v18[3];
    }

    v5 = v4;
    _Block_object_dispose(&v17, 8);
    v6 = [v4 alloc];
    v7 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v10 = [v7 stringWithFormat:@"HapticMusicClientAPI-%@", bundleIdentifier];
    _serviceName = [(MAMusicHapticsManager *)self _serviceName];
    v12 = [v6 initWithIdentifier:v10 serviceBundleName:_serviceName];
    [(MAMusicHapticsManager *)self setClient:v12];

    client2 = [(MAMusicHapticsManager *)self client];
    [client2 setDelegate:self];
  }

  client3 = [(MAMusicHapticsManager *)self client];

  return client3;
}

- (void)appSupportsMusicHaptics:(id)haptics completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  hapticsCopy = haptics;
  handlerCopy = handler;
  v8 = HMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(MAMusicHapticsManager *)hapticsCopy appSupportsMusicHaptics:v8 completionHandler:v9, v10, v11, v12, v13, v14];
  }

  if (handlerCopy)
  {
    if (hapticsCopy)
    {
      appSupportsCache = [(MAMusicHapticsManager *)self appSupportsCache];
      v16 = [appSupportsCache objectForKeyedSubscript:hapticsCopy];

      if (v16)
      {
        v17 = HMLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(MAMusicHapticsManager *)v16 appSupportsMusicHaptics:v17 completionHandler:v18, v19, v20, v21, v22, v23];
        }

        handlerCopy[2](handlerCopy, [v16 BOOLValue]);
      }

      else
      {
        appSupportedObservers = [(MAMusicHapticsManager *)self appSupportedObservers];

        if (!appSupportedObservers)
        {
          v25 = objc_opt_new();
          [(MAMusicHapticsManager *)self setAppSupportedObservers:v25];
        }

        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];

        v28 = objc_opt_new();
        [v28 setObserver:handlerCopy];
        appSupportedObservers2 = [(MAMusicHapticsManager *)self appSupportedObservers];
        [appSupportedObservers2 setObject:v28 forKeyedSubscript:uUIDString];

        v34[0] = @"bundleIdentifier";
        v34[1] = @"uuid";
        v35[0] = hapticsCopy;
        v35[1] = uUIDString;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
        _hapticMusicServerClient = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
        mainAccessQueue = [getAXAccessQueueClass() mainAccessQueue];
        [_hapticMusicServerClient sendAsynchronousMessage:v30 withIdentifier:5 targetAccessQueue:mainAccessQueue completion:0];
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)checkHapticTrackAvailabilityForMediaMatchingCode:(id)code completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(MAMusicHapticsManager *)self musicHapticsEnabled]&& codeCopy)
    {
      ahapAvailableObservers = [(MAMusicHapticsManager *)self ahapAvailableObservers];

      if (!ahapAvailableObservers)
      {
        v9 = objc_opt_new();
        [(MAMusicHapticsManager *)self setAhapAvailableObservers:v9];
      }

      v10 = HMLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = codeCopy;
        _os_log_impl(&dword_1B021E000, v10, OS_LOG_TYPE_DEFAULT, "Asking haptic track available: %@", buf, 0xCu);
      }

      ahapAvailableCache = [(MAMusicHapticsManager *)self ahapAvailableCache];
      v12 = [ahapAvailableCache objectForKeyedSubscript:codeCopy];

      if (v12)
      {
        v13 = HMLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&dword_1B021E000, v13, OS_LOG_TYPE_INFO, "Has cached value: %@", buf, 0xCu);
        }

        handlerCopy[2](handlerCopy, [v12 BOOLValue]);
        goto LABEL_19;
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      v16 = objc_opt_new();
      [v16 setObserver:handlerCopy];
      pendingAvailableObservers = [(MAMusicHapticsManager *)self pendingAvailableObservers];
      v18 = [pendingAvailableObservers objectForKeyedSubscript:codeCopy];

      if (v18)
      {
        pendingAvailableObservers2 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
        v20 = [pendingAvailableObservers2 objectForKeyedSubscript:codeCopy];

        [v20 addObject:v16];
        _hapticMusicServerClient = HMLog();
        if (!os_log_type_enabled(_hapticMusicServerClient, OS_LOG_TYPE_INFO))
        {
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        mainAccessQueue = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v31 = codeCopy;
        v32 = 2112;
        v33 = mainAccessQueue;
        _os_log_impl(&dword_1B021E000, _hapticMusicServerClient, OS_LOG_TYPE_INFO, "Someone already asking for this code, will wait: %@ [%@]", buf, 0x16u);
      }

      else
      {
        ahapAvailableObservers2 = [(MAMusicHapticsManager *)self ahapAvailableObservers];
        [ahapAvailableObservers2 setObject:v16 forKeyedSubscript:uUIDString];

        v29[0] = codeCopy;
        v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[MAMusicHapticsManager treatCodesAsAdamIDs](self, "treatCodesAsAdamIDs", @"code", @"treatAsAdamID"}];
        v28[2] = @"uuid";
        v29[1] = v24;
        v29[2] = uUIDString;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

        v25 = objc_opt_new();
        pendingAvailableObservers3 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
        [pendingAvailableObservers3 setObject:v25 forKeyedSubscript:codeCopy];

        _hapticMusicServerClient = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
        mainAccessQueue = [getAXAccessQueueClass() mainAccessQueue];
        [_hapticMusicServerClient sendAsynchronousMessage:v20 withIdentifier:2 targetAccessQueue:mainAccessQueue completion:0];
      }

      goto LABEL_18;
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)addStatusObserverBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MAMusicHapticsManager_addStatusObserverBlock___block_invoke;
  v8[3] = &unk_1E7A94130;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(MAMusicHapticsManager *)self addStatusObserver:v8];

  return v6;
}

- (id)addStatusObserver:(id)observer
{
  v18[3] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (observerCopy && [(MAMusicHapticsManager *)self musicHapticsEnabled])
  {
    statusObservers = [(MAMusicHapticsManager *)self statusObservers];

    if (!statusObservers)
    {
      v6 = objc_opt_new();
      [(MAMusicHapticsManager *)self setStatusObservers:v6];
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v9 = objc_opt_new();
    [v9 setObserver:observerCopy];
    statusObservers2 = [(MAMusicHapticsManager *)self statusObservers];
    [statusObservers2 setObject:v9 forKeyedSubscript:uUIDString];

    v18[0] = uUIDString;
    v17[0] = @"uuid";
    v17[1] = @"treatAsAdamID";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MAMusicHapticsManager treatCodesAsAdamIDs](self, "treatCodesAsAdamIDs")}];
    v17[2] = @"register";
    v18[1] = v11;
    v18[2] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

    _hapticMusicServerClient = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
    mainAccessQueue = [getAXAccessQueueClass() mainAccessQueue];
    [_hapticMusicServerClient sendAsynchronousMessage:v12 withIdentifier:3 targetAccessQueue:mainAccessQueue completion:0];
  }

  else
  {
    uUIDString = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return uUIDString;
}

- (void)userInterfaceClient:(id)client processMessageFromServerAsynchronously:(id)asynchronously withIdentifier:(unint64_t)identifier completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  completionCopy = completion;
  v11 = HMLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(MAMusicHapticsManager *)asynchronouslyCopy userInterfaceClient:v11 processMessageFromServerAsynchronously:v12 withIdentifier:v13 completion:v14, v15, v16, v17];
  }

  switch(identifier)
  {
    case 2uLL:
      v18 = [asynchronouslyCopy objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        ahapAvailableObservers = [(MAMusicHapticsManager *)self ahapAvailableObservers];
        v20 = [ahapAvailableObservers objectForKeyedSubscript:v18];

        observer = [v20 observer];

        if (observer)
        {
          v34 = [asynchronouslyCopy objectForKeyedSubscript:@"available"];
          v35 = [asynchronouslyCopy objectForKeyedSubscript:@"code"];
          objc_opt_class();
          bOOLValue = 0;
          if ((objc_opt_isKindOfClass() & 1) != 0 && v35)
          {
            bOOLValue = [v34 BOOLValue];
            ahapAvailableCache = [(MAMusicHapticsManager *)self ahapAvailableCache];
            [ahapAvailableCache setObject:v34 forKeyedSubscript:v35];
          }

          v47 = v34;
          v38 = HMLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = asynchronouslyCopy;
            _os_log_impl(&dword_1B021E000, v38, OS_LOG_TYPE_DEFAULT, "Haptic track available: %@", buf, 0xCu);
          }

          __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_2(v39, v20, bOOLValue);
          pendingAvailableObservers = [(MAMusicHapticsManager *)self pendingAvailableObservers];
          v41 = [pendingAvailableObservers objectForKeyedSubscript:v35];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_353;
          v51[3] = &unk_1E7A941C8;
          v42 = v35;
          v52 = v42;
          v53 = &__block_literal_global_349;
          v54 = bOOLValue;
          [v41 enumerateObjectsUsingBlock:v51];

          if (v35)
          {
            pendingAvailableObservers2 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
            [pendingAvailableObservers2 setObject:0 forKeyedSubscript:v42];
          }

          observer5 = v47;
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
    case 5uLL:
      v18 = [asynchronouslyCopy objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        appSupportedObservers = [(MAMusicHapticsManager *)self appSupportedObservers];
        v20 = [appSupportedObservers objectForKeyedSubscript:v18];

        observer2 = [v20 observer];

        if (observer2)
        {
          observer5 = [asynchronouslyCopy objectForKeyedSubscript:@"supported"];
          v28 = [asynchronouslyCopy objectForKeyedSubscript:@"bundleIdentifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            bOOLValue2 = [observer5 BOOLValue];
            [(MAMusicHapticsManager *)self appSupportsCache];
            v31 = v30 = observer5;
            [v31 setObject:v30 forKeyedSubscript:v28];

            observer5 = v30;
          }

          else
          {
            bOOLValue2 = 0;
          }

          v44 = HMLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = asynchronouslyCopy;
            _os_log_impl(&dword_1B021E000, v44, OS_LOG_TYPE_DEFAULT, "App supports: %@", buf, 0xCu);
          }

          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            observer3 = [v20 observer];
            observer3[2](observer3, bOOLValue2);
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_358;
            block[3] = &unk_1E7A941A0;
            v49 = v20;
            v50 = bOOLValue2;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            observer3 = v49;
          }

          goto LABEL_35;
        }

LABEL_36:
      }

LABEL_37:

      break;
    case 3uLL:
      v18 = [asynchronouslyCopy objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        statusObservers = [(MAMusicHapticsManager *)self statusObservers];
        v20 = [statusObservers objectForKeyedSubscript:v18];

        observer4 = [v20 observer];

        if (observer4)
        {
          v22 = HMLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = asynchronouslyCopy;
            _os_log_impl(&dword_1B021E000, v22, OS_LOG_TYPE_DEFAULT, "Status update: %@", buf, 0xCu);
          }

          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            observer5 = [v20 observer];
            v24 = [asynchronouslyCopy objectForKeyedSubscript:@"code"];
            v25 = [asynchronouslyCopy objectForKeyedSubscript:@"active"];
            (observer5)[2](observer5, v24, [v25 BOOLValue]);
          }

          else
          {
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke;
            v55[3] = &unk_1E7A94158;
            v20 = v20;
            v56 = v20;
            v57 = asynchronouslyCopy;
            dispatch_async(MEMORY[0x1E69E96A0], v55);

            observer5 = v56;
          }

LABEL_35:

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);

  v46 = *MEMORY[0x1E69E9840];
}

void __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) observer];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"code"];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"active"];
  v4[2](v4, v2, [v3 BOOLValue]);
}

void __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = [v4 observer];
    v5[2](v5, a3);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_3;
    v6[3] = &unk_1E7A941A0;
    v7 = v4;
    v8 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  v2[2](v2, *(a1 + 40));
}

void __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_353(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = HMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1B021E000, v6, OS_LOG_TYPE_DEFAULT, "Sending haptic track available for pender: %@ %@ [%@]", &v12, 0x20u);
  }

  v9 = [v5 observer];

  if (v9)
  {
    v10 = *(a1 + 48);
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_358(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  v2[2](v2, *(a1 + 40));
}

- (void)removeStatusObserver:(id)observer
{
  v13[2] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (observerCopy)
  {
    statusObservers = [(MAMusicHapticsManager *)self statusObservers];
    v6 = [statusObservers objectForKeyedSubscript:observerCopy];

    if (v6)
    {
      _hapticMusicServerClient = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
      v12[0] = @"uuid";
      v12[1] = @"register";
      v13[0] = observerCopy;
      v13[1] = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
      mainAccessQueue = [getAXAccessQueueClass() mainAccessQueue];
      [_hapticMusicServerClient sendAsynchronousMessage:v8 withIdentifier:3 targetAccessQueue:mainAccessQueue completion:0];

      statusObservers2 = [(MAMusicHapticsManager *)self statusObservers];
      [statusObservers2 setObject:0 forKeyedSubscript:observerCopy];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)appSupportsMusicHaptics:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B021E000, a2, a3, "Asking app supports music haptics: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)appSupportsMusicHaptics:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B021E000, a2, a3, "Has cached value: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)userInterfaceClient:(uint64_t)a3 processMessageFromServerAsynchronously:(uint64_t)a4 withIdentifier:(uint64_t)a5 completion:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B021E000, a2, a3, "Callback message received: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end