@interface AXMAudioSession
- (AXMAudioSession)init;
- (BOOL)activateSessionWithError:(id *)a3;
- (BOOL)deactivateSessionWithError:(id *)a3;
- (id)_stringForRouteChangeReason:(unint64_t)a3;
- (void)_handleMediaServicesLost;
- (void)_handleMediaServicesReset;
- (void)_handleRouteChanged:(unint64_t)a3 previousRoute:(id)a4;
- (void)_handleSessionInterrupted:(unint64_t)a3 options:(unint64_t)a4;
- (void)_handleSilenceSecondaryAudio:(unint64_t)a3;
- (void)dealloc;
- (void)init;
@end

@implementation AXMAudioSession

- (AXMAudioSession)init
{
  v42.receiver = self;
  v42.super_class = AXMAudioSession;
  v2 = [(AXMAudioSession *)&v42 init];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  [(AXMAudioSession *)v2 setNotificationObserverTokens:v3];

  v4 = [MEMORY[0x1E6958460] auxiliarySession];
  [(AXMAudioSession *)v2 setSession:v4];

  v5 = [(AXMAudioSession *)v2 session];
  v6 = *MEMORY[0x1E6958068];
  v41 = 0;
  [v5 setCategory:v6 withOptions:1 error:&v41];
  v7 = v41;

  if (!v7)
  {
    objc_initWeak(&location, v2);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [(AXMAudioSession *)v2 notificationObserverTokens];
    v12 = *MEMORY[0x1E69580D8];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __23__AXMAudioSession_init__block_invoke;
    v38[3] = &unk_1E7A1D2B8;
    objc_copyWeak(&v39, &location);
    v13 = [v10 addObserverForName:v12 object:0 queue:0 usingBlock:v38];
    [v11 addObject:v13];

    v14 = [(AXMAudioSession *)v2 notificationObserverTokens];
    v15 = *MEMORY[0x1E6958228];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __23__AXMAudioSession_init__block_invoke_2;
    v36[3] = &unk_1E7A1D2B8;
    objc_copyWeak(&v37, &location);
    v16 = [v10 addObserverForName:v15 object:0 queue:0 usingBlock:v36];
    [v14 addObject:v16];

    v17 = [(AXMAudioSession *)v2 notificationObserverTokens];
    v18 = *MEMORY[0x1E6958110];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __23__AXMAudioSession_init__block_invoke_3;
    v34[3] = &unk_1E7A1D2B8;
    objc_copyWeak(&v35, &location);
    v19 = [v10 addObserverForName:v18 object:0 queue:0 usingBlock:v34];
    [v17 addObject:v19];

    v20 = [(AXMAudioSession *)v2 notificationObserverTokens];
    v21 = *MEMORY[0x1E6958128];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __23__AXMAudioSession_init__block_invoke_4;
    v32[3] = &unk_1E7A1D2B8;
    objc_copyWeak(&v33, &location);
    v22 = [v10 addObserverForName:v21 object:0 queue:0 usingBlock:v32];
    [v20 addObject:v22];

    v23 = [(AXMAudioSession *)v2 notificationObserverTokens];
    v24 = *MEMORY[0x1E6958248];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __23__AXMAudioSession_init__block_invoke_5;
    v30 = &unk_1E7A1D2B8;
    objc_copyWeak(&v31, &location);
    v25 = [v10 addObserverForName:v24 object:0 queue:0 usingBlock:&v27];
    [v23 addObject:{v25, v27, v28, v29, v30}];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);

    objc_destroyWeak(&location);
LABEL_7:
    v9 = v2;
    goto LABEL_8;
  }

  v8 = AXMediaLogOutput();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(AXMAudioSession *)v7 init];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void __23__AXMAudioSession_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6958100]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v3 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69580E8]];
  v9 = [v8 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSessionInterrupted:v6 options:v9];
}

void __23__AXMAudioSession_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6958238]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v3 userInfo];

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6958230]];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRouteChanged:v6 previousRoute:v9];
}

void __23__AXMAudioSession_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMediaServicesLost];
}

void __23__AXMAudioSession_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMediaServicesReset];
}

void __23__AXMAudioSession_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6958250]];
  v5 = [v4 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSilenceSecondaryAudio:v5];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AXMAudioSession *)self notificationObserverTokens];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = AXMAudioSession;
  [(AXMAudioSession *)&v9 dealloc];
}

- (BOOL)deactivateSessionWithError:(id *)a3
{
  v4 = [(AXMAudioSession *)self session];
  v8 = 0;
  [v4 setActive:0 error:&v8];
  v5 = v8;

  if (a3)
  {
    v6 = v5;
    *a3 = v5;
  }

  return v5 == 0;
}

- (BOOL)activateSessionWithError:(id *)a3
{
  v5 = [(AXMAudioSession *)self session];
  v6 = *MEMORY[0x1E6958068];
  v14 = 0;
  [v5 setCategory:v6 withOptions:1 error:&v14];
  v7 = v14;

  if (v7 || (-[AXMAudioSession session](self, "session"), v8 = objc_claimAutoreleasedReturnValue(), v13 = 0, v9 = 1, [v8 setActive:1 error:&v13], v7 = v13, v8, v7))
  {
    v10 = AXMediaLogOutput();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AXMAudioSession *)v7 activateSessionWithError:v10];
    }

    v9 = 0;
  }

  if (a3)
  {
    v11 = v7;
    *a3 = v7;
  }

  return v9;
}

- (void)_handleSessionInterrupted:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = AXMediaLogOutput();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AXMAudioSession *)a4 _handleSessionInterrupted:a3 options:v6];
  }
}

- (id)_stringForRouteChangeReason:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A1D2D8[a3 - 1];
  }
}

- (void)_handleRouteChanged:(unint64_t)a3 previousRoute:(id)a4
{
  v6 = AXMediaLogOutput();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AXMAudioSession *)self _handleRouteChanged:a3 previousRoute:v6];
  }
}

- (void)_handleMediaServicesLost
{
  v2 = AXMediaLogOutput();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(AXMAudioSession *)v2 _handleMediaServicesLost];
  }
}

- (void)_handleMediaServicesReset
{
  v2 = AXMediaLogOutput();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(AXMAudioSession *)v2 _handleMediaServicesReset];
  }
}

- (void)_handleSilenceSecondaryAudio:(unint64_t)a3
{
  v4 = AXMediaLogOutput();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXMAudioSession *)a3 _handleSilenceSecondaryAudio:v4];
  }
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Failed to set session category with error: %@", &v2, 0xCu);
}

- (void)activateSessionWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Error updating audio session: %@", &v2, 0xCu);
}

- (void)_handleSessionInterrupted:(os_log_t)log options:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"Ended";
  if (a2 == 1)
  {
    v3 = @"Began";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a1 != 0;
  _os_log_debug_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEBUG, "Session interruption (%@). Resume? %d", &v4, 0x12u);
}

- (void)_handleRouteChanged:(NSObject *)a3 previousRoute:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 _stringForRouteChangeReason:a2];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_DEBUG, "Route Changed. Reason: %@", &v5, 0xCu);
}

- (void)_handleSilenceSecondaryAudio:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"Ended";
  if (a1 == 1)
  {
    v2 = @"Began";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "Should silence secondary audio (%@)", &v3, 0xCu);
}

@end