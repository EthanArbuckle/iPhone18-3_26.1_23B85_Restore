@interface CarInstrumentClusterWindow
- (CRSUIInstrumentClusterSceneSettings)currentSceneSettings;
- (CarInstrumentClusterConfigurationDelegate)configurationDelegate;
- (CarInstrumentClusterWindow)initWithWindowScene:(id)a3;
- (CarInstrumentClusterWindowZoomDelegate)zoomDelegate;
- (void)_updateChromeConfiguration;
- (void)_windowWantsToZoomInDirection:(int64_t)a3;
- (void)clusterWindow:(id)a3 didChangeCompassSetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeETASetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeItemType:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeLayoutJustification:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeSpeedLimitSetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didZoomInDirection:(int64_t)a4;
- (void)notificationLayoutGuideDidChange;
- (void)setChromeConfiguration:(id)a3;
- (void)setConfigurationDelegate:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setRootViewController:(id)a3;
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

- (void)clusterWindow:(id)a3 didChangeLayoutJustification:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeLayoutJustification: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)a3 didChangeItemType:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeItemType: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)a3 didZoomInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didZoomInDirection: %p, %ld", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _windowWantsToZoomInDirection:a4];
}

- (void)clusterWindow:(id)a3 didChangeSpeedLimitSetting:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeSpeedLimitSetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)a3 didChangeETASetting:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeETASetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)clusterWindow:(id)a3 didChangeCompassSetting:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799AF0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349568;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] clusterWindow:didChangeCompassSetting: %p, %lu", &v8, 0x20u);
  }

  [(CarInstrumentClusterWindow *)self _updateChromeConfiguration];
}

- (void)_windowWantsToZoomInDirection:(int64_t)a3
{
  v4 = [(CarInstrumentClusterWindow *)self zoomDelegate];
  [v4 windowWantsToZoomInDirection:a3];
}

- (void)_updateChromeConfiguration
{
  v3 = [CarInstrumentClusterChromeConfiguration alloc];
  v5 = [(CarInstrumentClusterWindow *)self currentSceneSettings];
  v4 = [(CarInstrumentClusterChromeConfiguration *)v3 initWithInstrumentClusterSceneSettings:v5];
  [(CarInstrumentClusterWindow *)self setChromeConfiguration:v4];
}

- (CRSUIInstrumentClusterSceneSettings)currentSceneSettings
{
  v3 = [(CarInstrumentClusterWindow *)self windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315906;
        v18 = "[CarInstrumentClusterWindow currentSceneSettings]";
        v19 = 2080;
        v20 = "CarInstrumentClusterWindow.m";
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
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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
        v18 = self;
        v19 = 2112;
        v20 = self;
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

- (void)setChromeConfiguration:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_chromeConfiguration] & 1) == 0)
  {
    v6 = sub_100799AF0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349570;
      v10 = self;
      v11 = 2048;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Will update chrome configuration on window: %p with configuration: %@", &v9, 0x20u);
    }

    objc_storeStrong(&self->_chromeConfiguration, a3);
    WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);
    v8 = [(CarInstrumentClusterWindow *)self chromeConfiguration];
    [WeakRetained sceneConfigurationDidChange:v8];
  }
}

- (void)setConfigurationDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_configurationDelegate, v4);
    v6 = sub_100799AF0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = [(CarInstrumentClusterWindow *)self chromeConfiguration];
      v11 = 134350082;
      v12 = self;
      v13 = 2048;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v4;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] configurationDelegate of window: %p changed to: <%@:%p>. current configuration: %@", &v11, 0x34u);
    }

    v9 = objc_loadWeakRetained(&self->_configurationDelegate);
    v10 = [(CarInstrumentClusterWindow *)self chromeConfiguration];
    [v9 sceneConfigurationDidChange:v10];
  }
}

- (void)notificationLayoutGuideDidChange
{
  v3 = sub_100799AF0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] notificationLayoutGuideDidChange", &v8, 0xCu);
  }

  v4 = [(CarInstrumentClusterWindow *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CarInstrumentClusterWindow *)self notificationLayoutGuide];
    v7 = [(CarInstrumentClusterWindow *)self rootViewController];
    [v7 setNotificationLayoutGuide:v6];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CarInstrumentClusterWindow;
  [(CarInstrumentClusterWindow *)&v6 setHidden:?];
  v5 = sub_100799AF0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] setHidden:%ld", buf, 0x16u);
  }
}

- (void)setRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(CarInstrumentClusterWindow *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_5;
    }

    v5 = [(CarInstrumentClusterWindow *)self rootViewController];
    [v5 setNotificationLayoutGuide:0];
  }

LABEL_5:
  v13.receiver = self;
  v13.super_class = CarInstrumentClusterWindow;
  [(CarInstrumentClusterWindow *)&v13 setRootViewController:v4];
  v7 = v4;
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

- (CarInstrumentClusterWindow)initWithWindowScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = CarInstrumentClusterWindow;
  v3 = [(CarInstrumentClusterWindow *)&v6 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(CarInstrumentClusterWindow *)v3 addClusterSettingsObserver:v3];
    [(CarInstrumentClusterWindow *)v4 _updateChromeConfiguration];
  }

  return v4;
}

@end