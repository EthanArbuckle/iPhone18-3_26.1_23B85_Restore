@interface AXUIDisplayManager
+ (id)sharedDisplayManager;
- (AXUIDisplayManager)initWithServiceManager:(id)a3;
- (AXUIServiceManager)serviceManager;
- (BOOL)_axIsPointInForeheadRect:(CGPoint)a3;
- (BOOL)_hasVisibleAlertWithType:(unint64_t)a3;
- (BOOL)_platformShouldUseScenes;
- (BOOL)_serviceWantsToPreventAutorotation:(id)a3;
- (BOOL)allWindowsHidden;
- (BOOL)destroyWindowSceneIfNeeded:(id)a3 discardableWindow:(id)a4;
- (BOOL)sceneRequestedForSceneClientIdentifier:(id)a3;
- (NSString)debugDescription;
- (double)_originalDurationForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 withAdjustedDuration:(double)result;
- (id)_contentViewControllersWithUserInteractionEnabled:(BOOL)a3 forService:(id)a4 createIfNeeded:(BOOL)a5;
- (id)_gravityBehaviorForNubbit:(id)a3 velocity:(CGPoint)a4 boundingView:(id)a5;
- (id)_nubbitContextForGestureRecognizer:(id)a3;
- (id)_transactionIdentifierForDisplayingContentViewController:(id)a3 service:(id)a4;
- (id)_windowWithUserInteractionEnabled:(BOOL)a3 windowLevel:(double)a4 createIfNeeded:(BOOL)a5 purposeIdentifier:(id)a6 userInterfaceStyle:(int64_t)a7 windowScene:(id)a8 savedWindowScene:(id)a9;
- (id)showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 type:(unint64_t)a6 forService:(id)a7;
- (id)showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 type:(unint64_t)a6 priority:(unint64_t)a7 duration:(double)a8 userInfo:(id)a9 forService:(id)a10;
- (id)windowSceneForSceneClientIdentifier:(id)a3 external:(BOOL)a4;
- (void)_addContentViewController:(id)a3 toWindow:(id)a4 forService:(id)a5 context:(void *)a6 completion:(id)a7;
- (void)_addDynamicAnimationsForNubbitContext:(id)a3;
- (void)_attemptToInitializeActiveInterfaceOrientation;
- (void)_beginMoveForNubbitContext:(id)a3;
- (void)_changeNubbitPositionForNubbitContext:(id)a3;
- (void)_cleanupWindowsFromSceneDisconnection:(id)a3;
- (void)_didHideOrDequeueAlertWithContext:(id)a3;
- (void)_disposeOfContentViewControllersWithUserInteractionEnabled:(BOOL)a3 forService:(id)a4;
- (void)_endMoveForNubbitContext:(id)a3;
- (void)_enumerateWindowsUsingBlock:(id)a3;
- (void)_externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)_externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)_handleMoveNubbitGestureRecognizer:(id)a3;
- (void)_handleNextAlertForType:(unint64_t)a3;
- (void)_hideAlertWithContext:(id)a3 notifyDelegate:(BOOL)a4;
- (void)_reapHiddenWindows;
- (void)_remoteSceneDidHandleHomeGesture:(id)a3;
- (void)_removeContentViewController:(id)a3 forService:(id)a4 completion:(id)a5;
- (void)_removeDynamicAnimationsForNubbitContext:(id)a3;
- (void)_scheduleFadeForNubbitContext:(id)a3;
- (void)_showAlertWithContext:(id)a3;
- (void)_showOrEnqueueAlertWithContext:(id)a3;
- (void)_undoFadeForNubbitContext:(id)a3;
- (void)_windowSceneConnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)_windowSceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4;
- (void)addContentViewController:(id)a3 withUserInteractionEnabled:(BOOL)a4 forService:(id)a5 forSceneClientIdentifier:(id)a6 context:(void *)a7 userInterfaceStyle:(int64_t)a8 forWindowScene:(id)a9 spatialConfiguration:(id)a10 completion:(id)a11;
- (void)cancelNubbitFade:(id)a3;
- (void)collisionBehavior:(id)a3 beganContactForItem:(id)a4 withBoundaryIdentifier:(id)a5 atPoint:(CGPoint)a6;
- (void)dealloc;
- (void)dynamicAnimatorDidPause:(id)a3;
- (void)enumerateContentViewControllersUsingBlock:(id)a3;
- (void)hideAlertWithIdentifier:(id)a3 forService:(id)a4;
- (void)pinNubbitToEdge:(id)a3;
- (void)registerNubbit:(id)a3 delegate:(id)a4;
- (void)removeAddContentViewControllerBlockForObjectKey:(id)a3;
- (void)removeWindowSceneForSceneClientIdentifier:(id)a3 external:(BOOL)a4;
- (void)saveAddContentViewControllerBlock:(id)a3 forObjectKey:(id)a4 forSceneClientIdentifier:(id)a5;
- (void)saveWindowScene:(id)a3 forSceneClientIdentifier:(id)a4 external:(BOOL)a5;
- (void)serviceDidConnect:(id)a3 clientWithIdentifier:(id)a4;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)unregisterNubbit:(id)a3 shouldUndoFade:(BOOL)a4;
- (void)waitForSceneAddContentViewController:(id)a3 withUserInteractionEnabled:(BOOL)a4 forService:(id)a5 forSceneClientIdentifier:(id)a6 context:(void *)a7 userInterfaceStyle:(int64_t)a8 forWindowScene:(id)a9 spatialConfiguration:(id)a10 completion:(id)a11;
@end

@implementation AXUIDisplayManager

+ (id)sharedDisplayManager
{
  v2 = +[AXUIServiceManager sharedServiceManager];
  v3 = [v2 displayManager];

  return v3;
}

- (AXUIDisplayManager)initWithServiceManager:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = AXUIDisplayManager;
  v5 = [(AXUIDisplayManager *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v4 && v6)
    {
      [(AXUIDisplayManager *)v5 setDefaultAlertStyleProvider:v6];
      [(AXUIDisplayManager *)v5 setServiceManager:v4];
      [(AXUIDisplayManager *)v5 _attemptToInitializeActiveInterfaceOrientation];
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 addObserver:v5 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      if ([MEMORY[0x277CE7E48] isAvailable])
      {
        v9 = [MEMORY[0x277CE7E48] server];
        v10 = [v9 isDarkModeActive];
        v11 = 1;
        if (v10)
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
        [v9 registerSpringBoardActionHandler:v28 withIdentifierCallback:v26];
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
  v3 = [(AXUIDisplayManager *)self systemServerActionHandlerIdentifier];
  if (v3)
  {
    v4 = [MEMORY[0x277CE7E48] server];
    [v4 removeActionHandler:v3];
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D76670] object:0];

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

- (void)addContentViewController:(id)a3 withUserInteractionEnabled:(BOOL)a4 forService:(id)a5 forSceneClientIdentifier:(id)a6 context:(void *)a7 userInterfaceStyle:(int64_t)a8 forWindowScene:(id)a9 spatialConfiguration:(id)a10 completion:(id)a11
{
  v36 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v20 = +[AXUIAssertionManager sharedInstance];
  [v20 acquireAssertionUIIfNeeded];

  v21 = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  if (!v21)
  {

    v16 = 0;
  }

  v22 = [(AXUIDisplayManager *)self windowSceneForSceneClientIdentifier:v16 external:0];
  v23 = AXLogUI();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134219266;
    v38 = v14;
    v39 = 2112;
    v40 = objc_opt_class();
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = v17;
    v47 = 2048;
    v48 = v22;
    _os_log_impl(&dword_23DBD1000, v23, OS_LOG_TYPE_INFO, "Adding contentVC=%p %@ service=%@ sceneClientIdentifier:%@ windowScene=%p, savedWindowScene=%p", buf, 0x3Eu);
  }

  if (v15 && v16)
  {
    [(NSMutableDictionary *)self->_sceneClients setObject:v15 forKey:v16];
  }

  v24 = !v21;
  if (v17)
  {
    v24 = 1;
  }

  if ((v24 & 1) != 0 || v22)
  {
    v25 = [(AXUIDisplayManager *)self _contentViewControllersWithUserInteractionEnabled:v36 forService:v15 createIfNeeded:1];
    v26 = v25;
    if (v14 && ([v25 containsObject:v14] & 1) == 0)
    {
      v32 = v18;
      [v26 addObject:v14];
      [(AXUIDisplayManager *)self desiredWindowLevelForService:v15 forContentViewController:v14 userInteractionEnabled:v36];
      v28 = v27;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v34 = [(AXUIDisplayManager *)self _windowWithUserInteractionEnabled:v36 windowLevel:1 createIfNeeded:v30 purposeIdentifier:a8 userInterfaceStyle:v17 windowScene:v22 savedWindowScene:v28];

      if (v36)
      {
        [v34 makeKeyAndVisible];
      }

      else
      {
        [v34 setHidden:0];
      }

      [(AXUIDisplayManager *)self _addContentViewController:v14 toWindow:v34 forService:v15 context:a7 completion:v19];

      v18 = v32;
    }

    else if (v19)
    {
      v19[2](v19, 1);
    }
  }

  else
  {
    [(AXUIDisplayManager *)self waitForSceneAddContentViewController:v14 withUserInteractionEnabled:v36 forService:v15 forSceneClientIdentifier:v16 context:a7 userInterfaceStyle:a8 forWindowScene:0 spatialConfiguration:v18 completion:v19];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)waitForSceneAddContentViewController:(id)a3 withUserInteractionEnabled:(BOOL)a4 forService:(id)a5 forSceneClientIdentifier:(id)a6 context:(void *)a7 userInterfaceStyle:(int64_t)a8 forWindowScene:(id)a9 spatialConfiguration:(id)a10 completion:(id)a11
{
  v39 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __196__AXUIDisplayManager_waitForSceneAddContentViewController_withUserInteractionEnabled_forService_forSceneClientIdentifier_context_userInterfaceStyle_forWindowScene_spatialConfiguration_completion___block_invoke;
  aBlock[3] = &unk_278BF33A8;
  objc_copyWeak(v47, &location);
  v22 = v16;
  v41 = v22;
  v48 = v39;
  v38 = v17;
  v42 = v38;
  v23 = v18;
  v43 = v23;
  v47[1] = a7;
  v47[2] = a8;
  v24 = v19;
  v44 = v24;
  v25 = v20;
  v45 = v25;
  v26 = v21;
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
    v31 = [v30 delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      [(AXUIDisplayManager *)self desiredWindowLevelForService:v38 forContentViewController:v22 userInteractionEnabled:v39];
      v34 = v33;
      v35 = +[AXUIServiceManager sharedServiceManager];
      v36 = [v35 delegate];
      [v36 requestSceneForSceneClientIdentifier:v23 scenePreferredLevel:v25 spatialConfiguration:v34];
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

- (id)showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 type:(unint64_t)a6 forService:(id)a7
{
  v7 = 3.0;
  if (!a6)
  {
    v7 = 1.5;
  }

  return [AXUIDisplayManager showAlertWithText:"showAlertWithText:subtitleText:iconImage:type:priority:duration:forService:" subtitleText:a3 iconImage:a4 type:a5 priority:v7 duration:? forService:?];
}

- (id)showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 type:(unint64_t)a6 priority:(unint64_t)a7 duration:(double)a8 userInfo:(id)a9 forService:(id)a10
{
  v39 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  if (![v17 length])
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

    v24 = 0;
    goto LABEL_16;
  }

  if (([v21 conformsToProtocol:&unk_2850140C0] & 1) == 0)
  {
    v29 = AXLogUI();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v21;
      v30 = "Cannot show alert service does not conform to AXUIService: %@";
      v31 = v29;
      v32 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v22 = +[AXUIAssertionManager sharedInstance];
  [v22 acquireAssertionUIIfNeeded];

  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v23 UUIDString];

  v25 = [(AXUIDisplayManager *)self alertBannerManager];

  if (!v25)
  {
    v26 = objc_opt_new();
    [(AXUIDisplayManager *)self setAlertBannerManager:v26];
  }

  if (a6 <= 6 && ((1 << a6) & 0x4A) != 0)
  {
    v27 = [objc_alloc(MEMORY[0x277CE77F8]) initWithIdentifier:v24 title:v17 subtitle:v18 iconImage:v19 userInfo:v20 actionBlock:0];
    [v27 setShouldExpandSystemApertureAlertByDefault:1];
    v28 = [(AXUIDisplayManager *)self alertBannerManager];
    [v28 postAlertBanner:v27 duration:a8];
  }

  else
  {
    v33 = objc_opt_new();
    [v33 setIdentifier:v24];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v33 setCreationTimeInterval:?];
    [v33 setService:v21];
    [v33 setPriority:a7];
    [v33 setDuration:a8];
    [v33 setText:v17];
    [v33 setSubtitleText:v18];
    [v33 setIconImage:v19];
    [v33 setType:a6];
    [v33 setUserInfo:v20];
    v27 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingAlertWithContext:v33 service:v21];
    v34 = [(AXUIDisplayManager *)self serviceManager];
    [v34 beginTransactionWithIdentifier:v27 forService:v21];

    v28 = v33;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)hideAlertWithIdentifier:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = [(AXUIDisplayManager *)self visibleAlertContexts];
  v7 = [v6 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 showOrHideTimer];
    [v9 cancel];

    [v8 setShowOrHideTimer:0];
    [(AXUIDisplayManager *)self _hideAlertWithContext:v8 notifyDelegate:0];
  }

  else
  {
    v10 = [(AXUIDisplayManager *)self alertQueues];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__AXUIDisplayManager_hideAlertWithIdentifier_forService___block_invoke;
    v11[3] = &unk_278BF33F8;
    v12 = v5;
    v13 = self;
    [v10 enumerateKeysAndObjectsUsingBlock:v11];
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

- (void)registerNubbit:(id)a3 delegate:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(AXUIDisplayManager *)self nubbitContexts];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [(AXUIDisplayManager *)self setNubbitContexts:v8];
  }

  v9 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v18];
  v10 = [(AXUIDisplayManager *)self nubbitContexts];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = objc_alloc_init(AXUINubbitContext);
    [(AXUINubbitContext *)v12 setNubbit:v18];
    [(AXUINubbitContext *)v12 setDelegate:v6];
    v13 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleMoveNubbitGestureRecognizer_];
    [v18 addGestureRecognizer:v13];
    [(AXUINubbitContext *)v12 setMoveNubbitGestureRecognizer:v13];
    v14 = objc_alloc(MEMORY[0x277CE6950]);
    v15 = [v14 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [v15 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AXUINubbitContext *)v12 setFadeTimer:v15];
    [v18 alpha];
    [(AXUINubbitContext *)v12 setOriginalAlpha:?];
    [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:v12];
    [(AXUIDisplayManager *)self _addDynamicAnimationsForNubbitContext:v12];
    v16 = [(AXUIDisplayManager *)self nubbitContexts];
    v17 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v18];
    [v16 setObject:v12 forKeyedSubscript:v17];
  }
}

- (void)unregisterNubbit:(id)a3 shouldUndoFade:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:?];
  v7 = [(AXUIDisplayManager *)self nubbitContexts];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v8 moveNubbitGestureRecognizer];
    if (v9)
    {
      [v14 removeGestureRecognizer:v9];
    }

    if (v4)
    {
      [(AXUIDisplayManager *)self _undoFadeForNubbitContext:v8];
    }

    [(AXUIDisplayManager *)self _removeDynamicAnimationsForNubbitContext:v8];
    v10 = [v8 fadeTimer];
    [v10 cancel];

    v11 = [(AXUIDisplayManager *)self nubbitContexts];
    [v11 removeObjectForKey:v6];

    v12 = [(AXUIDisplayManager *)self nubbitContexts];
    v13 = [v12 count];

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

- (void)_enumerateWindowsUsingBlock:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(AXUIDisplayManager *)self activeWindows];
  v7 = [v6 allValues];
  [v5 addObjectsFromArray:v7];

  v8 = [(AXUIDisplayManager *)self passiveWindows];
  v9 = [v8 allValues];
  [v5 addObjectsFromArray:v9];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
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
      v17 = v4;
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

- (id)_windowWithUserInteractionEnabled:(BOOL)a3 windowLevel:(double)a4 createIfNeeded:(BOOL)a5 purposeIdentifier:(id)a6 userInterfaceStyle:(int64_t)a7 windowScene:(id)a8 savedWindowScene:(id)a9
{
  v12 = a5;
  v14 = a3;
  v66 = *MEMORY[0x277D85DE8];
  v59 = a6;
  v16 = a8;
  v17 = a9;
  v18 = &selRef_activeWindows;
  v19 = round(a4);
  if (!v14)
  {
    v18 = &selRef_passiveWindows;
  }

  v20 = NSStringFromSelector(*v18);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f-%ld", *&v19, a7];
  v60 = v20;
  v22 = [(AXUIDisplayManager *)self valueForKey:v20];
  v23 = [v16 _sceneIdentifier];
  if (!v23)
  {
    v24 = [v17 _sceneIdentifier];
    if (v24)
    {
      v23 = v24;
    }

    else
    {
      v23 = @"MAIN-DISPLAY";
    }
  }

  v61 = v17;
  v25 = [v22 objectForKey:v23];
  v26 = [v25 objectForKey:v21];

  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = !v12;
  }

  if (v27)
  {
    v28 = v59;
    goto LABEL_40;
  }

  objc_opt_class();
  objc_opt_class();
  v29 = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  v30 = off_278BF29C0;
  v31 = !v29;
  if (!v29)
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
  if (v14)
  {
    v36 = v34;
  }

  if (v16)
  {
    v26 = [[v36 alloc] initWithWindowScene:v16];
    v37 = AXLogUI();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v63 = v16;
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
      v58 = [MEMORY[0x277D759A0] mainScreen];
      v26 = [v40 initWithScreen:v58];

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
  v43 = [MEMORY[0x277D75348] clearColor];
  [v26 setBackgroundColor:v43];

  if (a7)
  {
    [v26 setOverrideUserInterfaceStyle:a7];
  }

  else
  {
    if ([MEMORY[0x277CE7E48] isAvailable])
    {
      v44 = [MEMORY[0x277CE7E48] server];
      v45 = [v44 isDarkModeActive];

      if (v45)
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

  v28 = v59;
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

  v47 = [v22 objectForKey:v23];
  if (!v47)
  {
    v47 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v47 setObject:v26 forKey:v21];
  [v22 setObject:v47 forKey:v23];

LABEL_40:
  v48 = [v26 accessibilityIdentifier];
  v49 = v48;
  if (!v48 || [v48 rangeOfString:v28] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = [v26 accessibilityIdentifier];
    v51 = [v50 length];

    if (v51)
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = [v26 accessibilityIdentifier];
      v54 = [v52 stringWithFormat:@"%@|%@", v53, v28];
      [v26 setAccessibilityIdentifier:v54];
    }

    else
    {
      [v26 setAccessibilityIdentifier:v28];
    }
  }

  v55 = [MEMORY[0x277CCAB98] defaultCenter];
  [v55 postNotificationName:@"AXUIServerModifiedWindowInterfaceStyle" object:self];

  v56 = *MEMORY[0x277D85DE8];

  return v26;
}

- (double)_originalDurationForRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 withAdjustedDuration:(double)result
{
  if (a3 != a4 && (a3 - 1) < 2 == (a4 - 1) < 2)
  {
    return result * 0.5;
  }

  return result;
}

- (void)enumerateContentViewControllersUsingBlock:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [(AXUIDisplayManager *)self activeContentViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = self;
        v12 = [(AXUIDisplayManager *)self activeContentViewControllers];
        v13 = [v12 objectForKeyedSubscript:v10];

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

              v4[2](v4, *(*(&v42 + 1) + 8 * j), &v50);
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
        self = v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [(AXUIDisplayManager *)self passiveContentViewControllers];
  v19 = [v5 countByEnumeratingWithState:&v38 objects:v52 count:16];
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
          objc_enumerationMutation(v5);
        }

        v23 = *(*(&v38 + 1) + 8 * k);
        v24 = self;
        v25 = [(AXUIDisplayManager *)self passiveContentViewControllers];
        v26 = [v25 objectForKeyedSubscript:v23];

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

            v4[2](v4, *(*(&v34 + 1) + 8 * v30), &v50);
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

        self = v24;
        v21 = v33;
      }

      v20 = [v5 countByEnumeratingWithState:&v38 objects:v52 count:16];
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

- (void)_windowSceneConnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 134218242;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "New window scene connected: %p for scene client: %@. Adding queued content view controllers", &v16, 0x16u);
  }

  [(AXUIDisplayManager *)self saveWindowScene:v6 forSceneClientIdentifier:v7 external:0];
  v9 = @"AXUIServerDefaultSceneClientIdentifier";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v10];
  [v11 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_428];
  [(NSMutableDictionary *)self->_addContentViewControllerBlocks removeObjectForKey:v10];
  v12 = [(AXUIDisplayManager *)self sceneClients];
  v13 = [v12 objectForKeyedSubscript:v10];

  LOBYTE(v12) = objc_opt_respondsToSelector();
  if (v12)
  {
    v14 = AXLogUI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23DBD1000, v14, OS_LOG_TYPE_INFO, "Main display scene connected for Service: %@. windowScene: %@", &v16, 0x16u);
    }

    [(__CFString *)v13 mainDisplaySceneConnected:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_windowSceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 134218242;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "Window scene disconnected: %p, for scene client:%@", &v11, 0x16u);
  }

  [(AXUIDisplayManager *)self removeWindowSceneForSceneClientIdentifier:v7 external:0];
  v9 = [v6 _sceneIdentifier];
  [(AXUIDisplayManager *)self _cleanupWindowsFromSceneDisconnection:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_externalDisplaySceneConnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v8 = AXLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "New external window scene connected: %p for scene client: %@. Notifying services.", buf, 0x16u);
    }

    [(AXUIDisplayManager *)self saveWindowScene:v6 forSceneClientIdentifier:v7 external:1];
    v10 = v7;
    v11 = v6;
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

- (void)_externalDisplaySceneDisconnected:(id)a3 forSceneClientIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v8 = AXLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_INFO, "Disconnecting external scene: %@", buf, 0xCu);
    }

    [(AXUIDisplayManager *)self removeWindowSceneForSceneClientIdentifier:v7 external:1];
    v9 = [v6 _sceneIdentifier];
    [(AXUIDisplayManager *)self _cleanupWindowsFromSceneDisconnection:v9];

    v11 = v7;
    v12 = v6;
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

- (void)_cleanupWindowsFromSceneDisconnection:(id)a3
{
  activeWindows = self->_activeWindows;
  v5 = a3;
  [(NSMutableDictionary *)activeWindows setObject:0 forKeyedSubscript:v5];
  [(NSMutableDictionary *)self->_passiveWindows setObject:0 forKeyedSubscript:v5];
}

- (void)saveWindowScene:(id)a3 forSceneClientIdentifier:(id)a4 external:(BOOL)a5
{
  v6 = 144;
  if (a5)
  {
    v6 = 152;
  }

  v7 = *(&self->super.isa + v6);
  v8 = @"AXUIServerDefaultSceneClientIdentifier";
  if (a4)
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = v7;
  v11 = a3;
  [v10 setObject:v11 forKey:v9];
}

- (BOOL)destroyWindowSceneIfNeeded:(id)a3 discardableWindow:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = AXLogUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 windows];
    *buf = 134218242;
    v30 = v5;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_INFO, "checking scene: %p, windows: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v5 windows];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (([v15 isHidden] & 1) == 0 && v15 != v6)
        {
          NSClassFromString(&cfstr_Uitexteffectsw.isa);
          v12 += (objc_opt_isKindOfClass() & 1) == 0;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v17 = [v16 delegate];
  v18 = objc_opt_respondsToSelector();

  if ((v18 & 1) == 0)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = +[AXUIServiceManager sharedServiceManager];
  v20 = [v19 delegate];
  v21 = [v20 destroyScene:v5];

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)removeWindowSceneForSceneClientIdentifier:(id)a3 external:(BOOL)a4
{
  v4 = 144;
  if (a4)
  {
    v4 = 152;
  }

  v5 = *(&self->super.isa + v4);
  v6 = @"AXUIServerDefaultSceneClientIdentifier";
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  v8 = v5;
  [v8 removeObjectForKey:v7];
}

- (id)windowSceneForSceneClientIdentifier:(id)a3 external:(BOOL)a4
{
  v4 = 144;
  if (a4)
  {
    v4 = 152;
  }

  v5 = *(&self->super.isa + v4);
  v6 = @"AXUIServerDefaultSceneClientIdentifier";
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  v8 = v5;
  v9 = [v8 objectForKey:v7];

  return v9;
}

- (void)saveAddContentViewControllerBlock:(id)a3 forObjectKey:(id)a4 forSceneClientIdentifier:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9)
  {
    v12 = @"AXUIServerDefaultSceneClientIdentifier";
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v13];
    if (!v14)
    {
      v14 = objc_opt_new();
    }

    v15 = _Block_copy(v8);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v9];
    [v14 setObject:v15 forKey:v16];

    v17 = AXLogUI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_23DBD1000, v17, OS_LOG_TYPE_DEFAULT, "Save block for objectKey: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_addContentViewControllerBlocks setObject:v14 forKeyedSubscript:v13];
  }

  else
  {
    v13 = v10;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeAddContentViewControllerBlockForObjectKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v4];
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
    v7 = v5;
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
        v21 = v4;
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

- (BOOL)sceneRequestedForSceneClientIdentifier:(id)a3
{
  v4 = @"AXUIServerDefaultSceneClientIdentifier";
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)self->_addContentViewControllerBlocks objectForKeyedSubscript:v5];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (void)serviceDidConnect:(id)a3 clientWithIdentifier:(id)a4
{
  v4 = a3;
  if ([MEMORY[0x277CE7830] usesScenes])
  {
    v5 = v4;
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

- (id)_contentViewControllersWithUserInteractionEnabled:(BOOL)a3 forService:(id)a4 createIfNeeded:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = [(AXUIDisplayManager *)self serviceManager];
  v11 = [v10 _uniqueIdentifierForService:v8];

  objc_autoreleasePoolPop(v9);
  v12 = &selRef_activeContentViewControllers;
  if (!v6)
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
    v15 = !v5;
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

  if (v16 == 0 && v11 != 0 && v5)
  {
    v17 = objc_opt_new();
    [v14 setObject:v17 forKey:v11];
  }

  return v17;
}

- (void)_disposeOfContentViewControllersWithUserInteractionEnabled:(BOOL)a3 forService:(id)a4
{
  v4 = a3;
  v13 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [(AXUIDisplayManager *)self serviceManager];
  v8 = [v7 _uniqueIdentifierForService:v13];

  objc_autoreleasePoolPop(v6);
  v9 = &selRef_activeContentViewControllers;
  if (!v4)
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

- (void)_addContentViewController:(id)a3 toWindow:(id)a4 forService:(id)a5 context:(void *)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v13 rootViewController];
  v17 = v16;
  if (v12)
  {
    v18 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingContentViewController:v12 service:v14];
    v19 = [(AXUIDisplayManager *)self serviceManager];
    [v19 beginTransactionWithIdentifier:v18 forService:v14];

    v20 = [v17 view];
    v21 = [v12 view];
    [v21 removeFromSuperview];
    [v20 bounds];
    [v21 setFrame:?];
    [v21 setAutoresizingMask:18];
    [v17 addChildViewController:v12];
    [v20 addSubview:v21];
    [v12 didMoveToParentViewController:v17];
    if ([v12 conformsToProtocol:&unk_285014120] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __87__AXUIDisplayManager__addContentViewController_toWindow_forService_context_completion___block_invoke;
      v27[3] = &unk_278BF34B8;
      v28 = v15;
      [v12 transitionInWithContext:a6 completion:v27];

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v22)
    {
      (*(v15 + 2))(v15, 1);
    }

    goto LABEL_15;
  }

  v23 = [v16 childViewControllers];
  v24 = [v23 count];
  if (v24 || ([v17 isViewLoaded] & 1) == 0)
  {
    [v13 setHidden:v24 == 0];
  }

  else
  {
    v25 = [v17 view];
    v26 = [v25 subviews];
    [v13 setHidden:{objc_msgSend(v26, "count") == 0}];
  }

  [(AXUIDisplayManager *)self _reapHiddenWindows];
  v22 = 1;
  if (v15)
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

- (void)_removeContentViewController:(id)a3 forService:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = AXLogUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 view];
      v13 = [v12 window];
      v14 = [v13 windowScene];
      *buf = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_23DBD1000, v11, OS_LOG_TYPE_DEFAULT, "remove contentViewController: %@, service: %@ scene: %p", buf, 0x20u);
    }

    v18 = v8;
    v19 = v10;
    AXPerformBlockAsynchronouslyOnMainThread();
    v15 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingContentViewController:v18 service:v9];
    v16 = [(AXUIDisplayManager *)self serviceManager];
    [v16 endTransactionWithIdentifier:v15 forService:v9];
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

- (id)_transactionIdentifierForDisplayingContentViewController:(id)a3 service:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];

  return v8;
}

- (BOOL)_hasVisibleAlertWithType:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(AXUIDisplayManager *)self visibleAlertContexts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__AXUIDisplayManager__hasVisibleAlertWithType___block_invoke;
  v6[3] = &unk_278BF3530;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(a3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return a3;
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

- (void)_showAlertWithContext:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AXUIDisplayManager *)self _platformShouldUseScenes];
  v6 = [(AXUIDisplayManager *)self windowSceneForSceneClientIdentifier:0 external:0];
  v7 = AXLogUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v73 = v6;
    v74 = 2112;
    v75 = v4;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_INFO, "showAlert savedWindowScene:%p, context:%@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke;
    aBlock[3] = &unk_278BF3558;
    objc_copyWeak(&v69, buf);
    v9 = v4;
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
      v14 = [v13 delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = +[AXUIServiceManager sharedServiceManager];
        v17 = [v16 delegate];
        [v17 requestSceneForSceneClientIdentifier:0 scenePreferredLevel:0 spatialConfiguration:0.0];
      }
    }

    objc_destroyWeak(&v69);
    objc_destroyWeak(buf);
  }

  else
  {
    v56 = [v4 service];
    v18 = [v56 conformsToProtocol:&unk_2850141E0];
    v19 = v56;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v19;
    v57 = [v4 identifier];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v20 styleProviderForAlertWithIdentifier:v57], (v58 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v58 = [(AXUIDisplayManager *)self defaultAlertStyleProvider];
    }

    v21 = [v4 type];
    v22 = [v4 text];
    v23 = [v4 subtitleText];
    v24 = [v4 iconImage];
    v25 = [v4 userInfo];
    v26 = [AXUIAlert alertWithType:v21 text:v22 subtitleText:v23 iconImage:v24 styleProvider:v58 userInfo:v25];

    [v26 setContext:v4];
    [v26 setAlpha:0.0];
    if (v26)
    {
      if (objc_opt_respondsToSelector())
      {
        [v20 desiredWindowLevelForAlertWithIdentifier:v57];
      }

      else
      {
        v27 = 10000002.0;
      }

      v54 = [(AXUIDisplayManager *)self _windowWithUserInteractionEnabled:v21 == 3 windowLevel:1 createIfNeeded:@"AXUIAlert" purposeIdentifier:0 userInterfaceStyle:0 windowScene:v6 savedWindowScene:v27];
      [v54 setHidden:0];
      v28 = [v54 rootViewController];
      v55 = [v28 view];

      [v26 addToContainerView:v55];
      v29 = [v55 layer];
      LOBYTE(v28) = [v29 disableUpdateMask];

      v30 = [v4 userInfo];
      v31 = [v30 valueForKey:@"AXUIAlertUserInfoKeyHideFromScreenshots"];
      v32 = v31 == 0;

      if ((v28 & 2) != 0 || !v32)
      {
        v34 = [v55 layer];
        [v34 setDisableUpdateMask:{objc_msgSend(v34, "disableUpdateMask") | 2}];
      }

      [v4 setAlertView:v26];
      [v58 alertFadeAnimationDurationForType:v21];
      v36 = v35;
      [v4 setFadeAnimationDuration:?];
      [v4 duration];
      v38 = v37;
      if (v37 < 1.79769313e308)
      {
        v39 = [v4 showOrHideTimer];
        [v39 cancel];

        v40 = objc_alloc(MEMORY[0x277CE6950]);
        v41 = [v40 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __44__AXUIDisplayManager__showAlertWithContext___block_invoke_490;
        v64[3] = &unk_278BF2ED0;
        v64[4] = self;
        v42 = v4;
        v65 = v42;
        [v41 afterDelay:v64 processBlock:v36 + v38];
        [v42 setShowOrHideTimer:v41];
      }

      v43 = [(AXUIDisplayManager *)self visibleAlertContexts];
      if (!v43)
      {
        v43 = objc_opt_new();
        [(AXUIDisplayManager *)self setVisibleAlertContexts:v43];
      }

      [v43 setObject:v4 forKey:v57];
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      if (v21 != 4 && IsVoiceOverRunning)
      {
        v46 = objc_alloc(MEMORY[0x277CCA898]);
        v47 = [v4 text];
        v48 = [v4 subtitleText];
        v49 = __AXStringForVariables();
        v70 = *MEMORY[0x277CE6BC8];
        v71 = &unk_284FF9A28;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:{1, v48, @"__AXStringForVariablesSentinel"}];
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
      v61 = v57;
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

- (void)_hideAlertWithContext:(id)a3 notifyDelegate:(BOOL)a4
{
  v6 = a3;
  [(AXUIDisplayManager *)self removeAddContentViewControllerBlockForObjectKey:v6];
  v7 = [(AXUIDisplayManager *)self visibleAlertContexts];
  v8 = [v6 identifier];
  [v7 removeObjectForKey:v8];

  if (![v7 count])
  {
    [(AXUIDisplayManager *)self setVisibleAlertContexts:0];
  }

  v9 = [v6 alertView];
  [v9 alpha];
  if (v10 <= 2.22044605e-16)
  {
    [(AXUIDisplayManager *)self _didHideOrDequeueAlertWithContext:v6];
    -[AXUIDisplayManager _handleNextAlertForType:](self, "_handleNextAlertForType:", [v6 type]);
  }

  else
  {
    v11 = MEMORY[0x277D75D18];
    [v6 fadeAnimationDuration];
    v13 = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke;
    v19[3] = &unk_278BF2ED0;
    v20 = v6;
    v21 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__AXUIDisplayManager__hideAlertWithContext_notifyDelegate___block_invoke_2;
    v14[3] = &unk_278BF35A8;
    v15 = v21;
    v16 = self;
    v18 = a4;
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

- (void)_showOrEnqueueAlertWithContext:(id)a3
{
  v12 = a3;
  if (-[AXUIDisplayManager _hasVisibleAlertWithType:](self, "_hasVisibleAlertWithType:", [v12 type]))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "type")}];
    v5 = [(AXUIDisplayManager *)self alertQueues];
    v6 = [v5 objectForKey:v4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = objc_opt_new();
      if (!v5)
      {
        v5 = objc_opt_new();
        [(AXUIDisplayManager *)self setAlertQueues:v5];
      }

      [v5 setObject:v7 forKey:v4];
    }

    [v7 ax_enqueueObject:v12];
    [v7 sortUsingComparator:&__block_literal_global_503];
    v8 = [v12 service];
    if ([v8 conformsToProtocol:&unk_2850141E0])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      v11 = [v12 identifier];
      [v10 alertWithIdentifierWasEnqueued:v11];
    }
  }

  else
  {
    [(AXUIDisplayManager *)self _showAlertWithContext:v12];
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

- (void)_handleNextAlertForType:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(AXUIDisplayManager *)self alertQueues];
  v6 = [v5 objectForKey:v4];
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
      [v5 removeObjectForKey:v4];
      if (![v5 count])
      {
        [(AXUIDisplayManager *)self setAlertQueues:0];
      }
    }

    v7 = [(AXUIDisplayManager *)self visibleAlertContexts];
    if (!v7)
    {
      v7 = objc_opt_new();
      [(AXUIDisplayManager *)self setVisibleAlertContexts:v7];
    }

    v8 = v26[5];
    v9 = [v8 identifier];
    [v7 setObject:v8 forKey:v9];

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

- (void)_didHideOrDequeueAlertWithContext:(id)a3
{
  v4 = a3;
  v7 = [v4 service];
  v5 = [(AXUIDisplayManager *)self _transactionIdentifierForDisplayingAlertWithContext:v4 service:v7];

  v6 = [(AXUIDisplayManager *)self serviceManager];
  [v6 endTransactionWithIdentifier:v5 forService:v7];
}

- (id)_nubbitContextForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if (v5)
  {
    v6 = [(AXUIDisplayManager *)self nubbitContexts];
    v7 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v5];
    v8 = [v6 objectForKeyedSubscript:v7];
  }

  else
  {
    _AXLogWithFacility();
    v8 = 0;
  }

  return v8;
}

- (void)_scheduleFadeForNubbitContext:(id)a3
{
  v3 = a3;
  objc_initWeak(&location, v3);
  v4 = [v3 fadeTimer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AXUIDisplayManager__scheduleFadeForNubbitContext___block_invoke;
  v6[3] = &unk_278BF3640;
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [v4 afterDelay:v6 processBlock:3.0];

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

- (void)_undoFadeForNubbitContext:(id)a3
{
  v3 = a3;
  v4 = [v3 fadeTimer];
  [v4 cancel];

  [v3 originalAlpha];
  v6 = v5;
  v7 = [v3 nubbit];

  [v7 setAlpha:v6];
}

- (void)_addDynamicAnimationsForNubbitContext:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 nubbit];
  v6 = objc_alloc(MEMORY[0x277D754B0]);
  v7 = [(AXUIDisplayManager *)self _boundingViewForNubbit:v5];
  v8 = [v6 initWithReferenceView:v7];

  [v8 setDelegate:self];
  [v4 setDynamicAnimator:v8];
  if ((AXDeviceSupportsAccessibilityReader() & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D75338]);
    v17[0] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [v9 initWithItems:v10];

    [v11 setCollisionDelegate:self];
    [v11 setTranslatesReferenceBoundsIntoBoundary:1];
    [v8 addBehavior:v11];
    [v4 setCollisionBehavior:v11];
    v12 = objc_alloc(MEMORY[0x277D754B8]);
    v16 = v5;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v14 = [v12 initWithItems:v13];

    [v14 setAllowsRotation:0];
    [v14 setFriction:100.0];
    [v8 addBehavior:v14];
    [v4 setDynamicItemBehavior:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeDynamicAnimationsForNubbitContext:(id)a3
{
  v5 = a3;
  v3 = [v5 dynamicAnimator];
  [v3 removeAllBehaviors];

  v4 = [v5 dynamicAnimator];
  [v4 setDelegate:0];

  [v5 setDynamicAnimator:0];
}

- (void)_beginMoveForNubbitContext:(id)a3
{
  v26 = a3;
  v4 = [v26 nubbit];
  v5 = [v26 moveNubbitGestureRecognizer];
  v6 = [(AXUIDisplayManager *)self _boundingViewForNubbit:v4];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v26 delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v12 = [v26 delegate];
    [v12 nubbitWillBeginDragging:v4];
  }

  [(AXUIDisplayManager *)self _undoFadeForNubbitContext:v26];
  v13 = [v26 dynamicAnimator];
  if (!v13)
  {
    _AXAssert();
  }

  v14 = [v26 gravityBehavior];
  [v13 removeBehavior:v14];

  [v26 setGravityBehavior:0];
  v15 = [v26 snapToBoundaryBehavior];
  [v13 removeBehavior:v15];

  [v26 setSnapToBoundaryBehavior:0];
  v16 = [v26 collisionBehavior];
  [v13 removeBehavior:v16];

  if ([(AXUIDisplayManager *)self activeInterfaceOrientation]== 1)
  {
    if (AXDeviceHasJindo())
    {
      v17 = [v26 collisionBehavior];
      [v17 addBoundaryWithIdentifier:@"foreheadRect" fromPoint:0.0 toPoint:{self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0, self->_foreheadRect.size.width * 5.0, self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0}];

      if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
      {
        v10 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
      }
    }
  }

  v18 = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:v4 attachedToAnchor:{v8, v10}];
  [v13 addBehavior:v18];
  [v26 setFollowPanBehavior:v18];
  v19 = MEMORY[0x277CCACA8];
  v20 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v4];
  v21 = [v19 stringWithFormat:@"%@", v20];

  v22 = [v26 disableSystemGesturesAssertion];

  if (v22)
  {
    v23 = [MEMORY[0x277CE7D10] assertionWithType:*MEMORY[0x277CE79E8] identifier:v21];
    [v26 setDisableSystemGesturesAssertion:v23];
  }

  v24 = [v26 disableDashBoardSystemGesturesAssertion];

  if (v24)
  {
    v25 = [MEMORY[0x277CE7D10] assertionWithType:*MEMORY[0x277CE79C0] identifier:v21];
    [v26 setDisableDashBoardSystemGesturesAssertion:v25];
  }
}

- (void)_changeNubbitPositionForNubbitContext:(id)a3
{
  v13 = a3;
  v4 = [v13 moveNubbitGestureRecognizer];
  v5 = [v13 nubbit];
  v6 = [(AXUIDisplayManager *)self _boundingViewForNubbit:v5];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
  {
    v11 = [v13 moveNubbitGestureRecognizer];
    [v11 setState:3];
  }

  v12 = [v13 followPanBehavior];
  [v12 setAnchorPoint:{v8, v10}];
}

- (void)_endMoveForNubbitContext:(id)a3
{
  v16 = a3;
  v4 = [v16 nubbit];
  v5 = [(AXUIDisplayManager *)self _boundingViewForNubbit:v4];
  v6 = [v16 moveNubbitGestureRecognizer];
  [v6 velocityInView:v5];
  v8 = v7;
  v10 = v9;

  if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v8, v10])
  {
    v10 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
  }

  v11 = [v16 dynamicAnimator];
  v12 = [v16 followPanBehavior];
  [v11 removeBehavior:v12];

  [v16 setFollowPanBehavior:0];
  v13 = [v16 dynamicItemBehavior];
  [v13 addLinearVelocity:v4 forItem:{v8, v10}];

  v14 = [(AXUIDisplayManager *)self _gravityBehaviorForNubbit:v4 velocity:v5 boundingView:v8, v10];
  [v11 addBehavior:v14];
  [v16 setGravityBehavior:v14];
  v15 = [v16 collisionBehavior];
  [v11 addBehavior:v15];

  [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:v16];
  [v16 setDisableSystemGesturesAssertion:0];
  [v16 setDisableDashBoardSystemGesturesAssertion:0];
}

- (void)pinNubbitToEdge:(id)a3
{
  v4 = a3;
  v5 = [(AXUIDisplayManager *)self nubbitContexts];
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  [(AXUIDisplayManager *)self _endMoveForNubbitContext:v7];
}

- (id)_gravityBehaviorForNubbit:(id)a3 velocity:(CGPoint)a4 boundingView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a3)
  {
    v9 = MEMORY[0x277D75578];
    v10 = a3;
    v11 = [v9 alloc];
    v25[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    a3 = [v11 initWithItems:v12];

    [v10 center];
    v14 = v13 + x * 0.22;
    [v10 center];
    v16 = v15;

    [v8 frame];
    if (v14 <= CGRectGetMinX(v27) + 50.0)
    {
      goto LABEL_14;
    }

    [v8 frame];
    if (v14 >= CGRectGetMaxX(v28) + -50.0)
    {
      goto LABEL_14;
    }

    v17 = v16 + y * 0.22;
    [v8 frame];
    MinY = CGRectGetMinY(v29);
    v19 = -1.0;
    v20 = 0.0;
    if (v17 >= MinY + 80.0)
    {
      [v8 frame];
      MaxY = CGRectGetMaxY(v30);
      v19 = 1.0;
      if (v17 <= MaxY + -80.0)
      {
LABEL_14:
        [v8 frame];
        MidX = CGRectGetMidX(v31);
        v19 = 0.0;
        v20 = 1.0;
        if (v14 <= MidX)
        {
          v20 = -1.0;
        }
      }
    }

    [a3 setGravityDirection:{v20 * 5.0, v19 * 5.0}];
  }

  v23 = *MEMORY[0x277D85DE8];

  return a3;
}

- (void)_handleMoveNubbitGestureRecognizer:(id)a3
{
  v4 = a3;
  v7 = [(AXUIDisplayManager *)self _nubbitContextForGestureRecognizer:v4];
  v5 = [v4 state];

  if ((v5 - 3) < 2)
  {
    [(AXUIDisplayManager *)self _endMoveForNubbitContext:v7];
  }

  else if (v5 == 2)
  {
    [(AXUIDisplayManager *)self _changeNubbitPositionForNubbitContext:v7];
  }

  else
  {
    v6 = v7;
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    [(AXUIDisplayManager *)self _beginMoveForNubbitContext:v7];
  }

  v6 = v7;
LABEL_8:
}

- (void)cancelNubbitFade:(id)a3
{
  v4 = a3;
  v5 = [(AXUIDisplayManager *)self nubbitContexts];
  v6 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v4];

  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    [(AXUIDisplayManager *)self _undoFadeForNubbitContext:v7];
    [(AXUIDisplayManager *)self _scheduleFadeForNubbitContext:v7];
  }
}

- (void)_attemptToInitializeActiveInterfaceOrientation
{
  v4 = [MEMORY[0x277CE7E58] server];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__AXUIDisplayManager__attemptToInitializeActiveInterfaceOrientation__block_invoke;
  v5[3] = &unk_278BF3690;
  v5[4] = self;
  v5[5] = a2;
  [v4 activeInterfaceOrientation:v5];
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

- (BOOL)_serviceWantsToPreventAutorotation:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_285014180])
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 shouldPreventAutorotatingAllContentViewControllers];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dynamicAnimatorDidPause:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(AXUIDisplayManager *)self nubbitContexts];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 dynamicAnimator];

        if (v12 == v4)
        {
          v13 = [v11 delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = [v11 delegate];
            v16 = [v11 nubbit];
            [v15 nubbitDidUpdatePosition:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)collisionBehavior:(id)a3 beganContactForItem:(id)a4 withBoundaryIdentifier:(id)a5 atPoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v15 = a4;
  v9 = [(AXUIDisplayManager *)self nubbitContexts];
  v10 = [(AXUIDisplayManager *)self _nubbitContextKeyForNubbit:v15];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v11 snapToBoundaryBehavior];

  if (!v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D75A40]) initWithItem:v15 snapToPoint:{x, y}];
    [v11 setSnapToBoundaryBehavior:v13];
    v14 = [v11 dynamicAnimator];
    [v14 addBehavior:v13];
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
  v2 = self;
  v58 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"AXUIDisplayManager<%p>", self];
  v33 = [(AXUIDisplayManager *)v2 activeWindows];
  if ([v33 count])
  {
    v28 = v2;
    [v3 appendFormat:@"\nActive Windows:\n"];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v33 allKeys];
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
          v6 = [v33 objectForKeyedSubscript:v5];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v7 = [v6 allKeys];
          v8 = [v7 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v46 + 1) + 8 * i);
                v13 = [v6 objectForKeyedSubscript:v12];
                [v3 appendFormat:@"    %@: %@\n", v12, v13];
                v14 = [v13 rootViewController];
                [v3 appendFormat:@"      Content: %@\n", v14];
              }

              v9 = [v7 countByEnumeratingWithState:&v46 objects:v56 count:16];
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

    v2 = v28;
  }

  v15 = [(AXUIDisplayManager *)v2 passiveWindows];
  if ([v15 count])
  {
    [v3 appendFormat:@"\nPassive Windows:\n"];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = [v15 allKeys];
    v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v37)
    {
      v32 = *v43;
      v35 = v15;
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
          v18 = [v15 objectForKeyedSubscript:v17];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = [v18 allKeys];
          v20 = [v19 countByEnumeratingWithState:&v38 objects:v54 count:16];
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
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v38 + 1) + 8 * k);
                v25 = [v18 objectForKeyedSubscript:v24];
                [v3 appendFormat:@"    %@: %@\n", v24, v25];
              }

              v21 = [v19 countByEnumeratingWithState:&v38 objects:v54 count:16];
            }

            while (v21);
          }

          v15 = v35;
        }

        v37 = [obja countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v37);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    self->_foreheadRect.origin.x = v6;
    self->_foreheadRect.origin.y = v7;
    self->_foreheadRect.size.width = v8;
    self->_foreheadRect.size.height = v9;
  }

  else
  {
    if ([v4 count] != 2)
    {
      goto LABEL_6;
    }

    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v4 objectAtIndexedSubscript:1];
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
  v23 = [(AXUIDisplayManager *)self nubbitContexts];
  v24 = [v23 allValues];

  v25 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v42 + 1) + 8 * i);
        v30 = [v29 nubbit];
        [v30 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        if ([(AXUIDisplayManager *)self _axIsPointInForeheadRect:v32, v34]&& AXDeviceHasJindo())
        {
          v39 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0;
          v40 = [v29 nubbit];
          [v40 setFrame:{v32, v39, v36, v38}];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v26);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_axIsPointInForeheadRect:(CGPoint)a3
{
  y = a3.y;
  if ([(AXUIDisplayManager *)self activeInterfaceOrientation]!= 1 || self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 2.0 < y)
  {
    return 0;
  }

  return AXDeviceHasJindo();
}

- (void)_remoteSceneDidHandleHomeGesture:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXUIDisplayManager *)self serviceManager];
  v6 = [v5 _services];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
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

          [v11 remoteSceneDidHandleHomeGesture:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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