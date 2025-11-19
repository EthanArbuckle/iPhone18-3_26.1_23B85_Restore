@interface CPTemplateApplicationDashboardScene
- (CGRect)_referenceBounds;
- (CPTemplateApplicationDashboardScene)initWithSession:(id)a3 connectionOptions:(id)a4;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)a3;
- (UIScreen)_screen;
- (UITraitCollection)_traitCollection;
- (id)_allWindowsIncludingInternalWindows:(BOOL)a3 onlyVisibleWindows:(BOOL)a4;
- (id)_fbsSceneLayerForWindow:(id)a3;
- (id)_frameRateLimit;
- (id)_templateSettings;
- (int64_t)_interfaceOrientation;
- (void)_attachWindow:(id)a3;
- (void)_deliverDashboardControllerToDelegate;
- (void)_detachWindow:(id)a3;
- (void)_invalidate;
- (void)_readySceneForConnection;
- (void)_refreshTraitCollection;
- (void)_updateFrameRateLimit;
- (void)_windowUpdatedVisibility:(id)a3;
@end

@implementation CPTemplateApplicationDashboardScene

- (CPTemplateApplicationDashboardScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = CPTemplateApplicationDashboardScene;
  v8 = [(CPTemplateApplicationDashboardScene *)&v49 initWithSession:v6 connectionOptions:v7];
  if (v8)
  {
    v9 = [v7 _specification];
    v10 = [v9 sceneSubstrateClass];

    v11 = objc_alloc(MEMORY[0x277D75E90]);
    v12 = [v10 alloc];
    v13 = [(CPTemplateApplicationDashboardScene *)v8 _FBSScene];
    v14 = [v12 initWithScene:v13];
    v15 = [v11 initWithSubstrate:v14];
    contextBinder = v8->_contextBinder;
    v8->_contextBinder = v15;

    [(_UIContextBinder *)v8->_contextBinder setContextCreationPolicyHolder:v8];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [MEMORY[0x277CCABD8] mainQueue];
    v19 = *MEMORY[0x277D76668];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke;
    v47[3] = &unk_278A10508;
    v20 = v8;
    v48 = v20;
    v21 = [v17 addObserverForName:v19 object:0 queue:v18 usingBlock:v47];
    didFinishLaunchingObserver = v20->_didFinishLaunchingObserver;
    v20->_didFinishLaunchingObserver = v21;

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = [MEMORY[0x277CCABD8] mainQueue];
    v25 = *MEMORY[0x277D76E70];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke_3;
    v45[3] = &unk_278A10508;
    v26 = v20;
    v46 = v26;
    v27 = [v23 addObserverForName:v25 object:v26 queue:v24 usingBlock:v45];
    sceneWillConnectObserver = v26->_sceneWillConnectObserver;
    v26->_sceneWillConnectObserver = v27;

    objc_initWeak(&location, v26);
    v29 = objc_alloc_init(CPUIFrameRateLimitDiffInspector);
    frameRateLimitInspector = v26->_frameRateLimitInspector;
    v26->_frameRateLimitInspector = v29;

    v31 = v26->_frameRateLimitInspector;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke_5;
    v42 = &unk_278A10530;
    objc_copyWeak(&v43, &location);
    [(CPUIFrameRateLimitDiffInspector *)v31 observeFrameRateLimitWithBlock:&v39];
    [(CPTemplateApplicationDashboardScene *)v26 _updateFrameRateLimit:v39];
    v32 = [CPTemplateUISceneSettingsDiffAction alloc];
    v51[0] = v26->_frameRateLimitInspector;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v34 = [(CPTemplateUISceneSettingsDiffAction *)v32 initWithInspectors:v33];
    [(CPTemplateApplicationDashboardScene *)v26 setSceneSettingsDiffAction:v34];

    v35 = [(CPTemplateApplicationDashboardScene *)v26 sceneSettingsDiffAction];
    v50 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [(CPTemplateApplicationDashboardScene *)v26 _registerSettingsDiffActionArray:v36 forKey:@"settingsObserver"];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Did finish launching observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverDashboardControllerToDelegate];
}

uint64_t __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 264) = 1;
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Scene will connect observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverDashboardControllerToDelegate];
}

void __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFrameRateLimit];
}

- (void)_updateFrameRateLimit
{
  v19 = *MEMORY[0x277D85DE8];
  self->_frameRateLimit = [(CPTemplateApplicationDashboardScene *)self _frameRateLimit];
  v3 = [(CPTemplateApplicationDashboardScene *)self _templateSettings];
  v4 = [v3 displayConfiguration];
  v5 = [v4 CADisplay];

  frameRateLimit = self->_frameRateLimit;
  if (frameRateLimit)
  {
    [(NSNumber *)frameRateLimit doubleValue];
    if (v7 <= 0.0)
    {
      v8 = 30.0;
    }

    else
    {
      v8 = v7;
    }

    v9 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v18 = v8;
      _os_log_impl(&dword_236ED4000, v9, OS_LOG_TYPE_DEFAULT, "Template dashboard scene frameRateLimit updated to %{public}f fps", buf, 0xCu);
    }

    v10 = 1.0 / v8;
  }

  else
  {
    v11 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v11, OS_LOG_TYPE_DEFAULT, "Template dashboard scene updated to unrestricted frame rate", buf, 2u);
    }

    v10 = 0.0333333333;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:{v10, *MEMORY[0x277CDA1A8]}];
  v16 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v5 overrideDisplayTimings:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_templateSettings
{
  v3 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  v4 = [v3 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
    v7 = [v6 settings];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_frameRateLimit
{
  v2 = [(CPTemplateApplicationDashboardScene *)self _templateSettings];
  v3 = [v2 frameRateLimit];

  return v3;
}

- (void)_refreshTraitCollection
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v4 = MEMORY[0x277D75C80];
  v5 = [(CPTemplateApplicationDashboardScene *)self _screen];
  v6 = [v5 traitCollection];
  [v6 displayScale];
  v7 = [v4 traitCollectionWithDisplayScale:?];

  objc_opt_class();
  v8 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  v9 = [v8 settings];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D75C80];
  if (v10)
  {
    v12 = [v10 userInterfaceStyle];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 traitCollectionWithUserInterfaceStyle:v12];
  v14 = MEMORY[0x277D75C80];
  v19[0] = v3;
  v19[1] = v13;
  v19[2] = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v16 = [v14 traitCollectionWithTraitsFromCollections:v15];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v16;

  v18 = *MEMORY[0x277D85DE8];
}

- (UIScreen)_screen
{
  screen = self->_screen;
  if (!screen)
  {
    v4 = MEMORY[0x277D759A0];
    v5 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
    v6 = [v4 _screenForScene:v5];
    v7 = self->_screen;
    self->_screen = v6;

    screen = self->_screen;
  }

  return screen;
}

- (int64_t)_interfaceOrientation
{
  v2 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 isUISubclass];

  if (v4)
  {
    v5 = [v2 settings];
    v6 = [v5 interfaceOrientation];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CGRect)_referenceBounds
{
  v2 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  v3 = [v2 settings];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UITraitCollection)_traitCollection
{
  traitCollection = self->_traitCollection;
  if (!traitCollection)
  {
    [(CPTemplateApplicationDashboardScene *)self _refreshTraitCollection];
    traitCollection = self->_traitCollection;
  }

  return traitCollection;
}

- (void)_attachWindow:(id)a3
{
  v5 = a3;
  v4 = [v5 _windowHostingScene];
  if (([v4 isEqual:self] & 1) == 0)
  {
    [v4 _detachWindow:v5];
    [(CPTemplateApplicationDashboardScene *)self __captureWindow:v5];
    [(_UIContextBinder *)self->_contextBinder enrollBindable:v5];
    [v5 _didMoveFromScene:v4 toScene:self];
  }

  if (([v5 isHidden] & 1) == 0)
  {
    [(_UIContextBinder *)self->_contextBinder attachBindable:v5];
  }
}

- (void)_detachWindow:(id)a3
{
  contextBinder = self->_contextBinder;
  v5 = a3;
  [(_UIContextBinder *)contextBinder expellBindable:v5];
  [(CPTemplateApplicationDashboardScene *)self __releaseWindow:v5];
}

- (void)_windowUpdatedVisibility:(id)a3
{
  v6 = a3;
  v4 = [v6 isHidden];
  contextBinder = self->_contextBinder;
  if (v4)
  {
    [(_UIContextBinder *)contextBinder detachBindable:v6];
  }

  else
  {
    [(_UIContextBinder *)contextBinder attachBindable:v6];
  }
}

- (id)_allWindowsIncludingInternalWindows:(BOOL)a3 onlyVisibleWindows:(BOOL)a4
{
  v4 = a3;
  contextBinder = self->_contextBinder;
  if (a4)
  {
    [(_UIContextBinder *)contextBinder attachedBindables];
  }

  else
  {
    [(_UIContextBinder *)contextBinder enrolledBindables];
  }
  v6 = ;
  v7 = v6;
  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
    v8 = [v7 filteredArrayUsingPredicate:v9];
  }

  return v8;
}

- (id)_fbsSceneLayerForWindow:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_UIContextBinder *)self->_contextBinder substrate];
  v6 = [v5 scene];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 clientSettings];
  v8 = [v7 layers];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = v5;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v14 CAContext];
          v16 = [v4 _boundContext];

          if (v15 == v16)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
    v14 = 0;
LABEL_12:
    v5 = v19;
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)a3
{
  v3 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  v4 = [v3 settings];
  v5 = [v4 isUISubclass];

  if (v5)
  {
    v6 = [v3 settings];
    [v6 safeAreaInsetsPortrait];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v14 = *(MEMORY[0x277D768C8] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_deliverDashboardControllerToDelegate
{
  v3 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to deliver dashboard controller...", buf, 2u);
  }

  if ([*MEMORY[0x277D76620] _hasApplicationCalledLaunchDelegate])
  {
    if (self->_sceneWillConnect)
    {
      v4 = [(CPTemplateApplicationDashboardScene *)self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = CarPlayFrameworkGeneralLogging();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "App supports CPTemplateApplicationDashboardScene method", v10, 2u);
        }

        v7 = [(CPTemplateApplicationDashboardScene *)self delegate];
        dashboardController = self->_dashboardController;
        v9 = [(CPTemplateApplicationDashboardScene *)self dashboardWindow];
        [v7 templateApplicationDashboardScene:self didConnectDashboardController:dashboardController toWindow:v9];
      }
    }
  }
}

- (void)_readySceneForConnection
{
  v15.receiver = self;
  v15.super_class = CPTemplateApplicationDashboardScene;
  [(CPTemplateApplicationDashboardScene *)&v15 _readySceneForConnection];
  [(CPTemplateApplicationDashboardScene *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D75DA0]) initWithFrame:{v3, v5, v7, v9}];
  dashboardWindow = self->_dashboardWindow;
  self->_dashboardWindow = v11;

  [(UIWindow *)self->_dashboardWindow _setWindowHostingScene:self];
  [(UIWindow *)self->_dashboardWindow setAutoresizesSubviews:1];
  [(UIWindow *)self->_dashboardWindow setAutoresizingMask:18];
  [(UIWindow *)self->_dashboardWindow setFrame:v4, v6, v8, v10];
  [(UIWindow *)self->_dashboardWindow makeKeyAndVisible];
  v13 = [[CPDashboardController alloc] _init];
  dashboardController = self->_dashboardController;
  self->_dashboardController = v13;

  [(CPDashboardController *)self->_dashboardController _sceneConnect:self];
}

- (void)_invalidate
{
  [(CPDashboardController *)self->_dashboardController _invalidate];
  v3 = [(CPTemplateApplicationDashboardScene *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CPTemplateApplicationDashboardScene *)self delegate];
    [v5 templateApplicationDashboardScene:self didDisconnectDashboardController:self->_dashboardController fromWindow:self->_dashboardWindow];
  }

  [(UIWindow *)self->_dashboardWindow setHidden:1];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self->_sceneWillConnectObserver];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self->_didFinishLaunchingObserver];

  didFinishLaunchingObserver = self->_didFinishLaunchingObserver;
  self->_didFinishLaunchingObserver = 0;

  sceneWillConnectObserver = self->_sceneWillConnectObserver;
  self->_sceneWillConnectObserver = 0;

  v10.receiver = self;
  v10.super_class = CPTemplateApplicationDashboardScene;
  [(CPTemplateApplicationDashboardScene *)&v10 _invalidate];
}

@end