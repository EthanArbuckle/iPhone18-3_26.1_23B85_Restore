@interface CPTemplateApplicationInstrumentClusterScene
- (CGRect)_referenceBounds;
- (CPTemplateApplicationInstrumentClusterScene)initWithSession:(id)a3 connectionOptions:(id)a4;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)a3;
- (UIScreen)_screen;
- (UITraitCollection)_traitCollection;
- (id)_allWindowsIncludingInternalWindows:(BOOL)a3 onlyVisibleWindows:(BOOL)a4;
- (id)_clusterSettings;
- (id)_fbsSceneLayerForWindow:(id)a3;
- (id)_frameRateLimit;
- (id)_templateSettings;
- (int64_t)_interfaceOrientation;
- (int64_t)_mapStyle;
- (unint64_t)compassSetting;
- (unint64_t)itemType;
- (unint64_t)speedLimitSetting;
- (void)_attachWindow:(id)a3;
- (void)_deliverControllerToDelegate;
- (void)_detachWindow:(id)a3;
- (void)_invalidate;
- (void)_readySceneForConnection;
- (void)_refreshTraitCollection;
- (void)_updateContentStyle;
- (void)_updateFrameRateLimit;
- (void)_windowUpdatedVisibility:(id)a3;
- (void)handleZoomInDirection:(int64_t)a3;
- (void)updateSceneForNewCompassSetting;
- (void)updateSceneForNewItemTypeSetting;
- (void)updateSceneForNewSpeedLimitSetting;
@end

@implementation CPTemplateApplicationInstrumentClusterScene

- (CPTemplateApplicationInstrumentClusterScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v56[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v54.receiver = self;
  v54.super_class = CPTemplateApplicationInstrumentClusterScene;
  v8 = [(CPTemplateApplicationInstrumentClusterScene *)&v54 initWithSession:v6 connectionOptions:v7];
  if (v8)
  {
    v9 = [v7 _specification];
    v10 = [v9 sceneSubstrateClass];

    v11 = objc_alloc(MEMORY[0x277D75E90]);
    v12 = [v10 alloc];
    v13 = [(CPTemplateApplicationInstrumentClusterScene *)v8 _FBSScene];
    v14 = [v12 initWithScene:v13];
    v15 = [v11 initWithSubstrate:v14];
    contextBinder = v8->_contextBinder;
    v8->_contextBinder = v15;

    [(_UIContextBinder *)v8->_contextBinder setContextCreationPolicyHolder:v8];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [MEMORY[0x277CCABD8] mainQueue];
    v19 = *MEMORY[0x277D76668];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke;
    v52[3] = &unk_278A10508;
    v20 = v8;
    v53 = v20;
    v21 = [v17 addObserverForName:v19 object:0 queue:v18 usingBlock:v52];
    didFinishLaunchingObserver = v20->_didFinishLaunchingObserver;
    v20->_didFinishLaunchingObserver = v21;

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = [MEMORY[0x277CCABD8] mainQueue];
    v25 = *MEMORY[0x277D76E70];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_7;
    v50[3] = &unk_278A10508;
    v26 = v20;
    v51 = v26;
    v27 = [v23 addObserverForName:v25 object:v26 queue:v24 usingBlock:v50];
    sceneWillConnectObserver = v26->_sceneWillConnectObserver;
    v26->_sceneWillConnectObserver = v27;

    objc_initWeak(&location, v26);
    v29 = objc_alloc_init(CPUIContentStyleDiffInspector);
    mapStyleInspector = v26->_mapStyleInspector;
    v26->_mapStyleInspector = v29;

    v31 = v26->_mapStyleInspector;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_9;
    v47[3] = &unk_278A10530;
    objc_copyWeak(&v48, &location);
    [(CPUIContentStyleDiffInspector *)v31 observeMapStyleWithBlock:v47];
    [(CPTemplateApplicationInstrumentClusterScene *)v26 _updateContentStyle];
    v32 = objc_alloc_init(CPUIFrameRateLimitDiffInspector);
    frameRateLimitInspector = v26->_frameRateLimitInspector;
    v26->_frameRateLimitInspector = v32;

    v34 = v26->_frameRateLimitInspector;
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_2;
    v45 = &unk_278A10530;
    objc_copyWeak(&v46, &location);
    [(CPUIFrameRateLimitDiffInspector *)v34 observeFrameRateLimitWithBlock:&v42];
    [(CPTemplateApplicationInstrumentClusterScene *)v26 _updateFrameRateLimit:v42];
    v35 = [CPTemplateUISceneSettingsDiffAction alloc];
    v56[0] = v26->_mapStyleInspector;
    v56[1] = v26->_frameRateLimitInspector;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v37 = [(CPTemplateUISceneSettingsDiffAction *)v35 initWithInspectors:v36];
    [(CPTemplateApplicationInstrumentClusterScene *)v26 setSceneSettingsDiffAction:v37];

    v38 = [(CPTemplateApplicationInstrumentClusterScene *)v26 sceneSettingsDiffAction];
    v55 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    [(CPTemplateApplicationInstrumentClusterScene *)v26 _registerSettingsDiffActionArray:v39 forKey:@"InterfaceStyle"];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Did finish launching observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverControllerToDelegate];
}

uint64_t __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_7(uint64_t a1)
{
  *(*(a1 + 32) + 264) = 1;
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Scene will connect observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverControllerToDelegate];
}

void __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContentStyle];
}

void __81__CPTemplateApplicationInstrumentClusterScene_initWithSession_connectionOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFrameRateLimit];
}

- (void)_updateContentStyle
{
  v12 = *MEMORY[0x277D85DE8];
  self->_contentStyle = [(CPTemplateApplicationInstrumentClusterScene *)self _mapStyle];
  v3 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_contentStyle == 2)
    {
      v4 = @"dark";
    }

    else
    {
      v4 = @"light";
    }

    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "Cluster scene content style updated to %{public}@", &v10, 0xCu);
  }

  v5 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate of style update", &v10, 2u);
    }

    v8 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
    [v8 contentStyleDidChange:self->_contentStyle];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)_mapStyle
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _templateSettings];
  v3 = [v2 mapStyle];

  return v3;
}

- (void)_updateFrameRateLimit
{
  v19 = *MEMORY[0x277D85DE8];
  self->_frameRateLimit = [(CPTemplateApplicationInstrumentClusterScene *)self _frameRateLimit];
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self _templateSettings];
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
      _os_log_impl(&dword_236ED4000, v9, OS_LOG_TYPE_DEFAULT, "Cluster scene frame rate limit updated to %{public}f fps", buf, 0xCu);
    }

    v10 = 1.0 / v8;
  }

  else
  {
    v11 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v11, OS_LOG_TYPE_DEFAULT, "Cluster scene updated to unrestricted frame rate", buf, 2u);
    }

    v10 = 0.0333333333;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:{v10, *MEMORY[0x277CDA1A8]}];
  v16 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v5 overrideDisplayTimings:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_frameRateLimit
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _templateSettings];
  v3 = [v2 frameRateLimit];

  return v3;
}

- (id)_templateSettings
{
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
  v4 = [v3 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
    v7 = [v6 settings];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_refreshTraitCollection
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v4 = MEMORY[0x277D75C80];
  v5 = [(CPTemplateApplicationInstrumentClusterScene *)self _screen];
  v6 = [v5 traitCollection];
  [v6 displayScale];
  v7 = [v4 traitCollectionWithDisplayScale:?];

  objc_opt_class();
  v8 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
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
    v5 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
    v6 = [v4 _screenForScene:v5];
    v7 = self->_screen;
    self->_screen = v6;

    screen = self->_screen;
  }

  return screen;
}

- (int64_t)_interfaceOrientation
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
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
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
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
    [(CPTemplateApplicationInstrumentClusterScene *)self _refreshTraitCollection];
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
    [(CPTemplateApplicationInstrumentClusterScene *)self __captureWindow:v5];
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
  [(CPTemplateApplicationInstrumentClusterScene *)self __releaseWindow:v5];
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
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_13];
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
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
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

- (void)_deliverControllerToDelegate
{
  v3 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to deliver instrument cluster scene...", buf, 2u);
  }

  v4 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
  if ([*MEMORY[0x277D76620] _hasApplicationCalledLaunchDelegate])
  {
    if (self->_sceneWillConnect)
    {
      v5 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = CarPlayFrameworkGeneralLogging();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "Cluster delegate supports templateApplicationDidConnectInstrumentClusterScene method", v9, 2u);
        }

        v8 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
        [v4 templateApplicationInstrumentClusterScene:self didConnectInstrumentClusterController:v8];
      }
    }
  }
}

- (void)_invalidate
{
  [(CPInstrumentClusterController *)self->_instrumentClusterController _invalidate];
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CPTemplateApplicationInstrumentClusterScene *)self delegate];
    v6 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
    [v5 templateApplicationInstrumentClusterScene:self didDisconnectInstrumentClusterController:v6];
  }

  [(UIWindow *)self->_instrumentClusterWindow setHidden:1];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self->_sceneWillConnectObserver];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self->_didFinishLaunchingObserver];

  didFinishLaunchingObserver = self->_didFinishLaunchingObserver;
  self->_didFinishLaunchingObserver = 0;

  sceneWillConnectObserver = self->_sceneWillConnectObserver;
  self->_sceneWillConnectObserver = 0;

  v11.receiver = self;
  v11.super_class = CPTemplateApplicationInstrumentClusterScene;
  [(CPTemplateApplicationInstrumentClusterScene *)&v11 _invalidate];
}

- (void)_readySceneForConnection
{
  v6.receiver = self;
  v6.super_class = CPTemplateApplicationInstrumentClusterScene;
  [(CPTemplateApplicationInstrumentClusterScene *)&v6 _readySceneForConnection];
  v3 = [[CPInstrumentClusterController alloc] _init];
  [(CPInstrumentClusterController *)v3 setCompassSetting:[(CPTemplateApplicationInstrumentClusterScene *)self compassSetting]];
  [(CPInstrumentClusterController *)v3 setSpeedLimitSetting:[(CPTemplateApplicationInstrumentClusterScene *)self speedLimitSetting]];
  instrumentClusterController = self->_instrumentClusterController;
  self->_instrumentClusterController = v3;
  v5 = v3;

  [(CPTemplateApplicationInstrumentClusterScene *)self updateSceneForNewItemTypeSetting];
  [(CPInstrumentClusterController *)self->_instrumentClusterController _sceneConnect:self];
}

- (void)handleZoomInDirection:(int64_t)a3
{
  v7 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
  v5 = [v7 delegate];
  v6 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
  if (a3 == 1)
  {
    [v5 instrumentClusterControllerDidZoomIn:v6];
  }

  else
  {
    [v5 instrumentClusterControllerDidZoomOut:v6];
  }
}

- (void)updateSceneForNewCompassSetting
{
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
  [v3 setCompassSetting:{-[CPTemplateApplicationInstrumentClusterScene compassSetting](self, "compassSetting")}];
}

- (void)updateSceneForNewSpeedLimitSetting
{
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
  [v3 setSpeedLimitSetting:{-[CPTemplateApplicationInstrumentClusterScene speedLimitSetting](self, "speedLimitSetting")}];
}

- (void)updateSceneForNewItemTypeSetting
{
  if ([(CPTemplateApplicationInstrumentClusterScene *)self itemType]== 1 || [(CPTemplateApplicationInstrumentClusterScene *)self itemType]== 3)
  {
    [(CPTemplateApplicationInstrumentClusterScene *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x277D75DA0]) initWithFrame:{v3, v5, v7, v9}];
    instrumentClusterWindow = self->_instrumentClusterWindow;
    self->_instrumentClusterWindow = v11;

    [(UIWindow *)self->_instrumentClusterWindow _setWindowHostingScene:self];
    [(UIWindow *)self->_instrumentClusterWindow setAutoresizesSubviews:1];
    [(UIWindow *)self->_instrumentClusterWindow setAutoresizingMask:18];
    [(UIWindow *)self->_instrumentClusterWindow setFrame:v4, v6, v8, v10];
    [(UIWindow *)self->_instrumentClusterWindow makeKeyAndVisible];
    v13 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
    v14 = self->_instrumentClusterWindow;
    v16 = v13;
  }

  else
  {
    [(UIWindow *)self->_instrumentClusterWindow setHidden:1];
    v15 = self->_instrumentClusterWindow;
    self->_instrumentClusterWindow = 0;

    v13 = [(CPTemplateApplicationInstrumentClusterScene *)self instrumentClusterController];
    v16 = v13;
    v14 = 0;
  }

  [v13 setInstrumentClusterWindow:v14];
}

- (unint64_t)itemType
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _clusterSettings];
  v3 = [v2 itemType];

  return v3;
}

- (id)_clusterSettings
{
  v3 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
  v4 = [v3 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CPTemplateApplicationInstrumentClusterScene *)self _FBSScene];
    v7 = [v6 settings];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)compassSetting
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _clusterSettings];
  v3 = [v2 showsCompass];

  return v3;
}

- (unint64_t)speedLimitSetting
{
  v2 = [(CPTemplateApplicationInstrumentClusterScene *)self _clusterSettings];
  v3 = [v2 showsSpeedLimit];

  return v3;
}

@end