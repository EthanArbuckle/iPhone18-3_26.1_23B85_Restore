@interface CPTemplateApplicationDashboardScene
- (CGRect)_referenceBounds;
- (CPTemplateApplicationDashboardScene)initWithSession:(id)session connectionOptions:(id)options;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation;
- (UIScreen)_screen;
- (UITraitCollection)_traitCollection;
- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows;
- (id)_fbsSceneLayerForWindow:(id)window;
- (id)_frameRateLimit;
- (id)_templateSettings;
- (int64_t)_interfaceOrientation;
- (void)_attachWindow:(id)window;
- (void)_deliverDashboardControllerToDelegate;
- (void)_detachWindow:(id)window;
- (void)_invalidate;
- (void)_readySceneForConnection;
- (void)_refreshTraitCollection;
- (void)_updateFrameRateLimit;
- (void)_windowUpdatedVisibility:(id)visibility;
@end

@implementation CPTemplateApplicationDashboardScene

- (CPTemplateApplicationDashboardScene)initWithSession:(id)session connectionOptions:(id)options
{
  v51[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  optionsCopy = options;
  v49.receiver = self;
  v49.super_class = CPTemplateApplicationDashboardScene;
  v8 = [(CPTemplateApplicationDashboardScene *)&v49 initWithSession:sessionCopy connectionOptions:optionsCopy];
  if (v8)
  {
    _specification = [optionsCopy _specification];
    sceneSubstrateClass = [_specification sceneSubstrateClass];

    v11 = objc_alloc(MEMORY[0x277D75E90]);
    v12 = [sceneSubstrateClass alloc];
    _FBSScene = [(CPTemplateApplicationDashboardScene *)v8 _FBSScene];
    v14 = [v12 initWithScene:_FBSScene];
    v15 = [v11 initWithSubstrate:v14];
    contextBinder = v8->_contextBinder;
    v8->_contextBinder = v15;

    [(_UIContextBinder *)v8->_contextBinder setContextCreationPolicyHolder:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v19 = *MEMORY[0x277D76668];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke;
    v47[3] = &unk_278A10508;
    v20 = v8;
    v48 = v20;
    v21 = [defaultCenter addObserverForName:v19 object:0 queue:mainQueue usingBlock:v47];
    didFinishLaunchingObserver = v20->_didFinishLaunchingObserver;
    v20->_didFinishLaunchingObserver = v21;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v25 = *MEMORY[0x277D76E70];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __73__CPTemplateApplicationDashboardScene_initWithSession_connectionOptions___block_invoke_3;
    v45[3] = &unk_278A10508;
    v26 = v20;
    v46 = v26;
    v27 = [defaultCenter2 addObserverForName:v25 object:v26 queue:mainQueue2 usingBlock:v45];
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

    sceneSettingsDiffAction = [(CPTemplateApplicationDashboardScene *)v26 sceneSettingsDiffAction];
    v50 = sceneSettingsDiffAction;
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
  _templateSettings = [(CPTemplateApplicationDashboardScene *)self _templateSettings];
  displayConfiguration = [_templateSettings displayConfiguration];
  cADisplay = [displayConfiguration CADisplay];

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
  [cADisplay overrideDisplayTimings:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_templateSettings
{
  _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _FBSScene2 = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
    settings2 = [_FBSScene2 settings];
  }

  else
  {
    settings2 = 0;
  }

  return settings2;
}

- (id)_frameRateLimit
{
  _templateSettings = [(CPTemplateApplicationDashboardScene *)self _templateSettings];
  frameRateLimit = [_templateSettings frameRateLimit];

  return frameRateLimit;
}

- (void)_refreshTraitCollection
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v4 = MEMORY[0x277D75C80];
  _screen = [(CPTemplateApplicationDashboardScene *)self _screen];
  traitCollection = [_screen traitCollection];
  [traitCollection displayScale];
  v7 = [v4 traitCollectionWithDisplayScale:?];

  objc_opt_class();
  _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  settings = [_FBSScene settings];
  if (objc_opt_isKindOfClass())
  {
    v10 = settings;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D75C80];
  if (v10)
  {
    userInterfaceStyle = [v10 userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 0;
  }

  v13 = [v11 traitCollectionWithUserInterfaceStyle:userInterfaceStyle];
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
    _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
    v6 = [v4 _screenForScene:_FBSScene];
    v7 = self->_screen;
    self->_screen = v6;

    screen = self->_screen;
  }

  return screen;
}

- (int64_t)_interfaceOrientation
{
  _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isUISubclass = [settings isUISubclass];

  if (isUISubclass)
  {
    settings2 = [_FBSScene settings];
    interfaceOrientation = [settings2 interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 1;
  }

  return interfaceOrientation;
}

- (CGRect)_referenceBounds
{
  _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  settings = [_FBSScene settings];
  [settings bounds];
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

- (void)_attachWindow:(id)window
{
  windowCopy = window;
  _windowHostingScene = [windowCopy _windowHostingScene];
  if (([_windowHostingScene isEqual:self] & 1) == 0)
  {
    [_windowHostingScene _detachWindow:windowCopy];
    [(CPTemplateApplicationDashboardScene *)self __captureWindow:windowCopy];
    [(_UIContextBinder *)self->_contextBinder enrollBindable:windowCopy];
    [windowCopy _didMoveFromScene:_windowHostingScene toScene:self];
  }

  if (([windowCopy isHidden] & 1) == 0)
  {
    [(_UIContextBinder *)self->_contextBinder attachBindable:windowCopy];
  }
}

- (void)_detachWindow:(id)window
{
  contextBinder = self->_contextBinder;
  windowCopy = window;
  [(_UIContextBinder *)contextBinder expellBindable:windowCopy];
  [(CPTemplateApplicationDashboardScene *)self __releaseWindow:windowCopy];
}

- (void)_windowUpdatedVisibility:(id)visibility
{
  visibilityCopy = visibility;
  isHidden = [visibilityCopy isHidden];
  contextBinder = self->_contextBinder;
  if (isHidden)
  {
    [(_UIContextBinder *)contextBinder detachBindable:visibilityCopy];
  }

  else
  {
    [(_UIContextBinder *)contextBinder attachBindable:visibilityCopy];
  }
}

- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows
{
  windowsCopy = windows;
  contextBinder = self->_contextBinder;
  if (visibleWindows)
  {
    [(_UIContextBinder *)contextBinder attachedBindables];
  }

  else
  {
    [(_UIContextBinder *)contextBinder enrolledBindables];
  }
  v6 = ;
  v7 = v6;
  if (windowsCopy)
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

- (id)_fbsSceneLayerForWindow:(id)window
{
  v25 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  substrate = [(_UIContextBinder *)self->_contextBinder substrate];
  scene = [substrate scene];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  clientSettings = [scene clientSettings];
  layers = [clientSettings layers];

  v9 = [layers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = substrate;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(layers);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          cAContext = [v14 CAContext];
          _boundContext = [windowCopy _boundContext];

          if (cAContext == _boundContext)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [layers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
    v14 = 0;
LABEL_12:
    substrate = v19;
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation
{
  _FBSScene = [(CPTemplateApplicationDashboardScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isUISubclass = [settings isUISubclass];

  if (isUISubclass)
  {
    settings2 = [_FBSScene settings];
    [settings2 safeAreaInsetsPortrait];
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
      delegate = [(CPTemplateApplicationDashboardScene *)self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = CarPlayFrameworkGeneralLogging();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "App supports CPTemplateApplicationDashboardScene method", v10, 2u);
        }

        delegate2 = [(CPTemplateApplicationDashboardScene *)self delegate];
        dashboardController = self->_dashboardController;
        dashboardWindow = [(CPTemplateApplicationDashboardScene *)self dashboardWindow];
        [delegate2 templateApplicationDashboardScene:self didConnectDashboardController:dashboardController toWindow:dashboardWindow];
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
  _init = [[CPDashboardController alloc] _init];
  dashboardController = self->_dashboardController;
  self->_dashboardController = _init;

  [(CPDashboardController *)self->_dashboardController _sceneConnect:self];
}

- (void)_invalidate
{
  [(CPDashboardController *)self->_dashboardController _invalidate];
  delegate = [(CPTemplateApplicationDashboardScene *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CPTemplateApplicationDashboardScene *)self delegate];
    [delegate2 templateApplicationDashboardScene:self didDisconnectDashboardController:self->_dashboardController fromWindow:self->_dashboardWindow];
  }

  [(UIWindow *)self->_dashboardWindow setHidden:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_sceneWillConnectObserver];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self->_didFinishLaunchingObserver];

  didFinishLaunchingObserver = self->_didFinishLaunchingObserver;
  self->_didFinishLaunchingObserver = 0;

  sceneWillConnectObserver = self->_sceneWillConnectObserver;
  self->_sceneWillConnectObserver = 0;

  v10.receiver = self;
  v10.super_class = CPTemplateApplicationDashboardScene;
  [(CPTemplateApplicationDashboardScene *)&v10 _invalidate];
}

@end