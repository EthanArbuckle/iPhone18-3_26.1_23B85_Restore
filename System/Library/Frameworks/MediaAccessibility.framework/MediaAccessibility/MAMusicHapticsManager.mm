@interface MAMusicHapticsManager
+ (MAMusicHapticsManager)sharedManager;
- (MAMusicHapticsManager)init;
- (id)_hapticMusicServerClient;
- (id)addStatusObserver:(id)a3;
- (id)addStatusObserverBlock:(id)a3;
- (void)_clearAHAPCache;
- (void)appSupportsMusicHaptics:(id)a3 completionHandler:(id)a4;
- (void)checkHapticTrackAvailabilityForMediaMatchingCode:(id)a3 completionHandler:(id)a4;
- (void)removeStatusObserver:(id)a3;
- (void)userInterfaceClient:(id)a3 processMessageFromServerAsynchronously:(id)a4 withIdentifier:(unint64_t)a5 completion:(id)a6;
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
  v3 = [getAXSettingsClass() sharedInstance];
  v4 = [v3 valueForKey:@"hapticMusicActive"];
  -[MAMusicHapticsManager setMusicHapticsActive:](v2, "setMusicHapticsActive:", [v4 BOOLValue]);

  v5 = [getAXSettingsClass() sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__MAMusicHapticsManager_init__block_invoke;
  v11[3] = &unk_1E7A94108;
  v6 = v2;
  v12 = v6;
  [v5 registerUpdateBlock:v11 forRetrieveSelector:sel_hapticMusicActive withListener:v6];

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
  v3 = [(MAMusicHapticsManager *)self client];

  if (!v3)
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
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    v10 = [v7 stringWithFormat:@"HapticMusicClientAPI-%@", v9];
    v11 = [(MAMusicHapticsManager *)self _serviceName];
    v12 = [v6 initWithIdentifier:v10 serviceBundleName:v11];
    [(MAMusicHapticsManager *)self setClient:v12];

    v13 = [(MAMusicHapticsManager *)self client];
    [v13 setDelegate:self];
  }

  v14 = [(MAMusicHapticsManager *)self client];

  return v14;
}

- (void)appSupportsMusicHaptics:(id)a3 completionHandler:(id)a4
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = HMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(MAMusicHapticsManager *)v6 appSupportsMusicHaptics:v8 completionHandler:v9, v10, v11, v12, v13, v14];
  }

  if (v7)
  {
    if (v6)
    {
      v15 = [(MAMusicHapticsManager *)self appSupportsCache];
      v16 = [v15 objectForKeyedSubscript:v6];

      if (v16)
      {
        v17 = HMLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(MAMusicHapticsManager *)v16 appSupportsMusicHaptics:v17 completionHandler:v18, v19, v20, v21, v22, v23];
        }

        v7[2](v7, [v16 BOOLValue]);
      }

      else
      {
        v24 = [(MAMusicHapticsManager *)self appSupportedObservers];

        if (!v24)
        {
          v25 = objc_opt_new();
          [(MAMusicHapticsManager *)self setAppSupportedObservers:v25];
        }

        v26 = [MEMORY[0x1E696AFB0] UUID];
        v27 = [v26 UUIDString];

        v28 = objc_opt_new();
        [v28 setObserver:v7];
        v29 = [(MAMusicHapticsManager *)self appSupportedObservers];
        [v29 setObject:v28 forKeyedSubscript:v27];

        v34[0] = @"bundleIdentifier";
        v34[1] = @"uuid";
        v35[0] = v6;
        v35[1] = v27;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
        v31 = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
        v32 = [getAXAccessQueueClass() mainAccessQueue];
        [v31 sendAsynchronousMessage:v30 withIdentifier:5 targetAccessQueue:v32 completion:0];
      }
    }

    else
    {
      v7[2](v7, 0);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)checkHapticTrackAvailabilityForMediaMatchingCode:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(MAMusicHapticsManager *)self musicHapticsEnabled]&& v6)
    {
      v8 = [(MAMusicHapticsManager *)self ahapAvailableObservers];

      if (!v8)
      {
        v9 = objc_opt_new();
        [(MAMusicHapticsManager *)self setAhapAvailableObservers:v9];
      }

      v10 = HMLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_1B021E000, v10, OS_LOG_TYPE_DEFAULT, "Asking haptic track available: %@", buf, 0xCu);
      }

      v11 = [(MAMusicHapticsManager *)self ahapAvailableCache];
      v12 = [v11 objectForKeyedSubscript:v6];

      if (v12)
      {
        v13 = HMLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&dword_1B021E000, v13, OS_LOG_TYPE_INFO, "Has cached value: %@", buf, 0xCu);
        }

        v7[2](v7, [v12 BOOLValue]);
        goto LABEL_19;
      }

      v14 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v14 UUIDString];

      v16 = objc_opt_new();
      [v16 setObserver:v7];
      v17 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
      v18 = [v17 objectForKeyedSubscript:v6];

      if (v18)
      {
        v19 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
        v20 = [v19 objectForKeyedSubscript:v6];

        [v20 addObject:v16];
        v21 = HMLog();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v31 = v6;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_1B021E000, v21, OS_LOG_TYPE_INFO, "Someone already asking for this code, will wait: %@ [%@]", buf, 0x16u);
      }

      else
      {
        v23 = [(MAMusicHapticsManager *)self ahapAvailableObservers];
        [v23 setObject:v16 forKeyedSubscript:v15];

        v29[0] = v6;
        v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[MAMusicHapticsManager treatCodesAsAdamIDs](self, "treatCodesAsAdamIDs", @"code", @"treatAsAdamID"}];
        v28[2] = @"uuid";
        v29[1] = v24;
        v29[2] = v15;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

        v25 = objc_opt_new();
        v26 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
        [v26 setObject:v25 forKeyedSubscript:v6];

        v21 = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
        v22 = [getAXAccessQueueClass() mainAccessQueue];
        [v21 sendAsynchronousMessage:v20 withIdentifier:2 targetAccessQueue:v22 completion:0];
      }

      goto LABEL_18;
    }

    v7[2](v7, 0);
  }

LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)addStatusObserverBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MAMusicHapticsManager_addStatusObserverBlock___block_invoke;
  v8[3] = &unk_1E7A94130;
  v9 = v4;
  v5 = v4;
  v6 = [(MAMusicHapticsManager *)self addStatusObserver:v8];

  return v6;
}

- (id)addStatusObserver:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [(MAMusicHapticsManager *)self musicHapticsEnabled])
  {
    v5 = [(MAMusicHapticsManager *)self statusObservers];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(MAMusicHapticsManager *)self setStatusObservers:v6];
    }

    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];

    v9 = objc_opt_new();
    [v9 setObserver:v4];
    v10 = [(MAMusicHapticsManager *)self statusObservers];
    [v10 setObject:v9 forKeyedSubscript:v8];

    v18[0] = v8;
    v17[0] = @"uuid";
    v17[1] = @"treatAsAdamID";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MAMusicHapticsManager treatCodesAsAdamIDs](self, "treatCodesAsAdamIDs")}];
    v17[2] = @"register";
    v18[1] = v11;
    v18[2] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v13 = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
    v14 = [getAXAccessQueueClass() mainAccessQueue];
    [v13 sendAsynchronousMessage:v12 withIdentifier:3 targetAccessQueue:v14 completion:0];
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)userInterfaceClient:(id)a3 processMessageFromServerAsynchronously:(id)a4 withIdentifier:(unint64_t)a5 completion:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = HMLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(MAMusicHapticsManager *)v9 userInterfaceClient:v11 processMessageFromServerAsynchronously:v12 withIdentifier:v13 completion:v14, v15, v16, v17];
  }

  switch(a5)
  {
    case 2uLL:
      v18 = [v9 objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        v32 = [(MAMusicHapticsManager *)self ahapAvailableObservers];
        v20 = [v32 objectForKeyedSubscript:v18];

        v33 = [v20 observer];

        if (v33)
        {
          v34 = [v9 objectForKeyedSubscript:@"available"];
          v35 = [v9 objectForKeyedSubscript:@"code"];
          objc_opt_class();
          v36 = 0;
          if ((objc_opt_isKindOfClass() & 1) != 0 && v35)
          {
            v36 = [v34 BOOLValue];
            v37 = [(MAMusicHapticsManager *)self ahapAvailableCache];
            [v37 setObject:v34 forKeyedSubscript:v35];
          }

          v47 = v34;
          v38 = HMLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v9;
            _os_log_impl(&dword_1B021E000, v38, OS_LOG_TYPE_DEFAULT, "Haptic track available: %@", buf, 0xCu);
          }

          __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_2(v39, v20, v36);
          v40 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
          v41 = [v40 objectForKeyedSubscript:v35];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_353;
          v51[3] = &unk_1E7A941C8;
          v42 = v35;
          v52 = v42;
          v53 = &__block_literal_global_349;
          v54 = v36;
          [v41 enumerateObjectsUsingBlock:v51];

          if (v35)
          {
            v43 = [(MAMusicHapticsManager *)self pendingAvailableObservers];
            [v43 setObject:0 forKeyedSubscript:v42];
          }

          v23 = v47;
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
    case 5uLL:
      v18 = [v9 objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        v26 = [(MAMusicHapticsManager *)self appSupportedObservers];
        v20 = [v26 objectForKeyedSubscript:v18];

        v27 = [v20 observer];

        if (v27)
        {
          v23 = [v9 objectForKeyedSubscript:@"supported"];
          v28 = [v9 objectForKeyedSubscript:@"bundleIdentifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v29 = [v23 BOOLValue];
            [(MAMusicHapticsManager *)self appSupportsCache];
            v31 = v30 = v23;
            [v31 setObject:v30 forKeyedSubscript:v28];

            v23 = v30;
          }

          else
          {
            v29 = 0;
          }

          v44 = HMLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v9;
            _os_log_impl(&dword_1B021E000, v44, OS_LOG_TYPE_DEFAULT, "App supports: %@", buf, 0xCu);
          }

          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            v45 = [v20 observer];
            v45[2](v45, v29);
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke_358;
            block[3] = &unk_1E7A941A0;
            v49 = v20;
            v50 = v29;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            v45 = v49;
          }

          goto LABEL_35;
        }

LABEL_36:
      }

LABEL_37:

      break;
    case 3uLL:
      v18 = [v9 objectForKeyedSubscript:@"uuid"];
      if (v18)
      {
        v19 = [(MAMusicHapticsManager *)self statusObservers];
        v20 = [v19 objectForKeyedSubscript:v18];

        v21 = [v20 observer];

        if (v21)
        {
          v22 = HMLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v9;
            _os_log_impl(&dword_1B021E000, v22, OS_LOG_TYPE_DEFAULT, "Status update: %@", buf, 0xCu);
          }

          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            v23 = [v20 observer];
            v24 = [v9 objectForKeyedSubscript:@"code"];
            v25 = [v9 objectForKeyedSubscript:@"active"];
            (v23)[2](v23, v24, [v25 BOOLValue]);
          }

          else
          {
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __110__MAMusicHapticsManager_userInterfaceClient_processMessageFromServerAsynchronously_withIdentifier_completion___block_invoke;
            v55[3] = &unk_1E7A94158;
            v20 = v20;
            v56 = v20;
            v57 = v9;
            dispatch_async(MEMORY[0x1E69E96A0], v55);

            v23 = v56;
          }

LABEL_35:

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
  }

  (*(v10 + 2))(v10, 0, 0);

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

- (void)removeStatusObserver:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(MAMusicHapticsManager *)self statusObservers];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [(MAMusicHapticsManager *)self _hapticMusicServerClient];
      v12[0] = @"uuid";
      v12[1] = @"register";
      v13[0] = v4;
      v13[1] = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
      v9 = [getAXAccessQueueClass() mainAccessQueue];
      [v7 sendAsynchronousMessage:v8 withIdentifier:3 targetAccessQueue:v9 completion:0];

      v10 = [(MAMusicHapticsManager *)self statusObservers];
      [v10 setObject:0 forKeyedSubscript:v4];
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