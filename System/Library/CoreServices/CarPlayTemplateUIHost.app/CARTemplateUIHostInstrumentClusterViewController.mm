@interface CARTemplateUIHostInstrumentClusterViewController
+ (id)_stringForClusterSetting:(unint64_t)a3;
- (BOOL)_addGuidanceCardViewController;
- (BOOL)_addNavigationViewController;
- (BOOL)_addViewControllerForMapView;
- (CARTemplateUIHostInstrumentClusterViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 bundleIdentifier:(id)a5;
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
- (void)clusterWindow:(id)a3 didChangeCompassSetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeETASetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeItemType:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeLayoutJustification:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didChangeSpeedLimitSetting:(unint64_t)a4;
- (void)clusterWindow:(id)a3 didZoomInDirection:(int64_t)a4;
- (void)invalidate;
- (void)setScene:(id)a3;
- (void)templateInstanceDidFinishClusterSetup:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CARTemplateUIHostInstrumentClusterViewController

- (CARTemplateUIHostInstrumentClusterViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CARTemplateUIHostInstrumentClusterViewController;
  v11 = [(CARTemplateUIHostInstrumentClusterViewController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_templateInstance, a4);
    [(CPSTemplateInstance *)v12->_templateInstance setClusterSetupDelegate:v12];
    v13 = [v10 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = [v8 _FBSScene];
    v16 = [v15 settings];
    v17 = [v16 displayConfiguration];
    displayConfiguration = v12->_displayConfiguration;
    v12->_displayConfiguration = v17;
  }

  return v12;
}

- (void)invalidate
{
  [(CARTemplateUIHostInstrumentClusterViewController *)self setInvalidated:1];
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  [v3 invalidate];
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
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
  v4 = [v3 window];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self itemType];
    if (v6 != [v5 itemType])
    {
      v7 = sub_100001280(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new itemType", buf, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeItemType:](self, "clusterWindow:didChangeItemType:", v5, [v5 itemType]);
    }

    v8 = [(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting];
    if (v8 != [v5 etaSetting])
    {
      v9 = sub_100001280(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new etaSetting", v19, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeETASetting:](self, "clusterWindow:didChangeETASetting:", v5, [v5 etaSetting]);
    }

    v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self showCompassSetting];
    if (v10 != [v5 compassSetting])
    {
      v11 = sub_100001280(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new compassSetting", v18, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeCompassSetting:](self, "clusterWindow:didChangeCompassSetting:", v5, [v5 compassSetting]);
    }

    v12 = [(CARTemplateUIHostInstrumentClusterViewController *)self showSpeedLimitSetting];
    if (v12 != [v5 speedLimitSetting])
    {
      v13 = sub_100001280(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_handleSceneSettings for new speedLimitSetting", v17, 2u);
      }

      -[CARTemplateUIHostInstrumentClusterViewController clusterWindow:didChangeSpeedLimitSetting:](self, "clusterWindow:didChangeSpeedLimitSetting:", v5, [v5 speedLimitSetting]);
    }

    v14 = [(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification];
    if (v14 != [v5 layoutJustification])
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

- (void)setScene:(id)a3
{
  v4 = a3;
  v5 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  [v5 setScene:v4];
}

- (FBScene)scene
{
  v2 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
  v3 = [v2 scene];

  return v3;
}

- (void)_addChildSceneViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];

  if (!v3)
  {
    v4 = [CARTemplateUIInstrumentClusterSceneViewController alloc];
    v5 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 windowScene];
    v8 = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
    v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self bundleIdentifier];
    v10 = [(CARTemplateUISceneViewController *)v4 initWithWindowScene:v7 templateInstance:v8 bundleIdentifier:v9];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setSceneViewController:v10];
    v11 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006F50;
    v13[3] = &unk_10001C5F0;
    v14 = v10;
    v15 = self;
    v12 = v10;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:v11 animated:0 transitionBlock:v13];
  }
}

- (BOOL)_addViewControllerForMapView
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
  v4 = [v3 instrumentClusterMapETAViewController];

  if (self->_mapViewETATray || (self->_sceneViewController ? (v5 = v4 == 0) : (v5 = 1), v5))
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

    [(CARTemplateUIHostInstrumentClusterViewController *)self setMapViewETATray:v4];
    v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007414;
    v11[3] = &unk_10001C5F0;
    v12 = v4;
    v13 = self;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:v10 animated:0 transitionBlock:v11];

    v6 = 1;
  }

  return v6;
}

- (void)_removeViewControllerForMapView
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];

  if (v3)
  {
    v4 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:v4];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setMapViewETATray:0];
  }
}

- (BOOL)_addGuidanceCardViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];

  if (!v3)
  {
    v4 = sub_100001280(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding template content for Turn Card type", buf, 2u);
    }

    v5 = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
    v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self displayConfiguration];
    v7 = [v6 hardwareIdentifier];
    v8 = [v5 instrumentClusterViewControllerForDisplayIdentifier:v7];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setGuidanceCardViewController:v8];
    v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007848;
    v12[3] = &unk_10001C5F0;
    v13 = v8;
    v14 = self;
    v10 = v8;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v10 withSuperview:v9 animated:0 transitionBlock:v12];
  }

  return v3 == 0;
}

- (BOOL)_addNavigationViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];
  v4 = [v3 instrumentClusterCardViewController];

  if (self->_navigationViewController || (self->_sceneViewController ? (v5 = v4 == 0) : (v5 = 1), v5))
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

    [(CARTemplateUIHostInstrumentClusterViewController *)self setNavigationViewController:v4];
    v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007BE4;
    v11[3] = &unk_10001C5F0;
    v12 = v4;
    v13 = self;
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_addChildViewController:v12 withSuperview:v10 animated:0 transitionBlock:v11];

    v6 = 1;
  }

  return v6;
}

- (void)_removeNavigationViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  if (v3)
  {
    v4 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:v4];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setNavigationViewController:0];
  }
}

- (void)_removeGuidanceCardViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];

  if (v3)
  {
    v4 = [(CARTemplateUIHostInstrumentClusterViewController *)self guidanceCardViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:v4];

    [(CARTemplateUIHostInstrumentClusterViewController *)self setGuidanceCardViewController:0];
  }
}

- (void)_removeChildSceneViewController
{
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];

  if (v3)
  {
    v4 = [(CARTemplateUIHostInstrumentClusterViewController *)self sceneViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self bs_removeChildViewController:v4];

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
  v3 = [(CARTemplateUIHostInstrumentClusterViewController *)self view];
  v4 = [v3 window];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSettingsText
{
  v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self _clusterWindow];
  v3 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(v10, "etaSetting")}];
  v4 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(v10, "compassSetting")}];
  v5 = [objc_opt_class() _stringForClusterSetting:{objc_msgSend(v10, "speedLimitSetting")}];
  v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self _lastZoomDirectionString];
  v7 = [NSString stringWithFormat:@"Settings: showsETA: %@ showsCompass: %@; showsSpeedLimit: %@; last zoom direction: %@ count: %lu", v3, v4, v5, v6, [(CARTemplateUIHostInstrumentClusterViewController *)self zoomCount]];;

  v8 = [(CARTemplateUIHostInstrumentClusterViewController *)self settingsLabel];
  [v8 setText:v7];

  v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self settingsLabel];
  [v9 sizeToFit];
}

+ (id)_stringForClusterSetting:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"unspecified";
  }

  else
  {
    return *(&off_10001C630 + a3 - 1);
  }
}

- (id)_lastZoomDirectionString
{
  v2 = [(CARTemplateUIHostInstrumentClusterViewController *)self lastZoomDirection];
  v3 = @"None";
  if (v2 == 2)
  {
    v3 = @"Out";
  }

  if (v2 == 1)
  {
    return @"In";
  }

  else
  {
    return v3;
  }
}

- (void)clusterWindow:(id)a3 didZoomInDirection:(int64_t)a4
{
  v11 = a3;
  if (self->_lastZoomDirection == a4)
  {
    v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self zoomCount]+ 1;
  }

  else
  {
    self->_lastZoomDirection = a4;
    v6 = 1;
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setZoomCount:v6];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  v7 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];

  if (v7)
  {
    v8 = [[CRSUIClusterZoomAction alloc] initWithZoomDirection:a4];
    v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
    v10 = [NSSet setWithObject:v8];
    [v9 sendActions:v10];
  }
}

- (void)clusterWindow:(id)a3 didChangeETASetting:(unint64_t)a4
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]];
    v8 = [NSNumber numberWithUnsignedInteger:a4];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeETASetting from: %@ to: %@", &v15, 0x16u);
  }

  v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
  if (v9)
  {

LABEL_6:
    [(CARTemplateUIHostInstrumentClusterViewController *)self setShowETASetting:a4];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
    v11 = [(CARTemplateUIHostInstrumentClusterViewController *)self mapViewETATray];
    [v11 setShowETA:{-[CARTemplateUIHostInstrumentClusterViewController showETASetting](self, "showETASetting") == 1}];

    v12 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    [v12 setShowETA:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]== 1];
    goto LABEL_7;
  }

  v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  if (v10)
  {
    goto LABEL_6;
  }

  v12 = sub_100001280(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showETASetting]];
    v14 = [NSNumber numberWithUnsignedInteger:a4];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeETASetting from: %@ to: %@ - UNABLE TO HANDLE", &v15, 0x16u);
  }

LABEL_7:
}

- (void)clusterWindow:(id)a3 didChangeCompassSetting:(unint64_t)a4
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showCompassSetting]];
    v8 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeCompassSetting from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setShowCompassSetting:a4];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008708;
  v10[3] = &unk_10001C610;
  v10[4] = a4;
  [v9 updateClusterSceneSettingsWithBlock:v10];
}

- (void)clusterWindow:(id)a3 didChangeSpeedLimitSetting:(unint64_t)a4
{
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self showSpeedLimitSetting]];
    v8 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeSpeedLimitSetting from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setShowSpeedLimitSetting:a4];
  [(CARTemplateUIHostInstrumentClusterViewController *)self _updateSettingsText];
  v9 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008894;
  v10[3] = &unk_10001C610;
  v10[4] = a4;
  [v9 updateClusterSceneSettingsWithBlock:v10];
}

- (void)clusterWindow:(id)a3 didChangeItemType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeNavigationViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeGuidanceCardViewController];
    if (![(CARTemplateUIHostInstrumentClusterViewController *)self _addViewControllerForMapView])
    {
      goto LABEL_11;
    }
  }

  else if (a4 == 3)
  {
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeGuidanceCardViewController];
    [(CARTemplateUIHostInstrumentClusterViewController *)self _removeViewControllerForMapView];
    if (![(CARTemplateUIHostInstrumentClusterViewController *)self _addNavigationViewController])
    {
      goto LABEL_11;
    }
  }

  else if (a4 != 2 || ([(CARTemplateUIHostInstrumentClusterViewController *)self _removeNavigationViewController], [(CARTemplateUIHostInstrumentClusterViewController *)self _removeViewControllerForMapView], ![(CARTemplateUIHostInstrumentClusterViewController *)self _addGuidanceCardViewController]))
  {
LABEL_11:
    v10 = sub_100001280(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self itemType]];
      v12 = [NSNumber numberWithUnsignedInteger:a4];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeItemType from: %@ to: %@ - UNABLE TO HANDLE", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v7 = sub_100001280(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self itemType]];
    v9 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeItemType from: %@ to: %@", buf, 0x16u);
  }

  [(CARTemplateUIHostInstrumentClusterViewController *)self setItemType:a4];
  v10 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008B34;
  v13[3] = &unk_10001C610;
  v13[4] = a4;
  [v10 updateClusterSceneSettingsWithBlock:v13];
LABEL_13:
}

- (void)clusterWindow:(id)a3 didChangeLayoutJustification:(unint64_t)a4
{
  v6 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];

  v7 = sub_100001280(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification]];
      v10 = [NSNumber numberWithUnsignedInteger:a4];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeLayoutJustification from: %@ to: %@", buf, 0x16u);
    }

    [(CARTemplateUIHostInstrumentClusterViewController *)self setLayoutJustification:a4];
    v11 = [(CARTemplateUIHostInstrumentClusterViewController *)self navigationViewController];
    v12 = v11;
    if (a4 - 1 >= 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4;
    }

    [v11 setLayoutOverride:v13];

    v7 = [(CARTemplateUIHostInstrumentClusterViewController *)self scene];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008D78;
    v16[3] = &unk_10001C610;
    v16[4] = a4;
    [v7 updateClusterSceneSettingsWithBlock:v16];
  }

  else if (v8)
  {
    v14 = [NSNumber numberWithUnsignedInteger:[(CARTemplateUIHostInstrumentClusterViewController *)self layoutJustification]];
    v15 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clusterWindow:didChangeLayoutJustification from: %@ to: %@ - UNABLE TO HANDLE", buf, 0x16u);
  }
}

- (void)templateInstanceDidFinishClusterSetup:(id)a3
{
  v4 = a3;
  v5 = [(CARTemplateUIHostInstrumentClusterViewController *)self templateInstance];

  if (v5 == v4)
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