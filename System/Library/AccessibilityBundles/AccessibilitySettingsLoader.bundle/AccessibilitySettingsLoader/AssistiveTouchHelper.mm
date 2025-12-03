@interface AssistiveTouchHelper
+ (void)initializeMonitoring;
- (AssistiveTouchHelper)init;
- (id)_astDispatchQueue;
- (void)_sendKeyboardStatusUpdate;
- (void)_sendKeyboardStatusUpdate:(CGRect)update;
- (void)_sendKeyboardStatusUpdateHidden;
- (void)dealloc;
- (void)enable;
- (void)installKeyboardListener;
- (void)loadBuddyBundles;
@end

@implementation AssistiveTouchHelper

- (id)_astDispatchQueue
{
  if (_astDispatchQueue_onceToken != -1)
  {
    [AssistiveTouchHelper _astDispatchQueue];
  }

  v3 = _astDispatchQueue_bgQueue;

  return v3;
}

uint64_t __41__AssistiveTouchHelper__astDispatchQueue__block_invoke()
{
  _astDispatchQueue_bgQueue = dispatch_queue_create("ASTDispatch", 0);

  return MEMORY[0x2A1C71028]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AssistiveTouchHelper;
  [(AssistiveTouchHelper *)&v4 dealloc];
}

- (void)_sendKeyboardStatusUpdate
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"CGRect soft_AXUIKeyboardScreenFrame(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_sendKeyboardStatusUpdateHidden
{
  v3 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
  [v3 setObject:*MEMORY[0x29EDB8EF8] forKey:@"visible"];
  v4 = [MEMORY[0x29EDBA070] numberWithInt:getpid()];
  [v3 setObject:v4 forKey:@"pid"];

  _astDispatchQueue = [(AssistiveTouchHelper *)self _astDispatchQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __55__AssistiveTouchHelper__sendKeyboardStatusUpdateHidden__block_invoke;
  block[3] = &unk_29F29A700;
  v8 = v3;
  v6 = v3;
  dispatch_async(_astDispatchQueue, block);
}

- (void)_sendKeyboardStatusUpdate:(CGRect)update
{
  height = update.size.height;
  width = update.size.width;
  y = update.origin.y;
  x = update.origin.x;
  _astDispatchQueue = [(AssistiveTouchHelper *)self _astDispatchQueue];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __50__AssistiveTouchHelper__sendKeyboardStatusUpdate___block_invoke;
  v8[3] = &__block_descriptor_64_e5_v8__0l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  dispatch_async(_astDispatchQueue, v8);
}

void __50__AssistiveTouchHelper__sendKeyboardStatusUpdate___block_invoke(NSRect *a1)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
  [v4 setObject:*MEMORY[0x29EDB8F00] forKey:@"visible"];
  v2 = NSStringFromRect(a1[1]);
  [v4 setObject:v2 forKey:@"frame"];

  v3 = [MEMORY[0x29EDBA070] numberWithInt:getpid()];
  [v4 setObject:v3 forKey:@"pid"];

  [ASTNotificationCenter sendMessageName:@"UIAXASTKeyboardStatus" userInfo:v4];
}

- (void)installKeyboardListener
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsSpotlight(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

uint64_t __47__AssistiveTouchHelper_installKeyboardListener__block_invoke(uint64_t a1)
{
  result = _AXSAssistiveTouchEnabled();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _sendKeyboardStatusUpdate];
  }

  return result;
}

void __47__AssistiveTouchHelper_installKeyboardListener__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_29BADF000, v4, OS_LOG_TYPE_INFO, "Home Screen displayed: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x29EDCA608];
}

void __47__AssistiveTouchHelper_installKeyboardListener__block_invoke_304(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_29BADF000, v4, OS_LOG_TYPE_INFO, "Home Screen displayed: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x29EDCA608];
}

void __47__AssistiveTouchHelper_installKeyboardListener__block_invoke_305(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (_AXSAssistiveTouchEnabled())
  {
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = v3;
      _os_log_impl(&dword_29BADF000, v4, OS_LOG_TYPE_INFO, "Keyboard shown notification: %{public}@", &v16, 0xCu);
    }

    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x29EDC81B0]];
    [v6 rectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [*(a1 + 32) _sendKeyboardStatusUpdate:{v8, v10, v12, v14}];
  }

  v15 = *MEMORY[0x29EDCA608];
}

void __47__AssistiveTouchHelper_installKeyboardListener__block_invoke_306(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (_AXSAssistiveTouchEnabled())
  {
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_29BADF000, v4, OS_LOG_TYPE_INFO, "Keyboard hidden notification: %{public}@", &v6, 0xCu);
    }

    [*(a1 + 32) _sendKeyboardStatusUpdateHidden];
  }

  v5 = *MEMORY[0x29EDCA608];
}

- (void)loadBuddyBundles
{
  if (loadBuddyBundles_onceToken != -1)
  {
    [AssistiveTouchHelper loadBuddyBundles];
  }
}

void __40__AssistiveTouchHelper_loadBuddyBundles__block_invoke()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDB9F48];
  v1 = AXAccessibilityBundlesDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"/UIKit.axbundle"];
  v3 = [v0 bundleWithPath:v2];

  if (([v3 isLoaded] & 1) == 0)
  {
    v11 = 0;
    v4 = [v3 loadAndReturnError:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      [v3 principalClass];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v3 "principalClass")];
      }

      v7 = ASTLogCommon();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v9 = [v3 principalClass];
      *buf = 138543362;
      v13 = v9;
      v8 = v9;
      _os_log_impl(&dword_29BADF000, v7, OS_LOG_TYPE_INFO, "Loading: %{public}@", buf, 0xCu);
    }

    else
    {
      v7 = v5;
      v8 = ASTLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__AXInvertColorsController_loadInvertColorsBundle__block_invoke_cold_1(v3, v7, v8);
      }
    }

LABEL_13:
  }

  v10 = *MEMORY[0x29EDCA608];
}

+ (void)initializeMonitoring
{
  if (initializeMonitoring_onceToken_0 != -1)
  {
    +[AssistiveTouchHelper initializeMonitoring];
  }
}

uint64_t __44__AssistiveTouchHelper_initializeMonitoring__block_invoke()
{
  initializeMonitoring_Helper = objc_alloc_init(AssistiveTouchHelper);

  return MEMORY[0x2A1C71028]();
}

- (AssistiveTouchHelper)init
{
  v6.receiver = self;
  v6.super_class = AssistiveTouchHelper;
  v2 = [(AssistiveTouchHelper *)&v6 init];
  if (v2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilityASTEnabled, *MEMORY[0x29EDC83E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(AssistiveTouchHelper *)v2 enable];
    v4 = v2;
  }

  return v2;
}

- (void)enable
{
  if (_AXSAssistiveTouchEnabled() && (soft_AXProcessIsAssistiveTouch() & 1) == 0)
  {
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __30__AssistiveTouchHelper_enable__block_invoke;
    v14 = &unk_29F29A700;
    selfCopy = self;
    if (enable_onceToken != -1)
    {
      dispatch_once(&enable_onceToken, &v11);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v3 = getAXProcessIsSetupSymbolLoc_ptr_0;
    v24 = getAXProcessIsSetupSymbolLoc_ptr_0;
    if (!getAXProcessIsSetupSymbolLoc_ptr_0)
    {
      v16 = MEMORY[0x29EDCA5F8];
      v17 = 3221225472;
      v18 = __getAXProcessIsSetupSymbolLoc_block_invoke_0;
      v19 = &unk_29F29A5F8;
      v20 = &v21;
      v4 = AccessibilityUtilitiesLibrary_3();
      v5 = dlsym(v4, "AXProcessIsSetup");
      *(v20[1] + 24) = v5;
      getAXProcessIsSetupSymbolLoc_ptr_0 = *(v20[1] + 24);
      v3 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v3)
    {
      [AccessibilitySettingsLoader _initializeDelayedAccessibilitySettings];
    }

    if (v3(v6, v7, v8, v9, v10))
    {
      [(AssistiveTouchHelper *)self loadBuddyBundles:v11];
    }
  }
}

uint64_t __30__AssistiveTouchHelper_enable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBE2A0] centerNamed:@"UIASTNotificationCenter"];
  v3 = ASTNotificationCenter;
  ASTNotificationCenter = v2;

  v4 = *(a1 + 32);

  return [v4 installKeyboardListener];
}

@end