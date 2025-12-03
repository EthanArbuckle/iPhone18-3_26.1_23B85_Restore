@interface GuidedAccessManager
+ (void)initializeMonitoring;
- (BOOL)_isValidClientApp;
- (BOOL)applicationIsEntitledForUnmanagedASAM;
- (GuidedAccessManager)init;
- (void)_loadClientBundle;
- (void)_loadRequiredBundles;
- (void)_loadSpringboardServerBundle;
- (void)dealloc;
- (void)loadRequiredBundlesForUnmanagedASAM;
@end

@implementation GuidedAccessManager

+ (void)initializeMonitoring
{
  if (initializeMonitoring_onceToken != -1)
  {
    +[GuidedAccessManager initializeMonitoring];
  }
}

uint64_t __43__GuidedAccessManager_initializeMonitoring__block_invoke()
{
  initializeMonitoring_SharedManager = objc_opt_new();

  return MEMORY[0x2A1C71028]();
}

- (GuidedAccessManager)init
{
  v14.receiver = self;
  v14.super_class = GuidedAccessManager;
  v2 = [(GuidedAccessManager *)&v14 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    v4 = *MEMORY[0x29EDC8438];
    mainQueue = [MEMORY[0x29EDBA088] mainQueue];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __27__GuidedAccessManager_init__block_invoke;
    v12[3] = &unk_29F29A778;
    v6 = v2;
    v13 = v6;
    v7 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:v12];
    notificationToken = v6->_notificationToken;
    v6->_notificationToken = v7;

    if ([(GuidedAccessManager *)v6 applicationIsEntitledForUnmanagedASAM])
    {
      [(GuidedAccessManager *)v6 loadRequiredBundlesForUnmanagedASAM];
    }

    else if (_AXSGuidedAccessRequiresApplicationAccessibility())
    {
      [(GuidedAccessManager *)v6 _loadRequiredBundles];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _handleGuidedAccessActiveStatusDidChangeBroadcastNotification, @"AXGuidedAccessActiveStatusDidChangeBroadcastNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v10 = v6;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AXGuidedAccessActiveStatusDidChangeBroadcastNotification", 0);
  v4.receiver = self;
  v4.super_class = GuidedAccessManager;
  [(GuidedAccessManager *)&v4 dealloc];
}

- (BOOL)applicationIsEntitledForUnmanagedASAM
{
  if (![(GuidedAccessManager *)self _isValidClientApp])
  {
    return 0;
  }

  v2 = SecTaskCreateFromSelf(*MEMORY[0x29EDB8ED8]);
  if (_hasBooleanEntitlement(v2, *MEMORY[0x29EDC8388]) || _hasBooleanEntitlement(v2, *MEMORY[0x29EDC8380]))
  {
    hasBooleanEntitlement = 1;
    if (!v2)
    {
      return hasBooleanEntitlement;
    }

    goto LABEL_8;
  }

  hasBooleanEntitlement = _hasBooleanEntitlement(v2, *MEMORY[0x29EDC8390]);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return hasBooleanEntitlement;
}

- (void)loadRequiredBundlesForUnmanagedASAM
{
  [(GuidedAccessManager *)self _loadRequiredBundles];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getAXReplayerClass_softClass;
  v9 = getAXReplayerClass_softClass;
  if (!getAXReplayerClass_softClass)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __getAXReplayerClass_block_invoke;
    v5[3] = &unk_29F29A5F8;
    v5[4] = &v6;
    __getAXReplayerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  replayer = [v2 replayer];
  [replayer replayWithName:@"Ping BackBoard for unmanaged ASAM" attempts:10 interval:1 async:MEMORY[0x29EDCA578] queue:&__block_literal_global_294_0 replayBlock:&__block_literal_global_297 completion:0.5];
}

uint64_t __58__GuidedAccessManager_loadRequiredBundlesForUnmanagedASAM__block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getAXBackBoardServerClass_softClass_1;
  v9 = getAXBackBoardServerClass_softClass_1;
  if (!getAXBackBoardServerClass_softClass_1)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __getAXBackBoardServerClass_block_invoke_1;
    v5[3] = &unk_29F29A5F8;
    v5[4] = &v6;
    __getAXBackBoardServerClass_block_invoke_1(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 server];
  v3 = [v2 loadGAXBundleForUnmanagedASAM];

  return v3;
}

void __58__GuidedAccessManager_loadRequiredBundlesForUnmanagedASAM__block_invoke_2(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((a2 & 1) == 0)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__GuidedAccessManager_loadRequiredBundlesForUnmanagedASAM__block_invoke_2_cold_1();
    }
  }
}

- (BOOL)_isValidClientApp
{
  if (_isValidClientApp_onceToken != -1)
  {
    [GuidedAccessManager _isValidClientApp];
  }

  return _isValidClientApp_IsValidClientApp;
}

void __40__GuidedAccessManager__isValidClientApp__block_invoke()
{
  v2 = [MEMORY[0x29EDB8E50] setWithArray:&unk_2A20E4760];
  v0 = [MEMORY[0x29EDB9F48] mainBundle];
  v1 = [v0 bundleIdentifier];
  _isValidClientApp_IsValidClientApp = [v2 containsObject:v1] ^ 1;
}

- (void)_loadRequiredBundles
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v3 = getAXProcessIsSpringBoardSymbolLoc_ptr_1;
  v8 = getAXProcessIsSpringBoardSymbolLoc_ptr_1;
  if (!getAXProcessIsSpringBoardSymbolLoc_ptr_1)
  {
    v4 = AccessibilityUtilitiesLibrary_2();
    v6[3] = dlsym(v4, "AXProcessIsSpringBoard");
    getAXProcessIsSpringBoardSymbolLoc_ptr_1 = v6[3];
    v3 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v3)
  {
    soft_AXProcessIsSpringBoard_cold_1();
  }

  if (v3())
  {
    [(GuidedAccessManager *)self _loadSpringboardServerBundle];
  }

  else if ([(GuidedAccessManager *)self _isValidClientApp])
  {
    [(GuidedAccessManager *)self _loadClientBundle];
  }
}

- (void)_loadSpringboardServerBundle
{
  if (_loadSpringboardServerBundle_onceToken != -1)
  {
    [GuidedAccessManager _loadSpringboardServerBundle];
  }
}

void __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke()
{
  v0 = GAXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_29BADF000, v0, OS_LOG_TYPE_INFO, "****************** Loading GAX SpringBoard Server Bundle ****************", v8, 2u);
  }

  v1 = MEMORY[0x29EDB9F48];
  v2 = AXSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/System/Library/AccessibilityBundles/GAXSpringboardServer.bundle"];
  v4 = [v1 bundleWithPath:v3];

  if (!v4)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  if (([v4 loadAndReturnError:0] & 1) == 0)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_1();
    }

LABEL_11:

    goto LABEL_12;
  }

  v5 = [v4 principalClass];
  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_sharedInstance withObject:0];
  }

  else
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_2();
    }
  }

LABEL_12:
}

- (void)_loadClientBundle
{
  if (_loadClientBundle_onceToken != -1)
  {
    [GuidedAccessManager _loadClientBundle];
  }
}

void __40__GuidedAccessManager__loadClientBundle__block_invoke()
{
  v0 = GAXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_29BADF000, v0, OS_LOG_TYPE_INFO, "****************** Loading GAX Client Bundle ****************", v8, 2u);
  }

  v1 = MEMORY[0x29EDB9F48];
  v2 = AXSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/System/Library/AccessibilityBundles/GAXClient.bundle"];
  v4 = [v1 bundleWithPath:v3];

  if (!v4)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  if (([v4 loadAndReturnError:0] & 1) == 0)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_1();
    }

LABEL_11:

    goto LABEL_12;
  }

  v5 = [v4 principalClass];
  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_sharedInstance];
  }

  else
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_2();
    }
  }

LABEL_12:
}

void __58__GuidedAccessManager_loadRequiredBundlesForUnmanagedASAM__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void __51__GuidedAccessManager__loadSpringboardServerBundle__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void __40__GuidedAccessManager__loadClientBundle__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end