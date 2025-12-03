@interface CLAuthBaseViewController
- (CLLocationManager)locManager;
- (double)_accessibilityMaximumWidthForScreenSize:(CGSize)size;
- (id)allowedClassesForUnarchiving;
- (id)extensionInputItems;
- (void)configureMapViewWithHeightOverride:(double)override;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation CLAuthBaseViewController

- (void)loadView
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#BaseViewController loadView<Start>", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = CLAuthBaseViewController;
  [(CLAuthBaseViewController *)&v19 loadView];
  v3 = +[NSNull null];
  [(CLAuthBaseViewController *)self setLocManager:v3];

  [(CLAuthBaseViewController *)self setPreferredContentSize:270.0, 0.01];
  extensionInputItems = [(CLAuthBaseViewController *)self extensionInputItems];
  firstObject = [extensionInputItems firstObject];

  userInfo = [firstObject userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"clientName"];
  [(CLAuthBaseViewController *)self setAppName:v7];

  userInfo2 = [firstObject userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"clientDictionary"];
  [(CLAuthBaseViewController *)self setClientDict:v9];

  clientDict = [(CLAuthBaseViewController *)self clientDict];

  if (clientDict)
  {
    clientDict2 = [(CLAuthBaseViewController *)self clientDict];
    [(CLAuthBaseViewController *)self setAuthMask:[CLLocationManager entityAuthorizationForLocationDictionary:clientDict2]];

    clientDict3 = [(CLAuthBaseViewController *)self clientDict];
    v13 = [clientDict3 objectForKey:@"BundleId"];
    [(CLAuthBaseViewController *)self setBundleId:v13];
  }

  userInfo3 = [firstObject userInfo];
  v15 = [userInfo3 objectForKeyedSubscript:@"archivedPayload"];

  if (v15)
  {
    v16 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v15 error:0];
    allowedClassesForUnarchiving = [(CLAuthBaseViewController *)self allowedClassesForUnarchiving];
    v18 = [v16 decodeObjectOfClasses:allowedClassesForUnarchiving forKey:NSKeyedArchiveRootObjectKey];
    [(CLAuthBaseViewController *)self setLocationDictionary:v18];
  }

  [(CLAuthBaseViewController *)self configureMapView];
}

- (id)allowedClassesForUnarchiving
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, v5, v6, objc_opt_class(), 0];
}

- (id)extensionInputItems
{
  extensionContext = [(CLAuthBaseViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];

  return inputItems;
}

- (double)_accessibilityMaximumWidthForScreenSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    size.width = size.height;
  }

  return size.width + -64.0;
}

- (void)configureMapViewWithHeightOverride:(double)override
{
  v5 = +[UIWindow keyWindow];
  v6 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v6 preferredContentSizeCategory];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = *&preferredContentSizeCategory;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#BaseViewController loadView<Start> %@", buf, 0xCu);
  }

  if ([preferredContentSizeCategory containsString:@"Accessibility"])
  {
    [v5 size];
    [(CLAuthBaseViewController *)self _accessibilityMaximumWidthForScreenSize:?];
    v9 = v8;
  }

  else
  {
    v9 = 270.0;
  }

  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v5)
    {
      [v5 size];
      [(CLAuthBaseViewController *)self _accessibilityMaximumWidthForScreenSize:?];
      if (v9 >= v12)
      {
        v9 = v12;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1, 0];
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v14)
      {
        v15 = *v37;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v36 + 1) + 8 * i) size];
            [(CLAuthBaseViewController *)self _accessibilityMaximumWidthForScreenSize:?];
            if (v9 >= v17)
            {
              v9 = v17;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v14);
      }
    }

    if (v9 > 402.0)
    {
      v9 = 402.0;
    }
  }

  [(CLAuthBaseViewController *)self setPreferredContentSize:v9, override];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v41 = v9;
    v42 = 2048;
    overrideCopy = override;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#BaseViewController mapViewDimensions %.5f %.5f", buf, 0x16u);
  }

  locManager = [(CLAuthBaseViewController *)self locManager];
  v19 = locManager == 0;

  if (v19)
  {
    locManager2 = [[MKMapView alloc] initWithFrame:{0.0, 0.0, v9, override}];
    [(CLAuthBaseViewController *)self setMapView:locManager2];
  }

  else
  {
    v20 = [MKMapView alloc];
    locManager2 = [(CLAuthBaseViewController *)self locManager];
    v22 = [v20 initWithFrame:locManager2 locationManager:{0.0, 0.0, v9, override}];
    [(CLAuthBaseViewController *)self setMapView:v22];
  }

  [(CLAuthBaseViewController *)self setMapViewHeight:override];
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView _setShowsAppleLogo:0];

  mapView2 = [(CLAuthBaseViewController *)self mapView];
  [mapView2 setDelegate:self];

  mapView3 = [(CLAuthBaseViewController *)self mapView];
  [mapView3 setMapType:105];

  mapView4 = [(CLAuthBaseViewController *)self mapView];
  [mapView4 setUserInteractionEnabled:0];

  mapView5 = [(CLAuthBaseViewController *)self mapView];
  [mapView5 setShowsAttribution:0];

  if (_os_feature_enabled_impl())
  {
    mapView6 = [(CLAuthBaseViewController *)self mapView];
    layer = [mapView6 layer];
    [layer setCornerRadius:SBSUIUserNotificationContentCornerRadius];

    mapView7 = [(CLAuthBaseViewController *)self mapView];
    layer2 = [mapView7 layer];
    [layer2 setMasksToBounds:1];

    mapView8 = [(CLAuthBaseViewController *)self mapView];
    layer3 = [mapView8 layer];
    [layer3 setMaskedCorners:15];
  }

  view = [(CLAuthBaseViewController *)self view];
  mapView9 = [(CLAuthBaseViewController *)self mapView];
  [view addSubview:mapView9];
}

- (CLLocationManager)locManager
{
  locManager = self->_locManager;
  v4 = +[NSNull null];

  if (locManager == v4)
  {
    demandCreateLocationManager = [(CLAuthBaseViewController *)self demandCreateLocationManager];
    v6 = self->_locManager;
    self->_locManager = demandCreateLocationManager;
  }

  v7 = self->_locManager;

  return v7;
}

- (void)viewWillLayoutSubviews
{
  view = [(CLAuthBaseViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(CLAuthBaseViewController *)self view];
  [view2 frame];
  v8 = v7;
  view3 = [(CLAuthBaseViewController *)self view];
  [view3 frame];
  v11 = v10;
  [(CLAuthBaseViewController *)self mapViewHeight];
  v13 = v12;
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView setFrame:{v5, v8, v11, v13}];

  mapView2 = [(CLAuthBaseViewController *)self mapView];

  if (mapView2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      mapView3 = [(CLAuthBaseViewController *)self mapView];
      [mapView3 frame];
      v18 = v17;
      [(CLAuthBaseViewController *)self mapViewHeight];
      v20 = 134218240;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#BaseViewController viewWillLayoutSubviews mapview frame updated width: %f height: %f", &v20, 0x16u);
    }
  }
}

@end