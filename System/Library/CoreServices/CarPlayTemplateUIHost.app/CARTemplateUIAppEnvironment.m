@interface CARTemplateUIAppEnvironment
- (BOOL)canBeInvalidated;
- (BOOL)ownsWindowScene:(id)a3;
- (CARTemplateUIAppEnvironment)initWithBundleIdentifier:(id)a3;
- (NSArray)instrumentClusterWindowScenes;
- (void)_invalidateDashboardGuidanceScene;
- (void)_invalidateDashboardMapScene;
- (void)_invalidateInstrumentClusterWindowScene:(id)a3;
- (void)_updateRunningInCarPlayAssertionIfNecessary:(id)a3;
- (void)applicationWindowSceneConnected:(id)a3 options:(id)a4;
- (void)dashboardGuidanceWindowSceneConnected:(id)a3 options:(id)a4;
- (void)dashboardMapWindowSceneConnected:(id)a3 options:(id)a4;
- (void)instrumentClusterWindowSceneConnected:(id)a3 options:(id)a4;
- (void)invalidate;
- (void)invalidateApplicationScene;
- (void)invalidateWindowScene:(id)a3;
- (void)prepare;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
@end

@implementation CARTemplateUIAppEnvironment

- (CARTemplateUIAppEnvironment)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CARTemplateUIAppEnvironment;
  v5 = [(CARTemplateUIAppEnvironment *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [[CPSTemplateInstance alloc] initWithBundleIdentifier:v4];
    templateInstance = v5->_templateInstance;
    v5->_templateInstance = v8;

    v10 = objc_alloc_init(NSMutableArray);
    scenes = v5->_scenes;
    v5->_scenes = v10;
  }

  return v5;
}

- (void)applicationWindowSceneConnected:(id)a3 options:(id)a4
{
  v27 = a3;
  objc_storeStrong(&self->_applicationWindowScene, a3);
  v7 = a4;
  [(CPSTemplateInstance *)self->_templateInstance setWindowSceneForTemplateApplicationScene:self->_applicationWindowScene];
  v8 = [v27 _FBSScene];
  v9 = [CPSWindow alloc];
  v10 = [v8 settings];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 identifier];
  v20 = [v9 _initWithFrame:v19 debugName:self->_applicationWindowScene windowScene:{v12, v14, v16, v18}];
  applicationWindow = self->_applicationWindow;
  self->_applicationWindow = v20;

  [(CPSWindow *)self->_applicationWindow setHidden:0];
  [(CPSWindow *)self->_applicationWindow makeKeyWindow];
  objc_opt_class();
  v22 = [v8 settings];
  if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [v23 proxiedApplicationBundleIdentifier];
  [(CPSWindow *)self->_applicationWindow setAccessibilityLabel:v24];

  v25 = [[CARTemplateUIApplicationSceneViewController alloc] initWithWindowScene:self->_applicationWindowScene templateInstance:self->_templateInstance options:v7];
  appViewController = self->_appViewController;
  self->_appViewController = v25;

  [(CPSWindow *)self->_applicationWindow setRootViewController:self->_appViewController];
}

- (void)dashboardMapWindowSceneConnected:(id)a3 options:(id)a4
{
  v41 = a3;
  objc_storeStrong(&self->_dashboardMapWindowScene, a3);
  v6 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [v6 setWindowSceneForMapWidgetScene:self->_dashboardMapWindowScene];

  dashboardMapWindow = self->_dashboardMapWindow;
  if (dashboardMapWindow)
  {
    [(CRSUIDashboardWidgetWindow *)dashboardMapWindow invalidate];
  }

  v8 = [CRSUIDashboardWidgetWindow alloc];
  v9 = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
  v10 = [v8 initWithWindowScene:v9];

  [v10 setHidden:0];
  v11 = [CARTemplateUIDashboardSceneViewController alloc];
  dashboardMapWindowScene = self->_dashboardMapWindowScene;
  templateInstance = self->_templateInstance;
  v14 = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
  v15 = [(CARTemplateUISceneViewController *)v11 initWithWindowScene:dashboardMapWindowScene templateInstance:templateInstance bundleIdentifier:v14];
  mapWidgetViewController = self->_mapWidgetViewController;
  self->_mapWidgetViewController = v15;

  [v10 setRootViewController:self->_mapWidgetViewController];
  [v10 makeKeyWindow];
  v17 = self->_mapWidgetViewController;
  v18 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  v19 = [v18 dashboardEstimatesViewController];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10000C480;
  v42[3] = &unk_10001C6E8;
  v42[4] = self;
  [(CARTemplateUIDashboardSceneViewController *)v17 bs_addChildViewController:v19 animated:0 transitionBlock:v42];

  v20 = objc_alloc_init(UIView);
  v21 = [v20 layer];
  [v21 setHitTestsAsOpaque:1];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:v20];
  v40 = [v20 topAnchor];
  v39 = [v10 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v47[0] = v38;
  v37 = [v20 leftAnchor];
  v36 = [v10 leftAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v47[1] = v35;
  v22 = [v20 rightAnchor];
  v23 = [v10 rightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v47[2] = v24;
  v25 = [v20 bottomAnchor];
  v26 = [v10 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v47[3] = v27;
  v28 = [NSArray arrayWithObjects:v47 count:4];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = 1;
  v30 = self->_dashboardMapWindow;
  self->_dashboardMapWindow = v10;
  v31 = v10;

  if ([v41 activationState] != 1)
  {
    v29 = [v41 activationState] == 0;
  }

  v32 = sub_100001280(7uLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = NSStringFromBOOL();
    v34 = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
    *buf = 138543618;
    v44 = v33;
    v45 = 2114;
    v46 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending scene update with foreground: %{public}@ for bundle identifier: %{public}@", buf, 0x16u);
  }

  [(CARTemplateUISceneViewController *)self->_mapWidgetViewController sendSceneUpdate:v29 openURLContexts:0];
}

- (void)dashboardGuidanceWindowSceneConnected:(id)a3 options:(id)a4
{
  v17 = a3;
  objc_storeStrong(&self->_dashboardGuidanceWindowScene, a3);
  v6 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [v6 setWindowSceneForGuidanceWidgetScene:self->_dashboardGuidanceWindowScene];

  dashboardGuidanceWindow = self->_dashboardGuidanceWindow;
  if (dashboardGuidanceWindow)
  {
    [(CRSUIDashboardWidgetWindow *)dashboardGuidanceWindow invalidate];
  }

  v8 = [CRSUIDashboardWidgetWindow alloc];
  v9 = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
  v10 = [v8 initWithWindowScene:v9];

  [v10 setHidden:0];
  [v10 makeKeyWindow];
  v11 = self->_dashboardGuidanceWindow;
  self->_dashboardGuidanceWindow = v10;
  v12 = v10;

  v13 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  v14 = [v13 dashboardGuidanceViewController];
  [v12 setRootViewController:v14];

  v15 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  v16 = [v15 dashboardGuidanceViewController];
  [v16 setContentReadyIfNecessary];
}

- (void)prepare
{
  v2 = [(CARTemplateUIAppEnvironment *)self appViewController];
  [v2 sendSceneUpdate:0 openURLContexts:0];
}

- (void)instrumentClusterWindowSceneConnected:(id)a3 options:(id)a4
{
  v25 = a3;
  v6 = a4;
  internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
  if (!internalInstrumentClusterWindowScenes)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_internalInstrumentClusterWindowScenes;
    self->_internalInstrumentClusterWindowScenes = v8;

    internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
  }

  [(NSMutableArray *)internalInstrumentClusterWindowScenes addObject:v25];
  if (!self->_instrumentClusterWindows)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    instrumentClusterWindows = self->_instrumentClusterWindows;
    self->_instrumentClusterWindows = v10;
  }

  v12 = [v25 _FBSScene];
  v13 = [v12 settings];
  v14 = [v13 displayConfiguration];

  v15 = [v14 hardwareIdentifier];
  v16 = [[CRSUIClusterWindow alloc] initWithWindowScene:v25];
  v17 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindows];
  [v17 setObject:v16 forKey:v15];

  v18 = [CARTemplateUIHostInstrumentClusterViewController alloc];
  v19 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  v20 = [(CARTemplateUIAppEnvironment *)self bundleIdentifier];
  v21 = [(CARTemplateUIHostInstrumentClusterViewController *)v18 initWithWindowScene:v25 templateInstance:v19 bundleIdentifier:v20];

  [v16 setRootViewController:v21];
  [v16 addClusterSettingsObserver:v21];
  if (!self->_instrumentClusterViewControllers)
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    instrumentClusterViewControllers = self->_instrumentClusterViewControllers;
    self->_instrumentClusterViewControllers = v22;
  }

  v24 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
  [v24 setObject:v21 forKey:v15];

  [v16 makeKeyAndVisible];
}

- (NSArray)instrumentClusterWindowScenes
{
  v2 = [(NSMutableArray *)self->_internalInstrumentClusterWindowScenes copy];

  return v2;
}

- (BOOL)ownsWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];
  if (v5 == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
    if (v6 == v4)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v8 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
        v9 = [v8 containsObject:v4];
      }
    }
  }

  return v9;
}

- (void)invalidateWindowScene:(id)a3
{
  v9 = a3;
  v4 = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];

  if (v4 == v9)
  {
    [(CARTemplateUIAppEnvironment *)self invalidateApplicationScene];
  }

  v5 = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];

  if (v5 == v9)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateDashboardMapScene];
  }

  v6 = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];

  if (v6 == v9)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateDashboardGuidanceScene];
  }

  v7 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
  v8 = [v7 containsObject:v9];

  if (v8)
  {
    [(CARTemplateUIAppEnvironment *)self _invalidateInstrumentClusterWindowScene:v9];
  }
}

- (void)invalidate
{
  v3 = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
  [v3 invalidate];

  v4 = [(CARTemplateUIAppEnvironment *)self templateInstance];
  [v4 invalidate];
}

- (void)invalidateApplicationScene
{
  v3 = [(CARTemplateUIAppEnvironment *)self appViewController];
  v4 = [v3 scene];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [(CARTemplateUIAppEnvironment *)self appViewController];
    v7 = [v6 scene];
    [v7 updateSettingsWithBlock:&stru_10001C728];

    v8 = [(CARTemplateUIAppEnvironment *)self appViewController];
    v9 = [v8 scene];
    [v9 invalidate:0];
  }

  applicationWindowScene = self->_applicationWindowScene;
  self->_applicationWindowScene = 0;
}

- (void)_invalidateDashboardMapScene
{
  v3 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  [v3 invalidate];

  v4 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  v5 = [v4 scene];
  v6 = [v5 identifier];

  if (v6)
  {
    v7 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    v8 = [v7 scene];
    [v8 updateSettingsWithBlock:&stru_10001C748];

    v9 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    v10 = [v9 scene];
    [v10 invalidate:0];
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

- (void)_invalidateInstrumentClusterWindowScene:(id)a3
{
  v21 = a3;
  objc_opt_class();
  v4 = [v21 _FBSScene];
  v5 = [v4 settings];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v6 displayConfiguration];
    v8 = [v7 hardwareIdentifier];
    v9 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
    v10 = [v9 objectForKey:v8];

    v11 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
    [v11 removeObjectForKey:v8];

    v12 = [v10 scene];
    v13 = [v12 identifier];

    if (v13)
    {
      v14 = [v10 scene];
      [v14 updateSettingsWithBlock:&stru_10001C768];

      v15 = [v10 scene];
      [v15 invalidate:0];
    }

    [v10 invalidate];
    v16 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindows];
    [v16 removeObjectForKey:v8];

    v17 = [(CARTemplateUIAppEnvironment *)self internalInstrumentClusterWindowScenes];
    [v17 removeObject:v21];
  }

  v18 = [(CARTemplateUIAppEnvironment *)self internalInstrumentClusterWindowScenes];
  v19 = [v18 count];

  if (!v19)
  {
    internalInstrumentClusterWindowScenes = self->_internalInstrumentClusterWindowScenes;
    self->_internalInstrumentClusterWindowScenes = 0;
  }
}

- (void)_updateRunningInCarPlayAssertionIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 settings];
  v6 = [v5 isForeground];

  v7 = sub_100001280(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Foreground scene exists, need assertion", buf, 2u);
    }

    v9 = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
    if (v9)
    {
      v10 = v9;
      v11 = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
      v12 = [v11 isValid];

      if (v12)
      {
        v13 = sub_100001280(7uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Assertion already exists and is valid", buf, 2u);
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

    v17 = [v4 clientHandle];
    v13 = [v17 processHandle];

    if (v13)
    {
      v18 = [v13 identity];
      v14 = [RBSTarget targetWithProcessIdentity:v18];

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

  v13 = [(CARTemplateUIAppEnvironment *)self carplayAssertion];
  v14 = sub_100001280(7uLL);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
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

  [v13 invalidate];
  [(CARTemplateUIAppEnvironment *)self setCarplayAssertion:0];
LABEL_30:
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v5 = a4;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didAddScene: %@", &v23, 0xCu);
  }

  v7 = [v5 clientProcess];
  v8 = [v7 pid];
  v9 = getpid();

  if (v8 != v9)
  {
    v10 = sub_100001280(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "presenting the scene: %@", &v23, 0xCu);
    }

    objc_opt_class();
    v11 = [v5 settings];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    objc_opt_class();
    v13 = [v5 settings];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    objc_opt_class();
    v15 = [v5 settings];
    if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(CARTemplateUIAppEnvironment *)self scenes];
    [v17 addObject:v5];

    [v5 addObserver:self];
    if (v12)
    {
      v18 = [(CARTemplateUIAppEnvironment *)self appViewController];
    }

    else
    {
      if (!v14)
      {
        if (v16)
        {
          v19 = [v16 displayConfiguration];
          v20 = [v19 hardwareIdentifier];
          v21 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
          v22 = [v21 objectForKey:v20];

          [v22 setScene:v5];
        }

        else
        {
          v19 = sub_100001280(7uLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10000E508(v5, v19);
          }
        }

        goto LABEL_23;
      }

      v18 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    }

    v19 = v18;
    [v18 setScene:v5];
LABEL_23:
  }
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001280(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sceneWillDeactivate: %@ withContext: %@. Invalidating associated view controller", buf, 0x16u);
  }

  v9 = [(CARTemplateUIAppEnvironment *)self scenes];
  [v9 removeObject:v6];

  v10 = [(CARTemplateUIAppEnvironment *)self instrumentClusterViewControllers];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000DC1C;
  v22[3] = &unk_10001C790;
  v11 = v6;
  v23 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v22];

  v12 = [(CARTemplateUIAppEnvironment *)self appViewController];
  v13 = [v12 scene];

  if (v13 == v11)
  {
    v14 = sub_100001280(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CARTemplateUIAppEnvironment *)self appViewController];
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalidating app view controller: %@", buf, 0xCu);
    }

    v16 = [(CARTemplateUIAppEnvironment *)self appViewController];
    [v16 invalidate];
  }

  v17 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  v18 = [v17 scene];

  if (v18 == v11)
  {
    v19 = sub_100001280(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalidating map widget view controller: %@", buf, 0xCu);
    }

    v21 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    [v21 invalidate];
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CARTemplateUIAppEnvironment *)self scenes];
  [v8 removeObject:v6];

  v9 = sub_100001280(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sceneDidInvalidate: %@ withContext: %@", &v16, 0x16u);
  }

  v10 = [(CARTemplateUIAppEnvironment *)self appViewController];
  v11 = [v10 scene];

  if (v11 == v6)
  {
    v12 = [(CARTemplateUIAppEnvironment *)self appViewController];
    [v12 setScene:0];
  }

  v13 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
  v14 = [v13 scene];

  if (v14 == v6)
  {
    v15 = [(CARTemplateUIAppEnvironment *)self mapWidgetViewController];
    [v15 setScene:0];
  }
}

- (BOOL)canBeInvalidated
{
  v3 = [(CARTemplateUIAppEnvironment *)self dashboardGuidanceWindowScene];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CARTemplateUIAppEnvironment *)self dashboardMapWindowScene];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(CARTemplateUIAppEnvironment *)self applicationWindowScene];
      if (v6)
      {
        v4 = 0;
      }

      else
      {
        v7 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
        if ([v7 count])
        {
          v8 = [(CARTemplateUIAppEnvironment *)self instrumentClusterWindowScenes];
          v4 = v8 == 0;
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

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v8 = a3;
  v6 = [a4 settingsDiff];
  v7 = [v6 containsProperty:"isForeground"];

  if (v7)
  {
    [(CARTemplateUIAppEnvironment *)self _updateRunningInCarPlayAssertionIfNecessary:v8];
  }
}

@end