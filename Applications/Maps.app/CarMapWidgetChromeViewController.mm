@interface CarMapWidgetChromeViewController
- (BOOL)isDisplayingNavigation;
- (CarMapWidgetChromeViewController)initWithCarSceneType:(int64_t)type;
- (void)_externalDeviceStateUpdated:(id)updated;
- (void)_tappedMapWidget:(id)widget;
- (void)configureAccessoriesOverlay:(id)overlay forContext:(id)context;
- (void)didSuppress;
- (void)didUnsuppress;
- (void)prepareMapViewForFirstUse;
- (void)sceneConfigurationDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)windowWantsToZoomInDirection:(int64_t)direction;
@end

@implementation CarMapWidgetChromeViewController

- (void)_tappedMapWidget:(id)widget
{
  v4 = sub_100799BCC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] _tappedMapWidget", buf, 0xCu);
  }

  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:0];
}

- (void)windowWantsToZoomInDirection:(int64_t)direction
{
  v5 = sub_100799BCC();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
  *buf = 138543618;
  v13 = selfCopy;
  v14 = 2048;
  directionCopy = direction;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] windowWantsToZoomInDirection: called with direction: %ld", buf, 0x16u);

LABEL_11:
  if (direction == 2)
  {
    [(CarChromeViewController *)self zoomOut];
  }

  else if (direction == 1)
  {
    [(CarChromeViewController *)self zoomIn];
  }
}

- (void)_externalDeviceStateUpdated:(id)updated
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

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy, v20];

        goto LABEL_20;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy];
LABEL_20:

LABEL_22:
    *buf = 138543362;
    v23 = selfCopy;
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

  selfCopy2 = self;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CarMapWidgetChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy2, v11];

      goto LABEL_10;
    }
  }

  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy2];
LABEL_10:

  *buf = 138543362;
  v23 = selfCopy2;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Acquiring chrome deactivation token because we do not own the screen", buf, 0xCu);

LABEL_11:
  v13 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"(no screen ownership)"];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = v13;
LABEL_24:
}

- (void)sceneConfigurationDidChange:(id)change
{
  changeCopy = change;
  if ([(CarChromeViewController *)self sceneType]<= 3)
  {
    topContext2 = sub_100799BCC();
    if (!os_log_type_enabled(topContext2, OS_LOG_TYPE_FAULT))
    {
LABEL_43:

      goto LABEL_44;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_39;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy, v14];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy];
LABEL_12:

LABEL_39:
    sceneType = [(CarChromeViewController *)selfCopy sceneType];
    if (sceneType > 6)
    {
      v36 = @".Unknown";
    }

    else
    {
      v36 = off_101657D60[sceneType];
    }

    *buf = 138543618;
    v41 = selfCopy;
    v42 = 2112;
    v43 = v36;
    _os_log_impl(&_mh_execute_header, topContext2, OS_LOG_TYPE_FAULT, "[%{public}@] Received chromeConfiguration for unsupported sceneType: %@", buf, 0x16u);

    goto LABEL_43;
  }

  if ([(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration isEqual:changeCopy])
  {
    goto LABEL_44;
  }

  showsHeadingIndicator = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsHeadingIndicator];
  if (showsHeadingIndicator == [changeCopy showsHeadingIndicator])
  {
    showsSpeedLimit = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsSpeedLimit];
    v8 = showsSpeedLimit != [changeCopy showsSpeedLimit];
  }

  else
  {
    v8 = 1;
  }

  showsETA = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsETA];
  showsETA2 = [changeCopy showsETA];
  v18 = showsETA != showsETA2;
  if ([(CarChromeViewController *)self sceneType]== 6)
  {
    isRenderedInMediaCarousel = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration isRenderedInMediaCarousel];
    v20 = isRenderedInMediaCarousel ^ [changeCopy isRenderedInMediaCarousel];
    hybridICAlignment = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration hybridICAlignment];
    if (hybridICAlignment == [changeCopy hybridICAlignment])
    {
      v22 = v20;
    }

    else
    {
      v22 = 1;
    }

    if (showsETA == showsETA2)
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
    selfCopy2 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    log = v23;
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CarMapWidgetChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy2, v28];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy2];
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
    v41 = selfCopy2;
    v42 = 2112;
    v43 = chromeConfiguration;
    v44 = 2112;
    v45 = changeCopy;
    v46 = 2112;
    v47 = v31;
    v48 = 2112;
    v49 = v33;
    v23 = log;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] Will update chrome configuration from: %@ to :%@. needsAccessoriesUpdate: %@, needsCardsUpdate: %@", buf, 0x34u);
  }

  objc_storeStrong(&self->_chromeConfiguration, change);
  if (v8)
  {
    topContext = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self reloadAccessoriesForContext:topContext animated:[(CarMapWidgetChromeViewController *)self isViewLoaded]];
  }

  if (v18)
  {
    topContext2 = [(CarChromeViewController *)self topContext];
    [(CarChromeViewController *)self updateCardsForContext:topContext2 animated:[(CarMapWidgetChromeViewController *)self isViewLoaded]];
    goto LABEL_43;
  }

LABEL_44:
}

- (void)configureAccessoriesOverlay:(id)overlay forContext:(id)context
{
  overlayCopy = overlay;
  contextCopy = context;
  if ([(CarChromeViewController *)self sceneType]>= 4 && [(CarChromeViewController *)self sceneType]!= 6)
  {
    if (objc_opt_respondsToSelector())
    {
      showsSpeedLimit = [contextCopy showsSpeedLimit];
    }

    else
    {
      showsSpeedLimit = 0;
    }

    showsSpeedLimit2 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsSpeedLimit];
    if (showsSpeedLimit2 > 1)
    {
      if (showsSpeedLimit2 != 3)
      {
        if (showsSpeedLimit2 != 2)
        {
          goto LABEL_17;
        }

        showsSpeedLimit = 0;
LABEL_14:
        v10 = 1;
LABEL_16:
        [overlayCopy setShowSpeedSign:showsSpeedLimit];
        [overlayCopy setSpeedSignIgnoresUserSettings:v10];
        goto LABEL_17;
      }
    }

    else if (showsSpeedLimit2)
    {
      if (showsSpeedLimit2 != 1)
      {
LABEL_17:
        if (objc_opt_respondsToSelector())
        {
          showsHeadingIndicator = [contextCopy showsHeadingIndicator];
        }

        else
        {
          showsHeadingIndicator = 0;
        }

        showsHeadingIndicator2 = [(CarInstrumentClusterChromeConfiguration *)self->_chromeConfiguration showsHeadingIndicator];
        if (showsHeadingIndicator2 > 1)
        {
          if (showsHeadingIndicator2 == 2)
          {
            v13 = overlayCopy;
            v14 = 0;
LABEL_28:
            [v13 setShowHeadingIndicator:v14];
            v15 = overlayCopy;
            v16 = 1;
            goto LABEL_29;
          }

          if (showsHeadingIndicator2 != 3)
          {
            goto LABEL_30;
          }
        }

        else if (showsHeadingIndicator2)
        {
          if (showsHeadingIndicator2 != 1)
          {
            goto LABEL_30;
          }

          v13 = overlayCopy;
          v14 = showsHeadingIndicator;
          goto LABEL_28;
        }

        [overlayCopy setShowHeadingIndicator:showsHeadingIndicator];
        v15 = overlayCopy;
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
  [(CarChromeViewController *)&v17 configureAccessoriesOverlay:overlayCopy forContext:contextCopy];
LABEL_30:
}

- (BOOL)isDisplayingNavigation
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v4 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v6 = contexts;

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
  mapView = [(ChromeViewController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setApplicationUILayout:2];

  mapView2 = [(ChromeViewController *)self mapView];
  _mapLayer2 = [mapView2 _mapLayer];
  [_mapLayer2 setUseSmallCache:1];
}

- (void)didUnsuppress
{
  v16.receiver = self;
  v16.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v16 didUnsuppress];
  mapView = [(ChromeViewController *)self mapView];
  [mapView setUserInteractionEnabled:0];

  topContext = [(CarChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topContext2 = [(CarChromeViewController *)self topContext];
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
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_13;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_11;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_11:

LABEL_13:
    *buf = 138543362;
    v18 = selfCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] is unsuppressing. Will try to activate RG for chrome.", buf, 0xCu);
  }

  v14 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v14 routeGeniusManager];
  [routeGeniusManager activateIfPossibleForChrome:self];
}

- (void)didSuppress
{
  v12.receiver = self;
  v12.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v12 didSuppress];
  v3 = sub_100799BCC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarMapWidgetChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] is suppressing. Will deactivate RG for chrome.", buf, 0xCu);
  }

  v10 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v10 routeGeniusManager];
  [routeGeniusManager deactivateForChrome:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = CarMapWidgetChromeViewController;
  [(CarMapWidgetChromeViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(CarChromeViewController *)self sceneType]== 6)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100EBFE28;
    v8[3] = &unk_101657D40;
    objc_copyWeak(&v9, &location);
    [coordinatorCopy animateAlongsideTransition:0 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CarMapWidgetChromeViewController;
  [(CarChromeViewController *)&v7 viewDidLoad];
  view = [(CarMapWidgetChromeViewController *)self view];
  [view removeAllGestureRecognizers];

  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedMapWidget:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v4;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  view2 = [(CarMapWidgetChromeViewController *)self view];
  [view2 addGestureRecognizer:self->_tapGesture];
}

- (CarMapWidgetChromeViewController)initWithCarSceneType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = CarMapWidgetChromeViewController;
  v4 = [(CarChromeViewController *)&v8 initWithCarSceneType:?];
  v5 = v4;
  if ((type - 4) >= 3 && v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_externalDeviceStateUpdated:" name:@"MapsExternalDeviceUpdated" object:0];
  }

  return v5;
}

@end