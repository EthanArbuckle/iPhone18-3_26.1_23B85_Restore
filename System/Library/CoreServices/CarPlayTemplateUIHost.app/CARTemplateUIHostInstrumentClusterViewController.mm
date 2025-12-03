@interface CARTemplateUIHostInstrumentClusterViewController
+ (id)_stringForClusterSetting:(unint64_t)setting;
- (BOOL)_addGuidanceCardViewController;
- (BOOL)_addNavigationViewController;
- (BOOL)_addViewControllerForMapView;
- (CARTemplateUIHostInstrumentClusterViewController)initWithWindowScene:(id)scene templateInstance:(id)instance bundleIdentifier:(id)identifier;
- (FBScene)scene;
- (id)_clusterWindow;
- (id)_lastZoomDirectionString;
- (void)_addChildSceneViewController;
- (void)_handleSceneSettings;
- (void)_removeChildSceneViewController;
- (void)_removeGuidanceCardViewController;
- (void)_removeNavigationViewController;
- (void)_removeViewControllerForMapView;
- (void)_updateSettingsText;
- (void)clusterWindow:(id)window didChangeCompassSetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didChangeETASetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didChangeItemType:(unint64_t)type;
- (void)clusterWindow:(id)window didChangeLayoutJustification:(unint64_t)justification;
- (void)clusterWindow:(id)window didChangeSpeedLimitSetting:(unint64_t)setting;
- (void)clusterWindow:(id)window didZoomInDirection:(int64_t)direction;
- (void)invalidate;
- (void)setScene:(id)scene;
- (void)templateInstanceDidFinishClusterSetup:(id)setup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CARTemplateUIHostInstrumentClusterViewController

- (CARTemplateUIHostInstrumentClusterViewController)initWithWindowScene:(id)scene templateInstance:(id)instance bundleIdentifier:(id)identifier
{
  sceneCopy = scene;
  instanceCopy = instance;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CARTemplateUIHostInstrumentClusterViewController;
  v11 = [(CARTemplateUIHostInstrumentClusterViewController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_templateInstance, instance);
    [(CPSTemplateInstance *)v12->_templateInstance setClusterSetupDelegate:v12];
    v13 = [identifierCopy copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    displayConfiguration = [settings displayConfiguration];
    displayConfiguration = v12->_displayConfiguration;
    v12->_displayConfiguration = displayConfiguration;
  }

  return v12;
}

- (void)invalidate
{
  [(CARTemplateUIHostInstrumentClusterViewController *)self setInvalidated:1];
  sceneViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  [sceneViewController invalidate];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CARTemplateUIHostInstrumentClusterViewController;
  [(CARTemplateUIHostInstrumentClusterViewController *)&v3 viewDidLoad];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _handleSceneSettings];
}

- (void)_handleSceneSettings
{
  objc_opt_class();
  view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
  window = [view window];
  if (window && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = window;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    itemType = [(CARTemplateUIHostInstrumentClusterViewController *)self itemType];
    if (itemType != [v5 itemType])
    {
      v7 = sub_100001280(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new itemType", buf, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeItemType:](self, "clusterWindow:didChangeItemType:", v5, [v5 itemType]);
    }

    showETASetting = [(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting];
    if (showETASetting != [v5 etaSetting])
    {
      v9 = sub_100001280(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new etaSetting", v19, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeETASetting:](self, "clusterWindow:didChangeETASetting:", v5, [v5 etaSetting]);
    }

    showCompassSetting = [(CARTemplateUIHostInstrumentClusterViewController *)self showCompassSetting];
    if (showCompassSetting != [v5 compassSetting])
    {
      v11 = sub_100001280(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new compassSetting", v18, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeCompassSetting:](self, "clusterWindow:didChangeCompassSetting:", v5, [v5 compassSetting]);
    }

    showSpeedLimitSetting = [(CARTemplateUIHostInstrumentClusterViewController *)self showSpeedLimitSetting];
    if (showSpeedLimitSetting != [v5 speedLimitSetting])
    {
      v13 = sub_100001280(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new speedLimitSetting", v17, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeSpeedLimitSetting:](self, "clusterWindow:didChangeSpeedLimitSetting:", v5, [v5 speedLimitSetting]);
    }

    layoutJustification = [(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification];
    if (layoutJustification != [v5 layoutJustification])
    {
      v15 = sub_100001280(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new layoutJustification", v16, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeLayoutJustification:](self, "clusterWindow:didChangeLayoutJustification:", v5, [v5 layoutJustification]);
    }
  }
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  sceneViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  [sceneViewController setScene:sceneCopy];
}

- (FBScene)scene
{
  sceneViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  scene = [sceneViewController scene];

  return scene;
}

- (void)_addChildSceneViewController
{
  sceneViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];

  if (!sceneViewController)
  {
    v4 = [CARTemplateUIInstrumentClusterSceneViewController alloc];
    view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    templateInstance = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
    bundleIdentifier = [(CARTemplateUIHostInstrumentClusterViewController *)self bundleIdentifier];
    v10 = [(CARTemplateUISceneViewController *)v4 initWithWindowScene:windowScene templateInstance:templateInstance bundleIdentifier:bundleIdentifier];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setSceneViewController:v10];
    view2 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006F50;
    v13[3] = &unk_10001C5F0;
    v14 = v10;
    selfCopy = self;
    v12 = v10;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:view2 animated:0 transitionBlock:v13];
  }
}

- (BOOL)_addViewControllerForMapView
{
  templateInstance = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
  instrumentClusterMapETAViewController = [templateInstance instrumentClusterMapETAViewController];

  if (self->_mapViewETATray || (self->_sceneViewController ? (v5 = instrumentClusterMapETAViewController == 0) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = sub_100001280(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding template content for Map type", buf, 2u);
    }

    [(CARTemplateUIHostInstrumentClusterViewController *)self setMapViewETATray:instrumentClusterMapETAViewController];
    view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007414;
    v11[3] = &unk_10001C5F0;
    v12 = instrumentClusterMapETAViewController;
    selfCopy = self;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:view animated:0 transitionBlock:v11];

    v6 = 1;
  }

  return v6;
}

- (void)_removeViewControllerForMapView
{
  mapViewETATray = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];

  if (mapViewETATray)
  {
    mapViewETATray2 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:mapViewETATray2];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setMapViewETATray:0];
  }
}

- (BOOL)_addGuidanceCardViewController
{
  guidanceCardViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];

  if (!guidanceCardViewController)
  {
    v4 = sub_100001280(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding template content for Turn Card type", buf, 2u);
    }

    templateInstance = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
    displayConfiguration = [(CARTemplateUIHostInstrumentClusterViewController *)self displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    v8 = [templateInstance instrumentClusterViewControllerForDisplayIdentifier:hardwareIdentifier];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setGuidanceCardViewController:v8];
    view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007848;
    v12[3] = &unk_10001C5F0;
    v13 = v8;
    selfCopy = self;
    v10 = v8;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v10 withSuperview:view animated:0 transitionBlock:v12];
  }

  return guidanceCardViewController == 0;
}

- (BOOL)_addNavigationViewController
{
  templateInstance = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
  instrumentClusterCardViewController = [templateInstance instrumentClusterCardViewController];

  if (self->_navigationViewController || (self->_sceneViewController ? (v5 = instrumentClusterCardViewController == 0) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = sub_100001280(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding template content for Navigation App type", buf, 2u);
    }

    [(CARTemplateUIHostInstrumentClusterViewController *)self setNavigationViewController:instrumentClusterCardViewController];
    view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007BE4;
    v11[3] = &unk_10001C5F0;
    v12 = instrumentClusterCardViewController;
    selfCopy = self;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:view animated:0 transitionBlock:v11];

    v6 = 1;
  }

  return v6;
}

- (void)_removeNavigationViewController
{
  navigationViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  if (navigationViewController)
  {
    navigationViewController2 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:navigationViewController2];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setNavigationViewController:0];
  }
}

- (void)_removeGuidanceCardViewController
{
  guidanceCardViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];

  if (guidanceCardViewController)
  {
    guidanceCardViewController2 = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:guidanceCardViewController2];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setGuidanceCardViewController:0];
  }
}

- (void)_removeChildSceneViewController
{
  sceneViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];

  if (sceneViewController)
  {
    sceneViewController2 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:sceneViewController2];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setSceneViewController:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CARTemplateUIHostInstrumentClusterViewController;
  [(CARTemplateUIHostInstrumentClusterViewController *)&v3 viewDidLayoutSubviews];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _addChildSceneViewController];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _handleSceneSettings];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
}

- (id)_clusterWindow
{
  objc_opt_class();
  view = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
  window = [view window];
  if (window && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = window;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSettingsText
{
  _clusterWindow = [(CARTemplateUIHostInstrumentClusterViewController *)self _clusterWindow];
  v3 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(_clusterWindow, "etaSetting")}];
  v4 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(_clusterWindow, "compassSetting")}];
  v5 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(_clusterWindow, "speedLimitSetting")}];
  _lastZoomDirectionString = [(CARTemplateUIHostInstrumentClusterViewController *)self _lastZoomDirectionString];
  v7 = [NSString stringWithFormat:@"Settings: showsETA: %@ showsCompass: %@; showsSpeedLimit: %@; last zoom direction: %@ count: %lu", v3, v4, v5, _lastZoomDirectionString, [(CARTemplateUIHostInstrumentClusterViewController *)self zoomCount]];;

  settingsLabel = [(CARTemplateUIHostInstrumentClusterViewController *)self settingsLabel];
  [settingsLabel setText:v7];

  settingsLabel2 = [(CARTemplateUIHostInstrumentClusterViewController *)self settingsLabel];
  [settingsLabel2 sizeToFit];
}

+ (id)_stringForClusterSetting:(unint64_t)setting
{
  if (setting - 1 > 2)
  {
    return @"unspecified";
  }

  else
  {
    return *(&off_10001C630 + setting - 1);
  }
}

- (id)_lastZoomDirectionString
{
  lastZoomDirection = [(CARTemplateUIHostInstrumentClusterViewController *)self lastZoomDirection];
  v3 = @"None";
  if (lastZoomDirection == 2)
  {
    v3 = @"Out";
  }

  if (lastZoomDirection == 1)
  {
    return @"In";
  }

  else
  {
    return v3;
  }
}

- (void)clusterWindow:(id)window didZoomInDirection:(int64_t)direction
{
  windowCopy = window;
  if (self->_lastZoomDirection == direction)
  {
    v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self zoomCount]+ 1;
  }

  else
  {
    self->_lastZoomDirection = direction;
    v6 = 1;
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setZoomCount:v6];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  scene = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];

  if (scene)
  {
    v8 = [[CRSUIClusterZoomAction alloc] initWithZoomDirection:direction];
    scene2 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
    v10 = [NSSet setWithObject:v8];
    [scene2 sendActions:v10];
  }
}

- (void)clusterWindow:(id)window didChangeETASetting:(unint64_t)setting
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]];
    v8 = [NSNumber numberWithUnsignedInteger:setting];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeETASetting from: %@ to: %@", &v15, 0x16u);
  }

  mapViewETATray = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
  if (mapViewETATray)
  {

LABEL_6:
    [(CARTemplateUIHostInstrumentClusterViewController *)self setShowETASetting:setting];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
    mapViewETATray2 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
    [mapViewETATray2 setShowETA:{-[CARTemplateUIHostInstrumentClusterViewController showETASetting](self, "showETASetting") == 1}];

    navigationViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    [navigationViewController setShowETA:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]== 1];
    goto LABEL_7;
  }

  navigationViewController2 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  if (navigationViewController2)
  {
    goto LABEL_6;
  }

  navigationViewController = sub_100001280(7uLL);
  if (os_log_type_enabled(navigationViewController, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]];
    v14 = [NSNumber numberWithUnsignedInteger:setting];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, navigationViewController, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeETASetting from: %@ to: %@ - UNABLE TO HANDLE", &v15, 0x16u);
  }

LABEL_7:
}

- (void)clusterWindow:(id)window didChangeCompassSetting:(unint64_t)setting
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showCompassSetting]];
    v8 = [NSNumber numberWithUnsignedInteger:setting];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeCompassSetting from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setShowCompassSetting:setting];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  scene = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008708;
  v10[3] = &unk_10001C610;
  v10[4] = setting;
  [scene updateClusterSceneSettingsWithBlock:v10];
}

- (void)clusterWindow:(id)window didChangeSpeedLimitSetting:(unint64_t)setting
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showSpeedLimitSetting]];
    v8 = [NSNumber numberWithUnsignedInteger:setting];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeSpeedLimitSetting from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setShowSpeedLimitSetting:setting];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  scene = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008894;
  v10[3] = &unk_10001C610;
  v10[4] = setting;
  [scene updateClusterSceneSettingsWithBlock:v10];
}

- (void)clusterWindow:(id)window didChangeItemType:(unint64_t)type
{
  windowCopy = window;
  if (type == 1)
  {
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeNavigationViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeGuidanceCardViewController];
    if (![(CARTemplateUIHostInstrumentClusterViewController *)self _addViewControllerForMapView])
    {
      goto LABEL_11;
    }
  }

  else if (type == 3)
  {
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeGuidanceCardViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeViewControllerForMapView];
    if (![(CARTemplateUIHostInstrumentClusterViewController *)self _addNavigationViewController])
    {
      goto LABEL_11;
    }
  }

  else if (type != 2 || ([(CARTemplateUIHostInstrumentClusterViewController *)self _removeNavigationViewController], [(CARTemplateUIHostInstrumentClusterViewController *)self _removeViewControllerForMapView], ![(CARTemplateUIHostInstrumentClusterViewController *)self _addGuidanceCardViewController]))
  {
LABEL_11:
    scene = sub_100001280(7uLL);
    if (os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self itemType]];
      v12 = [NSNumber numberWithUnsignedInteger:type];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, scene, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeItemType from: %@ to: %@ - UNABLE TO HANDLE", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v7 = sub_100001280(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self itemType]];
    v9 = [NSNumber numberWithUnsignedInteger:type];
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeItemType from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setItemType:type];
  scene = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008B34;
  v13[3] = &unk_10001C610;
  v13[4] = type;
  [scene updateClusterSceneSettingsWithBlock:v13];
LABEL_13:
}

- (void)clusterWindow:(id)window didChangeLayoutJustification:(unint64_t)justification
{
  navigationViewController = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  scene = sub_100001280(7uLL);
  v8 = os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT);
  if (navigationViewController)
  {
    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification]];
      v10 = [NSNumber numberWithUnsignedInteger:justification];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, scene, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeLayoutJustification from: %@ to: %@", buf, 0x16u);
    }

    [(CARTemplateUIHostInstrumentClusterViewController *)self setLayoutJustification:justification];
    navigationViewController2 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    v12 = navigationViewController2;
    if (justification - 1 >= 3)
    {
      justificationCopy = 0;
    }

    else
    {
      justificationCopy = justification;
    }

    [navigationViewController2 setLayoutOverride:justificationCopy];

    scene = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008D78;
    v16[3] = &unk_10001C610;
    v16[4] = justification;
    [scene updateClusterSceneSettingsWithBlock:v16];
  }

  else if (v8)
  {
    v14 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification]];
    v15 = [NSNumber numberWithUnsignedInteger:justification];
    *buf = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, scene, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeLayoutJustification from: %@ to: %@ - UNABLE TO HANDLE", buf, 0x16u);
  }
}

- (void)templateInstanceDidFinishClusterSetup:(id)setup
{
  setupCopy = setup;
  templateInstance = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];

  if (templateInstance == setupCopy)
  {
    v6 = sub_100001280(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ready to draw cluster template content", v7, 2u);
    }

    [(CARTemplateUIHostInstrumentClusterViewController *)self _handleSceneSettings];
  }
}

@end