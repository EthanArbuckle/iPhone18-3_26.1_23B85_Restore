@interface CarHybridInstrumentClusterNavigationModeController
- (BOOL)shouldShowETATray;
- (BOOL)shouldShowGuidanceCard;
- (BOOL)showsHeadingIndicator;
- (BOOL)showsSpeedLimit;
- (CGSize)availableSize;
- (CarGuidanceCardViewController)guidanceCardController;
- (CarHybridInstrumentClusterNavigationModeController)initWithPresentationType:(unint64_t)type;
- (CarMapWidgetETACardViewController)etaCardController;
- (ChromeViewController)chromeViewController;
- (GuidanceObserver)guidanceObserver;
- (id)_mapWidgetChromeViewController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (id)upcomingWaypoints;
- (void)_setupGuidanceDisplays:(BOOL)displays;
- (void)_updateCardsForScreenInfoChangeIfNecessary;
- (void)_updateDisplayETA;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeCenterConsoleCameraStyle:(int64_t)style;
- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeInstrumentClusterCameraStyle:(int64_t)style;
- (void)carDisplayConfigDidChangeNotification:(id)notification;
- (void)chromeConfigurationDidUpdateNotification:(id)notification;
- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change;
- (void)configureCard:(id)card forKey:(id)key;
- (void)configureNavigationDisplay:(id)display;
- (void)dealloc;
- (void)etaCardSign:(id)sign didSelectAction:(unint64_t)action;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)refreshCameraTypeAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated;
- (void)setCurrentRoute:(id)route;
- (void)setHasArrived:(BOOL)arrived;
- (void)setHasETAInfo:(BOOL)info;
- (void)updateCardsAnimated:(BOOL)animated;
@end

@implementation CarHybridInstrumentClusterNavigationModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] CARSessionUpdateConfiguration: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA3E50;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] CARSessionDidDisconnect: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA3FB8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = connectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] CARSessionDidConnect: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA40DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateCardsForScreenInfoChangeIfNecessary
{
  currentScreenInfo = [(CarHybridInstrumentClusterNavigationModeController *)self currentScreenInfo];
  identifier = [currentScreenInfo identifier];
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  screen = [window screen];
  _car_screenInfo = [screen _car_screenInfo];
  identifier2 = [_car_screenInfo identifier];
  v10 = identifier;
  v11 = identifier2;
  if (v10 | v11)
  {
    v12 = v11;
    v13 = [v10 isEqual:v11];

    if (v13)
    {
      return;
    }

    currentScreenInfo = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
    [currentScreenInfo setNeedsUpdateComponent:@"cards" animated:1];
  }

  else
  {
  }
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA4318;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeCenterConsoleCameraStyle:(int64_t)style
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation == 2)
  {
    [(CarHybridInstrumentClusterNavigationModeController *)self setCameraStyle:style animated:1];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeInstrumentClusterCameraStyle:(int64_t)style
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation <= 1)
  {
    [(CarHybridInstrumentClusterNavigationModeController *)self setCameraStyle:style animated:1];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)carDisplayConfigDidChangeNotification:(id)notification
{
  carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [carChromeViewController setNeedsUpdateComponent:@"statusBanner" animated:0];
}

- (void)chromeConfigurationDidUpdateNotification:(id)notification
{
  [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [carChromeViewController reloadAccessoriesForContext:self animated:1];
}

- (CGSize)availableSize
{
  guidanceCardController = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [guidanceCardController availableCardSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)upcomingWaypoints
{
  currentRoute = [(CarHybridInstrumentClusterNavigationModeController *)self currentRoute];
  v3 = +[MNNavigationService sharedService];
  v4 = [currentRoute waypointsAfterStepIndex:objc_msgSend(v3 legIndex:{"stepIndex"), 0}];

  return v4;
}

- (void)etaCardSign:(id)sign didSelectAction:(unint64_t)action
{
  v4 = sub_10006D178();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "[CarHybridInstrumentClusterNavigationModeController etaCardSign:didSelectAction:]";
    v9 = 2080;
    v10 = "CarHybridInstrumentClusterNavigationModeController.m";
    v11 = 1024;
    v12 = 576;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[NSThread callStackSymbols];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  v6 = [service arrivalState] == 5;

  [(CarHybridInstrumentClusterNavigationModeController *)self setHasArrived:v6];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    route = [serviceCopy route];
    [(CarHybridInstrumentClusterNavigationModeController *)self setCurrentRoute:route];
  }
}

- (void)updateCardsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [carChromeViewController updateCardsForContext:self animated:animatedCopy];

  carChromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [carChromeViewController2 setNeedsUpdateComponent:@"navigationDisplay" animated:animatedCopy];
}

- (BOOL)shouldShowETATray
{
  _mapWidgetChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  chromeConfiguration = [_mapWidgetChromeViewController chromeConfiguration];
  showsETA = [chromeConfiguration showsETA];
  LOBYTE(v6) = showsETA != 2;

  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterAlignmentStyle = [window _car_hybridInstrumentClusterAlignmentStyle];

  chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view2 = [chromeViewController2 view];
  window2 = [view2 window];
  _car_hybridInstrumentClusterLayout = [window2 _car_hybridInstrumentClusterLayout];

  if (!_car_hybridInstrumentClusterAlignmentStyle && _car_hybridInstrumentClusterLayout == 2)
  {
    return v6;
  }

  cameraStyle = self->_cameraStyle;
  if (cameraStyle == 2)
  {
    if (GEOConfigGetBOOL())
    {
      BOOL = 1;
      goto LABEL_10;
    }

    cameraStyle = self->_cameraStyle;
  }

  if (cameraStyle == 1)
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

LABEL_10:
  v17 = (_car_hybridInstrumentClusterLayout != 0) & BOOL;
  if ([(CarHybridInstrumentClusterNavigationModeController *)self hasArrived])
  {
    v6 = 0;
  }

  else
  {
    hasETAInfo = [(CarHybridInstrumentClusterNavigationModeController *)self hasETAInfo];
    if (showsETA == 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = hasETAInfo;
    }

    v6 = v19 & v17;
  }

  currentShouldShowETATray = self->_currentShouldShowETATray;
  v21 = [NSNumber numberWithBool:v6];
  v22 = currentShouldShowETATray;
  v23 = v21;
  if (v22 | v23)
  {
    v24 = v23;
    v25 = [v22 isEqual:v23];

    if ((v25 & 1) == 0)
    {
      v26 = sub_100BA3DFC();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = @"?";
        v28 = @"Wide";
        if (_car_hybridInstrumentClusterAlignmentStyle != 1)
        {
          v28 = @"?";
        }

        if (!_car_hybridInstrumentClusterAlignmentStyle)
        {
          v28 = @"Narrow";
        }

        v36 = v28;
        if (_car_hybridInstrumentClusterLayout <= 2)
        {
          v27 = off_10163C1E0[_car_hybridInstrumentClusterLayout];
        }

        v35 = showsETA != 2;
        chromeViewController3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        view3 = [chromeViewController3 view];
        window3 = [view3 window];
        *buf = 134350850;
        selfCopy = self;
        v39 = 2112;
        v40 = v36;
        v41 = 2112;
        v42 = v27;
        v43 = 2112;
        v44 = window3;
        v45 = 1024;
        hasArrived = [(CarHybridInstrumentClusterNavigationModeController *)self hasArrived];
        v47 = 1024;
        v48 = v17;
        v49 = 1024;
        hasETAInfo2 = [(CarHybridInstrumentClusterNavigationModeController *)self hasETAInfo];
        v51 = 1024;
        v52 = v35;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Configuring ETA card with alignment style: %@, layout: %@, window: %@, hasArrived: %d, showETATray: %d, hasETAInfo: %d, chromeConfigEnabled: %d", buf, 0x42u);
      }

      v32 = [NSNumber numberWithBool:v6];
      v33 = self->_currentShouldShowETATray;
      self->_currentShouldShowETATray = v32;
    }
  }

  return v6;
}

- (BOOL)shouldShowGuidanceCard
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterAlignmentStyle = [window _car_hybridInstrumentClusterAlignmentStyle];

  if (GEOConfigGetBOOL() && self->_cameraStyle == 2)
  {
    v7 = 1;
  }

  else
  {
    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      BOOL = GEOConfigGetBOOL();
      v7 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    v7 = self->_cameraStyle == 1;
  }

  BOOL = GEOConfigGetBOOL();
  v9 = 0;
  if (BOOL && v7)
  {
    v9 = [(CarHybridInstrumentClusterNavigationModeController *)self hasArrived]^ 1;
    BOOL = 1;
    v7 = 1;
  }

LABEL_10:
  currentShouldShowGuidanceCard = self->_currentShouldShowGuidanceCard;
  v11 = [NSNumber numberWithBool:v9];
  v12 = currentShouldShowGuidanceCard;
  v13 = v11;
  if (v12 | v13)
  {
    v14 = v13;
    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      v16 = sub_100BA3DFC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = @"?";
        if (_car_hybridInstrumentClusterAlignmentStyle == 1)
        {
          v17 = @"Wide";
        }

        if (_car_hybridInstrumentClusterAlignmentStyle)
        {
          v18 = v17;
        }

        else
        {
          v18 = @"Narrow";
        }

        chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        view2 = [chromeViewController2 view];
        window2 = [view2 window];
        v25 = 134350338;
        selfCopy = self;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = window2;
        v31 = 1024;
        hasArrived = [(CarHybridInstrumentClusterNavigationModeController *)self hasArrived];
        v33 = 1024;
        v34 = v7;
        v35 = 1024;
        v36 = BOOL;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Configuring guidance card with alignment style: %@, window: %@, hasArrived: %d, showGuidanceCard: %d, geoDefaultEnabled: %d", &v25, 0x32u);
      }

      v22 = [NSNumber numberWithBool:v9];
      v23 = self->_currentShouldShowGuidanceCard;
      self->_currentShouldShowGuidanceCard = v22;
    }
  }

  return v9;
}

- (id)_mapWidgetChromeViewController
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      selfCopy = "[CarHybridInstrumentClusterNavigationModeController _mapWidgetChromeViewController]";
      v14 = 2080;
      v15 = "CarHybridInstrumentClusterNavigationModeController.m";
      v16 = 1024;
      v17 = 495;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v12 = 138412290;
        selfCopy = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v9 = sub_100BA3DFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      chromeViewController3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
      v12 = 134349314;
      selfCopy = self;
      v14 = 2112;
      v15 = chromeViewController3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] chromeViewController (%@) was not a CarMapWidgetChromeViewController", &v12, 0x16u);
    }

    chromeViewController2 = 0;
  }

  return chromeViewController2;
}

- (void)setHasETAInfo:(BOOL)info
{
  if (self->_hasETAInfo != info)
  {
    infoCopy = info;
    self->_hasETAInfo = info;
    v5 = sub_100BA3DFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349312;
      selfCopy = self;
      v8 = 1024;
      v9 = infoCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating has eta info: %d", &v6, 0x12u);
    }

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)setHasArrived:(BOOL)arrived
{
  if (self->_hasArrived != arrived)
  {
    arrivedCopy = arrived;
    self->_hasArrived = arrived;
    v5 = sub_100BA3DFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349312;
      selfCopy = self;
      v8 = 1024;
      v9 = arrivedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating has arrived: %d", &v6, 0x12u);
    }

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change
{
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] CarNavigationDisplay configuration changed", &v7, 0xCu);
  }

  carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [carChromeViewController updateCardsForContext:self animated:0];
}

- (void)_setupGuidanceDisplays:(BOOL)displays
{
  v4 = sub_100BA3DFC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Setting up guidance displays", &v12, 0xCu);
  }

  guidanceObserver = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceObserver];
  guidanceCardController = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [guidanceObserver addOutlet:guidanceCardController];

  guidanceCardController2 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  isViewLoaded = [guidanceCardController2 isViewLoaded];

  if ((isViewLoaded & 1) == 0)
  {
    guidanceCardController3 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
    view = [guidanceCardController3 view];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:0];
  }

  guidanceCardController4 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [guidanceObserver repeatAllUpdatesForOutlet:guidanceCardController4];
}

- (GuidanceObserver)guidanceObserver
{
  v2 = +[CarDisplayController sharedInstance];
  guidanceObserver = [v2 guidanceObserver];

  return guidanceObserver;
}

- (CarMapWidgetETACardViewController)etaCardController
{
  etaCardController = self->_etaCardController;
  if (!etaCardController)
  {
    v4 = [[CarMapWidgetETACardViewController alloc] initWithDestination:1 presentationType:self->_presentationType];
    v5 = self->_etaCardController;
    self->_etaCardController = v4;

    etaCardController = self->_etaCardController;
  }

  return etaCardController;
}

- (CarGuidanceCardViewController)guidanceCardController
{
  guidanceCardController = self->_guidanceCardController;
  if (!guidanceCardController)
  {
    v4 = [[CarGuidanceCardViewController alloc] initWithDestination:4 presentationType:self->_presentationType guidanceCardSizeProvider:self interactionDelegate:0];
    v5 = self->_guidanceCardController;
    self->_guidanceCardController = v4;

    guidanceCardController = self->_guidanceCardController;
  }

  return guidanceCardController;
}

- (void)setCurrentRoute:(id)route
{
  routeCopy = route;
  v6 = self->_currentRoute;
  v7 = routeCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BA3DFC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        uniqueRouteID = [v7 uniqueRouteID];
        uUIDString = [uniqueRouteID UUIDString];
        v14 = 134349314;
        selfCopy = self;
        v16 = 2112;
        v17 = uUIDString;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating route: %@", &v14, 0x16u);
      }

      objc_storeStrong(&self->_currentRoute, route);
      carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
      navigationDisplay = [carChromeViewController navigationDisplay];
      [navigationDisplay updateWithRoute:self->_currentRoute];
    }
  }
}

- (void)_updateDisplayETA
{
  v11 = +[MNNavigationService sharedService];
  if ([v11 navigationState] != 5)
  {
    v3 = [GuidanceETA alloc];
    displayEtaInfo = [v11 displayEtaInfo];
    remainingDistanceInfo = [v11 remainingDistanceInfo];
    batteryChargeInfo = [v11 batteryChargeInfo];
    upcomingStop = [v11 upcomingStop];
    timezone = [upcomingStop timezone];
    v9 = -[GuidanceETA initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:](v3, "initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:", displayEtaInfo, remainingDistanceInfo, batteryChargeInfo, timezone, [v11 navigationTransportType]);

    etaCardController = [(CarHybridInstrumentClusterNavigationModeController *)self etaCardController];
    [etaCardController setLatestETA:v9];

    [(CarHybridInstrumentClusterNavigationModeController *)self setHasETAInfo:v9 != 0];
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  v8 = sub_100BA3DFC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    view = [chromeViewController view];
    window = [view window];
    _car_debugDescription = [window _car_debugDescription];
    [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v11 = v99 = cardCopy;
    [v11 view];
    v13 = v12 = keyCopy;
    window2 = [v13 window];
    screen = [window2 screen];
    _car_debugDescription2 = [screen _car_debugDescription];
    *buf = 134349826;
    selfCopy = self;
    v104 = 2112;
    v105 = v12;
    v106 = 2112;
    v107 = _car_debugDescription;
    v108 = 2112;
    v109 = _car_debugDescription2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Configuring card: %@ with window: %@, screen: %@", buf, 0x2Au);

    keyCopy = v12;
    cardCopy = v99;
  }

  chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view2 = [chromeViewController2 view];
  window3 = [view2 window];
  screen2 = [window3 screen];
  _car_screenInfo = [screen2 _car_screenInfo];
  [(CarHybridInstrumentClusterNavigationModeController *)self setCurrentScreenInfo:_car_screenInfo];

  chromeViewController3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view3 = [chromeViewController3 view];
  window4 = [view3 window];
  _car_shouldHorizontallyCenterMapInsets = [window4 _car_shouldHorizontallyCenterMapInsets];

  presentationType = self->_presentationType;
  if ([keyCopy isEqualToString:@"Guidance"])
  {
    v100 = _car_shouldHorizontallyCenterMapInsets;
    guidanceCardController = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
    [cardCopy setContent:guidanceCardController];

    v28 = objc_alloc_init(CarCardLayout);
    selfCopy2 = self;
    chromeViewController4 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    view4 = [chromeViewController4 view];
    window5 = [view4 window];
    _car_hybridInstrumentClusterAlignment = [window5 _car_hybridInstrumentClusterAlignment];

    if (_car_hybridInstrumentClusterAlignment == 2)
    {
      v55 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v55 setEdgePosition:0];
      v56 = v55;
      v57 = 2;
    }

    else
    {
      if (_car_hybridInstrumentClusterAlignment != 1)
      {
        if (_car_hybridInstrumentClusterAlignment)
        {
          goto LABEL_106;
        }

        v34 = objc_alloc_init(CarCardLayout);
        [(CarCardLayout *)v34 setEdgePosition:1];
        [(CarCardLayout *)v34 setCornerPosition:0];
        [(CarCardLayout *)v34 setPrimaryAxis:1];
        [(CarCardLayout *)v34 setPinnedEdges:0];
        [(CarCardLayout *)v34 setPrimaryAxisFillMode:0];
        LODWORD(v35) = 1.0;
        [(CarCardLayout *)v34 setPrimaryAxisFillModePriority:v35];
        [(CarCardLayout *)v34 setSecondaryAxisFillMode:3];
        LODWORD(v36) = 1148846080;
        [(CarCardLayout *)v34 setSecondaryAxisFillModePriority:v36];
        [(CarCardLayout *)v34 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
        [(CarCardLayout *)v34 setFlipForRightHandDrive:1];
        v37 = v34;
        primaryAxis = [(CarCardLayout *)v37 primaryAxis];
        cornerPosition = [(CarCardLayout *)v37 cornerPosition];
        if (primaryAxis == 1)
        {
          if (cornerPosition == 4 || [(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 edgePosition]== 2)
          {
            v40 = 8;
          }

          else
          {
            v40 = 0;
          }

          if ([(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 cornerPosition]== 2 || [(CarCardLayout *)v37 edgePosition]== 8)
          {
            v40 |= 2uLL;
          }

          if ([(CarCardLayout *)v37 edgePosition]== 1)
          {
            v40 |= 4uLL;
          }

          v41 = v40 | ([(CarCardLayout *)v37 edgePosition]== 4);
        }

        else
        {
          v75 = cornerPosition == 4 || [(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 edgePosition]== 4;
          if ([(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 cornerPosition]== 2 || [(CarCardLayout *)v37 edgePosition]== 1)
          {
            v75 |= 4uLL;
          }

          if ([(CarCardLayout *)v37 edgePosition]== 2)
          {
            v75 |= 8uLL;
          }

          if ([(CarCardLayout *)v37 edgePosition]== 8)
          {
            v41 = v75 | 2;
          }

          else
          {
            v41 = v75;
          }
        }

        [(CarCardLayout *)v37 setEdgesAffectingMapInsets:v41];
        [(CarCardLayout *)v37 setHorizontallyCenterMapInsets:0];

        GEOConfigGetDouble();
        v28 = [NSNumber numberWithDouble:?];
        [(CarCardLayout *)v37 setSecondaryAxisFillUpperLimit:v28];
LABEL_105:

        v28 = v37;
LABEL_106:
        v76 = selfCopy2;
        if (presentationType == 2)
        {
          [(CarCardLayout *)v28 setMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
          chromeViewController5 = [(CarHybridInstrumentClusterNavigationModeController *)selfCopy2 chromeViewController];
          view5 = [chromeViewController5 view];
          window6 = [view5 window];
          screen3 = [window6 screen];
          [screen3 _car_pixelsToPoints:436.0];
          v81 = [NSNumber numberWithDouble:?];
          [(CarCardLayout *)v28 setSecondaryAxisFillUpperLimit:v81];

          v82 = v100;
        }

        else
        {
          v82 = v100;
          if (presentationType != 1)
          {
LABEL_111:
            [(CarCardLayout *)v28 setHorizontallyCenterMapInsets:v82];
            [(CarCardLayout *)v28 setFlipForRightHandDrive:0];
            LODWORD(v87) = 1148846080;
            [(CarCardLayout *)v28 setPrimaryAxisFillModePriority:v87];
            LODWORD(v88) = 1148846080;
            [(CarCardLayout *)v28 setSecondaryAxisFillModePriority:v88];
            [cardCopy setLayout:v28];
            [cardCopy setAccessoryType:0];
            [cardCopy setSelectionHandler:0];
LABEL_132:

            goto LABEL_133;
          }

          chromeViewController5 = [(CarHybridInstrumentClusterNavigationModeController *)v76 chromeViewController];
          view5 = [chromeViewController5 view];
          window6 = [view5 safeAreaLayoutGuide];
          [window6 layoutFrame];
          v84 = v83;
          GEOConfigGetDouble();
          screen3 = [NSNumber numberWithDouble:v85 * v84];
          [(CarCardLayout *)v28 setPrimaryAxisFillUpperLimit:screen3];
        }

        GEOConfigGetDouble();
        v86 = [NSNumber numberWithDouble:?];
        [(CarCardLayout *)v28 setPrimaryAxisFillLowerLimit:v86];

        goto LABEL_111;
      }

      v55 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v55 setEdgePosition:0];
      v56 = v55;
      v57 = 1;
    }

    [(CarCardLayout *)v56 setCornerPosition:v57];
    [(CarCardLayout *)v55 setPrimaryAxis:1];
    [(CarCardLayout *)v55 setPinnedEdges:0];
    [(CarCardLayout *)v55 setPrimaryAxisFillMode:0];
    LODWORD(v58) = 1.0;
    [(CarCardLayout *)v55 setPrimaryAxisFillModePriority:v58];
    [(CarCardLayout *)v55 setSecondaryAxisFillMode:2];
    LODWORD(v59) = 1148846080;
    [(CarCardLayout *)v55 setSecondaryAxisFillModePriority:v59];
    [(CarCardLayout *)v55 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v55 setFlipForRightHandDrive:1];
    v37 = v55;
    primaryAxis2 = [(CarCardLayout *)v37 primaryAxis];
    cornerPosition2 = [(CarCardLayout *)v37 cornerPosition];
    if (primaryAxis2 == 1)
    {
      if (cornerPosition2 == 4 || [(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 edgePosition]== 2)
      {
        v62 = 8;
      }

      else
      {
        v62 = 0;
      }

      if ([(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 cornerPosition]== 2 || [(CarCardLayout *)v37 edgePosition]== 8)
      {
        v62 |= 2uLL;
      }

      if ([(CarCardLayout *)v37 edgePosition]== 1)
      {
        v62 |= 4uLL;
      }

      v63 = v62 | ([(CarCardLayout *)v37 edgePosition]== 4);
    }

    else
    {
      v64 = cornerPosition2 == 4 || [(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 edgePosition]== 4;
      if ([(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 cornerPosition]== 2 || [(CarCardLayout *)v37 edgePosition]== 1)
      {
        v64 |= 4uLL;
      }

      if ([(CarCardLayout *)v37 edgePosition]== 2)
      {
        v64 |= 8uLL;
      }

      if ([(CarCardLayout *)v37 edgePosition]== 8)
      {
        v63 = v64 | 2;
      }

      else
      {
        v63 = v64;
      }
    }

    [(CarCardLayout *)v37 setEdgesAffectingMapInsets:v63];
    [(CarCardLayout *)v37 setHorizontallyCenterMapInsets:0];
    goto LABEL_105;
  }

  if ([keyCopy isEqualToString:@"ETA"])
  {
    etaCardController = [(CarHybridInstrumentClusterNavigationModeController *)self etaCardController];
    [cardCopy setContent:etaCardController];

    v28 = objc_alloc_init(CarCardLayout);
    selfCopy3 = self;
    chromeViewController6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    view6 = [chromeViewController6 view];
    window7 = [view6 window];
    _car_hybridInstrumentClusterAlignment2 = [window7 _car_hybridInstrumentClusterAlignment];

    if (_car_hybridInstrumentClusterAlignment2 == 2)
    {
      v65 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v65 setEdgePosition:0];
      v66 = v65;
      v67 = 8;
    }

    else
    {
      if (_car_hybridInstrumentClusterAlignment2 != 1)
      {
        if (_car_hybridInstrumentClusterAlignment2)
        {
          goto LABEL_127;
        }

        v47 = objc_alloc_init(CarCardLayout);
        [(CarCardLayout *)v47 setEdgePosition:4];
        [(CarCardLayout *)v47 setCornerPosition:0];
        [(CarCardLayout *)v47 setPrimaryAxis:1];
        [(CarCardLayout *)v47 setPinnedEdges:0];
        [(CarCardLayout *)v47 setPrimaryAxisFillMode:0];
        LODWORD(v48) = 1.0;
        [(CarCardLayout *)v47 setPrimaryAxisFillModePriority:v48];
        [(CarCardLayout *)v47 setSecondaryAxisFillMode:3];
        LODWORD(v49) = 1148846080;
        [(CarCardLayout *)v47 setSecondaryAxisFillModePriority:v49];
        [(CarCardLayout *)v47 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
        [(CarCardLayout *)v47 setFlipForRightHandDrive:1];
        v50 = v47;
        primaryAxis3 = [(CarCardLayout *)v50 primaryAxis];
        cornerPosition3 = [(CarCardLayout *)v50 cornerPosition];
        if (primaryAxis3 == 1)
        {
          if (cornerPosition3 == 4 || [(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 edgePosition]== 2)
          {
            v53 = 8;
          }

          else
          {
            v53 = 0;
          }

          if ([(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 cornerPosition]== 2 || [(CarCardLayout *)v50 edgePosition]== 8)
          {
            v53 |= 2uLL;
          }

          if ([(CarCardLayout *)v50 edgePosition]== 1)
          {
            v53 |= 4uLL;
          }

          v54 = v53 | ([(CarCardLayout *)v50 edgePosition]== 4);
        }

        else
        {
          v89 = cornerPosition3 == 4 || [(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 edgePosition]== 4;
          if ([(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 cornerPosition]== 2 || [(CarCardLayout *)v50 edgePosition]== 1)
          {
            v89 |= 4uLL;
          }

          if ([(CarCardLayout *)v50 edgePosition]== 2)
          {
            v89 |= 8uLL;
          }

          if ([(CarCardLayout *)v50 edgePosition]== 8)
          {
            v54 = v89 | 2;
          }

          else
          {
            v54 = v89;
          }
        }

        [(CarCardLayout *)v50 setEdgesAffectingMapInsets:v54];
        [(CarCardLayout *)v50 setHorizontallyCenterMapInsets:0];

        GEOConfigGetDouble();
        v28 = [NSNumber numberWithDouble:?];
        [(CarCardLayout *)v50 setSecondaryAxisFillUpperLimit:v28];
LABEL_126:

        v28 = v50;
LABEL_127:
        if (presentationType == 2)
        {
          [(CarCardLayout *)v28 setMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
          chromeViewController7 = [(CarHybridInstrumentClusterNavigationModeController *)selfCopy3 chromeViewController];
          view7 = [chromeViewController7 view];
          window8 = [view7 window];
          screen4 = [window8 screen];
          [screen4 nativeScale];
          v95 = [NSNumber numberWithDouble:436.0 / v94];
          [(CarCardLayout *)v28 setSecondaryAxisFillUpperLimit:v95];
        }

        else if (presentationType - 1 > 1)
        {
LABEL_131:
          [(CarCardLayout *)v28 setHorizontallyCenterMapInsets:_car_shouldHorizontallyCenterMapInsets];
          [(CarCardLayout *)v28 setFlipForRightHandDrive:0];
          [cardCopy setLayout:v28];
          [cardCopy setAccessoryType:0];
          goto LABEL_132;
        }

        GEOConfigGetDouble();
        v96 = [NSNumber numberWithDouble:?];
        [(CarCardLayout *)v28 setPrimaryAxisFillLowerLimit:v96];

        goto LABEL_131;
      }

      v65 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v65 setEdgePosition:0];
      v66 = v65;
      v67 = 4;
    }

    [(CarCardLayout *)v66 setCornerPosition:v67];
    [(CarCardLayout *)v65 setPrimaryAxis:1];
    [(CarCardLayout *)v65 setPinnedEdges:0];
    [(CarCardLayout *)v65 setPrimaryAxisFillMode:0];
    LODWORD(v68) = 1.0;
    [(CarCardLayout *)v65 setPrimaryAxisFillModePriority:v68];
    [(CarCardLayout *)v65 setSecondaryAxisFillMode:2];
    LODWORD(v69) = 1148846080;
    [(CarCardLayout *)v65 setSecondaryAxisFillModePriority:v69];
    [(CarCardLayout *)v65 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v65 setFlipForRightHandDrive:1];
    v50 = v65;
    primaryAxis4 = [(CarCardLayout *)v50 primaryAxis];
    cornerPosition4 = [(CarCardLayout *)v50 cornerPosition];
    if (primaryAxis4 == 1)
    {
      if (cornerPosition4 == 4 || [(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 edgePosition]== 2)
      {
        v72 = 8;
      }

      else
      {
        v72 = 0;
      }

      if ([(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 cornerPosition]== 2 || [(CarCardLayout *)v50 edgePosition]== 8)
      {
        v72 |= 2uLL;
      }

      if ([(CarCardLayout *)v50 edgePosition]== 1)
      {
        v72 |= 4uLL;
      }

      v73 = v72 | ([(CarCardLayout *)v50 edgePosition]== 4);
    }

    else
    {
      v74 = cornerPosition4 == 4 || [(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 edgePosition]== 4;
      if ([(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 cornerPosition]== 2 || [(CarCardLayout *)v50 edgePosition]== 1)
      {
        v74 |= 4uLL;
      }

      if ([(CarCardLayout *)v50 edgePosition]== 2)
      {
        v74 |= 8uLL;
      }

      if ([(CarCardLayout *)v50 edgePosition]== 8)
      {
        v73 = v74 | 2;
      }

      else
      {
        v73 = v74;
      }
    }

    [(CarCardLayout *)v50 setEdgesAffectingMapInsets:v73];
    [(CarCardLayout *)v50 setHorizontallyCenterMapInsets:0];
    goto LABEL_126;
  }

LABEL_133:
}

- (id)desiredCards
{
  v3 = +[NSMutableArray array];
  if ([(CarHybridInstrumentClusterNavigationModeController *)self shouldShowGuidanceCard])
  {
    [v3 addObject:@"Guidance"];
  }

  if ([(CarHybridInstrumentClusterNavigationModeController *)self shouldShowETATray])
  {
    [v3 addObject:@"ETA"];
  }

  v4 = self->_currentDesiredCards;
  v5 = v3;
  if (v5 | v4)
  {
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = sub_100BA3DFC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        view = [chromeViewController view];
        window = [view window];
        _car_debugDescription = [window _car_debugDescription];
        chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        view2 = [chromeViewController2 view];
        window2 = [view2 window];
        screen = [window2 screen];
        _car_debugDescription2 = [screen _car_debugDescription];
        *buf = 134349826;
        selfCopy = self;
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = _car_debugDescription;
        v27 = 2112;
        v28 = _car_debugDescription2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Returning desired cards: %@, for window: %@, screen: %@", buf, 0x2Au);
      }

      v15 = [v5 copy];
      currentDesiredCards = self->_currentDesiredCards;
      self->_currentDesiredCards = v15;
    }
  }

  v17 = [v5 copy];

  return v17;
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    searchPinsManager2 = [chromeViewController2 searchPinsManager];
    routeStartEndItemSource = [searchPinsManager2 routeStartEndItemSource];
    v10 = routeStartEndItemSource;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Resigning top context", buf, 0xCu);
  }

  v7 = +[MapsRadarController sharedInstance];
  [v7 removeAttachmentProvider:self];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100BA6F50;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [animationCopy addPreparation:v8];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Becoming top context", buf, 0xCu);
  }

  v7 = +[MapsRadarController sharedInstance];
  [v7 addAttachmentProvider:self];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BA7190;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100BA7684;
  v8[3] = &unk_101661AE0;
  v8[4] = self;
  isAnimated = [animationCopy isAnimated];
  [animationCopy addPreparation:v10 animations:v8 completion:0];
}

- (BOOL)showsSpeedLimit
{
  _mapWidgetChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  chromeConfiguration = [_mapWidgetChromeViewController chromeConfiguration];
  v4 = [chromeConfiguration showsSpeedLimit] != 2;

  return v4;
}

- (BOOL)showsHeadingIndicator
{
  _mapWidgetChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  chromeConfiguration = [_mapWidgetChromeViewController chromeConfiguration];
  v4 = [chromeConfiguration showsHeadingIndicator] != 2;

  return v4;
}

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Configuring navigation display", &v13, 0xCu);
  }

  [displayCopy setCameraStyle:{-[CarHybridInstrumentClusterNavigationModeController cameraStyle](self, "cameraStyle")}];
  [displayCopy setCameraPaused:0];
  if (GEOConfigGetBOOL())
  {
    [displayCopy setShowsRoadLabel:&__kCFBooleanFalse];
  }

  else
  {
    chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    view = [chromeViewController view];
    window = [view window];
    _car_hybridInstrumentClusterLayout = [window _car_hybridInstrumentClusterLayout];

    v11 = [(CarHybridInstrumentClusterNavigationModeController *)self cameraStyle]== 1 && _car_hybridInstrumentClusterLayout == 2;
    v12 = [NSNumber numberWithInt:v11];
    [displayCopy setShowsRoadLabel:v12];
  }
}

- (void)refreshCameraTypeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Refreshing camera type", buf, 0xCu);
  }

  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateMapInsets];

  carChromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BA7BC8;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [navigationDisplay configureDisplay:v9 animated:animatedCopy];
}

- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_cameraStyle != style)
  {
    animatedCopy = animated;
    v7 = sub_100BA3DFC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134349312;
      selfCopy = self;
      v10 = 2048;
      styleCopy = style;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Updating camera style: %ld", &v8, 0x16u);
    }

    self->_cameraStyle = style;
    [(CarHybridInstrumentClusterNavigationModeController *)self refreshCameraTypeAnimated:animatedCopy];
  }
}

- (id)mapView
{
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  v4 = +[CarChromeNavigationCameraStyleManager sharedInstance];
  cameraStyleManager = self->_cameraStyleManager;
  self->_cameraStyleManager = v4;

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager registerObserver:self];
  chromeViewController = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation >= 2)
  {
    if (_car_hybridInstrumentClusterDisplayLocation == 2)
    {
      centerConsoleCameraStyle = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager centerConsoleCameraStyle];
      goto LABEL_6;
    }

    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "[CarHybridInstrumentClusterNavigationModeController prepareToEnterStackInChromeViewController:]";
      v17 = 2080;
      v18 = "CarHybridInstrumentClusterNavigationModeController.m";
      v19 = 1024;
      v20 = 122;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v15, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
      }
    }
  }

  centerConsoleCameraStyle = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager instrumentClusterCameraStyle];
LABEL_6:
  self->_cameraStyle = centerConsoleCameraStyle;
}

- (void)dealloc
{
  v3 = sub_100BA3DFC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  [(CARSessionStatus *)self->_sessionStatus removeSessionObserver:self];
  v4.receiver = self;
  v4.super_class = CarHybridInstrumentClusterNavigationModeController;
  [(CarHybridInstrumentClusterNavigationModeController *)&v4 dealloc];
}

- (CarHybridInstrumentClusterNavigationModeController)initWithPresentationType:(unint64_t)type
{
  v11.receiver = self;
  v11.super_class = CarHybridInstrumentClusterNavigationModeController;
  v4 = [(CarHybridInstrumentClusterNavigationModeController *)&v11 init];
  if (v4)
  {
    v5 = sub_100BA3DFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4->_cameraStyle = 1;
    v4->_presentationType = type;
    v6 = objc_alloc_init(CARSessionStatus);
    sessionStatus = v4->_sessionStatus;
    v4->_sessionStatus = v6;

    [(CARSessionStatus *)v4->_sessionStatus addSessionObserver:v4];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"chromeConfigurationDidUpdateNotification:" name:@"CarInstrumentClusterChromeConfigurationDidUpdateNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"carDisplayConfigDidChangeNotification:" name:@"CarDisplayConfigDidChangeNotification" object:0];
  }

  return v4;
}

@end