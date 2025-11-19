@interface AXFrontBoardProcessWatcher
+ (id)accessibilitySpokenNameForProcess:(id)a3;
+ (id)processForBundleIdentifier:(id)a3;
+ (void)validateFocusedAppsWithEvent:(int64_t)a3;
- (AXFrontBoardProcessWatcher)init;
- (BOOL)_processStateChangeIsTaskStateChangeFrom:(id)a3 to:(id)a4;
- (BOOL)_processStateChangeIsVisibilityStateChangeFrom:(id)a3 to:(id)a4;
- (void)_validateFocusedApps:(int64_t)a3;
- (void)dealloc;
- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
- (void)processDidExit:(id)a3;
- (void)processManager:(id)a3 didAddProcess:(id)a4;
@end

@implementation AXFrontBoardProcessWatcher

+ (void)validateFocusedAppsWithEvent:(int64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = AXValidateFocusedAppsNotification;
  v9 = @"event";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 postNotificationName:v5 object:0 userInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (AXFrontBoardProcessWatcher)init
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = AXFrontBoardProcessWatcher;
  v2 = [(AXFrontBoardProcessWatcher *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE6950]);
    v4 = [v3 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    appTransitionTimer = v2->_appTransitionTimer;
    v2->_appTransitionTimer = v4;

    [(AXDispatchTimer *)v2->_appTransitionTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v6 = [MEMORY[0x277CBEB98] set];
    cachedFocusedAppPIDs = v2->_cachedFocusedAppPIDs;
    v2->_cachedFocusedAppPIDs = v6;

    v8 = [MEMORY[0x277D0AAC0] sharedInstance];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v8 allProcesses];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v24 + 1) + 8 * v12++) addObserver:v2];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    [v8 addObserver:v2];
    objc_initWeak(location, v2);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = AXValidateFocusedAppsNotification;
    v15 = [MEMORY[0x277CCABD8] mainQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __34__AXFrontBoardProcessWatcher_init__block_invoke;
    v21[3] = &unk_278BDA7D8;
    objc_copyWeak(&v22, location);
    v16 = [v13 addObserverForName:v14 object:0 queue:v15 usingBlock:v21];
    observerToken = v2->_observerToken;
    v2->_observerToken = v16;

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  v18 = AXRuntimeLogPID();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_23D5EE000, v18, OS_LOG_TYPE_INFO, "did initialize AXFrontBoardProcessWatcher", location, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__AXFrontBoardProcessWatcher_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"event"];
  [WeakRetained _validateFocusedApps:{objc_msgSend(v5, "integerValue")}];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  [(AXDispatchTimer *)self->_appTransitionTimer cancel];
  appTransitionTimer = self->_appTransitionTimer;
  self->_appTransitionTimer = 0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self->_observerToken];

  observerToken = self->_observerToken;
  self->_observerToken = 0;

  v6 = [MEMORY[0x277D0AAC0] sharedInstance];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 allProcesses];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v11++) removeObserver:self];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v6 removeObserver:self];
  v13.receiver = self;
  v13.super_class = AXFrontBoardProcessWatcher;
  [(AXFrontBoardProcessWatcher *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_validateFocusedApps:(int64_t)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = AXRuntimeLogPID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v65 = "AXValidateFocusedAppsEventAppStateVisibilityDidChange";
    v66 = 2048;
    v67 = a3;
    _os_log_impl(&dword_23D5EE000, v5, OS_LOG_TYPE_INFO, "Received focused app validation event: %s (%ld)", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = AXFrontBoardFocusedAppPIDs();
  v8 = [v6 setWithArray:v7];

  p_cachedFocusedAppPIDs = &self->_cachedFocusedAppPIDs;
  if (([v8 isEqualToSet:self->_cachedFocusedAppPIDs] & 1) == 0)
  {
    v10 = AXRuntimeLogPID();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v12 = AXRuntimeLogPID();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(AXFrontBoardProcessWatcher *)v12 _validateFocusedApps:v13, v14, v15, v16, v17, v18, v19];
      }

      v53 = v8;

      v20 = AXRuntimeLogPID();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(AXFrontBoardProcessWatcher *)v20 _validateFocusedApps:v21, v22, v23, v24, v25, v26, v27];
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v28 = *p_cachedFocusedAppPIDs;
      v29 = [(NSSet *)v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          v32 = 0;
          do
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v58 + 1) + 8 * v32);
            v34 = AXRuntimeLogPID();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v35 = -[AXFrontBoardProcessWatcher _processDescriptionForPID:](self, "_processDescriptionForPID:", [v33 integerValue]);
              *buf = 138412290;
              v65 = v35;
              _os_log_debug_impl(&dword_23D5EE000, v34, OS_LOG_TYPE_DEBUG, "  %@", buf, 0xCu);
            }

            ++v32;
          }

          while (v30 != v32);
          v30 = [(NSSet *)v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v30);
      }

      v36 = AXRuntimeLogPID();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [(AXFrontBoardProcessWatcher *)v36 _validateFocusedApps:v37, v38, v39, v40, v41, v42, v43];
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v44 = v53;
      v45 = [v44 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v55;
        do
        {
          v48 = 0;
          do
          {
            if (*v55 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v54 + 1) + 8 * v48);
            v50 = AXRuntimeLogPID();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v51 = -[AXFrontBoardProcessWatcher _processDescriptionForPID:](self, "_processDescriptionForPID:", [v49 integerValue]);
              *buf = 138412290;
              v65 = v51;
              _os_log_debug_impl(&dword_23D5EE000, v50, OS_LOG_TYPE_DEBUG, "  %@", buf, 0xCu);
            }

            ++v48;
          }

          while (v46 != v48);
          v46 = [v44 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v46);
      }

      p_cachedFocusedAppPIDs = &self->_cachedFocusedAppPIDs;
      v8 = v53;
    }

    objc_storeStrong(p_cachedFocusedAppPIDs, v8);
    UIAccessibilityPostNotification(0x1389u, 0);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)_processStateChangeIsVisibilityStateChangeFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = [a3 visibility];
  v7 = [v5 visibility];

  if (v6 == 1 && !v7)
  {
    return 0;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 1;
  }

  return !v9 && v6 != v7;
}

- (BOOL)_processStateChangeIsTaskStateChangeFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = [a3 taskState];
  v7 = [v5 taskState];

  return v6 != v7;
}

- (void)processManager:(id)a3 didAddProcess:(id)a4
{
  v5 = a4;
  [v5 addObserver:self];
  v6 = AXRuntimeLogPID();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXFrontBoardProcessWatcher processManager:v5 didAddProcess:v6];
  }

  v7 = [v5 state];
  v8 = [v7 pid];

  if (v8 >= 1)
  {
    v9 = [v5 state];
    v10 = [v9 taskState];

    if (v10 == 2)
    {
      v11 = [v5 state];
      [v11 pid];
      AXProcessIsCarPlay();
      AXPidUnsuspend();
    }
  }
}

- (void)processDidExit:(id)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [a3 pid];
  if (v3 >= 1)
  {
    v6[0] = @"pid";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v6[1] = @"terminated";
    v7[0] = v4;
    v7[1] = @"true";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
    AXPushNotificationToSystemForBroadcast();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 pid];
  v12 = AXRuntimeLogPID();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_23D5EE000, v12, OS_LOG_TYPE_DEBUG, "Process state change:%@.\n From:%@\nTo:%@", buf, 0x20u);
  }

  if (v11 >= 1 && [(AXFrontBoardProcessWatcher *)self _processStateChangeIsTaskStateChangeFrom:v9 to:v10])
  {
    v13 = [v10 taskState];
    AXProcessIsCarPlay();
    if (v13 == 2)
    {
      AXPidUnsuspend();
    }

    else
    {
      AXPidSuspend();
    }
  }

  if ([(AXFrontBoardProcessWatcher *)self _processStateChangeIsVisibilityStateChangeFrom:v9 to:v10])
  {
    [(AXDispatchTimer *)self->_appTransitionTimer cancel];
    if (v11 >= 1 && [v10 visibility] != 2)
    {
      AXProcessIsCarPlay();
      AXTentativePidSuspend();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__AXFrontBoardProcessWatcher_process_stateDidChangeFromState_toState___block_invoke;
    block[3] = &unk_278BDA828;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70__AXFrontBoardProcessWatcher_process_stateDidChangeFromState_toState___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = AXFrontBoardFocusedAppPIDs();
  v4 = [v2 setWithArray:v3];

  if ([v4 count] < 2)
  {
    [*(a1 + 32) _validateFocusedApps:0];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__AXFrontBoardProcessWatcher_process_stateDidChangeFromState_toState___block_invoke_2;
    v6[3] = &unk_278BDA800;
    objc_copyWeak(&v7, &location);
    [v5 afterDelay:v6 processBlock:0 cancelBlock:2.0];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __70__AXFrontBoardProcessWatcher_process_stateDidChangeFromState_toState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateFocusedApps:0];
}

+ (id)processForBundleIdentifier:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = AXFrontBoardRunningAppProcesses();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__AXFrontBoardProcessWatcher_processForBundleIdentifier___block_invoke;
  v8[3] = &unk_278BDA850;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __57__AXFrontBoardProcessWatcher_processForBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)accessibilitySpokenNameForProcess:(id)a3
{
  v3 = a3;
  if ([v3 isApplicationProcess])
  {
    v4 = v3;
    v5 = objc_getAssociatedObject(v4, &_AXSpokenNameKey);
    if ([(__CFString *)v5 isEqualToString:@"NO-SPOKEN-NAME"])
    {

      v5 = 0;
    }

    else if (!v5)
    {
      v6 = [v4 bundleIdentifier];
      v5 = AXApplicationNameLabelForBundleIdentifier(v6);

      if (v5)
      {
        v7 = v4;
        v8 = v5;
      }

      else
      {
        v8 = @"NO-SPOKEN-NAME";
        v7 = v4;
      }

      objc_setAssociatedObject(v7, &_AXSpokenNameKey, v8, 0x303);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)processManager:(void *)a1 didAddProcess:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 state];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_23D5EE000, a2, OS_LOG_TYPE_DEBUG, "Did add new process: %@\nState: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end