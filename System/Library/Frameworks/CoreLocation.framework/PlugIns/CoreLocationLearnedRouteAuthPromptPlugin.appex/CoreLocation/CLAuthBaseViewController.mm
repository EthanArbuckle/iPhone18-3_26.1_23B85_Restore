@interface CLAuthBaseViewController
- (CLLocationManager)locManager;
- (double)_accessibilityMaximumWidthForScreenSize:(CGSize)a3;
- (id)allowedClassesForUnarchiving;
- (id)extensionInputItems;
- (void)configureMapViewWithHeightOverride:(double)a3;
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
  v4 = [(CLAuthBaseViewController *)self extensionInputItems];
  v5 = [v4 firstObject];

  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"clientName"];
  [(CLAuthBaseViewController *)self setAppName:v7];

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"clientDictionary"];
  [(CLAuthBaseViewController *)self setClientDict:v9];

  v10 = [(CLAuthBaseViewController *)self clientDict];

  if (v10)
  {
    v11 = [(CLAuthBaseViewController *)self clientDict];
    [(CLAuthBaseViewController *)self setAuthMask:[CLLocationManager entityAuthorizationForLocationDictionary:v11]];

    v12 = [(CLAuthBaseViewController *)self clientDict];
    v13 = [v12 objectForKey:@"BundleId"];
    [(CLAuthBaseViewController *)self setBundleId:v13];
  }

  v14 = [v5 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"archivedPayload"];

  if (v15)
  {
    v16 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v15 error:0];
    v17 = [(CLAuthBaseViewController *)self allowedClassesForUnarchiving];
    v18 = [v16 decodeObjectOfClasses:v17 forKey:NSKeyedArchiveRootObjectKey];
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
  v2 = [(CLAuthBaseViewController *)self extensionContext];
  v3 = [v2 inputItems];

  return v3;
}

- (double)_accessibilityMaximumWidthForScreenSize:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  return a3.width + -64.0;
}

- (void)configureMapViewWithHeightOverride:(double)a3
{
  v5 = +[UIWindow keyWindow];
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = *&v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#BaseViewController loadView<Start> %@", buf, 0xCu);
  }

  if ([v7 containsString:@"Accessibility"])
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
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  [(CLAuthBaseViewController *)self setPreferredContentSize:v9, a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v41 = v9;
    v42 = 2048;
    v43 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#BaseViewController mapViewDimensions %.5f %.5f", buf, 0x16u);
  }

  v18 = [(CLAuthBaseViewController *)self locManager];
  v19 = v18 == 0;

  if (v19)
  {
    v21 = [[MKMapView alloc] initWithFrame:{0.0, 0.0, v9, a3}];
    [(CLAuthBaseViewController *)self setMapView:v21];
  }

  else
  {
    v20 = [MKMapView alloc];
    v21 = [(CLAuthBaseViewController *)self locManager];
    v22 = [v20 initWithFrame:v21 locationManager:{0.0, 0.0, v9, a3}];
    [(CLAuthBaseViewController *)self setMapView:v22];
  }

  [(CLAuthBaseViewController *)self setMapViewHeight:a3];
  v23 = [(CLAuthBaseViewController *)self mapView];
  [v23 _setShowsAppleLogo:0];

  v24 = [(CLAuthBaseViewController *)self mapView];
  [v24 setDelegate:self];

  v25 = [(CLAuthBaseViewController *)self mapView];
  [v25 setMapType:105];

  v26 = [(CLAuthBaseViewController *)self mapView];
  [v26 setUserInteractionEnabled:0];

  v27 = [(CLAuthBaseViewController *)self mapView];
  [v27 setShowsAttribution:0];

  if (_os_feature_enabled_impl())
  {
    v28 = [(CLAuthBaseViewController *)self mapView];
    v29 = [v28 layer];
    [v29 setCornerRadius:SBSUIUserNotificationContentCornerRadius];

    v30 = [(CLAuthBaseViewController *)self mapView];
    v31 = [v30 layer];
    [v31 setMasksToBounds:1];

    v32 = [(CLAuthBaseViewController *)self mapView];
    v33 = [v32 layer];
    [v33 setMaskedCorners:15];
  }

  v34 = [(CLAuthBaseViewController *)self view];
  v35 = [(CLAuthBaseViewController *)self mapView];
  [v34 addSubview:v35];
}

- (CLLocationManager)locManager
{
  locManager = self->_locManager;
  v4 = +[NSNull null];

  if (locManager == v4)
  {
    v5 = [(CLAuthBaseViewController *)self demandCreateLocationManager];
    v6 = self->_locManager;
    self->_locManager = v5;
  }

  v7 = self->_locManager;

  return v7;
}

- (void)viewWillLayoutSubviews
{
  v3 = [(CLAuthBaseViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(CLAuthBaseViewController *)self view];
  [v6 frame];
  v8 = v7;
  v9 = [(CLAuthBaseViewController *)self view];
  [v9 frame];
  v11 = v10;
  [(CLAuthBaseViewController *)self mapViewHeight];
  v13 = v12;
  v14 = [(CLAuthBaseViewController *)self mapView];
  [v14 setFrame:{v5, v8, v11, v13}];

  v15 = [(CLAuthBaseViewController *)self mapView];

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v16 = [(CLAuthBaseViewController *)self mapView];
      [v16 frame];
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