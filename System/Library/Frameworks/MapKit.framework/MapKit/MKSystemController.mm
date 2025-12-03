@interface MKSystemController
+ (id)sharedInstance;
- (BOOL)_isGlassAvailable;
- (BOOL)_isInSpotlight;
- (BOOL)_isRunningInLockScreen;
- (BOOL)_loadSwiftBridgeIfNeeded;
- (BOOL)_shouldUseLaunchServices;
- (BOOL)isDevicePluggedIn;
- (BOOL)isGlassEnabled;
- (BOOL)isInternalInstall;
- (BOOL)isPhone6PlusOrLarger;
- (BOOL)isWifiEnabled;
- (BOOL)openURL:(id)l;
- (BOOL)overrideBlurStyle;
- (BOOL)shouldCaptureMapViewGestureAnalytics;
- (BOOL)supports3DImagery;
- (BOOL)supports3DMaps;
- (BOOL)supportsAlwaysOnCompass;
- (BOOL)supportsPitchAPI;
- (CGSize)screenSize;
- (MKSystemControllerOpenURLDelegate)openURLDelegate;
- (double)screenScale;
- (id)_defaultOpenURLOptions;
- (int)userInterfaceIdiom;
- (void)openURL:(id)l bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)openURL:(id)l fromScene:(id)scene completionHandler:(id)handler;
- (void)openUserActivity:(id)activity withApplicationRecord:(id)record requireOptionKeyPromptUnlockDevice:(BOOL)device completionHandler:(id)handler;
- (void)placeDialRequest:(id)request completionHandler:(id)handler;
@end

@implementation MKSystemController

- (BOOL)isInternalInstall
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];

  return isInternalInstall;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MKSystemController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_sPredicate != -1)
  {
    dispatch_once(&sharedInstance_sPredicate, block);
  }

  v2 = sharedInstance_sSystemController;

  return v2;
}

void __36__MKSystemController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sSystemController;
  sharedInstance_sSystemController = v1;
}

- (BOOL)isGlassEnabled
{
  if (!_MKLinkedOnOrAfterReleaseSet(4109) || !_UISolariumEnabled())
  {
    return 0;
  }

  return [(MKSystemController *)self _isGlassAvailable];
}

- (int)userInterfaceIdiom
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_1A30F76D0[userInterfaceIdiom - 1];
  }
}

- (BOOL)supportsPitchAPI
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  mapsFeatureFreedomEnabled = [mEMORY[0x1E69A2398] mapsFeatureFreedomEnabled];

  if (mapsFeatureFreedomEnabled)
  {
    return 1;
  }

  return [(MKSystemController *)self supports3DMaps];
}

- (BOOL)supports3DMaps
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  mapsFeatureFreedomEnabled = [mEMORY[0x1E69A2398] mapsFeatureFreedomEnabled];

  if (mapsFeatureFreedomEnabled)
  {
    v4 = 1;
  }

  else
  {
    if (supports3DMaps_once != -1)
    {
      dispatch_once(&supports3DMaps_once, &__block_literal_global_53);
    }

    v4 = supports3DMaps__supports3DMaps;
  }

  return v4 & 1;
}

uint64_t __36__MKSystemController_supports3DMaps__block_invoke()
{
  result = MGGetBoolAnswer();
  supports3DMaps__supports3DMaps = result;
  return result;
}

- (BOOL)supportsAlwaysOnCompass
{
  if (supportsAlwaysOnCompass_onceToken != -1)
  {
    dispatch_once(&supportsAlwaysOnCompass_onceToken, &__block_literal_global_19469);
  }

  return supportsAlwaysOnCompass_supportsAlwaysOnCompass;
}

uint64_t __45__MKSystemController_supportsAlwaysOnCompass__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsAlwaysOnCompass_supportsAlwaysOnCompass = result;
  return result;
}

- (BOOL)overrideBlurStyle
{
  if (overrideBlurStyle_onceToken != -1)
  {
    dispatch_once(&overrideBlurStyle_onceToken, &__block_literal_global_82);
  }

  return overrideBlurStyle__isLowQualityBlur;
}

uint64_t __39__MKSystemController_overrideBlurStyle__block_invoke()
{
  result = MGGetBoolAnswer();
  overrideBlurStyle__isLowQualityBlur = result ^ 1;
  return result;
}

- (double)screenScale
{
  v2 = MGCopyAnswer();
  v3 = 1.0;
  if (v2)
  {
    v4 = v2;
    v5 = CFGetTypeID(v2);
    if (v5 == CFNumberGetTypeID())
    {
      [v4 floatValue];
      v3 = v6;
    }

    CFRelease(v4);
  }

  if (v3 <= 0.0)
  {
    return 1.0;
  }

  else
  {
    return v3;
  }
}

- (MKSystemControllerOpenURLDelegate)openURLDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_openURLDelegate);

  return WeakRetained;
}

- (BOOL)shouldCaptureMapViewGestureAnalytics
{
  if (shouldCaptureMapViewGestureAnalytics_onceToken != -1)
  {
    dispatch_once(&shouldCaptureMapViewGestureAnalytics_onceToken, &__block_literal_global_87_19414);
  }

  return shouldCaptureMapViewGestureAnalytics_captureMapViewGestureAnalytics;
}

void __58__MKSystemController_shouldCaptureMapViewGestureAnalytics__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 8;
  v5 = 0;
  if (sysctlbyname("hw.memsize", &v5, &v4, 0, 0) < 0)
  {
    v1 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = __error();
      v3 = strerror(*v2);
      *buf = 136315138;
      v7 = v3;
      _os_log_impl(&dword_1A2EA0000, v1, OS_LOG_TYPE_ERROR, "sysctlbyname failed with err : %s", buf, 0xCu);
    }
  }

  else
  {
    v5 >>= 20;
    v0 = v5;
    shouldCaptureMapViewGestureAnalytics_captureMapViewGestureAnalytics = v0 > GEOConfigGetInteger();
  }
}

- (void)openUserActivity:(id)activity withApplicationRecord:(id)record requireOptionKeyPromptUnlockDevice:(BOOL)device completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  recordCopy = record;
  activityCopy = activity;
  v11 = objc_opt_new();
  v12 = getFBSOpenApplicationOptionKeyPromptUnlockDevice();
  v18 = v12;
  v19[0] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [v11 setFrontBoardOptions:v13];

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __114__MKSystemController_openUserActivity_withApplicationRecord_requireOptionKeyPromptUnlockDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E76C8FE8;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [defaultWorkspace openUserActivity:activityCopy usingApplicationRecord:recordCopy configuration:v11 completionHandler:v16];
}

uint64_t __114__MKSystemController_openUserActivity_withApplicationRecord_requireOptionKeyPromptUnlockDevice_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openURL:(id)l bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_openURLDelegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained openURL:lCopy bundleIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v14 = [defaultWorkspace operationToOpenResource:lCopy usingApplication:identifierCopy userInfo:0];

    if (v14)
    {
      if (handlerCopy)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __65__MKSystemController_openURL_bundleIdentifier_completionHandler___block_invoke;
        v18[3] = &unk_1E76CD4D0;
        v19 = handlerCopy;
        [v14 setCompletionBlock:v18];
      }

      v15 = dispatch_get_global_queue(25, 0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__MKSystemController_openURL_bundleIdentifier_completionHandler___block_invoke_3;
      v16[3] = &unk_1E76CDB38;
      v17 = v14;
      dispatch_async(v15, v16);
    }

    else if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __65__MKSystemController_openURL_bundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MKSystemController_openURL_bundleIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E76CD4D0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)placeDialRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([requestCopy isValid])
  {
    v14 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v7 = getSBSGetScreenLockStatusSymbolLoc_ptr;
    v23 = getSBSGetScreenLockStatusSymbolLoc_ptr;
    if (!getSBSGetScreenLockStatusSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getSBSGetScreenLockStatusSymbolLoc_block_invoke;
      v18 = &unk_1E76CD7B0;
      v19 = &v20;
      v8 = SpringBoardServicesLibrary();
      v21[3] = dlsym(v8, "SBSGetScreenLockStatus");
      getSBSGetScreenLockStatusSymbolLoc_ptr = *(v19[1] + 24);
      v7 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v7)
    {
      dlerror();
      v10 = abort_report_np();
      _Block_object_dispose(&v20, 8);
      _Unwind_Resume(v10);
    }

    if (v7(&v14) && v14)
    {
      [requestCopy setShowUIPrompt:0];
    }

    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MKSystemController_placeDialRequest_completionHandler___block_invoke;
    block[3] = &unk_1E76CDA20;
    v12 = requestCopy;
    v13 = handlerCopy;
    dispatch_async(v9, block);
  }
}

void __57__MKSystemController_placeDialRequest_completionHandler___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v2 = getTUCallCenterClass_softClass;
  v14 = getTUCallCenterClass_softClass;
  if (!getTUCallCenterClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getTUCallCenterClass_block_invoke;
    v10[3] = &unk_1E76CD7B0;
    v10[4] = &v11;
    __getTUCallCenterClass_block_invoke(v10);
    v2 = v12[3];
  }

  v3 = v2;
  _Block_object_dispose(&v11, 8);
  v4 = [[v3 alloc] initWithQueue:0];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__MKSystemController_placeDialRequest_completionHandler___block_invoke_2;
    v8[3] = &unk_1E76C95A8;
    v9 = v5;
    [v7 launchAppForDialRequest:v6 completion:v8];
  }

  else
  {
    [v4 launchAppForDialRequest:v6 completion:0];
  }
}

void __57__MKSystemController_placeDialRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MKSystemController_placeDialRequest_completionHandler___block_invoke_3;
  v6[3] = &unk_1E76CDA20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_openURLDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained openURL:lCopy completionHandler:handlerCopy];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__MKSystemController_openURL_completionHandler___block_invoke;
    v17[3] = &unk_1E76C8F98;
    v17[4] = self;
    v10 = handlerCopy;
    v18 = v10;
    v11 = MEMORY[0x1A58E9F30](v17);
    if ([(MKSystemController *)self _shouldUseLaunchServices])
    {
      (v11)[2](v11, lCopy);
    }

    else
    {
      v12 = *MEMORY[0x1E69DDA98];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __48__MKSystemController_openURL_completionHandler___block_invoke_4;
      v13[3] = &unk_1E76C8FC0;
      v15 = v10;
      v16 = v11;
      v14 = lCopy;
      [v12 openURL:v14 withCompletionHandler:v13];
    }
  }
}

void __48__MKSystemController_openURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MKSystemController_openURL_completionHandler___block_invoke_2;
  v9[3] = &unk_1E76CAA70;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v6 = v3;
  v7 = MEMORY[0x1A58E9F30](v9);
  v8 = dispatch_get_global_queue(25, 0);
  dispatch_async(v8, v7);
}

uint64_t __48__MKSystemController_openURL_completionHandler___block_invoke_4(void *a1, int a2)
{
  if (!a2)
  {
    return (*(a1[6] + 16))(a1[6], a1[4]);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __48__MKSystemController_openURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _defaultOpenURLOptions];
  v5 = [v2 openURL:v3 withOptions:v4];

  v6 = *(a1 + 48);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MKSystemController_openURL_completionHandler___block_invoke_3;
    v7[3] = &unk_1E76C9DB0;
    v8 = v6;
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)openURL:(id)l fromScene:(id)scene completionHandler:(id)handler
{
  sceneCopy = scene;
  handlerCopy = handler;
  if (sceneCopy)
  {
    v10 = MEMORY[0x1E69636B8];
    lCopy = l;
    lCopy2 = objc_alloc_init(v10);
    _currentOpenApplicationEndpoint = [sceneCopy _currentOpenApplicationEndpoint];
    [lCopy2 setTargetConnectionEndpoint:_currentOpenApplicationEndpoint];

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__MKSystemController_openURL_fromScene_completionHandler___block_invoke;
    v15[3] = &unk_1E76C8F70;
    v16 = handlerCopy;
    [defaultWorkspace openURL:lCopy configuration:lCopy2 completionHandler:v15];
  }

  else
  {
    lCopy2 = l;
    [(MKSystemController *)self openURL:lCopy2 completionHandler:handlerCopy];
  }
}

- (BOOL)openURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_openURLDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained openURL:lCopy completionHandler:0];
  }

  else
  {
    if (-[MKSystemController _shouldUseLaunchServices](self, "_shouldUseLaunchServices") || (v8 = MEMORY[0x1E69DDA98], ![*MEMORY[0x1E69DDA98] canOpenURL:lCopy]))
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      _defaultOpenURLOptions = [(MKSystemController *)self _defaultOpenURLOptions];
      v7 = [defaultWorkspace openURL:lCopy withOptions:_defaultOpenURLOptions error:0];

      goto LABEL_8;
    }

    [*v8 openURL:lCopy withCompletionHandler:&__block_literal_global_75];
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (BOOL)_isRunningInLockScreen
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x1E69DEB50];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        session = [v9 session];
        role = [session role];
        if ([role isEqualToString:v7])
        {
          if (![v9 activationState])
          {

LABEL_15:
            v13 = 1;
            goto LABEL_16;
          }

          activationState = [v9 activationState];

          if (activationState == 1)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v5 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (BOOL)_shouldUseLaunchServices
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  if (!mEMORY[0x1E69DC668] || (_UIApplicationIsExtension() & 1) != 0 || [(MKSystemController *)self _isInSpotlight])
  {
    return 1;
  }

  return [(MKSystemController *)self _isRunningInLockScreen];
}

- (BOOL)_isInSpotlight
{
  if (_isInSpotlight_onceToken != -1)
  {
    dispatch_once(&_isInSpotlight_onceToken, &__block_literal_global_66);
  }

  return _isInSpotlight_isInSpotlight;
}

void __36__MKSystemController__isInSpotlight__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _isInSpotlight_isInSpotlight = [v0 isEqualToString:@"com.apple.Spotlight"];
}

- (id)_defaultOpenURLOptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = getFBSOpenApplicationOptionKeyPromptUnlockDevice();
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supports3DImagery
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  mapsFeatureFreedomEnabled = [mEMORY[0x1E69A2398] mapsFeatureFreedomEnabled];

  if (mapsFeatureFreedomEnabled)
  {
    v4 = 1;
  }

  else
  {
    if (supports3DImagery_once != -1)
    {
      dispatch_once(&supports3DImagery_once, &__block_literal_global_58_19456);
    }

    v4 = supports3DImagery__supports3DImagery;
  }

  return v4 & 1;
}

uint64_t __39__MKSystemController_supports3DImagery__block_invoke()
{
  result = MGGetBoolAnswer();
  supports3DImagery__supports3DImagery = result;
  return result;
}

- (CGSize)screenSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isPhone6PlusOrLarger
{
  if ([(MKSystemController *)self userInterfaceIdiom])
  {
    return 0;
  }

  [(MKSystemController *)self screenSize];
  return fmax(v4, v5) > 667.0;
}

- (BOOL)isDevicePluggedIn
{
  out_token = 0;
  notify_register_check("com.apple.springboard.pluggedin", &out_token);
  v3 = 0;
  notify_get_state(out_token, &v3);
  notify_cancel(out_token);
  return v3 != 0;
}

- (BOOL)isWifiEnabled
{
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  isWiFiEnabled = [mEMORY[0x1E698B6A0] isWiFiEnabled];

  return isWiFiEnabled;
}

- (BOOL)_loadSwiftBridgeIfNeeded
{
  if (([MEMORY[0x1E69DD250] instancesRespondToSelector:sel__mapkit_setGlassBackground] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"MapKitSwiftBridge" ofType:@"framework"];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
      if (([v5 load]& 1) != 0)
      {
        v2 = [MEMORY[0x1E69DD250] instancesRespondToSelector:sel__mapkit_setGlassBackground];
LABEL_12:

        return v2;
      }

      v6 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_ERROR, "Failed to load MapKitSwiftBridge framework.", v8, 2u);
      }
    }

    else
    {
      v5 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "MapKitSwiftBridge framework not found.", buf, 2u);
      }
    }

    v2 = 0;
    goto LABEL_12;
  }

  return 1;
}

- (BOOL)_isGlassAvailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MKSystemController_Internal___isGlassAvailable__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  if (_isGlassAvailable_once != -1)
  {
    dispatch_once(&_isGlassAvailable_once, block);
  }

  return _isGlassAvailable_available;
}

uint64_t __49__MKSystemController_Internal___isGlassAvailable__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadSwiftBridgeIfNeeded];
  _isGlassAvailable_available = result;
  return result;
}

@end