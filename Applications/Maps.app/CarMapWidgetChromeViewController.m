@interface CarMapWidgetChromeViewController
- (BOOL)isDisplayingNavigation;
- (CarMapWidgetChromeViewController)initWithCarSceneType:(int64_t)a3;
- (void)_externalDeviceStateUpdated:(id)a3;
- (void)_tappedMapWidget:(id)a3;
- (void)configureAccessoriesOverlay:(id)a3 forContext:(id)a4;
- (void)didSuppress;
- (void)didUnsuppress;
- (void)prepareMapViewForFirstUse;
- (void)sceneConfigurationDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)windowWantsToZoomInDirection:(int64_t)a3;
@end

@implementation CarMapWidgetChromeViewController

- (void)_tappedMapWidget:(id)a3
{
  v4 = sub_100799BCC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarMapWidgetChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] _tappedMapWidget", buf, 0xCu);
  }

  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:0];
}

- (void)windowWantsToZoomInDirection:(int64_t)a3
{
  v5 = sub_100799BCC();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CarMapWidgetChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  *buf = 138543618;
  v13 = v11;
  v14 = 2048;
  v15 = a3;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] windowWantsToZoomInDirection: called with direction: %ld", buf, 0x16u);

LABEL_11:
  if (a3 == 2)
  {
    [(CarChromeViewController *)self zoomOut];
  }

  else if (a3 == 1)
  {
    [(CarChromeViewController *)self zoomIn];
  }
}

- (void)_externalDeviceStateUpdated:(id)a3
{
  v4 = +[MapsExternalDevice sharedInstance];
  if (![v4 ownsScreen])
  {

LABEL_13:
    v15 = sub_100799BCC();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
LABEL_23:

      chromeDeactivationToken = self->_chromeDeactivationToken;
      self->_chromeDeactivationToken = 0;
      goto LABEL_24;
    }

    v16 = self;
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(CarMapWidgetChromeViewController *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_20;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_20:

LABEL_22:
    *buf = 138543362;
    v23 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] Releasing chrome deactivation token because we own the screen", buf, 0xCu);

    goto LABEL_23;
  }

  BOOL = GEOConfigGetBOOL();

  if (BOOL)
  {
    goto LABEL_13;
  }

  if (self->_chromeDeactivationToken)
  {
    return;
  }

  v6 = sub_100799BCC();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v7 = self;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CarMapWidgetChromeViewController *)v7 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

      goto LABEL_10;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

  *buf = 138543362;
  v23 = v12;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Acquiring chrome deactivation token because we do not own the screen", buf, 0xCu);

LABEL_11:
  v13 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"(no screen ownership)"];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = v13;
LABEL_24:
}

- (void)sceneConfigurationDidChange:(id)a3
{
  v5 = a3;
  if ([(CarChromeViewController *)self sceneType]<= 3)
  {
    v9 = sub_100799BCC();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
LABEL_43:

      goto LABEL_44;
    }

    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_39;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarMapWidgetChromeViewController *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_12;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_12:

LABEL_39:
    v35 = [(CarChromeViewController *)v10 sceneType];
    if (v35 > 6)
    {
      v36 = @".Unknown";
    }

    else
    {
      v36 = off_101657D60[v35];
    }

    *buf = 138543618;
    v41 = v15;
    v42 = 2112;
    v43 = v36;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "[%{public}@] Received chromeConfiguration for unsupported sceneType: %@", buf, 0x16u);

    goto LABEL_43;
  }

  if ([(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration isEqual:v5])
  {
    goto LABEL_44;
  }

  v6 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsHeadingIndicator];
  if (v6 == [v5 showsHeadingIndicator])
  {
    v7 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsSpeedLimit];
    v8 = v7 != [v5 showsSpeedLimit];
  }

  else
  {
    v8 = 1;
  }

  v16 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsETA];
  v17 = [v5 showsETA];
  v18 = v16 != v17;
  if ([(CarChromeViewController *)self sceneType]== 6)
  {
    v19 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration isRenderedInMediaCarousel];
    v20 = v19 ^ [v5 isRenderedInMediaCarousel];
    v21 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration hybridICAlignment];
    if (v21 == [v5 hybridICAlignment])
    {
      v22 = v20;
    }

    else
    {
      v22 = 1;
    }

    if (v16 == v17)
    {
      v18 = v22;
    }

    else
    {
      v18 = 1;
    }
  }

  v23 = sub_100799BCC();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v39 = v8;
    v24 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    log = v23;
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CarMapWidgetChromeViewController *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v37 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_27;
      }
    }

    v37 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_27:

    chromeConfiguration = self->_chromeConfiguration;
    v8 = v39;
    if (v39)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = v30;
    if (v18)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = v32;
    *buf = 138544386;
    v41 = v37;
    v42 = 2112;
    v43 = chromeConfiguration;
    v44 = 2112;
    v45 = v5;
    v46 = 2112;
    v47 = v31;
    v48 = 2112;
    v49 = v33;
    v23 = log;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] Will update chrome configuration from: %@ to :%@. needsAccessoriesUpdate: %@, needsCardsUpdate: %@", buf, 0x34u);
  }

  objc_storeStrong(&self->_chromeConfiguration, a3);
  if (v8)
  {
    v34 = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self reloadAccessoriesForContext:v34 animated:[(CarMapWidgetChromeViewController *)self isViewLoaded]];
  }

  if (v18)
  {
    v9 = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self updateCardsForContext:v9 animated:[(CarMapWidgetChromeViewController *)self isViewLoaded]];
    goto LABEL_43;
  }

LABEL_44:
}

- (void)configureAccessoriesOverlay:(id)a3 forContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CarChromeViewController *)self sceneType]>= 4 && [(CarChromeViewController *)self sceneType]!= 6)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 showsSpeedLimit];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsSpeedLimit];
    if (v9 > 1)
    {
      if (v9 != 3)
      {
        if (v9 != 2)
        {
          goto LABEL_17;
        }

        v8 = 0;
LABEL_14:
        v10 = 1;
LABEL_16:
        [v6 setShowSpeedSign:v8];
        [v6 setSpeedSignIgnoresUserSettings:v10];
        goto LABEL_17;
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
LABEL_17:
        if (objc_opt_respondsToSelector())
        {
          v11 = [v7 showsHeadingIndicator];
        }

        else
        {
          v11 = 0;
        }

        v12 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsHeadingIndicator];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v13 = v6;
            v14 = 0;
LABEL_28:
            [v13 setShowHeadingIndicator:v14];
            v15 = v6;
            v16 = 1;
            goto LABEL_29;
          }

          if (v12 != 3)
          {
            goto LABEL_30;
          }
        }

        else if (v12)
        {
          if (v12 != 1)
          {
            goto LABEL_30;
          }

          v13 = v6;
          v14 = v11;
          goto LABEL_28;
        }

        [v6 setShowHeadingIndicator:v11];
        v15 = v6;
        v16 = 0;
LABEL_29:
        [v15 setHeadingIndicatorIgnoresUserSettings:v16];
        goto LABEL_30;
      }

      goto LABEL_14;
    }

    v10 = 0;
    goto LABEL_16;
  }

  v17.receiver = self;
  v17.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v17 configureAccessoriesOverlay:v6 forContext:v7];
LABEL_30:
}

- (BOOL)isDisplayingNavigation
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = v5;

  v7 = [v6 _maps_firstContextOfClass:objc_opt_class()];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 _maps_firstContextOfClass:objc_opt_class()];
    v8 = v9 != 0;
  }

  return v8;
}

- (void)prepareMapViewForFirstUse
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v7 prepareMapViewForFirstUse];
  v3 = [(ChromeViewController *)self mapView];
  v4 = [v3 _mapLayer];
  [v4 setApplicationUILayout:2];

  v5 = [(ChromeViewController *)self mapView];
  v6 = [v5 _mapLayer];
  [v6 setUseSmallCache:1];
}

- (void)didUnsuppress
{
  v16.receiver = self;
  v16.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v16 didUnsuppress];
  v3 = [(ChromeViewController *)self mapView];
  [v3 setUserInteractionEnabled:0];

  v4 = [(CarChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [(CarChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  v7 = sub_100799BCC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_13;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarMapWidgetChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_11;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_11:

LABEL_13:
    *buf = 138543362;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] is unsuppressing. Will try to activate RG for chrome.", buf, 0xCu);
  }

  v14 = +[CarDisplayController sharedInstance];
  v15 = [v14 routeGeniusManager];
  [v15 activateIfPossibleForChrome:self];
}

- (void)didSuppress
{
  v12.receiver = self;
  v12.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v12 didSuppress];
  v3 = sub_100799BCC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarMapWidgetChromeViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] is suppressing. Will deactivate RG for chrome.", buf, 0xCu);
  }

  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 routeGeniusManager];
  [v11 deactivateForChrome:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CarMapWidgetChromeViewController;
  [(CarMapWidgetChromeViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(CarChromeViewController *)self sceneType]== 6)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EBFE28;
    v8[3] = &unk_101657D40;
    objc_copyWeak(&v9, &location);
    [v7 animateAlongsideTransition:0 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v7 viewDidLoad];
  v3 = [(CarMapWidgetChromeViewController *)self view];
  [v3 removeAllGestureRecognizers];

  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedMapWidget:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v4;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  v6 = [(CarMapWidgetChromeViewController *)self view];
  [v6 addGestureRecognizer:self->_tapGesture];
}

- (CarMapWidgetChromeViewController)initWithCarSceneType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CarMapWidgetChromeViewController;
  v4 = [(CarChromeViewController *)&v8 initWithCarSceneType:?];
  v5 = v4;
  if ((a3 - 4) >= 3 && v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_externalDeviceStateUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
  }

  return v5;
}

@end