@interface CARTemplateUIAppEnvironment
- (BOOL)canBeInvalidated;
- (BOOL)ownsWindowScene:(id)scene;
- (CARTemplateUIAppEnvironment)initWithBundleIdentifier:(id)identifier;
- (NSArray)instrumentClusterWindowScenes;
- (void)_invalidateDashboardGuidanceScene;
- (void)_invalidateDashboardMapScene;
- (void)_invalidateInstrumentClusterWindowScene:(id)scene;
- (void)_updateRunningInCarPlayAssertionIfNecessary:(id)necessary;
- (void)applicationWindowSceneConnected:(id)connected options:(id)options;
- (void)dashboardGuidanceWindowSceneConnected:(id)connected options:(id)options;
- (void)dashboardMapWindowSceneConnected:(id)connected options:(id)options;
- (void)instrumentClusterWindowSceneConnected:(id)connected options:(id)options;
- (void)invalidate;
- (void)invalidateApplicationScene;
- (void)invalidateWindowScene:(id)scene;
- (void)prepare;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
@end

@implementation CARTemplateUIAppEnvironment

- (CARTemplateUIAppEnvironment)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CARTemplateUIAppEnvironment;
  v5 = [(CARTemplateUIAppEnvironment *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [[CPSTemplateInstance alloc] initWithBundleIdentifier:identifierCopy];
    templateInstance = v5->_templateInstance;
    v5->_templateInstance = v8;

    v10 = objc_alloc_init(NSMutableArray);
    scenes = v5->_scenes;
    v5->_scenes = v10;
  }

  return v5;
}

- (void)applicationWindowSceneConnected:(id)connected options:(id)options
{
  connectedCopy = connected;
  objc_storeStrong(&self->_applicationWindowScene, connected);
  optionsCopy = options;
  [(CPSTemplateInstance *)self->_templateInstance setWindowSceneForTemplateApplicationScene:self->_applicationWindowScene];
  _FBSScene = [connectedCopy _FBSScene];
  v9 = [CPSWindow alloc];
  settings = [_FBSScene settings];
  [settings bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  identifier = [_FBSScene identifier];
  v20 = [v9 _initWithFrame:identifier debugName:self->_applicationWindowScene windowScene:{v12, v14, v16, v18}];
  applicationWindow = self->_applicationWindow;
  self->_applicationWindow = v20;

  [(CPSWindow *)self->_applicationWindow setHidden:0];
  [(CPSWindow *)self->_applicationWindow makeKeyWindow];
  objc_opt_class();
  settings2 = [_FBSScene settings];
  if (settings2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = settings2;
  }

  else
  {
    v23 = 0;
  }

  proxiedApplicationBundleIdentifier = [v23 proxiedApplicationBundleIdentifier];
  [(CPSWindow *)self->_applicationWindow setAccessibilityLabel:proxiedApplicationBundleIdentifier];

  v25 = [[CARTemplateUIApplicationSceneViewController alloc] initWithWindowScene:self->_applicationWindowScene templateInstance:self->_templateInstance options:optionsCopy];
  appViewController = self->_appViewController;
  self->_appViewController = v25;

  [(CPSWindow *)self->_applicationWindow setRootViewController:self->_appViewController];
}

- (void)dashboardMapWindowSceneConnected:(id)connected options:(id)options
{
  connectedCopy = connected;
  objc_storeStrong(&self->_dashboardMapWindowScene, connected);
  templateInstance = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [templateInstance setWindowSceneForMapWidgetScene:self->_dashboardMapWindowScene];

  dashboardMapWindow = self->_dashboardMapWindow;
  if (dashboardMapWindow)
  {
    [(CRSUIDashboardWidgetWindow *)dashboardMapWindow invalidate];
  }

  v8 = [CRSUIDashboardWidgetWindow alloc];
  dashboardMapWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
  v10 = [v8 initWithWindowScene:dashboardMapWindowScene];

  [v10 setHidden:0];
  v11 = [CARTemplateUIDashboardSceneViewController alloc];
  dashboardMapWindowScene = self->_dashboardMapWindowScene;
  templateInstance = self->_templateInstance;
  bundleIdentifier = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
  v15 = [(CARTemplateUISceneViewController *)v11 initWithWindowScene:dashboardMapWindowScene templateInstance:templateInstance bundleIdentifier:bundleIdentifier];
  mapWidgetViewController = self->_mapWidgetViewController;
  self->_mapWidgetViewController = v15;

  [v10 setRootViewController:self->_mapWidgetViewController];
  [v10 makeKeyWindow];
  v17 = self->_mapWidgetViewController;
  templateInstance2 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  dashboardEstimatesViewController = [templateInstance2 dashboardEstimatesViewController];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10000C480;
  v42[3] = &unk_10001C6E8;
  v42[4] = self;
  [(CARTemplateUIDashboardSceneViewController *)v17 bs_addChildViewController:dashboardEstimatesViewController animated:0 transitionBlock:v42];

  v20 = objc_alloc_init(UIView);
  layer = [v20 layer];
  [layer setHitTestsAsOpaque:1];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:v20];
  topAnchor = [v20 topAnchor];
  topAnchor2 = [v10 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[0] = v38;
  leftAnchor = [v20 leftAnchor];
  leftAnchor2 = [v10 leftAnchor];
  v35 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v47[1] = v35;
  rightAnchor = [v20 rightAnchor];
  rightAnchor2 = [v10 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v47[2] = v24;
  bottomAnchor = [v20 bottomAnchor];
  bottomAnchor2 = [v10 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v27;
  v28 = [NSArray arrayWithObjects:v47 count:4];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = 1;
  v30 = self->_dashboardMapWindow;
  self->_dashboardMapWindow = v10;
  v31 = v10;

  if ([connectedCopy activationState] != 1)
  {
    v29 = [connectedCopy activationState] == 0;
  }

  v32 = sub_100001280(7uLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = NSStringFromBOOL();
    bundleIdentifier2 = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
    *buf = 138543618;
    v44 = v33;
    v45 = 2114;
    v46 = bundleIdentifier2;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending scene update with foreground: %{public}@ for bundle identifier: %{public}@", buf, 0x16u);
  }

  [(CARTemplateUISceneViewController *)self->_mapWidgetViewController sendSceneUpdate:v29 openURLContexts:0];
}

- (void)dashboardGuidanceWindowSceneConnected:(id)connected options:(id)options
{
  connectedCopy = connected;
  objc_storeStrong(&self->_dashboardGuidanceWindowScene, connected);
  templateInstance = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [templateInstance setWindowSceneForGuidanceWidgetScene:self->_dashboardGuidanceWindowScene];

  dashboardGuidanceWindow = self->_dashboardGuidanceWindow;
  if (dashboardGuidanceWindow)
  {
    [(CRSUIDashboardWidgetWindow *)dashboardGuidanceWindow invalidate];
  }

  v8 = [CRSUIDashboardWidgetWindow alloc];
  dashboardGuidanceWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
  v10 = [v8 initWithWindowScene:dashboardGuidanceWindowScene];

  [v10 setHidden:0];
  [v10 makeKeyWindow];
  v11 = self->_dashboardGuidanceWindow;
  self->_dashboardGuidanceWindow = v10;
  v12 = v10;

  templateInstance2 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  dashboardGuidanceViewController = [templateInstance2 dashboardGuidanceViewController];
  [v12 setRootViewController:dashboardGuidanceViewController];

  templateInstance3 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  dashboardGuidanceViewController2 = [templateInstance3 dashboardGuidanceViewController];
  [dashboardGuidanceViewController2 setContentReadyIfNecessary];
}

- (void)prepare
{
  appViewController = [(CARTemplateUIAppEnvironment *)self appViewController];
  [appViewController sendSceneUpdate:0 openURLContexts:0];
}

- (void)instrumentClusterWindowSceneConnected:(id)connected options:(id)options
{
  connectedCopy = connected;
  optionsCopy = options;
  internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
  if (!internalInstrumentClusterWindowScenes)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_internalInstrumentClusterWindowScenes;
    self->_internalInstrumentClusterWindowScenes = v8;

    internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
  }

  [(NSMutableArray *)internalInstrumentClusterWindowScenes addObject:connectedCopy];
  if (!self->_instrumentClusterWindows)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    instrumentClusterWindows = self->_instrumentClusterWindows;
    self->_instrumentClusterWindows = v10;
  }

  _FBSScene = [connectedCopy _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];

  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v16 = [[CRSUIClusterWindow alloc] initWithWindowScene:connectedCopy];
  instrumentClusterWindows = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindows];
  [instrumentClusterWindows setObject:v16 forKey:hardwareIdentifier];

  v18 = [CARTemplateUIHostInstrumentClusterViewController alloc];
  templateInstance = [(CARTemplateUIAppEnvironment *)self templateInstance];
  bundleIdentifier = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
  v21 = [(CARTemplateUIHostInstrumentClusterViewController *)v18 initWithWindowScene:connectedCopy templateInstance:templateInstance bundleIdentifier:bundleIdentifier];

  [v16 setRootViewController:v21];
  [v16 addClusterSettingsObserver:v21];
  if (!self->_instrumentClusterViewControllers)
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    instrumentClusterViewControllers = self->_instrumentClusterViewControllers;
    self->_instrumentClusterViewControllers = v22;
  }

  instrumentClusterViewControllers = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
  [instrumentClusterViewControllers setObject:v21 forKey:hardwareIdentifier];

  [v16 makeKeyAndVisible];
}

- (NSArray)instrumentClusterWindowScenes
{
  v2 = [(NSMutableArray *)self->_internalInstrumentClusterWindowScenes copy];

  return v2;
}

- (BOOL)ownsWindowScene:(id)scene
{
  sceneCopy = scene;
  applicationWindowScene = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];
  if (applicationWindowScene == sceneCopy)
  {
    v9 = 1;
  }

  else
  {
    dashboardGuidanceWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
    if (dashboardGuidanceWindowScene == sceneCopy)
    {
      v9 = 1;
    }

    else
    {
      dashboardMapWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
      if (dashboardMapWindowScene == sceneCopy)
      {
        v9 = 1;
      }

      else
      {
        instrumentClusterWindowScenes = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
        v9 = [instrumentClusterWindowScenes containsObject:sceneCopy];
      }
    }
  }

  return v9;
}

- (void)invalidateWindowScene:(id)scene
{
  sceneCopy = scene;
  applicationWindowScene = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];

  if (applicationWindowScene == sceneCopy)
  {
    [(CARTemplateUIAppEnvironment *)self invalidateApplicationScene];
  }

  dashboardMapWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];

  if (dashboardMapWindowScene == sceneCopy)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateDashboardMapScene];
  }

  dashboardGuidanceWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];

  if (dashboardGuidanceWindowScene == sceneCopy)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateDashboardGuidanceScene];
  }

  instrumentClusterWindowScenes = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
  v8 = [instrumentClusterWindowScenes containsObject:sceneCopy];

  if (v8)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateInstrumentClusterWindowScene:sceneCopy];
  }
}

- (void)invalidate
{
  carplayAssertion = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
  [carplayAssertion invalidate];

  templateInstance = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [templateInstance invalidate];
}

- (void)invalidateApplicationScene
{
  appViewController = [(CARTemplateUIAppEnvironment *)self appViewController];
  scene = [appViewController scene];
  identifier = [scene identifier];

  if (identifier)
  {
    appViewController2 = [(CARTemplateUIAppEnvironment *)self appViewController];
    scene2 = [appViewController2 scene];
    [scene2 updateSettingsWithBlock:&stru_10001C728];

    appViewController3 = [(CARTemplateUIAppEnvironment *)self appViewController];
    scene3 = [appViewController3 scene];
    [scene3 invalidate:0];
  }

  applicationWindowScene = self->_applicationWindowScene;
  self->_applicationWindowScene = 0;
}

- (void)_invalidateDashboardMapScene
{
  mapWidgetViewController = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  [mapWidgetViewController invalidate];

  mapWidgetViewController2 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  scene = [mapWidgetViewController2 scene];
  identifier = [scene identifier];

  if (identifier)
  {
    mapWidgetViewController3 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    scene2 = [mapWidgetViewController3 scene];
    [scene2 updateSettingsWithBlock:&stru_10001C748];

    mapWidgetViewController4 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    scene3 = [mapWidgetViewController4 scene];
    [scene3 invalidate:0];
  }

  [(CRSUIDashboardWidgetWindow *)self->_dashboardMapWindow invalidate];
  [(CRSUIDashboardWidgetWindow *)self->_dashboardMapWindow setRootViewController:0];
  dashboardMapWindow = self->_dashboardMapWindow;
  self->_dashboardMapWindow = 0;

  dashboardMapWindowScene = self->_dashboardMapWindowScene;
  self->_dashboardMapWindowScene = 0;
}

- (void)_invalidateDashboardGuidanceScene
{
  [(CRSUIDashboardWidgetWindow *)self->_dashboardGuidanceWindow invalidate];
  [(CRSUIDashboardWidgetWindow *)self->_dashboardGuidanceWindow setRootViewController:0];
  dashboardGuidanceWindow = self->_dashboardGuidanceWindow;
  self->_dashboardGuidanceWindow = 0;

  dashboardGuidanceWindowScene = self->_dashboardGuidanceWindowScene;
  self->_dashboardGuidanceWindowScene = 0;
}

- (void)_invalidateInstrumentClusterWindowScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  _FBSScene = [sceneCopy _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = settings;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    displayConfiguration = [v6 displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    instrumentClusterViewControllers = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
    v10 = [instrumentClusterViewControllers objectForKey:hardwareIdentifier];

    instrumentClusterViewControllers2 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
    [instrumentClusterViewControllers2 removeObjectForKey:hardwareIdentifier];

    scene = [v10 scene];
    identifier = [scene identifier];

    if (identifier)
    {
      scene2 = [v10 scene];
      [scene2 updateSettingsWithBlock:&stru_10001C768];

      scene3 = [v10 scene];
      [scene3 invalidate:0];
    }

    [v10 invalidate];
    instrumentClusterWindows = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindows];
    [instrumentClusterWindows removeObjectForKey:hardwareIdentifier];

    internalInstrumentClusterWindowScenes = [(CARTemplateUIAppEnvironment *)self internalInstrumentClusterWindowScenes];
    [internalInstrumentClusterWindowScenes removeObject:sceneCopy];
  }

  internalInstrumentClusterWindowScenes2 = [(CARTemplateUIAppEnvironment *)self internalInstrumentClusterWindowScenes];
  v19 = [internalInstrumentClusterWindowScenes2 count];

  if (!v19)
  {
    internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
    self->_internalInstrumentClusterWindowScenes = 0;
  }
}

- (void)_updateRunningInCarPlayAssertionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  settings = [necessaryCopy settings];
  isForeground = [settings isForeground];

  v7 = sub_100001280(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isForeground)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Foreground scene exists, need assertion", buf, 2u);
    }

    carplayAssertion = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
    if (carplayAssertion)
    {
      v10 = carplayAssertion;
      carplayAssertion2 = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
      isValid = [carplayAssertion2 isValid];

      if (isValid)
      {
        processHandle = sub_100001280(7uLL);
        if (os_log_type_enabled(processHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, processHandle, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Assertion already exists and is valid", buf, 2u);
        }

        goto LABEL_30;
      }
    }

    v16 = sub_100001280(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Creating assertion", buf, 2u);
    }

    clientHandle = [necessaryCopy clientHandle];
    processHandle = [clientHandle processHandle];

    if (processHandle)
    {
      identity = [processHandle identity];
      v14 = [RBSTarget targetWithProcessIdentity:identity];

      v19 = [RBSDomainAttribute attributeWithDomain:@"com.apple.carplay" name:@"RenderUI"];
      v27 = v19;
      v20 = [NSArray arrayWithObjects:&v27 count:1];

      v21 = [[RBSAssertion alloc] initWithExplanation:@"Foreground Template App" target:v14 attributes:v20];
      v25 = 0;
      [v21 acquireWithError:&v25];
      v22 = v25;
      if (v22)
      {
        v23 = sub_100001280(7uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10000E44C(v22, v23);
        }

        [(CARTemplateUIAppEnvironment *)self setCarplayAssertion:0];
      }

      else
      {
        [(CARTemplateUIAppEnvironment *)self setCarplayAssertion:v21];
        v24 = sub_100001280(7uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Successfully acquired assertion", buf, 2u);
        }
      }
    }

    else
    {
      v14 = sub_100001280(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10000E4C4(v14);
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] No assertion needed", buf, 2u);
  }

  processHandle = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
  v14 = sub_100001280(7uLL);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!processHandle)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] No assertion to remove", buf, 2u);
    }

    goto LABEL_29;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Invalidating assertion", buf, 2u);
  }

  [processHandle invalidate];
  [(CARTemplateUIAppEnvironment *)self setCarplayAssertion:0];
LABEL_30:
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  sceneCopy = scene;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didAddScene: %@", &v23, 0xCu);
  }

  clientProcess = [sceneCopy clientProcess];
  v8 = [clientProcess pid];
  v9 = getpid();

  if (v8 != v9)
  {
    v10 = sub_100001280(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = sceneCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "presenting the scene: %@", &v23, 0xCu);
    }

    objc_opt_class();
    settings = [sceneCopy settings];
    if (settings && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = settings;
    }

    else
    {
      v12 = 0;
    }

    objc_opt_class();
    settings2 = [sceneCopy settings];
    if (settings2 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = settings2;
    }

    else
    {
      v14 = 0;
    }

    objc_opt_class();
    settings3 = [sceneCopy settings];
    if (settings3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = settings3;
    }

    else
    {
      v16 = 0;
    }

    scenes = [(CARTemplateUIAppEnvironment *)self scenes];
    [scenes addObject:sceneCopy];

    [sceneCopy addObserver:self];
    if (v12)
    {
      appViewController = [(CARTemplateUIAppEnvironment *)self appViewController];
    }

    else
    {
      if (!v14)
      {
        if (v16)
        {
          displayConfiguration = [v16 displayConfiguration];
          hardwareIdentifier = [displayConfiguration hardwareIdentifier];
          instrumentClusterViewControllers = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
          v22 = [instrumentClusterViewControllers objectForKey:hardwareIdentifier];

          [v22 setScene:sceneCopy];
        }

        else
        {
          displayConfiguration = sub_100001280(7uLL);
          if (os_log_type_enabled(displayConfiguration, OS_LOG_TYPE_ERROR))
          {
            sub_10000E508(sceneCopy, displayConfiguration);
          }
        }

        goto LABEL_23;
      }

      appViewController = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    }

    displayConfiguration = appViewController;
    [appViewController setScene:sceneCopy];
LABEL_23:
  }
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  v8 = sub_100001280(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = deactivateCopy;
    v26 = 2112;
    v27 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sceneWillDeactivate: %@ withContext: %@. Invalidating associated view controller", buf, 0x16u);
  }

  scenes = [(CARTemplateUIAppEnvironment *)self scenes];
  [scenes removeObject:deactivateCopy];

  instrumentClusterViewControllers = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000DC1C;
  v22[3] = &unk_10001C790;
  v11 = deactivateCopy;
  v23 = v11;
  [instrumentClusterViewControllers enumerateKeysAndObjectsUsingBlock:v22];

  appViewController = [(CARTemplateUIAppEnvironment *)self appViewController];
  scene = [appViewController scene];

  if (scene == v11)
  {
    v14 = sub_100001280(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      appViewController2 = [(CARTemplateUIAppEnvironment *)self appViewController];
      *buf = 138412290;
      v25 = appViewController2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalidating app view controller: %@", buf, 0xCu);
    }

    appViewController3 = [(CARTemplateUIAppEnvironment *)self appViewController];
    [appViewController3 invalidate];
  }

  mapWidgetViewController = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  scene2 = [mapWidgetViewController scene];

  if (scene2 == v11)
  {
    v19 = sub_100001280(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      mapWidgetViewController2 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
      *buf = 138412290;
      v25 = mapWidgetViewController2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalidating map widget view controller: %@", buf, 0xCu);
    }

    mapWidgetViewController3 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    [mapWidgetViewController3 invalidate];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  contextCopy = context;
  scenes = [(CARTemplateUIAppEnvironment *)self scenes];
  [scenes removeObject:invalidateCopy];

  v9 = sub_100001280(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = invalidateCopy;
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sceneDidInvalidate: %@ withContext: %@", &v16, 0x16u);
  }

  appViewController = [(CARTemplateUIAppEnvironment *)self appViewController];
  scene = [appViewController scene];

  if (scene == invalidateCopy)
  {
    appViewController2 = [(CARTemplateUIAppEnvironment *)self appViewController];
    [appViewController2 setScene:0];
  }

  mapWidgetViewController = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  scene2 = [mapWidgetViewController scene];

  if (scene2 == invalidateCopy)
  {
    mapWidgetViewController2 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    [mapWidgetViewController2 setScene:0];
  }
}

- (BOOL)canBeInvalidated
{
  dashboardGuidanceWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
  if (dashboardGuidanceWindowScene)
  {
    v4 = 0;
  }

  else
  {
    dashboardMapWindowScene = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
    if (dashboardMapWindowScene)
    {
      v4 = 0;
    }

    else
    {
      applicationWindowScene = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];
      if (applicationWindowScene)
      {
        v4 = 0;
      }

      else
      {
        instrumentClusterWindowScenes = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
        if ([instrumentClusterWindowScenes count])
        {
          instrumentClusterWindowScenes2 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
          v4 = instrumentClusterWindowScenes2 == 0;
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  return v4;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsDiff = [settings settingsDiff];
  v7 = [settingsDiff containsProperty:"isForeground"];

  if (v7)
  {
    [(CARTemplateUIAppEnvironment *)self _updateRunningInCarPlayAssertionIfNecessary:sceneCopy];
  }
}

@end