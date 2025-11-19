@interface AXBGuidedAccessManager
+ (BOOL)allowsTripleClickSheet;
+ (BOOL)inGuidedAccess;
+ (void)initializeMonitor;
- (AXBGuidedAccessManager)init;
- (void)_loadBackboardServerBundle;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation AXBGuidedAccessManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_2 != -1)
  {
    +[AXBGuidedAccessManager initializeMonitor];
  }
}

uint64_t __43__AXBGuidedAccessManager_initializeMonitor__block_invoke()
{
  SharedManager = objc_opt_new();

  return MEMORY[0x2A1C71028]();
}

- (AXBGuidedAccessManager)init
{
  v14.receiver = self;
  v14.super_class = AXBGuidedAccessManager;
  v2 = [(AXBGuidedAccessManager *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    v4 = *MEMORY[0x29EDC8438];
    v5 = [MEMORY[0x29EDBA088] mainQueue];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __30__AXBGuidedAccessManager_init__block_invoke;
    v12[3] = &unk_29F2A4E78;
    v6 = v2;
    v13 = v6;
    v7 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v12];
    notificationToken = v6->_notificationToken;
    v6->_notificationToken = v7;

    v11 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
    v9 = v11;
  }

  return v2;
}

void __30__AXBGuidedAccessManager_init__block_invoke_2(uint64_t a1)
{
  if (_AXSGuidedAccessRequiresApplicationAccessibility())
  {
    [*(a1 + 32) _loadBackboardServerBundle];
  }

  v2 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __30__AXBGuidedAccessManager_init__block_invoke_3;
  block[3] = &unk_29F2A4B10;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __30__AXBGuidedAccessManager_init__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC58E0] sharedConnection];
  [v2 effectiveBoolValueForSetting:*MEMORY[0x29EDC5878]];
  _AXSSpeechSettingsSetDisabledByManagedConfiguration();

  v3 = [MEMORY[0x29EDC58E0] sharedConnection];
  [v3 registerObserver:*(a1 + 32)];
}

+ (BOOL)inGuidedAccess
{
  v2 = [SharedManager _guidedAccessServer];
  v3 = [v2 safeValueForKey:@"isActive"];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 safeValueForKey:@"isInWorkspace"];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

+ (BOOL)allowsTripleClickSheet
{
  v2 = [SharedManager _guidedAccessServer];
  v3 = [v2 safeBoolForKey:@"allowsTripleClickSheet"];

  return v3;
}

- (void)_loadBackboardServerBundle
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  if (_loadBackboardServerBundle_onceToken != -1)
  {
    dispatch_once(&_loadBackboardServerBundle_onceToken, block);
  }
}

void __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_INFO, "****************** Loading GAX Backboard Server Bundle ****************", v9, 2u);
  }

  v3 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/AccessibilityBundles/GAXBackboardServer.bundle"];
  v4 = v3;
  if (v3)
  {
    if ([v3 loadAndReturnError:0])
    {
      v5 = [v4 principalClass];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v5 performSelector:sel_sharedInstance withObject:0];
        v7 = *(a1 + 32);
        v8 = *(v7 + 16);
        *(v7 + 16) = v6;
      }

      else
      {
        v8 = GAXLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke_cold_2(v5, v8);
        }
      }
    }

    else
    {
      v8 = GAXLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke_cold_1(v8);
      }
    }
  }

  else
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke_cold_3(v8);
    }
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = [MEMORY[0x29EDC58E0] sharedConnection];
  [v4 effectiveBoolValueForSetting:*MEMORY[0x29EDC5878]];
  _AXSSpeechSettingsSetDisabledByManagedConfiguration();
}

void __52__AXBGuidedAccessManager__loadBackboardServerBundle__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "**** AX Error: Could not initialize GAXBackboardServer instance: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end