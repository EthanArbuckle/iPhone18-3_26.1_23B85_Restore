@interface AXUIDisplayManager
+ (id)sharedDisplayManager;
- (AXUIDisplayManager)initWithServiceManager:(id)manager;
- (AXUIServiceManager)serviceManager;
- (BOOL)_axIsPointInForeheadRect:(CGPoint)rect;
- (BOOL)_hasVisibleAlertWithType:(unint64_t)type;
- (BOOL)_platformShouldUseScenes;
- (BOOL)_serviceWantsToPreventAutorotation:(id)autorotation;
- (BOOL)allWindowsHidden;
- (BOOL)destroyWindowSceneIfNeeded:(id)needed discardableWindow:(id)window;
- (BOOL)sceneRequestedForSceneClientIdentifier:(id)identifier;
- (NSString)debugDescription;
- (double)_originalDurationForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation withAdjustedDuration:(double)result;
- (id)_contentViewControllersWithUserInteractionEnabled:(BOOL)enabled forService:(id)service createIfNeeded:(BOOL)needed;
- (id)_gravityBehaviorForNubbit:(id)nubbit velocity:(CGPoint)velocity boundingView:(id)view;
- (id)_nubbitContextForGestureRecognizer:(id)recognizer;
- (id)_transactionIdentifierForDisplayingContentViewController:(id)controller service:(id)service;
- (id)_windowWithUserInteractionEnabled:(BOOL)enabled windowLevel:(double)level createIfNeeded:(BOOL)needed purposeIdentifier:(id)identifier userInterfaceStyle:(int64_t)style windowScene:(id)scene savedWindowScene:(id)windowScene;
- (id)showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image type:(unint64_t)type forService:(id)service;
- (id)showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image type:(unint64_t)type priority:(unint64_t)priority duration:(double)duration userInfo:(id)info forService:(id)self0;
- (id)windowSceneForSceneClientIdentifier:(id)identifier external:(BOOL)external;
- (void)_addContentViewController:(id)controller toWindow:(id)window forService:(id)service context:(void *)context completion:(id)completion;
- (void)_addDynamicAnimationsForNubbitContext:(id)context;
- (void)_attemptToInitializeActiveInterfaceOrientation;
- (void)_beginMoveForNubbitContext:(id)context;
- (void)_changeNubbitPositionForNubbitContext:(id)context;
- (void)_cleanupWindowsFromSceneDisconnection:(id)disconnection;
- (void)_didHideOrDequeueAlertWithContext:(id)context;
- (void)_disposeOfContentViewControllersWithUserInteractionEnabled:(BOOL)enabled forService:(id)service;
- (void)_endMoveForNubbitContext:(id)context;
- (void)_enumerateWindowsUsingBlock:(id)block;
- (void)_externalDisplaySceneConnected:(id)connected forSceneClientIdentifier:(id)identifier;
- (void)_externalDisplaySceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier;
- (void)_handleMoveNubbitGestureRecognizer:(id)recognizer;
- (void)_handleNextAlertForType:(unint64_t)type;
- (void)_hideAlertWithContext:(id)context notifyDelegate:(BOOL)delegate;
- (void)_reapHiddenWindows;
- (void)_remoteSceneDidHandleHomeGesture:(id)gesture;
- (void)_removeContentViewController:(id)controller forService:(id)service completion:(id)completion;
- (void)_removeDynamicAnimationsForNubbitContext:(id)context;
- (void)_scheduleFadeForNubbitContext:(id)context;
- (void)_showAlertWithContext:(id)context;
- (void)_showOrEnqueueAlertWithContext:(id)context;
- (void)_undoFadeForNubbitContext:(id)context;
- (void)_windowSceneConnected:(id)connected forSceneClientIdentifier:(id)identifier;
- (void)_windowSceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier;
- (void)addContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled forService:(id)service forSceneClientIdentifier:(id)identifier context:(void *)context userInterfaceStyle:(int64_t)style forWindowScene:(id)scene spatialConfiguration:(id)self0 completion:(id)self1;
- (void)cancelNubbitFade:(id)fade;
- (void)collisionBehavior:(id)behavior beganContactForItem:(id)item withBoundaryIdentifier:(id)identifier atPoint:(CGPoint)point;
- (void)dealloc;
- (void)dynamicAnimatorDidPause:(id)pause;
- (void)enumerateContentViewControllersUsingBlock:(id)block;
- (void)hideAlertWithIdentifier:(id)identifier forService:(id)service;
- (void)pinNubbitToEdge:(id)edge;
- (void)registerNubbit:(id)nubbit delegate:(id)delegate;
- (void)removeAddContentViewControllerBlockForObjectKey:(id)key;
- (void)removeWindowSceneForSceneClientIdentifier:(id)identifier external:(BOOL)external;
- (void)saveAddContentViewControllerBlock:(id)block forObjectKey:(id)key forSceneClientIdentifier:(id)identifier;
- (void)saveWindowScene:(id)scene forSceneClientIdentifier:(id)identifier external:(BOOL)external;
- (void)serviceDidConnect:(id)connect clientWithIdentifier:(id)identifier;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)unregisterNubbit:(id)nubbit shouldUndoFade:(BOOL)fade;
- (void)waitForSceneAddContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled forService:(id)service forSceneClientIdentifier:(id)identifier context:(void *)context userInterfaceStyle:(int64_t)style forWindowScene:(id)scene spatialConfiguration:(id)self0 completion:(id)self1;
@end

@implementation AXUIDisplayManager

+ (id)sharedDisplayManager
{
  v2 = +[AXUIServiceManager sharedServiceManager];
  displayManager = [v2 displayManager];

  return displayManager;
}

- (AXUIDisplayManager)initWithServiceManager:(id)manager
{
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = AXUIDisplayManager;
  v5 = [(AXUIDisplayManager *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (managerCopy && v6)
    {
      [(AXUIDisplayManager *)v5 setDefaultAlertStyleProvider:v6];
      [(AXUIDisplayManager *)v5 setServiceManager:managerCopy];
      [(AXUIDisplayManager *)v5 _attemptToInitializeActiveInterfaceOrientation];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      if ([MEMORY[0x277CE7E48] isAvailable])
      {
        server = [MEMORY[0x277CE7E48] server];
        isDarkModeActive = [server isDarkModeActive];
        v11 = 1;
        if (isDarkModeActive)
        {
          v11 = 2;
        }

        v5->_userInterfaceStyle = v11;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __45__AXUIDisplayManager_initWithServiceManager___block_invoke;
        v28[3] = &unk_278BF3358;
        v29 = v5;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __45__AXUIDisplayManager_initWithServiceManager___block_invoke_3;
        v26[3] = &unk_278BF3380;
        v27 = v29;
        [server registerSpringBoardActionHandler:v28 withIdentifierCallback:v26];
      }

      v12 = objc_opt_new();
      mainScenes = v5->_mainScenes;
      v5->_mainScenes = v12;

      v14 = objc_opt_new();
      externalScenes = v5->_externalScenes;
      v5->_externalScenes = v14;

      v16 = objc_opt_new();
      addContentViewControllerBlocks = v5->_addContentViewControllerBlocks;
      v5->_addContentViewControllerBlocks = v16;

      v18 = objc_opt_new();
      sceneClients = v5->_sceneClients;
      v5->_sceneClients = v18;
    }

    else
    {
      sceneClients = v5;
      v5 = 0;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, systemAppServerReady, *MEMORY[0x277CE7CD0], 0, CFNotificationSuspensionBehaviorCoalesce);
    [(AXUIDisplayManager *)v5 systemAppServerReady];
  }

  v21 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AXUIDisplayManager_initWithServiceManager___block_invoke_4;
  block[3] = &unk_278BF3050;
  v22 = v5;
  v25 = v22;
  dispatch_async(v21, block);

  return v22;
}

void __45__AXUIDisplayManager_initWithServiceManager___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 == 13)
  {
    v10[9] = v3;
    v10[10] = v4;
    v6 = [a3 objectForKeyedSubscript:*MEMORY[0x277CE7CA0]];
    v7 = [v6 integerValue];

    [*(a1 + 32) setUserInterfaceStyle:v7];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__AXUIDisplayManager_initWithServiceManager___block_invoke_2;
    v10[3] = &__block_descriptor_40_e55_v32__0__NSString_8__UIWindow_AXUIWindowProtocol__16_B24l;
    v10[4] = v7;
    [v8 _enumerateWindowsUsingBlock:v10];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"AXUIServerModifiedWindowInterfaceStyle" object:*(a1 + 32)];
  }
}

void __45__AXUIDisplayManager_initWithServiceManager___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 shouldRespondToDarkModeChanges])
  {
    [v4 setOverrideUserInterfaceStyle:*(a1 + 32)];
  }
}

void __45__AXUIDisplayManager_initWithServiceManager___block_invoke_4(uint64_t a1)
{
  if (AXDeviceHasJindo())
  {
    v2 = *(a1 + 32);
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

double __45__AXUIDisplayManager_initWithServiceManager___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D66C60]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) addObserver:?];
  v5 = *(a1 + 32);
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  return result;
}

- (void)dealloc
{
  systemServerActionHandlerIdentifier = [(AXUIDisplayManager *)self systemServerActionHandlerIdentifier];
  if (systemServerActionHandlerIdentifier)
  {
    server = [MEMORY[0x277CE7E48] server];
    [server removeActionHandler:systemServerActionHandlerIdentifier];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  [(AXUIDisplayManager *)self setDefaultAlertStyleProvider:0];
  [(AXUIDisplayManager *)self setAlertQueues:0];
  [(AXUIDisplayManager *)self setVisibleAlertContexts:0];
  [(AXUIDisplayManager *)self setActiveWindows:0];
  [(AXUIDisplayManager *)self setPassiveWindows:0];
  [(AXUIDisplayManager *)self setActiveContentViewControllers:0];
  [(AXUIDisplayManager *)self setPassiveContentViewControllers:0];
  [(AXUIDisplayManager *)self setNubbitContexts:0];
  [(AXUIDisplayManager *)self setSystemServerActionHandlerIdentifier:0];

  v6.receiver = self;
  v6.super_class = AXUIDisplayManager;
  [(AXUIDisplayManager *)&v6 dealloc];
}

- (BOOL)_platformShouldUseScenes
{
  if (_platformShouldUseScenes_onceToken != -1)
  {
    [AXUIDisplayManager _platformShouldUseScenes];
  }

  return _platformShouldUseScenes__UseScenes;
}

void __46__AXUIDisplayManager__platformShouldUseScenes__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D76620];
  v1 = *MEMORY[0x277D76620];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *v0;
    v3 = [objc_opt_class() usesScenes];
  }

  else
  {
    v3 = 1;
  }

  _platformShouldUseScenes__UseScenes = v3;
  v4 = AXLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:_platformShouldUseScenes__UseScenes];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23DBD1000, v4, OS_LOG_TYPE_DEFAULT, "AXUIServer will request scenes for its UI: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled forService:(id)service forSceneClientIdentifier:(id)identifier context:(void *)context userInterfaceStyle:(int64_t)style forWindowScene:(id)scene spatialConfiguration:(id)self0 completion:(id)self1
{
  enabledCopy = enabled;
  v49 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  serviceCopy = service;
  identifierCopy = identifier;
  sceneCopy = scene;
  configurationCopy = configuration;
  completionCopy = completion;
  v20 = +[AXUIAssertionManager sharedInstance];
  [v20 acquireAssertionUIIfNeeded];

  _platformShouldUseScenes = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  if (!_platformShouldUseScenes)
  {

    identifierCopy = 0;
  }

  v22 = [(AXUIDisplayManager *)self windowSceneForSceneClientIdentifier:identifierCopy external:0];
  v23 = AXLogUI();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134219266;
    v38 = controllerCopy;
    v39 = 2112;
    v40 = objc_opt_class();
    v41 = 2112;
    v42 = serviceCopy;
    v43 = 2112;
    v44 = identifierCopy;
    v45 = 2048;
    v46 = sceneCopy;
    v47 = 2048;
    v48 = v22;
    _os_log_impl(&dword_23DBD1000, v23, OS_LOG_TYPE_INFO, "Adding contentVC=%p %@ service=%@ sceneClientIdentifier:%@ windowScene=%p, savedWindowScene=%p", buf, 0x3Eu);
  }

  if (serviceCopy && identifierCopy)
  {
    [(NSMutableDictionary *)self->_sceneClients setObject:serviceCopy forKey:identifierCopy];
  }

  v24 = !_platformShouldUseScenes;
  if (sceneCopy)
  {
    v24 = 1;
  }

  if ((v24 & 1) != 0 || v22)
  {
    v25 = [(AXUIDisplayManager *)self _contentViewControllersWithUserInteractionEnabled:enabledCopy forService:serviceCopy createIfNeeded:1];
    v26 = v25;
    if (controllerCopy && ([v25 containsObject:controllerCopy] & 1) == 0)
    {
      v32 = configurationCopy;
      [v26 addObject:controllerCopy];
      [(AXUIDisplayManager *)self desiredWindowLevelForService:serviceCopy forContentViewController:controllerCopy userInteractionEnabled:enabledCopy];
      v28 = v27;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v34 = [(AXUIDisplayManager *)self _windowWithUserInteractionEnabled:enabledCopy windowLevel:1 createIfNeeded:v30 purposeIdentifier:style userInterfaceStyle:sceneCopy windowScene:v22 savedWindowScene:v28];

      if (enabledCopy)
      {
        [v34 makeKeyAndVisible];
      }

      else
      {
        [v34 setHidden:0];
      }

      [(AXUIDisplayManager *)self _addContentViewController:controllerCopy toWindow:v34 forService:serviceCopy context:context completion:completionCopy];

      configurationCopy = v32;
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [(AXUIDisplayManager *)self waitForSceneAddContentViewController:controllerCopy withUserInteractionEnabled:enabledCopy forService:serviceCopy forSceneClientIdentifier:identifierCopy context:context userInterfaceStyle:style forWindowScene:0 spatialConfiguration:configurationCopy completion:completionCopy];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)waitForSceneAddContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled forService:(id)service forSceneClientIdentifier:(id)identifier context:(void *)context userInterfaceStyle:(int64_t)style forWindowScene:(id)scene spatialConfiguration:(id)self0 completion:(id)self1
{
  enabledCopy = enabled;
  v52 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  serviceCopy = service;
  identifierCopy = identifier;
  sceneCopy = scene;
  configurationCopy = configuration;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __196__AXUIDisplayManager_waitForSceneAddContentViewController_withUserInteractionEnabled_forService_forSceneClientIdentifier_context_userInterfaceStyle_forWindowScene_spatialConfiguration_completion___block_invoke;
  aBlock[3] = &unk_278BF33A8;
  objc_copyWeak(v47, &location);
  v22 = controllerCopy;
  v41 = v22;
  v48 = enabledCopy;
  v38 = serviceCopy;
  v42 = v38;
  v23 = identifierCopy;
  v43 = v23;
  v47[1] = context;
  v47[2] = style;
  v24 = sceneCopy;
  v44 = v24;
  v25 = configurationCopy;
  v45 = v25;
  v26 = completionCopy;
  v46 = v26;
  v27 = _Block_copy(aBlock);
  v28 = [(AXUIDisplayManager *)self sceneRequestedForSceneClientIdentifier:v23];
  [(AXUIDisplayManager *)self saveAddContentViewControllerBlock:v27 forObjectKey:v22 forSceneClientIdentifier:v23];
  v29 = AXLogUI();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = v22;
    _os_log_impl(&dword_23DBD1000, v29, OS_LOG_TYPE_INFO, "Tried to add %@ before a scene was connected, queuing for later.", buf, 0xCu);
  }

  if (((v28 | [v23 containsString:@"kAXUIRemoteSceneClientIdentifier"]) & 1) == 0)
  {
    v30 = +[AXUIServiceManager sharedServiceManager];
    delegate = [v30 delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      [(AXUIDisplayManager *)self desiredWindowLevelForService:v38 forContentViewController:v22 userInteractionEnabled:enabledCopy];
      v34 = v33;
      v35 = +[AXUIServiceManager sharedServiceManager];
      delegate2 = [v35 delegate];
      [delegate2 requestSceneForSceneClientIdentifier:v23 scenePreferredLevel:v25 spatialConfiguration:v34];
    }
  }

  objc_destroyWeak(v47);
  objc_destroyWeak(&location);

  v37 = *MEMORY[0x277D85DE8];
}

void __196__AXUIDisplayManager_waitForSceneAddContentViewController_withUserInteractionEnabled_forService_forSceneClientIdentifier_context_userInterfaceStyle_forWindowScene_spatialConfiguration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained addContentViewController:*(a1 + 32) withUserInteractionEnabled:*(a1 + 104) forService:*(a1 + 40) forSceneClientIdentifier:*(a1 + 48) context:*(a1 + 88) userInterfaceStyle:*(a1 + 96) forWindowScene:*(a1 + 56) spatialConfiguration:*(a1 + 64) completion:*(a1 + 72)];
}

- (id)showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image type:(unint64_t)type forService:(id)service
{
  v7 = 3.0;
  if (!type)
  {
    v7 = 1.5;
  }

  return [AXUIDisplayManager showAlertWithText:"showAlertWithText:subtitleText:iconImage:type:priority:duration:forService:" subtitleText:text iconImage:subtitleText type:image priority:v7 duration:? forService:?];
}

- (id)showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image type:(unint64_t)type priority:(unint64_t)priority duration:(double)duration userInfo:(id)info forService:(id)self0
{
  v39 = *MEMORY[0x277D85DE8];
  textCopy = text;
  subtitleTextCopy = subtitleText;
  imageCopy = image;
  infoCopy = info;
  serviceCopy = service;
  if (![textCopy length])
  {
    v29 = AXLogUI();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "Cannot show alert. Text was empty";
      v31 = v29;
      v32 = 2;
LABEL_12:
      _os_log_impl(&dword_23DBD1000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

LABEL_13:

    uUIDString = 0;
    goto LABEL_16;
  }

  if (([serviceCopy conformsToProtocol:&unk_2850140C0] & 1) == 0)
  {
    v29 = AXLogUI();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = serviceCopy;
      v30 = "Cannot show alert service does not conform to AXUIService: %@";
      v31 = v29;
      v32 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v22 = +[AXUIAssertionManager sharedInstance];
  [v22 acquireAssertionUIIfNeeded];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  alertBannerManager = [(AXUIDisplayManager *)self alertBannerManager];

  if (!alertBannerManager)
  {
    v26 = objc_opt_new();
    [(AXUIDisplayManager *)self setAlertBannerManager:v26];
  }

  if (type <= 6 && ((1 << type) & 0x4A) != 0)
  {
    v27 = [objc_alloc(MEMORY[0x277CE77F8]) initWithIdentifier:uUIDString title:textCopy subtitle:subtitleTextCopy iconImage:imageCopy userInfo:infoCopy actionBlock:0];
    [v27 setShouldExpandSystemApertureAlertByDefault:1];
    alertBannerManager2 = [(AXUIDisplayManager *)self alertBannerManager];
    [alertBannerManager2 postAlertBanner:v27 duration:duration];
  }

  else
  {
    v33 = objc_opt_new();
    [v33 setIdentifier:uUIDString];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v33 setCreationTimeInterval:?];
    [v33 setService:serviceCopy];
    [v33 setPriority:priority];
    [v33 setDuration:duration];
    [v33 setText:textCopy];
    [v33 setSubtitleText:subtitleTextCopy];
    [v33 setIconImage:imageCopy];
    [v33 setType:type];
    [v33 setUserInfo:infoCopy];
    v27 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingAlertWithContext:v33 service:serviceCopy];
    serviceManager = [(AXUIDisplayManager *)self serviceManager];
    [serviceManager beginTransactionWithIdentifier:v27 forService:serviceCopy];

    alertBannerManager2 = v33;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];

  return uUIDString;
}

- (void)hideAlertWithIdentifier:(id)identifier forService:(id)service
{
  identifierCopy = identifier;
  visibleAlertContexts = [(AXUIDisplayManager *)self visibleAlertContexts];
  v7 = [visibleAlertContexts objectForKey:identifierCopy];
  v8 = v7;
  if (v7)
  {
    showOrHideTimer = [v7 showOrHideTimer];
    [showOrHideTimer cancel];

    [v8 setShowOrHideTimer:0];
    [(AXUIDisplayManager *)self _hideAlertWithContext:v8 notifyDelegate:0];
  }

  else
  {
    alertQueues = [(AXUIDisplayManager *)self alertQueues];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__AXUIDisplayManager_hideAlertWithIdentifier_forService___block_invoke;
    v11[3] = &unk_278BF33F8;
    v12 = identifierCopy;
    selfCopy = self;
    [alertQueues enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __57__AXUIDisplayManager_hideAlertWithIdentifier_forService___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__AXUIDisplayManager_hideAlertWithIdentifier_forService___block_invoke_2;
  v10[3] = &unk_278BF32D0;
  v11 = *(a1 + 32);
  v7 = [v6 indexOfObjectPassingTest:v10];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [v6 objectAtIndex:v7];
    [v6 removeObjectAtIndex:v8];
    [*(a1 + 40) _didHideOrDequeueAlertWithContext:v9];
    *a4 = 1;
  }
}

uint64_t __57__AXUIDisplayManager_hideAlertWithIdentifier_forService___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)registerNubbit:(id)nubbit delegate:(id)delegate
{
  nubbitCopy = nubbit;
  delegateCopy = delegate;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];

  if (!nubbitContexts)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(AXUIDisplayManager *)self setNubbitContexts:dictionary];
  }

  v9 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:nubbitCopy];
  nubbitContexts2 = [(AXUIDisplayManager *)self nubbitContexts];
  v11 = [nubbitContexts2 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = objc_alloc_init(AXUINubbitContext);
    [(AXUINubbitContext *)v12 setNubbit:nubbitCopy];
    [(AXUINubbitContext *)v12 setDelegate:delegateCopy];
    v13 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleMoveNubbitGestureRecognizer_];
    [nubbitCopy addGestureRecognizer:v13];
    [(AXUINubbitContext *)v12 setMoveNubbitGestureRecognizer:v13];
    v14 = objc_alloc(MEMORY[0x277CE6950]);
    v15 = [v14 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [v15 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AXUINubbitContext *)v12 setFadeTimer:v15];
    [nubbitCopy alpha];
    [(AXUINubbitContext *)v12 setOriginalAlpha:?];
    [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:v12];
    [(AXUIDisplayManager *)self _addDynamicAnimationsForNubbitContext:v12];
    nubbitContexts3 = [(AXUIDisplayManager *)self nubbitContexts];
    v17 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:nubbitCopy];
    [nubbitContexts3 setObject:v12 forKeyedSubscript:v17];
  }
}

- (void)unregisterNubbit:(id)nubbit shouldUndoFade:(BOOL)fade
{
  fadeCopy = fade;
  nubbitCopy = nubbit;
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:?];
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  v8 = [nubbitContexts objectForKeyedSubscript:v6];

  if (v8)
  {
    moveNubbitGestureRecognizer = [v8 moveNubbitGestureRecognizer];
    if (moveNubbitGestureRecognizer)
    {
      [nubbitCopy removeGestureRecognizer:moveNubbitGestureRecognizer];
    }

    if (fadeCopy)
    {
      [(AXUIDisplayManager *)self _undoFadeForNubbitContext:v8];
    }

    [(AXUIDisplayManager *)self _removeDynamicAnimationsForNubbitContext:v8];
    fadeTimer = [v8 fadeTimer];
    [fadeTimer cancel];

    nubbitContexts2 = [(AXUIDisplayManager *)self nubbitContexts];
    [nubbitContexts2 removeObjectForKey:v6];

    nubbitContexts3 = [(AXUIDisplayManager *)self nubbitContexts];
    v13 = [nubbitContexts3 count];

    if (!v13)
    {
      [(AXUIDisplayManager *)self setNubbitContexts:0];
    }
  }
}

- (BOOL)allWindowsHidden
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__AXUIDisplayManager_allWindowsHidden__block_invoke;
  v4[3] = &unk_278BF3420;
  v4[4] = &v5;
  [(AXUIDisplayManager *)self _enumerateWindowsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __38__AXUIDisplayManager_allWindowsHidden__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isHidden];
  *(*(*(a1 + 32) + 8) + 24) &= result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_enumerateWindowsUsingBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  activeWindows = [(AXUIDisplayManager *)self activeWindows];
  allValues = [activeWindows allValues];
  [array addObjectsFromArray:allValues];

  passiveWindows = [(AXUIDisplayManager *)self passiveWindows];
  allValues2 = [passiveWindows allValues];
  [array addObjectsFromArray:allValues2];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = array;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__AXUIDisplayManager__enumerateWindowsUsingBlock___block_invoke;
      v16[3] = &unk_278BF3448;
      v17 = blockCopy;
      v18 = &v23;
      [v14 enumerateKeysAndObjectsUsingBlock:v16];
      LOBYTE(v14) = *(v24 + 24);

      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __50__AXUIDisplayManager__enumerateWindowsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)_windowWithUserInteractionEnabled:(BOOL)enabled windowLevel:(double)level createIfNeeded:(BOOL)needed purposeIdentifier:(id)identifier userInterfaceStyle:(int64_t)style windowScene:(id)scene savedWindowScene:(id)windowScene
{
  neededCopy = needed;
  enabledCopy = enabled;
  v66 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sceneCopy = scene;
  windowSceneCopy = windowScene;
  v18 = &selRef_activeWindows;
  v19 = round(level);
  if (!enabledCopy)
  {
    v18 = &selRef_passiveWindows;
  }

  v20 = NSStringFromSelector(*v18);
  style = [MEMORY[0x277CCACA8] stringWithFormat:@"%f-%ld", *&v19, style];
  v60 = v20;
  v22 = [(AXUIDisplayManager *)self valueForKey:v20];
  _sceneIdentifier = [sceneCopy _sceneIdentifier];
  if (!_sceneIdentifier)
  {
    _sceneIdentifier2 = [windowSceneCopy _sceneIdentifier];
    if (_sceneIdentifier2)
    {
      _sceneIdentifier = _sceneIdentifier2;
    }

    else
    {
      _sceneIdentifier = @"MAIN-DISPLAY";
    }
  }

  v61 = windowSceneCopy;
  v25 = [v22 objectForKey:_sceneIdentifier];
  v26 = [v25 objectForKey:style];

  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = !neededCopy;
  }

  if (v27)
  {
    v28 = identifierCopy;
    goto LABEL_40;
  }

  objc_opt_class();
  objc_opt_class();
  _platformShouldUseScenes = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  v30 = off_278BF29C0;
  v31 = !_platformShouldUseScenes;
  if (!_platformShouldUseScenes)
  {
    v30 = off_278BF2A30;
  }

  v32 = *v30;
  if (v31)
  {
    v33 = &off_278BF2A38;
  }

  else
  {
    v33 = off_278BF2A08;
  }

  v34 = objc_opt_class();
  v35 = *v33;
  v36 = objc_opt_class();
  if (enabledCopy)
  {
    v36 = v34;
  }

  if (sceneCopy)
  {
    v26 = [[v36 alloc] initWithWindowScene:sceneCopy];
    v37 = AXLogUI();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v63 = sceneCopy;
      v64 = 2112;
      v65 = v26;
      v38 = "Made window with external scene: %@ %@";
LABEL_26:
      v41 = v37;
      v42 = 22;
LABEL_27:
      _os_log_impl(&dword_23DBD1000, v41, OS_LOG_TYPE_INFO, v38, buf, v42);
    }
  }

  else
  {
    v39 = [v36 alloc];
    v40 = v39;
    if (!v61)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      v26 = [v40 initWithScreen:mainScreen];

      v37 = AXLogUI();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v63 = v26;
      v38 = "Made window for main screen %@";
      v41 = v37;
      v42 = 12;
      goto LABEL_27;
    }

    v26 = [v39 initWithWindowScene:v61];
    v37 = AXLogUI();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v63 = v61;
      v64 = 2112;
      v65 = v26;
      v38 = "Made window with main scene: %@ %@";
      goto LABEL_26;
    }
  }

LABEL_28:

  [v26 setWindowLevel:v19];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v26 setBackgroundColor:clearColor];

  if (style)
  {
    [v26 setOverrideUserInterfaceStyle:style];
  }

  else
  {
    if ([MEMORY[0x277CE7E48] isAvailable])
    {
      server = [MEMORY[0x277CE7E48] server];
      isDarkModeActive = [server isDarkModeActive];

      if (isDarkModeActive)
      {
        if ([(AXUIDisplayManager *)self userInterfaceStyle]!= 2)
        {
          [(AXUIDisplayManager *)self setUserInterfaceStyle:2];
        }
      }
    }

    [v26 setOverrideUserInterfaceStyle:{-[AXUIDisplayManager userInterfaceStyle](self, "userInterfaceStyle")}];
    [v26 setShouldRespondToDarkModeChanges:1];
  }

  v28 = identifierCopy;
  [v26 _setWindowControlsStatusBarOrientation:0];
  v46 = objc_opt_new();
  [v26 setRootViewController:v46];
  [v26 setHidden:0];
  [v26 setHidden:1];
  if (!v22)
  {
    v22 = objc_opt_new();
    [(AXUIDisplayManager *)self setValue:v22 forKey:v60];
  }

  dictionary = [v22 objectForKey:_sceneIdentifier];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary setObject:v26 forKey:style];
  [v22 setObject:dictionary forKey:_sceneIdentifier];

LABEL_40:
  accessibilityIdentifier = [v26 accessibilityIdentifier];
  v49 = accessibilityIdentifier;
  if (!accessibilityIdentifier || [accessibilityIdentifier rangeOfString:v28] == 0x7FFFFFFFFFFFFFFFLL)
  {
    accessibilityIdentifier2 = [v26 accessibilityIdentifier];
    v51 = [accessibilityIdentifier2 length];

    if (v51)
    {
      v52 = MEMORY[0x277CCACA8];
      accessibilityIdentifier3 = [v26 accessibilityIdentifier];
      v54 = [v52 stringWithFormat:@"%@|%@", accessibilityIdentifier3, v28];
      [v26 setAccessibilityIdentifier:v54];
    }

    else
    {
      [v26 setAccessibilityIdentifier:v28];
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXUIServerModifiedWindowInterfaceStyle" object:self];

  v56 = *MEMORY[0x277D85DE8];

  return v26;
}

- (double)_originalDurationForRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation withAdjustedDuration:(double)result
{
  if (orientation != interfaceOrientation && (orientation - 1) < 2 == (interfaceOrientation - 1) < 2)
  {
    return result * 0.5;
  }

  return result;
}

- (void)enumerateContentViewControllersUsingBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v50 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  activeContentViewControllers = [(AXUIDisplayManager *)self activeContentViewControllers];
  v6 = [activeContentViewControllers countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    v32 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(activeContentViewControllers);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        selfCopy = self;
        activeContentViewControllers2 = [(AXUIDisplayManager *)self activeContentViewControllers];
        v13 = [activeContentViewControllers2 objectForKeyedSubscript:v10];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v43;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(v14);
              }

              blockCopy[2](blockCopy, *(*(&v42 + 1) + 8 * j), &v50);
              if (v50)
              {
LABEL_32:

                goto LABEL_33;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v42 objects:v53 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v8 = v32;
        self = selfCopy;
      }

      v7 = [activeContentViewControllers countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  activeContentViewControllers = [(AXUIDisplayManager *)self passiveContentViewControllers];
  v19 = [activeContentViewControllers countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    v33 = *v39;
    while (2)
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(activeContentViewControllers);
        }

        v23 = *(*(&v38 + 1) + 8 * k);
        selfCopy2 = self;
        passiveContentViewControllers = [(AXUIDisplayManager *)self passiveContentViewControllers];
        v26 = [passiveContentViewControllers objectForKeyedSubscript:v23];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v26;
        v27 = [v14 countByEnumeratingWithState:&v34 objects:v51 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v35;
LABEL_23:
          v30 = 0;
          while (1)
          {
            if (*v35 != v29)
            {
              objc_enumerationMutation(v14);
            }

            blockCopy[2](blockCopy, *(*(&v34 + 1) + 8 * v30), &v50);
            if (v50)
            {
              goto LABEL_32;
            }

            if (v28 == ++v30)
            {
              v28 = [v14 countByEnumeratingWithState:&v34 objects:v51 count:16];
              if (v28)
              {
                goto LABEL_23;
              }

              break;
            }
          }
        }

        self = selfCopy2;
        v21 = v33;
      }

      v20 = [activeContentViewControllers countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_windowSceneConnected:(id)connected forSceneClientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  identifierCopy = identifier;
  v8 = AXLogUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 134218242;
    v17 = connectedCopy;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "New window scene connected: %p for scene client: %@. Adding queued content view controllers", &v16, 0x16u);
  }

  [(AXUIDisplayManager *)self saveWindowScene:connectedCopy forSceneClientIdentifier:identifierCopy external:0];
  v9 = @"AXUIServerDefaultSceneClientIdentifier";
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v10];
  [v11 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_428];
  [(NSMutableDictionary *)self->_addContentViewControllerBlocks removeObjectForKey:v10];
  sceneClients = [(AXUIDisplayManager *)self sceneClients];
  v13 = [sceneClients objectForKeyedSubscript:v10];

  LOBYTE(sceneClients) = objc_opt_respondsToSelector();
  if (sceneClients)
  {
    v14 = AXLogUI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = connectedCopy;
      _os_log_impl(&dword_23DBD1000, v14, OS_LOG_TYPE_INFO, "Main display scene connected for Service: %@. windowScene: %@", &v16, 0x16u);
    }

    [(__CFString *)v13 mainDisplaySceneConnected:connectedCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_windowSceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  identifierCopy = identifier;
  v8 = AXLogUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 134218242;
    v12 = disconnectedCopy;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "Window scene disconnected: %p, for scene client:%@", &v11, 0x16u);
  }

  [(AXUIDisplayManager *)self removeWindowSceneForSceneClientIdentifier:identifierCopy external:0];
  _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
  [(AXUIDisplayManager *)self _cleanupWindowsFromSceneDisconnection:_sceneIdentifier];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_externalDisplaySceneConnected:(id)connected forSceneClientIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  identifierCopy = identifier;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v8 = AXLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v13 = connectedCopy;
      v14 = 2112;
      v15 = identifierCopy;
      _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "New external window scene connected: %p for scene client: %@. Notifying services.", buf, 0x16u);
    }

    [(AXUIDisplayManager *)self saveWindowScene:connectedCopy forSceneClientIdentifier:identifierCopy external:1];
    v10 = identifierCopy;
    v11 = connectedCopy;
    AXPerformBlockOnMainThread();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __78__AXUIDisplayManager__externalDisplaySceneConnected_forSceneClientIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) sceneClients];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

    if (objc_opt_respondsToSelector())
    {
      v4 = AXLogUI();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_23DBD1000, v4, OS_LOG_TYPE_INFO, "External display scene connected for Service: %@, sceneClientIdentifier: %@", buf, 0x16u);
      }

      [v3 externalDisplaySceneConnected:*(a1 + 48) forSceneClientIdentifier:*(a1 + 32)];
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(a1 + 40) serviceManager];
    v3 = [v6 _services];

    v7 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = AXLogUI();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = v11;
              _os_log_impl(&dword_23DBD1000, v12, OS_LOG_TYPE_INFO, "External display scene connected for Service: %@", buf, 0xCu);
            }

            [v11 externalDisplaySceneConnected:*(a1 + 48)];
          }
        }

        v8 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_externalDisplaySceneDisconnected:(id)disconnected forSceneClientIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  identifierCopy = identifier;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v8 = AXLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = disconnectedCopy;
      _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "Disconnecting external scene: %@", buf, 0xCu);
    }

    [(AXUIDisplayManager *)self removeWindowSceneForSceneClientIdentifier:identifierCopy external:1];
    _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
    [(AXUIDisplayManager *)self _cleanupWindowsFromSceneDisconnection:_sceneIdentifier];

    v11 = identifierCopy;
    v12 = disconnectedCopy;
    AXPerformBlockOnMainThread();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __81__AXUIDisplayManager__externalDisplaySceneDisconnected_forSceneClientIdentifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) sceneClients];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

    if (objc_opt_respondsToSelector())
    {
      v4 = AXLogUI();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_23DBD1000, v4, OS_LOG_TYPE_INFO, "External display scene disconnected for Service: %@, sceneClientIdentifier: %@", buf, 0x16u);
      }

      [v3 externalDisplaySceneDisconnected:*(a1 + 48) forSceneClientIdentifier:*(a1 + 32)];
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(a1 + 40) serviceManager];
    v3 = [v6 _services];

    v7 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = AXLogUI();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = v11;
              _os_log_impl(&dword_23DBD1000, v12, OS_LOG_TYPE_INFO, "External display scene disconnected for Service: %@", buf, 0xCu);
            }

            [v11 externalDisplaySceneDisconnected:*(a1 + 48)];
          }
        }

        v8 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupWindowsFromSceneDisconnection:(id)disconnection
{
  activeWindows = self->_activeWindows;
  disconnectionCopy = disconnection;
  [(NSMutableDictionary *)activeWindows setObject:0 forKeyedSubscript:disconnectionCopy];
  [(NSMutableDictionary *)self->_passiveWindows setObject:0 forKeyedSubscript:disconnectionCopy];
}

- (void)saveWindowScene:(id)scene forSceneClientIdentifier:(id)identifier external:(BOOL)external
{
  v6 = 144;
  if (external)
  {
    v6 = 152;
  }

  v7 = *(&self->super.isa + v6);
  identifierCopy = @"AXUIServerDefaultSceneClientIdentifier";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v9 = identifierCopy;
  v10 = v7;
  sceneCopy = scene;
  [v10 setObject:sceneCopy forKey:v9];
}

- (BOOL)destroyWindowSceneIfNeeded:(id)needed discardableWindow:(id)window
{
  v33 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  windowCopy = window;
  if (!neededCopy)
  {
    goto LABEL_19;
  }

  v7 = AXLogUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    windows = [neededCopy windows];
    *buf = 134218242;
    v30 = neededCopy;
    v31 = 2112;
    v32 = windows;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_INFO, "checking scene: %p, windows: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  windows2 = [neededCopy windows];
  v10 = [windows2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(windows2);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (([v15 isHidden] & 1) == 0 && v15 != windowCopy)
        {
          NSClassFromString(&cfstr_Uitexteffectsw.isa);
          v12 += (objc_opt_isKindOfClass() & 1) == 0;
        }
      }

      v11 = [windows2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);

    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v16 = +[AXUIServiceManager sharedServiceManager];
  delegate = [v16 delegate];
  v18 = objc_opt_respondsToSelector();

  if ((v18 & 1) == 0)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = +[AXUIServiceManager sharedServiceManager];
  delegate2 = [v19 delegate];
  v21 = [delegate2 destroyScene:neededCopy];

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)removeWindowSceneForSceneClientIdentifier:(id)identifier external:(BOOL)external
{
  v4 = 144;
  if (external)
  {
    v4 = 152;
  }

  v5 = *(&self->super.isa + v4);
  identifierCopy = @"AXUIServerDefaultSceneClientIdentifier";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v7 = identifierCopy;
  v8 = v5;
  [v8 removeObjectForKey:v7];
}

- (id)windowSceneForSceneClientIdentifier:(id)identifier external:(BOOL)external
{
  v4 = 144;
  if (external)
  {
    v4 = 152;
  }

  v5 = *(&self->super.isa + v4);
  identifierCopy = @"AXUIServerDefaultSceneClientIdentifier";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v7 = identifierCopy;
  v8 = v5;
  v9 = [v8 objectForKey:v7];

  return v9;
}

- (void)saveAddContentViewControllerBlock:(id)block forObjectKey:(id)key forSceneClientIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  keyCopy = key;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (blockCopy && keyCopy)
  {
    v12 = @"AXUIServerDefaultSceneClientIdentifier";
    if (identifierCopy)
    {
      v12 = identifierCopy;
    }

    v13 = v12;

    v14 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v13];
    if (!v14)
    {
      v14 = objc_opt_new();
    }

    v15 = _Block_copy(blockCopy);
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", keyCopy];
    [v14 setObject:v15 forKey:keyCopy];

    v17 = AXLogUI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = keyCopy;
      _os_log_impl(&dword_23DBD1000, v17, OS_LOG_TYPE_DEFAULT, "Save block for objectKey: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_addContentViewControllerBlocks setObject:v14 forKeyedSubscript:v13];
  }

  else
  {
    v13 = identifierCopy;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeAddContentViewControllerBlockForObjectKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", keyCopy];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    addContentViewControllerBlocks = self->_addContentViewControllerBlocks;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__AXUIDisplayManager_removeAddContentViewControllerBlockForObjectKey___block_invoke;
    v11[3] = &unk_278BF3490;
    v7 = keyCopy;
    v12 = v7;
    v13 = &v14;
    [(NSMutableDictionary *)addContentViewControllerBlocks enumerateKeysAndObjectsUsingBlock:v11];
    if (v15[5])
    {
      v8 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:?];
      [v8 removeObjectForKey:v7];
      v9 = AXLogUI();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = keyCopy;
        _os_log_impl(&dword_23DBD1000, v9, OS_LOG_TYPE_DEFAULT, "Remove block for objectKey: %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_addContentViewControllerBlocks setObject:v8 forKeyedSubscript:v15[5]];
    }

    _Block_object_dispose(&v14, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __70__AXUIDisplayManager_removeAddContentViewControllerBlockForObjectKey___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [a3 objectForKey:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)sceneRequestedForSceneClientIdentifier:(id)identifier
{
  identifierCopy = @"AXUIServerDefaultSceneClientIdentifier";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v5 = identifierCopy;
  v6 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v5];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (void)serviceDidConnect:(id)connect clientWithIdentifier:(id)identifier
{
  connectCopy = connect;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v5 = connectCopy;
    AXPerformBlockOnMainThread();
  }
}

void __61__AXUIDisplayManager_serviceDidConnect_clientWithIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) windowSceneForSceneClientIdentifier:0 external:1];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v4 = AXLogUI();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_23DBD1000, v4, OS_LOG_TYPE_INFO, "External display scene connected for Service: %@", &v7, 0xCu);
      }

      [*(a1 + 40) externalDisplaySceneConnected:v2];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_contentViewControllersWithUserInteractionEnabled:(BOOL)enabled forService:(id)service createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  enabledCopy = enabled;
  serviceCopy = service;
  v9 = objc_autoreleasePoolPush();
  serviceManager = [(AXUIDisplayManager *)self serviceManager];
  v11 = [serviceManager _uniqueIdentifierForService:serviceCopy];

  objc_autoreleasePoolPop(v9);
  v12 = &selRef_activeContentViewControllers;
  if (!enabledCopy)
  {
    v12 = &selRef_passiveContentViewControllers;
  }

  v13 = NSStringFromSelector(*v12);
  v14 = [(AXUIDisplayManager *)self valueForKey:v13];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !neededCopy;
  }

  if (!v15)
  {
    v14 = objc_opt_new();
    [(AXUIDisplayManager *)self setValue:v14 forKey:v13];
  }

  v16 = [v14 objectForKey:v11];
  if (v16 == 0 && v11 != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v16 == 0 && v11 != 0 && neededCopy)
  {
    v17 = objc_opt_new();
    [v14 setObject:v17 forKey:v11];
  }

  return v17;
}

- (void)_disposeOfContentViewControllersWithUserInteractionEnabled:(BOOL)enabled forService:(id)service
{
  enabledCopy = enabled;
  serviceCopy = service;
  v6 = objc_autoreleasePoolPush();
  serviceManager = [(AXUIDisplayManager *)self serviceManager];
  v8 = [serviceManager _uniqueIdentifierForService:serviceCopy];

  objc_autoreleasePoolPop(v6);
  v9 = &selRef_activeContentViewControllers;
  if (!enabledCopy)
  {
    v9 = &selRef_passiveContentViewControllers;
  }

  v10 = NSStringFromSelector(*v9);
  v11 = [(AXUIDisplayManager *)self valueForKey:v10];
  v12 = v11;
  if (v8)
  {
    [v11 removeObjectForKey:v8];
  }

  if (![v12 count])
  {
    [(AXUIDisplayManager *)self setValue:0 forKey:v10];
  }
}

- (void)_addContentViewController:(id)controller toWindow:(id)window forService:(id)service context:(void *)context completion:(id)completion
{
  controllerCopy = controller;
  windowCopy = window;
  serviceCopy = service;
  completionCopy = completion;
  rootViewController = [windowCopy rootViewController];
  v17 = rootViewController;
  if (controllerCopy)
  {
    v18 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingContentViewController:controllerCopy service:serviceCopy];
    serviceManager = [(AXUIDisplayManager *)self serviceManager];
    [serviceManager beginTransactionWithIdentifier:v18 forService:serviceCopy];

    view = [v17 view];
    view2 = [controllerCopy view];
    [view2 removeFromSuperview];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [v17 addChildViewController:controllerCopy];
    [view addSubview:view2];
    [controllerCopy didMoveToParentViewController:v17];
    if ([controllerCopy conformsToProtocol:&unk_285014120] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __87__AXUIDisplayManager__addContentViewController_toWindow_forService_context_completion___block_invoke;
      v27[3] = &unk_278BF34B8;
      v28 = completionCopy;
      [controllerCopy transitionInWithContext:context completion:v27];

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    if (!completionCopy)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v22)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }

    goto LABEL_15;
  }

  childViewControllers = [rootViewController childViewControllers];
  v24 = [childViewControllers count];
  if (v24 || ([v17 isViewLoaded] & 1) == 0)
  {
    [windowCopy setHidden:v24 == 0];
  }

  else
  {
    view3 = [v17 view];
    subviews = [view3 subviews];
    [windowCopy setHidden:{objc_msgSend(subviews, "count") == 0}];
  }

  [(AXUIDisplayManager *)self _reapHiddenWindows];
  v22 = 1;
  if (completionCopy)
  {
    goto LABEL_13;
  }

LABEL_15:
}

uint64_t __87__AXUIDisplayManager__addContentViewController_toWindow_forService_context_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_removeContentViewController:(id)controller forService:(id)service completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  serviceCopy = service;
  completionCopy = completion;
  if (controllerCopy)
  {
    v11 = AXLogUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      view = [controllerCopy view];
      window = [view window];
      windowScene = [window windowScene];
      *buf = 138412802;
      v21 = controllerCopy;
      v22 = 2112;
      v23 = serviceCopy;
      v24 = 2048;
      v25 = windowScene;
      _os_log_impl(&dword_23DBD1000, v11, OS_LOG_TYPE_DEFAULT, "remove contentViewController: %@, service: %@ scene: %p", buf, 0x20u);
    }

    v18 = controllerCopy;
    v19 = completionCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    v15 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingContentViewController:v18 service:serviceCopy];
    serviceManager = [(AXUIDisplayManager *)self serviceManager];
    [serviceManager endTransactionWithIdentifier:v15 forService:serviceCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __73__AXUIDisplayManager__removeContentViewController_forService_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 session];
  v6 = [v5 role];
  v7 = [v6 isEqualToString:@"SBSUIWindowSceneSessionRoleRemoteAlert"];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) parentViewController];
    v9 = [v8 childViewControllers];
    if ([v9 count] == 1)
    {
      v10 = [v8 childViewControllers];
      v11 = [v10 firstObject];
      if (v11 == *(a1 + 32))
      {
        v13 = [v8 view];
        v14 = [v13 subviews];
        if ([v14 count])
        {
          v15 = [v8 view];
          v16 = [v15 subviews];
          if ([v16 count] == 1)
          {
            v33 = [v8 view];
            v32 = [v33 subviews];
            [v32 firstObject];
            v17 = v34 = v15;
            v18 = [*(a1 + 32) view];
            v12 = v17 == v18;

            v15 = v34;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v19 = [v8 view];
    v20 = [v19 window];

    v21 = *(a1 + 40);
    v22 = [v20 windowScene];
    if (v12)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v21 destroyWindowSceneIfNeeded:v22 discardableWindow:v23];

    if ((v24 & 1) == 0)
    {
      [*(a1 + 32) willMoveToParentViewController:0];
      if ([*(a1 + 32) isViewLoaded])
      {
        v25 = [*(a1 + 32) view];
        [v25 removeFromSuperview];
      }

      [*(a1 + 32) removeFromParentViewController];
      v26 = [v8 childViewControllers];
      if ([v26 count])
      {
        [v20 setHidden:0];
      }

      else
      {
        v27 = [v8 view];
        v28 = [v27 subviews];
        [v20 setHidden:{objc_msgSend(v28, "count") == 0}];
      }

      [*(a1 + 40) _reapHiddenWindows];
    }
  }

  v29 = +[AXUIAssertionManager sharedInstance];
  [v29 invalidateAssertionUIIfNeeded];

  result = *(a1 + 48);
  if (result)
  {
    v31 = *(result + 16);

    return v31();
  }

  return result;
}

- (id)_transactionIdentifierForDisplayingContentViewController:(id)controller service:(id)service
{
  v4 = MEMORY[0x277CCACA8];
  controllerCopy = controller;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  controllerCopy = [v4 stringWithFormat:@"<%@: %p>", v7, controllerCopy];

  return controllerCopy;
}

- (BOOL)_hasVisibleAlertWithType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  visibleAlertContexts = [(AXUIDisplayManager *)self visibleAlertContexts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__AXUIDisplayManager__hasVisibleAlertWithType___block_invoke;
  v6[3] = &unk_278BF3530;
  v6[4] = &v7;
  v6[5] = type;
  [visibleAlertContexts enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(type) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return type;
}

uint64_t __47__AXUIDisplayManager__hasVisibleAlertWithType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 type];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_showAlertWithContext:(id)context
{
  v76 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  _platformShouldUseScenes = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  v6 = [(AXUIDisplayManager *)self windowSceneForSceneClientIdentifier:0 external:0];
  v7 = AXLogUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v73 = v6;
    v74 = 2112;
    v75 = contextCopy;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_INFO, "showAlert savedWindowScene:%p, context:%@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = _platformShouldUseScenes;
  }

  if (v8)
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke;
    aBlock[3] = &unk_278BF3558;
    objc_copyWeak(&v69, buf);
    v9 = contextCopy;
    v68 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(AXUIDisplayManager *)self sceneRequestedForSceneClientIdentifier:0];
    [(AXUIDisplayManager *)self saveAddContentViewControllerBlock:v10 forObjectKey:v9 forSceneClientIdentifier:0];
    v12 = AXLogUI();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 0;
      _os_log_impl(&dword_23DBD1000, v12, OS_LOG_TYPE_DEFAULT, "Need to request scene, queue alert request", v66, 2u);
    }

    if (!v11)
    {
      v13 = +[AXUIServiceManager sharedServiceManager];
      delegate = [v13 delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = +[AXUIServiceManager sharedServiceManager];
        delegate2 = [v16 delegate];
        [delegate2 requestSceneForSceneClientIdentifier:0 scenePreferredLevel:0 spatialConfiguration:0.0];
      }
    }

    objc_destroyWeak(&v69);
    objc_destroyWeak(buf);
  }

  else
  {
    service = [contextCopy service];
    v18 = [service conformsToProtocol:&unk_2850141E0];
    v19 = service;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v19;
    identifier = [contextCopy identifier];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v20 styleProviderForAlertWithIdentifier:identifier], (defaultAlertStyleProvider = objc_claimAutoreleasedReturnValue()) == 0))
    {
      defaultAlertStyleProvider = [(AXUIDisplayManager *)self defaultAlertStyleProvider];
    }

    type = [contextCopy type];
    text = [contextCopy text];
    subtitleText = [contextCopy subtitleText];
    iconImage = [contextCopy iconImage];
    userInfo = [contextCopy userInfo];
    v26 = [AXUIAlert alertWithType:type text:text subtitleText:subtitleText iconImage:iconImage styleProvider:defaultAlertStyleProvider userInfo:userInfo];

    [v26 setContext:contextCopy];
    [v26 setAlpha:0.0];
    if (v26)
    {
      if (objc_opt_respondsToSelector())
      {
        [v20 desiredWindowLevelForAlertWithIdentifier:identifier];
      }

      else
      {
        v27 = 10000002.0;
      }

      v54 = [(AXUIDisplayManager *)self _windowWithUserInteractionEnabled:type == 3 windowLevel:1 createIfNeeded:@"AXUIAlert" purposeIdentifier:0 userInterfaceStyle:0 windowScene:v6 savedWindowScene:v27];
      [v54 setHidden:0];
      rootViewController = [v54 rootViewController];
      view = [rootViewController view];

      [v26 addToContainerView:view];
      layer = [view layer];
      LOBYTE(rootViewController) = [layer disableUpdateMask];

      userInfo2 = [contextCopy userInfo];
      v31 = [userInfo2 valueForKey:@"AXUIAlertUserInfoKeyHideFromScreenshots"];
      v32 = v31 == 0;

      if ((rootViewController & 2) != 0 || !v32)
      {
        layer2 = [view layer];
        [layer2 setDisableUpdateMask:{objc_msgSend(layer2, "disableUpdateMask") | 2}];
      }

      [contextCopy setAlertView:v26];
      [defaultAlertStyleProvider alertFadeAnimationDurationForType:type];
      v36 = v35;
      [contextCopy setFadeAnimationDuration:?];
      [contextCopy duration];
      v38 = v37;
      if (v37 < 1.79769313e308)
      {
        showOrHideTimer = [contextCopy showOrHideTimer];
        [showOrHideTimer cancel];

        v40 = objc_alloc(MEMORY[0x277CE6950]);
        v41 = [v40 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke_490;
        v64[3] = &unk_278BF2ED0;
        v64[4] = self;
        v42 = contextCopy;
        v65 = v42;
        [v41 afterDelay:v64 processBlock:v36 + v38];
        [v42 setShowOrHideTimer:v41];
      }

      visibleAlertContexts = [(AXUIDisplayManager *)self visibleAlertContexts];
      if (!visibleAlertContexts)
      {
        visibleAlertContexts = objc_opt_new();
        [(AXUIDisplayManager *)self setVisibleAlertContexts:visibleAlertContexts];
      }

      [visibleAlertContexts setObject:contextCopy forKey:identifier];
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      if (type != 4 && IsVoiceOverRunning)
      {
        v46 = objc_alloc(MEMORY[0x277CCA898]);
        text2 = [contextCopy text];
        subtitleText2 = [contextCopy subtitleText];
        v49 = __AXStringForVariables();
        v70 = *MEMORY[0x277CE6BC8];
        v71 = &unk_284FF9A28;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:{1, subtitleText2, @"__AXStringForVariablesSentinel"}];
        v51 = [v46 initWithString:v49 attributes:v50];

        UIAccessibilityPostNotification(*MEMORY[0x277D76438], v51);
      }

      v52 = MEMORY[0x277D75D18];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke_498;
      v62[3] = &unk_278BF3050;
      v63 = v26;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke_2;
      v59[3] = &unk_278BF3580;
      v60 = v20;
      v61 = identifier;
      [v52 animateWithDuration:v62 animations:v59 completion:v36];
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __44__AXUIDisplayManager__showAlertWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showAlertWithContext:*(a1 + 32)];
}

uint64_t __44__AXUIDisplayManager__showAlertWithContext___block_invoke_490(uint64_t a1)
{
  [*(a1 + 32) _hideAlertWithContext:*(a1 + 40) notifyDelegate:1];
  v2 = *(a1 + 40);

  return [v2 setShowOrHideTimer:0];
}

uint64_t __44__AXUIDisplayManager__showAlertWithContext___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 40);

      return [v4 alertWithIdentifierDidAppear:v5];
    }
  }

  return result;
}

- (void)_hideAlertWithContext:(id)context notifyDelegate:(BOOL)delegate
{
  contextCopy = context;
  [(AXUIDisplayManager *)self removeAddContentViewControllerBlockForObjectKey:contextCopy];
  visibleAlertContexts = [(AXUIDisplayManager *)self visibleAlertContexts];
  identifier = [contextCopy identifier];
  [visibleAlertContexts removeObjectForKey:identifier];

  if (![visibleAlertContexts count])
  {
    [(AXUIDisplayManager *)self setVisibleAlertContexts:0];
  }

  alertView = [contextCopy alertView];
  [alertView alpha];
  if (v10 <= 2.22044605e-16)
  {
    [(AXUIDisplayManager *)self _didHideOrDequeueAlertWithContext:contextCopy];
    -[AXUIDisplayManager _handleNextAlertForType:](self, "_handleNextAlertForType:", [contextCopy type]);
  }

  else
  {
    v11 = MEMORY[0x277D75D18];
    [contextCopy fadeAnimationDuration];
    v13 = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke;
    v19[3] = &unk_278BF2ED0;
    v20 = contextCopy;
    v21 = alertView;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke_2;
    v14[3] = &unk_278BF35A8;
    v15 = v21;
    selfCopy = self;
    delegateCopy = delegate;
    v17 = v20;
    [v11 animateWithDuration:v19 animations:v14 completion:v13];
  }
}

uint64_t __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) type] == 3)
  {
    [*(a1 + 40) frame];
    [*(a1 + 40) setFrame:{v5.origin.x, -CGRectGetHeight(v5), v5.size.width, v5.size.height}];
  }

  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke_2(uint64_t a1)
{
  v14 = [*(a1 + 32) window];
  v2 = [v14 rootViewController];
  [*(a1 + 32) removeFromSuperview];
  v3 = [v2 childViewControllers];
  v4 = [v3 count];
  if (v4 || ([v2 isViewLoaded] & 1) == 0)
  {
    [v14 setHidden:v4 == 0];
  }

  else
  {
    v5 = [v2 view];
    v6 = [v5 subviews];
    [v14 setHidden:{objc_msgSend(v6, "count") == 0}];
  }

  [*(a1 + 40) _reapHiddenWindows];
  if (*(a1 + 56) == 1)
  {
    v7 = [*(a1 + 48) service];
    if ([v7 conformsToProtocol:&unk_2850141E0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 48) identifier];
      [v9 alertWithIdentifierDidDisappear:v10];
    }
  }

  [*(a1 + 40) _didHideOrDequeueAlertWithContext:*(a1 + 48)];
  [*(a1 + 40) _handleNextAlertForType:{objc_msgSend(*(a1 + 48), "type")}];
  v11 = *(a1 + 40);
  v12 = [v14 windowScene];
  [v11 destroyWindowSceneIfNeeded:v12 discardableWindow:0];

  v13 = +[AXUIAssertionManager sharedInstance];
  [v13 invalidateAssertionUIIfNeeded];
}

- (void)_showOrEnqueueAlertWithContext:(id)context
{
  contextCopy = context;
  if (-[AXUIDisplayManager _hasVisibleAlertWithType:](self, "_hasVisibleAlertWithType:", [contextCopy type]))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contextCopy, "type")}];
    alertQueues = [(AXUIDisplayManager *)self alertQueues];
    v6 = [alertQueues objectForKey:v4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = objc_opt_new();
      if (!alertQueues)
      {
        alertQueues = objc_opt_new();
        [(AXUIDisplayManager *)self setAlertQueues:alertQueues];
      }

      [alertQueues setObject:v7 forKey:v4];
    }

    [v7 ax_enqueueObject:contextCopy];
    [v7 sortUsingComparator:&__block_literal_global_503];
    service = [contextCopy service];
    if ([service conformsToProtocol:&unk_2850141E0])
    {
      v9 = service;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      identifier = [contextCopy identifier];
      [v10 alertWithIdentifierWasEnqueued:identifier];
    }
  }

  else
  {
    [(AXUIDisplayManager *)self _showAlertWithContext:contextCopy];
  }
}

uint64_t __53__AXUIDisplayManager__showOrEnqueueAlertWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 priority];
  v9 = [v7 priority];
  v10 = v8 == v9;
  if (v8 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    [v7 creationTimeInterval];
    v13 = v12;
    [v6 creationTimeInterval];
    v11 = v13 >= v14 ? 1 : -1;
    if (v13 == v14)
    {
      [v7 duration];
      v16 = v15;
      [v6 duration];
      v18 = -1;
      if (v16 >= v17)
      {
        v18 = 1;
      }

      if (v16 == v17)
      {
        v11 = 0;
      }

      else
      {
        v11 = v18;
      }
    }
  }

  return v11;
}

- (void)_handleNextAlertForType:(unint64_t)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  alertQueues = [(AXUIDisplayManager *)self alertQueues];
  v6 = [alertQueues objectForKey:v4];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__AXUIDisplayManager__handleNextAlertForType___block_invoke;
  v16[3] = &unk_278BF35F0;
  v16[4] = &v25;
  v16[5] = &v21;
  v16[6] = &v17;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v16];
  if (v18[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:?];
    if (![v6 count])
    {
      [alertQueues removeObjectForKey:v4];
      if (![alertQueues count])
      {
        [(AXUIDisplayManager *)self setAlertQueues:0];
      }
    }

    visibleAlertContexts = [(AXUIDisplayManager *)self visibleAlertContexts];
    if (!visibleAlertContexts)
    {
      visibleAlertContexts = objc_opt_new();
      [(AXUIDisplayManager *)self setVisibleAlertContexts:visibleAlertContexts];
    }

    v8 = v26[5];
    identifier = [v8 identifier];
    [visibleAlertContexts setObject:v8 forKey:identifier];

    v10 = objc_alloc(MEMORY[0x277CE6950]);
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v13 = [v10 initWithTargetSerialQueue:v11];

    v14 = v22[3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__AXUIDisplayManager__handleNextAlertForType___block_invoke_2;
    v15[3] = &unk_278BF3618;
    v15[4] = self;
    v15[5] = &v25;
    [v13 afterDelay:v15 processBlock:v14];
    [v26[5] setShowOrHideTimer:v13];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __46__AXUIDisplayManager__handleNextAlertForType___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v8 = [v18 service];
  if ([v8 conformsToProtocol:&unk_2850141E0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v18 identifier];
    [v10 delayForDequeuingAlertWithIdentifier:v12];
    v11 = v13;
  }

  v14 = *(a1[4] + 8);
  v15 = *(v14 + 40);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = [v15 service];
  if (v8 != v16 && ([v8 isEqual:v16] & 1) == 0)
  {
    [v18 duration];
    if (v11 + v17 < *(*(a1[5] + 8) + 24))
    {
      *a4 = 1;

      v14 = *(a1[4] + 8);
LABEL_11:
      objc_storeStrong((v14 + 40), a2);
      *(*(a1[5] + 8) + 24) = v11;
      *(*(a1[6] + 8) + 24) = a3;
      goto LABEL_13;
    }
  }

LABEL_13:
}

uint64_t __46__AXUIDisplayManager__handleNextAlertForType___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showAlertWithContext:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 setShowOrHideTimer:0];
}

- (void)_didHideOrDequeueAlertWithContext:(id)context
{
  contextCopy = context;
  service = [contextCopy service];
  v5 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingAlertWithContext:contextCopy service:service];

  serviceManager = [(AXUIDisplayManager *)self serviceManager];
  [serviceManager endTransactionWithIdentifier:v5 forService:service];
}

- (id)_nubbitContextForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  if (view)
  {
    nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
    v7 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:view];
    v8 = [nubbitContexts objectForKeyedSubscript:v7];
  }

  else
  {
    _AXLogWithFacility();
    v8 = 0;
  }

  return v8;
}

- (void)_scheduleFadeForNubbitContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, contextCopy);
  fadeTimer = [contextCopy fadeTimer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AXUIDisplayManager__scheduleFadeForNubbitContext___block_invoke;
  v6[3] = &unk_278BF3640;
  v5 = contextCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [fadeTimer afterDelay:v6 processBlock:3.0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__AXUIDisplayManager__scheduleFadeForNubbitContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__AXUIDisplayManager__scheduleFadeForNubbitContext___block_invoke_2;
  v3[3] = &unk_278BF3640;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  [v2 animateWithDuration:v3 animations:0.5];
  objc_destroyWeak(&v5);
}

void __52__AXUIDisplayManager__scheduleFadeForNubbitContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) nubbit];
    [v4 idleOpacityForNubbit:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0.35;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained originalAlpha];
  v9 = v7 * v8;
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 nubbit];
  [v11 setAlpha:v9];
}

- (void)_undoFadeForNubbitContext:(id)context
{
  contextCopy = context;
  fadeTimer = [contextCopy fadeTimer];
  [fadeTimer cancel];

  [contextCopy originalAlpha];
  v6 = v5;
  nubbit = [contextCopy nubbit];

  [nubbit setAlpha:v6];
}

- (void)_addDynamicAnimationsForNubbitContext:(id)context
{
  v17[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  nubbit = [contextCopy nubbit];
  v6 = objc_alloc(MEMORY[0x277D754B0]);
  v7 = [(AXUIDisplayManager *)self _boundingViewForNubbit:nubbit];
  v8 = [v6 initWithReferenceView:v7];

  [v8 setDelegate:self];
  [contextCopy setDynamicAnimator:v8];
  if ((AXDeviceSupportsAccessibilityReader() & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D75338]);
    v17[0] = nubbit;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [v9 initWithItems:v10];

    [v11 setCollisionDelegate:self];
    [v11 setTranslatesReferenceBoundsIntoBoundary:1];
    [v8 addBehavior:v11];
    [contextCopy setCollisionBehavior:v11];
    v12 = objc_alloc(MEMORY[0x277D754B8]);
    v16 = nubbit;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v14 = [v12 initWithItems:v13];

    [v14 setAllowsRotation:0];
    [v14 setFriction:100.0];
    [v8 addBehavior:v14];
    [contextCopy setDynamicItemBehavior:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeDynamicAnimationsForNubbitContext:(id)context
{
  contextCopy = context;
  dynamicAnimator = [contextCopy dynamicAnimator];
  [dynamicAnimator removeAllBehaviors];

  dynamicAnimator2 = [contextCopy dynamicAnimator];
  [dynamicAnimator2 setDelegate:0];

  [contextCopy setDynamicAnimator:0];
}

- (void)_beginMoveForNubbitContext:(id)context
{
  contextCopy = context;
  nubbit = [contextCopy nubbit];
  moveNubbitGestureRecognizer = [contextCopy moveNubbitGestureRecognizer];
  v6 = [(AXUIDisplayManager *)self _boundingViewForNubbit:nubbit];
  [moveNubbitGestureRecognizer locationInView:v6];
  v8 = v7;
  v10 = v9;

  delegate = [contextCopy delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [contextCopy delegate];
    [delegate2 nubbitWillBeginDragging:nubbit];
  }

  [(AXUIDisplayManager *)self _undoFadeForNubbitContext:contextCopy];
  dynamicAnimator = [contextCopy dynamicAnimator];
  if (!dynamicAnimator)
  {
    _AXAssert();
  }

  gravityBehavior = [contextCopy gravityBehavior];
  [dynamicAnimator removeBehavior:gravityBehavior];

  [contextCopy setGravityBehavior:0];
  snapToBoundaryBehavior = [contextCopy snapToBoundaryBehavior];
  [dynamicAnimator removeBehavior:snapToBoundaryBehavior];

  [contextCopy setSnapToBoundaryBehavior:0];
  collisionBehavior = [contextCopy collisionBehavior];
  [dynamicAnimator removeBehavior:collisionBehavior];

  if ([(AXUIDisplayManager *)self activeInterfaceOrientation]== 1)
  {
    if (AXDeviceHasJindo())
    {
      collisionBehavior2 = [contextCopy collisionBehavior];
      [collisionBehavior2 addBoundaryWithIdentifier:@"foreheadRect" fromPoint:0.0 toPoint:{self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0, self->_foreheadRect.size.width * 5.0, self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0}];

      if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
      {
        v10 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
      }
    }
  }

  v18 = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:nubbit attachedToAnchor:{v8, v10}];
  [dynamicAnimator addBehavior:v18];
  [contextCopy setFollowPanBehavior:v18];
  v19 = MEMORY[0x277CCACA8];
  v20 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:nubbit];
  v21 = [v19 stringWithFormat:@"%@", v20];

  disableSystemGesturesAssertion = [contextCopy disableSystemGesturesAssertion];

  if (disableSystemGesturesAssertion)
  {
    v23 = [MEMORY[0x277CE7D10] assertionWithType:*MEMORY[0x277CE79E8] identifier:v21];
    [contextCopy setDisableSystemGesturesAssertion:v23];
  }

  disableDashBoardSystemGesturesAssertion = [contextCopy disableDashBoardSystemGesturesAssertion];

  if (disableDashBoardSystemGesturesAssertion)
  {
    v25 = [MEMORY[0x277CE7D10] assertionWithType:*MEMORY[0x277CE79C0] identifier:v21];
    [contextCopy setDisableDashBoardSystemGesturesAssertion:v25];
  }
}

- (void)_changeNubbitPositionForNubbitContext:(id)context
{
  contextCopy = context;
  moveNubbitGestureRecognizer = [contextCopy moveNubbitGestureRecognizer];
  nubbit = [contextCopy nubbit];
  v6 = [(AXUIDisplayManager *)self _boundingViewForNubbit:nubbit];
  [moveNubbitGestureRecognizer locationInView:v6];
  v8 = v7;
  v10 = v9;

  if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
  {
    moveNubbitGestureRecognizer2 = [contextCopy moveNubbitGestureRecognizer];
    [moveNubbitGestureRecognizer2 setState:3];
  }

  followPanBehavior = [contextCopy followPanBehavior];
  [followPanBehavior setAnchorPoint:{v8, v10}];
}

- (void)_endMoveForNubbitContext:(id)context
{
  contextCopy = context;
  nubbit = [contextCopy nubbit];
  v5 = [(AXUIDisplayManager *)self _boundingViewForNubbit:nubbit];
  moveNubbitGestureRecognizer = [contextCopy moveNubbitGestureRecognizer];
  [moveNubbitGestureRecognizer velocityInView:v5];
  v8 = v7;
  v10 = v9;

  if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
  {
    v10 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
  }

  dynamicAnimator = [contextCopy dynamicAnimator];
  followPanBehavior = [contextCopy followPanBehavior];
  [dynamicAnimator removeBehavior:followPanBehavior];

  [contextCopy setFollowPanBehavior:0];
  dynamicItemBehavior = [contextCopy dynamicItemBehavior];
  [dynamicItemBehavior addLinearVelocity:nubbit forItem:{v8, v10}];

  v14 = [(AXUIDisplayManager *)self _gravityBehaviorForNubbit:nubbit velocity:v5 boundingView:v8, v10];
  [dynamicAnimator addBehavior:v14];
  [contextCopy setGravityBehavior:v14];
  collisionBehavior = [contextCopy collisionBehavior];
  [dynamicAnimator addBehavior:collisionBehavior];

  [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:contextCopy];
  [contextCopy setDisableSystemGesturesAssertion:0];
  [contextCopy setDisableDashBoardSystemGesturesAssertion:0];
}

- (void)pinNubbitToEdge:(id)edge
{
  edgeCopy = edge;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:edgeCopy];

  v7 = [nubbitContexts objectForKeyedSubscript:v6];

  [(AXUIDisplayManager *)self _endMoveForNubbitContext:v7];
}

- (id)_gravityBehaviorForNubbit:(id)nubbit velocity:(CGPoint)velocity boundingView:(id)view
{
  y = velocity.y;
  x = velocity.x;
  v25[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (nubbit)
  {
    v9 = MEMORY[0x277D75578];
    nubbitCopy = nubbit;
    v11 = [v9 alloc];
    v25[0] = nubbitCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    nubbit = [v11 initWithItems:v12];

    [nubbitCopy center];
    v14 = v13 + x * 0.22;
    [nubbitCopy center];
    v16 = v15;

    [viewCopy frame];
    if (v14 <= CGRectGetMinX(v27) + 50.0)
    {
      goto LABEL_14;
    }

    [viewCopy frame];
    if (v14 >= CGRectGetMaxX(v28) + -50.0)
    {
      goto LABEL_14;
    }

    v17 = v16 + y * 0.22;
    [viewCopy frame];
    MinY = CGRectGetMinY(v29);
    v19 = -1.0;
    v20 = 0.0;
    if (v17 >= MinY + 80.0)
    {
      [viewCopy frame];
      MaxY = CGRectGetMaxY(v30);
      v19 = 1.0;
      if (v17 <= MaxY + -80.0)
      {
LABEL_14:
        [viewCopy frame];
        MidX = CGRectGetMidX(v31);
        v19 = 0.0;
        v20 = 1.0;
        if (v14 <= MidX)
        {
          v20 = -1.0;
        }
      }
    }

    [nubbit setGravityDirection:{v20 * 5.0, v19 * 5.0}];
  }

  v23 = *MEMORY[0x277D85DE8];

  return nubbit;
}

- (void)_handleMoveNubbitGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7 = [(AXUIDisplayManager *)self _nubbitContextForGestureRecognizer:recognizerCopy];
  state = [recognizerCopy state];

  if ((state - 3) < 2)
  {
    [(AXUIDisplayManager *)self _endMoveForNubbitContext:v7];
  }

  else if (state == 2)
  {
    [(AXUIDisplayManager *)self _changeNubbitPositionForNubbitContext:v7];
  }

  else
  {
    v6 = v7;
    if (state != 1)
    {
      goto LABEL_8;
    }

    [(AXUIDisplayManager *)self _beginMoveForNubbitContext:v7];
  }

  v6 = v7;
LABEL_8:
}

- (void)cancelNubbitFade:(id)fade
{
  fadeCopy = fade;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:fadeCopy];

  v7 = [nubbitContexts objectForKeyedSubscript:v6];

  if (v7)
  {
    [(AXUIDisplayManager *)self _undoFadeForNubbitContext:v7];
    [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:v7];
  }
}

- (void)_attemptToInitializeActiveInterfaceOrientation
{
  server = [MEMORY[0x277CE7E58] server];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__AXUIDisplayManager__attemptToInitializeActiveInterfaceOrientation__block_invoke;
  v5[3] = &unk_278BF3690;
  v5[4] = self;
  v5[5] = a2;
  [server activeInterfaceOrientation:v5];
}

uint64_t __68__AXUIDisplayManager__attemptToInitializeActiveInterfaceOrientation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __68__AXUIDisplayManager__attemptToInitializeActiveInterfaceOrientation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActiveInterfaceOrientation:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {

    return [v2 setNumberOfAttemptsToInitializeActiveInterfaceOrientation:0];
  }

  else
  {
    v4 = [v2 numberOfAttemptsToInitializeActiveInterfaceOrientation] + 1;
    result = [*(a1 + 32) setNumberOfAttemptsToInitializeActiveInterfaceOrientation:v4];
    if (v4 <= 0x1D)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v5 performSelector:v6 withObject:0 afterDelay:0.5];
    }
  }

  return result;
}

- (BOOL)_serviceWantsToPreventAutorotation:(id)autorotation
{
  autorotationCopy = autorotation;
  if ([autorotationCopy conformsToProtocol:&unk_285014180])
  {
    v4 = autorotationCopy;
    if (objc_opt_respondsToSelector())
    {
      shouldPreventAutorotatingAllContentViewControllers = [v4 shouldPreventAutorotatingAllContentViewControllers];
    }

    else
    {
      shouldPreventAutorotatingAllContentViewControllers = 0;
    }
  }

  else
  {
    shouldPreventAutorotatingAllContentViewControllers = 0;
  }

  return shouldPreventAutorotatingAllContentViewControllers;
}

- (void)dynamicAnimatorDidPause:(id)pause
{
  v23 = *MEMORY[0x277D85DE8];
  pauseCopy = pause;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  allValues = [nubbitContexts allValues];

  v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        dynamicAnimator = [v11 dynamicAnimator];

        if (dynamicAnimator == pauseCopy)
        {
          delegate = [v11 delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            delegate2 = [v11 delegate];
            nubbit = [v11 nubbit];
            [delegate2 nubbitDidUpdatePosition:nubbit];
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)collisionBehavior:(id)behavior beganContactForItem:(id)item withBoundaryIdentifier:(id)identifier atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  itemCopy = item;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  v10 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:itemCopy];
  v11 = [nubbitContexts objectForKeyedSubscript:v10];

  snapToBoundaryBehavior = [v11 snapToBoundaryBehavior];

  if (!snapToBoundaryBehavior)
  {
    v13 = [objc_alloc(MEMORY[0x277D75A40]) initWithItem:itemCopy snapToPoint:{x, y}];
    [v11 setSnapToBoundaryBehavior:v13];
    dynamicAnimator = [v11 dynamicAnimator];
    [dynamicAnimator addBehavior:v13];
  }
}

- (void)_reapHiddenWindows
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = NSStringFromSelector(sel_activeWindows);
  v11[0] = NSStringFromSelector(sel_passiveWindows);
  v3 = &v10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *v3;
    v7 = [(AXUIDisplayManager *)self valueForKey:v6];
    [v7 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_537];
    if (![v7 count])
    {
      [(AXUIDisplayManager *)self setValue:0 forKey:v6];
    }

    v4 = 0;
    v3 = v11;
  }

  while ((v5 & 1) != 0);
  for (i = 1; i != -1; --i)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __40__AXUIDisplayManager__reapHiddenWindows__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__AXUIDisplayManager__reapHiddenWindows__block_invoke_2;
  v6[3] = &unk_278BF36D8;
  v6[4] = &v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[5])
  {
    [v5 removeObjectsForKeys:?];
  }

  _Block_object_dispose(&v7, 8);
}

void __40__AXUIDisplayManager__reapHiddenWindows__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 isHidden])
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

- (NSString)debugDescription
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"AXUIDisplayManager<%p>", self];
  activeWindows = [(AXUIDisplayManager *)selfCopy activeWindows];
  if ([activeWindows count])
  {
    v28 = selfCopy;
    [v3 appendFormat:@"\nActive Windows:\n"];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [activeWindows allKeys];
    v34 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v34)
    {
      v31 = *v51;
      do
      {
        v4 = 0;
        do
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v4;
          v5 = *(*(&v50 + 1) + 8 * v4);
          [v3 appendFormat:@"  ID: %@\n", v5];
          v6 = [activeWindows objectForKeyedSubscript:v5];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          allKeys = [v6 allKeys];
          v8 = [allKeys countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v47;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v47 != v10)
                {
                  objc_enumerationMutation(allKeys);
                }

                v12 = *(*(&v46 + 1) + 8 * i);
                v13 = [v6 objectForKeyedSubscript:v12];
                [v3 appendFormat:@"    %@: %@\n", v12, v13];
                rootViewController = [v13 rootViewController];
                [v3 appendFormat:@"      Content: %@\n", rootViewController];
              }

              v9 = [allKeys countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v9);
          }

          v4 = v36 + 1;
        }

        while (v36 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v34);
    }

    selfCopy = v28;
  }

  passiveWindows = [(AXUIDisplayManager *)selfCopy passiveWindows];
  if ([passiveWindows count])
  {
    [v3 appendFormat:@"\nPassive Windows:\n"];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = [passiveWindows allKeys];
    v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v37)
    {
      v32 = *v43;
      v35 = passiveWindows;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(obja);
          }

          v17 = *(*(&v42 + 1) + 8 * j);
          [v3 appendFormat:@"  ID: %@\n", v17];
          v18 = [passiveWindows objectForKeyedSubscript:v17];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          allKeys2 = [v18 allKeys];
          v20 = [allKeys2 countByEnumeratingWithState:&v38 objects:v54 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v39;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v39 != v22)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v24 = *(*(&v38 + 1) + 8 * k);
                v25 = [v18 objectForKeyedSubscript:v24];
                [v3 appendFormat:@"    %@: %@\n", v24, v25];
              }

              v21 = [allKeys2 countByEnumeratingWithState:&v38 objects:v54 count:16];
            }

            while (v21);
          }

          passiveWindows = v35;
        }

        v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v37);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)systemApertureLayoutDidChange:(id)change
{
  v47 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([changeCopy count] == 1)
  {
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    self->_foreheadRect.origin.x = v6;
    self->_foreheadRect.origin.y = v7;
    self->_foreheadRect.size.width = v8;
    self->_foreheadRect.size.height = v9;
  }

  else
  {
    if ([changeCopy count] != 2)
    {
      goto LABEL_6;
    }

    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [changeCopy objectAtIndexedSubscript:1];
    [v18 CGRectValue];
    v49.origin.x = v19;
    v49.origin.y = v20;
    v49.size.width = v21;
    v49.size.height = v22;
    v48.origin.x = v11;
    v48.origin.y = v13;
    v48.size.width = v15;
    v48.size.height = v17;
    self->_foreheadRect = CGRectUnion(v48, v49);
  }

LABEL_6:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  nubbitContexts = [(AXUIDisplayManager *)self nubbitContexts];
  allValues = [nubbitContexts allValues];

  v25 = [allValues countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v43;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(allValues);
        }

        v29 = *(*(&v42 + 1) + 8 * i);
        nubbit = [v29 nubbit];
        [nubbit frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v32, v34]&& AXDeviceHasJindo())
        {
          v39 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
          nubbit2 = [v29 nubbit];
          [nubbit2 setFrame:{v32, v39, v36, v38}];
        }
      }

      v26 = [allValues countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v26);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_axIsPointInForeheadRect:(CGPoint)rect
{
  y = rect.y;
  if ([(AXUIDisplayManager *)self activeInterfaceOrientation]!= 1 || self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0 < y)
  {
    return 0;
  }

  return AXDeviceHasJindo();
}

- (void)_remoteSceneDidHandleHomeGesture:(id)gesture
{
  v21 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  serviceManager = [(AXUIDisplayManager *)self serviceManager];
  _services = [serviceManager _services];

  v7 = [_services countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(_services);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v12 = AXLogUI();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v11;
            _os_log_impl(&dword_23DBD1000, v12, OS_LOG_TYPE_INFO, "Scene did handle home gesture, informing service: %@", buf, 0xCu);
          }

          [v11 remoteSceneDidHandleHomeGesture:gestureCopy];
        }
      }

      v8 = [_services countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (AXUIServiceManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end