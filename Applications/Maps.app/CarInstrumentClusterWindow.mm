@interface CarInstrumentClusterWindow
- (CRSUIInstrumentClusterSceneSettings)currentSceneSettings;
- (CarInstrumentClusterConfigurationDelegate)configurationDelegate;
- (CarInstrumentClusterWindow)initWithWindowScene:(id)scene;
- (CarInstrumentClusterWindowZoomDelegate)zoomDelegate;
- (void)_updateChromeConfiguration;
- (void)_windowWantsToZoomInDirection:(int64_t)direction;
- (void)clusterWindow:(id)window didChangeCompassSetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didChangeETASetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didChangeItemType:(unint64_t)type;
- (void)clusterWindow:(id)window didChangeLayoutJustification:(unint64_t)justification;
- (void)clusterWindow:(id)window didChangeSpeedLimitSetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didZoomInDirection:(int64_t)direction;
- (void)notificationLayoutGuideDidChange;
- (void)setChromeConfiguration:(id)configuration;
- (void)setConfigurationDelegate:(id)delegate;
- (void)setHidden:(BOOL)hidden;
- (void)setRootViewController:(id)controller;
@end

@implementation CarInstrumentClusterWindow

- (CarInstrumentClusterWindowZoomDelegate)zoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomDelegate);

  return WeakRetained;
}

- (CarInstrumentClusterConfigurationDelegate)configurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  return WeakRetained;
}

- (void)clusterWindow:(id)window didChangeLayoutJustification:(unint64_t)justification
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    justificationCopy = justification;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeLayoutJustification: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)window didChangeItemType:(unint64_t)type
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeItemType: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)window didZoomInDirection:(int64_t)direction
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    directionCopy = direction;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didZoomInDirection: %p, %ld", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _windowWantsToZoomInDirection:direction];
}

- (void)clusterWindow:(id)window didChangeSpeedLimitSetting:(unint64_t)setting
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    settingCopy = setting;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeSpeedLimitSetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)window didChangeETASetting:(unint64_t)setting
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    settingCopy = setting;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeETASetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)window didChangeCompassSetting:(unint64_t)setting
{
  windowCopy = window;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    selfCopy = self;
    v10 = 2048;
    v11 = windowCopy;
    v12 = 2048;
    settingCopy = setting;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeCompassSetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)_windowWantsToZoomInDirection:(int64_t)direction
{
  zoomDelegate = [(CarInstrumentClusterWindow *)self zoomDelegate];
  [zoomDelegate windowWantsToZoomInDirection:direction];
}

- (void)_updateChromeConfiguration
{
  v3 = [CarInstrumentClusterChromeConfiguration alloc];
  currentSceneSettings = [(CarInstrumentClusterWindow *)self currentSceneSettings];
  v4 = [(CarInstrumentClusterChromeConfiguration *)v3 initWithInstrumentClusterSceneSettings:currentSceneSettings];
  [(CarInstrumentClusterWindow *)self setChromeConfiguration:v4];
}

- (CRSUIInstrumentClusterSceneSettings)currentSceneSettings
{
  windowScene = [(CarInstrumentClusterWindow *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];

  if (settings)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315906;
        selfCopy = "[CarInstrumentClusterWindow currentSceneSettings]";
        v19 = 2080;
        selfCopy2 = "CarInstrumentClusterWindow.m";
        v21 = 1024;
        *v22 = 94;
        *&v22[4] = 2080;
        *&v22[6] = "[settings isKindOfClass:CRSUIInstrumentClusterSceneSettings.class]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          selfCopy = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = settings;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v6 = sub_100799AF0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v17 = 134349826;
        selfCopy = self;
        v19 = 2112;
        selfCopy2 = self;
        v21 = 2048;
        *v22 = v10;
        *&v22[8] = 2112;
        *&v22[10] = v12;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "[%{public}p] Scene settings for window: <%@:%p> were of invalid class: %@", &v17, 0x2Au);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setChromeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy isEqual:self->_chromeConfiguration] & 1) == 0)
  {
    v6 = sub_100799AF0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349570;
      selfCopy = self;
      v11 = 2048;
      selfCopy2 = self;
      v13 = 2112;
      v14 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Will update chrome configuration on window: %p with configuration: %@", &v9, 0x20u);
    }

    objc_storeStrong(&self->_chromeConfiguration, configuration);
    WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);
    chromeConfiguration = [(CarInstrumentClusterWindow *)self chromeConfiguration];
    [WeakRetained sceneConfigurationDidChange:chromeConfiguration];
  }
}

- (void)setConfigurationDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_configurationDelegate, delegateCopy);
    v6 = sub_100799AF0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      chromeConfiguration = [(CarInstrumentClusterWindow *)self chromeConfiguration];
      v11 = 134350082;
      selfCopy = self;
      v13 = 2048;
      selfCopy2 = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = delegateCopy;
      v19 = 2112;
      v20 = chromeConfiguration;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] configurationDelegate of window: %p changed to: <%@:%p>. current configuration: %@", &v11, 0x34u);
    }

    v9 = objc_loadWeakRetained(&self->_configurationDelegate);
    chromeConfiguration2 = [(CarInstrumentClusterWindow *)self chromeConfiguration];
    [v9 sceneConfigurationDidChange:chromeConfiguration2];
  }
}

- (void)notificationLayoutGuideDidChange
{
  v3 = sub_100799AF0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] notificationLayoutGuideDidChange", &v8, 0xCu);
  }

  rootViewController = [(CarInstrumentClusterWindow *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    notificationLayoutGuide = [(CarInstrumentClusterWindow *)self notificationLayoutGuide];
    rootViewController2 = [(CarInstrumentClusterWindow *)self rootViewController];
    [rootViewController2 setNotificationLayoutGuide:notificationLayoutGuide];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = CarInstrumentClusterWindow;
  [(CarInstrumentClusterWindow *)&v6 setHidden:?];
  v5 = sub_100799AF0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v9 = 2048;
    v10 = hiddenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] setHidden:%ld", buf, 0x16u);
  }
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  rootViewController = [(CarInstrumentClusterWindow *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_5;
    }

    rootViewController = [(CarInstrumentClusterWindow *)self rootViewController];
    [rootViewController setNotificationLayoutGuide:0];
  }

LABEL_5:
  v13.receiver = self;
  v13.super_class = CarInstrumentClusterWindow;
  [(CarInstrumentClusterWindow *)&v13 setRootViewController:controllerCopy];
  v7 = controllerCopy;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___CarInstrumentClusterConfigurationDelegate])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CarInstrumentClusterWindow *)self setConfigurationDelegate:v9];
  v10 = v7;
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___CarInstrumentClusterWindowZoomDelegate])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [(CarInstrumentClusterWindow *)self setZoomDelegate:v12];
}

- (CarInstrumentClusterWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = CarInstrumentClusterWindow;
  v3 = [(CarInstrumentClusterWindow *)&v6 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(CarInstrumentClusterWindow *)v3 addClusterSettingsObserver:v3];
    [(CarInstrumentClusterWindow *)v4 _updateChromeConfiguration];
  }

  return v4;
}

@end