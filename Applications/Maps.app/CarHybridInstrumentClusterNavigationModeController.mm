@interface CarHybridInstrumentClusterNavigationModeController
- (BOOL)shouldShowETATray;
- (BOOL)shouldShowGuidanceCard;
- (BOOL)showsHeadingIndicator;
- (BOOL)showsSpeedLimit;
- (CGSize)availableSize;
- (CarGuidanceCardViewController)guidanceCardController;
- (CarHybridInstrumentClusterNavigationModeController)initWithPresentationType:(unint64_t)a3;
- (CarMapWidgetETACardViewController)etaCardController;
- (ChromeViewController)chromeViewController;
- (GuidanceObserver)guidanceObserver;
- (id)_mapWidgetChromeViewController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (id)upcomingWaypoints;
- (void)_setupGuidanceDisplays:(BOOL)a3;
- (void)_updateCardsForScreenInfoChangeIfNecessary;
- (void)_updateDisplayETA;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeCenterConsoleCameraStyle:(int64_t)a4;
- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeInstrumentClusterCameraStyle:(int64_t)a4;
- (void)carDisplayConfigDidChangeNotification:(id)a3;
- (void)chromeConfigurationDidUpdateNotification:(id)a3;
- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)dealloc;
- (void)etaCardSign:(id)a3 didSelectAction:(unint64_t)a4;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)refreshCameraTypeAnimated:(BOOL)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setCurrentRoute:(id)a3;
- (void)setHasArrived:(BOOL)a3;
- (void)setHasETAInfo:(BOOL)a3;
- (void)updateCardsAnimated:(BOOL)a3;
@end

@implementation CarHybridInstrumentClusterNavigationModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v5 = a4;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] CARSessionUpdateConfiguration: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA3E50;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] CARSessionDidDisconnect: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA3FB8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
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
  v14 = [(CarHybridInstrumentClusterNavigationModeController *)self currentScreenInfo];
  v3 = [v14 identifier];
  v4 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 screen];
  v8 = [v7 _car_screenInfo];
  v9 = [v8 identifier];
  v10 = v3;
  v11 = v9;
  if (v10 | v11)
  {
    v12 = v11;
    v13 = [v10 isEqual:v11];

    if (v13)
    {
      return;
    }

    v14 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
    [v14 setNeedsUpdateComponent:@"cards" animated:1];
  }

  else
  {
  }
}

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BA4318;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeCenterConsoleCameraStyle:(int64_t)a4
{
  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 _car_hybridInstrumentClusterDisplayLocation];

  if (v9 == 2)
  {
    [(CarHybridInstrumentClusterNavigationModeController *)self setCameraStyle:a4 animated:1];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeInstrumentClusterCameraStyle:(int64_t)a4
{
  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 _car_hybridInstrumentClusterDisplayLocation];

  if (v9 <= 1)
  {
    [(CarHybridInstrumentClusterNavigationModeController *)self setCameraStyle:a4 animated:1];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)carDisplayConfigDidChangeNotification:(id)a3
{
  v3 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [v3 setNeedsUpdateComponent:@"statusBanner" animated:0];
}

- (void)chromeConfigurationDidUpdateNotification:(id)a3
{
  [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  v4 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [v4 reloadAccessoriesForContext:self animated:1];
}

- (CGSize)availableSize
{
  v2 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [v2 availableCardSize];
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
  v2 = [(CarHybridInstrumentClusterNavigationModeController *)self currentRoute];
  v3 = +[MNNavigationService sharedService];
  v4 = [v2 waypointsAfterStepIndex:objc_msgSend(v3 legIndex:{"stepIndex"), 0}];

  return v4;
}

- (void)etaCardSign:(id)a3 didSelectAction:(unint64_t)a4
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

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v6 = [a3 arrivalState] == 5;

  [(CarHybridInstrumentClusterNavigationModeController *)self setHasArrived:v6];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = [v7 route];
    [(CarHybridInstrumentClusterNavigationModeController *)self setCurrentRoute:v6];
  }
}

- (void)updateCardsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [v5 updateCardsForContext:self animated:v3];

  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [v6 setNeedsUpdateComponent:@"navigationDisplay" animated:v3];
}

- (BOOL)shouldShowETATray
{
  v3 = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  v4 = [v3 chromeConfiguration];
  v5 = [v4 showsETA];
  LOBYTE(v6) = v5 != 2;

  v7 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v8 = [v7 view];
  v9 = [v8 window];
  v10 = [v9 _car_hybridInstrumentClusterAlignmentStyle];

  v11 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v12 = [v11 view];
  v13 = [v12 window];
  v14 = [v13 _car_hybridInstrumentClusterLayout];

  if (!v10 && v14 == 2)
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
  v17 = (v14 != 0) & BOOL;
  if ([(CarHybridInstrumentClusterNavigationModeController *)self hasArrived])
  {
    v6 = 0;
  }

  else
  {
    v18 = [(CarHybridInstrumentClusterNavigationModeController *)self hasETAInfo];
    if (v5 == 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
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
        if (v10 != 1)
        {
          v28 = @"?";
        }

        if (!v10)
        {
          v28 = @"Narrow";
        }

        v36 = v28;
        if (v14 <= 2)
        {
          v27 = off_10163C1E0[v14];
        }

        v35 = v5 != 2;
        v29 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        v30 = [v29 view];
        v31 = [v30 window];
        *buf = 134350850;
        v38 = self;
        v39 = 2112;
        v40 = v36;
        v41 = 2112;
        v42 = v27;
        v43 = 2112;
        v44 = v31;
        v45 = 1024;
        v46 = [(CarHybridInstrumentClusterNavigationModeController *)self hasArrived];
        v47 = 1024;
        v48 = v17;
        v49 = 1024;
        v50 = [(CarHybridInstrumentClusterNavigationModeController *)self hasETAInfo];
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
  v3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v4 = [v3 view];
  v5 = [v4 window];
  v6 = [v5 _car_hybridInstrumentClusterAlignmentStyle];

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
        if (v6 == 1)
        {
          v17 = @"Wide";
        }

        if (v6)
        {
          v18 = v17;
        }

        else
        {
          v18 = @"Narrow";
        }

        v19 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        v20 = [v19 view];
        v21 = [v20 window];
        v25 = 134350338;
        v26 = self;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = v21;
        v31 = 1024;
        v32 = [(CarHybridInstrumentClusterNavigationModeController *)self hasArrived];
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
  v3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[CarHybridInstrumentClusterNavigationModeController _mapWidgetChromeViewController]";
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
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v9 = sub_100BA3DFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
      v12 = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] chromeViewController (%@) was not a CarMapWidgetChromeViewController", &v12, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setHasETAInfo:(BOOL)a3
{
  if (self->_hasETAInfo != a3)
  {
    v3 = a3;
    self->_hasETAInfo = a3;
    v5 = sub_100BA3DFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349312;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating has eta info: %d", &v6, 0x12u);
    }

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)setHasArrived:(BOOL)a3
{
  if (self->_hasArrived != a3)
  {
    v3 = a3;
    self->_hasArrived = a3;
    v5 = sub_100BA3DFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349312;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating has arrived: %d", &v6, 0x12u);
    }

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:1];
  }
}

- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4
{
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] CarNavigationDisplay configuration changed", &v7, 0xCu);
  }

  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  [v6 updateCardsForContext:self animated:0];
}

- (void)_setupGuidanceDisplays:(BOOL)a3
{
  v4 = sub_100BA3DFC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 134349056;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Setting up guidance displays", &v12, 0xCu);
  }

  v5 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceObserver];
  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [v5 addOutlet:v6];

  v7 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  v8 = [v7 isViewLoaded];

  if ((v8 & 1) == 0)
  {
    v9 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
    v10 = [v9 view];

    [(CarHybridInstrumentClusterNavigationModeController *)self updateCardsAnimated:0];
  }

  v11 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
  [v5 repeatAllUpdatesForOutlet:v11];
}

- (GuidanceObserver)guidanceObserver
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 guidanceObserver];

  return v3;
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

- (void)setCurrentRoute:(id)a3
{
  v5 = a3;
  v6 = self->_currentRoute;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100BA3DFC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 uniqueRouteID];
        v11 = [v10 UUIDString];
        v14 = 134349314;
        v15 = self;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating route: %@", &v14, 0x16u);
      }

      objc_storeStrong(&self->_currentRoute, a3);
      v12 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
      v13 = [v12 navigationDisplay];
      [v13 updateWithRoute:self->_currentRoute];
    }
  }
}

- (void)_updateDisplayETA
{
  v11 = +[MNNavigationService sharedService];
  if ([v11 navigationState] != 5)
  {
    v3 = [GuidanceETA alloc];
    v4 = [v11 displayEtaInfo];
    v5 = [v11 remainingDistanceInfo];
    v6 = [v11 batteryChargeInfo];
    v7 = [v11 upcomingStop];
    v8 = [v7 timezone];
    v9 = -[GuidanceETA initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:](v3, "initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:", v4, v5, v6, v8, [v11 navigationTransportType]);

    v10 = [(CarHybridInstrumentClusterNavigationModeController *)self etaCardController];
    [v10 setLatestETA:v9];

    [(CarHybridInstrumentClusterNavigationModeController *)self setHasETAInfo:v9 != 0];
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100BA3DFC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v98 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v97 = [v98 view];
    v9 = [v97 window];
    v10 = [v9 _car_debugDescription];
    [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v11 = v99 = v6;
    [v11 view];
    v13 = v12 = v7;
    v14 = [v13 window];
    v15 = [v14 screen];
    v16 = [v15 _car_debugDescription];
    *buf = 134349826;
    v103 = self;
    v104 = 2112;
    v105 = v12;
    v106 = 2112;
    v107 = v10;
    v108 = 2112;
    v109 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Configuring card: %@ with window: %@, screen: %@", buf, 0x2Au);

    v7 = v12;
    v6 = v99;
  }

  v17 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v18 = [v17 view];
  v19 = [v18 window];
  v20 = [v19 screen];
  v21 = [v20 _car_screenInfo];
  [(CarHybridInstrumentClusterNavigationModeController *)self setCurrentScreenInfo:v21];

  v22 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v23 = [v22 view];
  v24 = [v23 window];
  v25 = [v24 _car_shouldHorizontallyCenterMapInsets];

  presentationType = self->_presentationType;
  if ([v7 isEqualToString:@"Guidance"])
  {
    v100 = v25;
    v27 = [(CarHybridInstrumentClusterNavigationModeController *)self guidanceCardController];
    [v6 setContent:v27];

    v28 = objc_alloc_init(CarCardLayout);
    v29 = self;
    v30 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v31 = [v30 view];
    v32 = [v31 window];
    v33 = [v32 _car_hybridInstrumentClusterAlignment];

    if (v33 == 2)
    {
      v55 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v55 setEdgePosition:0];
      v56 = v55;
      v57 = 2;
    }

    else
    {
      if (v33 != 1)
      {
        if (v33)
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
        v38 = [(CarCardLayout *)v37 primaryAxis];
        v39 = [(CarCardLayout *)v37 cornerPosition];
        if (v38 == 1)
        {
          if (v39 == 4 || [(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 edgePosition]== 2)
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
          v75 = v39 == 4 || [(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 edgePosition]== 4;
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
        v76 = v29;
        if (presentationType == 2)
        {
          [(CarCardLayout *)v28 setMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
          v77 = [(CarHybridInstrumentClusterNavigationModeController *)v29 chromeViewController];
          v78 = [v77 view];
          v79 = [v78 window];
          v80 = [v79 screen];
          [v80 _car_pixelsToPoints:436.0];
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
            [v6 setLayout:v28];
            [v6 setAccessoryType:0];
            [v6 setSelectionHandler:0];
LABEL_132:

            goto LABEL_133;
          }

          v77 = [(CarHybridInstrumentClusterNavigationModeController *)v76 chromeViewController];
          v78 = [v77 view];
          v79 = [v78 safeAreaLayoutGuide];
          [v79 layoutFrame];
          v84 = v83;
          GEOConfigGetDouble();
          v80 = [NSNumber numberWithDouble:v85 * v84];
          [(CarCardLayout *)v28 setPrimaryAxisFillUpperLimit:v80];
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
    v60 = [(CarCardLayout *)v37 primaryAxis];
    v61 = [(CarCardLayout *)v37 cornerPosition];
    if (v60 == 1)
    {
      if (v61 == 4 || [(CarCardLayout *)v37 cornerPosition]== 1 || [(CarCardLayout *)v37 edgePosition]== 2)
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
      v64 = v61 == 4 || [(CarCardLayout *)v37 cornerPosition]== 8 || [(CarCardLayout *)v37 edgePosition]== 4;
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

  if ([v7 isEqualToString:@"ETA"])
  {
    v42 = [(CarHybridInstrumentClusterNavigationModeController *)self etaCardController];
    [v6 setContent:v42];

    v28 = objc_alloc_init(CarCardLayout);
    v101 = self;
    v43 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v44 = [v43 view];
    v45 = [v44 window];
    v46 = [v45 _car_hybridInstrumentClusterAlignment];

    if (v46 == 2)
    {
      v65 = objc_alloc_init(CarCardLayout);
      [(CarCardLayout *)v65 setEdgePosition:0];
      v66 = v65;
      v67 = 8;
    }

    else
    {
      if (v46 != 1)
      {
        if (v46)
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
        v51 = [(CarCardLayout *)v50 primaryAxis];
        v52 = [(CarCardLayout *)v50 cornerPosition];
        if (v51 == 1)
        {
          if (v52 == 4 || [(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 edgePosition]== 2)
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
          v89 = v52 == 4 || [(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 edgePosition]== 4;
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
          v90 = [(CarHybridInstrumentClusterNavigationModeController *)v101 chromeViewController];
          v91 = [v90 view];
          v92 = [v91 window];
          v93 = [v92 screen];
          [v93 nativeScale];
          v95 = [NSNumber numberWithDouble:436.0 / v94];
          [(CarCardLayout *)v28 setSecondaryAxisFillUpperLimit:v95];
        }

        else if (presentationType - 1 > 1)
        {
LABEL_131:
          [(CarCardLayout *)v28 setHorizontallyCenterMapInsets:v25];
          [(CarCardLayout *)v28 setFlipForRightHandDrive:0];
          [v6 setLayout:v28];
          [v6 setAccessoryType:0];
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
    v70 = [(CarCardLayout *)v50 primaryAxis];
    v71 = [(CarCardLayout *)v50 cornerPosition];
    if (v70 == 1)
    {
      if (v71 == 4 || [(CarCardLayout *)v50 cornerPosition]== 1 || [(CarCardLayout *)v50 edgePosition]== 2)
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
      v74 = v71 == 4 || [(CarCardLayout *)v50 cornerPosition]== 8 || [(CarCardLayout *)v50 edgePosition]== 4;
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
        v20 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        v19 = [v20 view];
        v8 = [v19 window];
        v9 = [v8 _car_debugDescription];
        v10 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
        v11 = [v10 view];
        v12 = [v11 window];
        v13 = [v12 screen];
        v14 = [v13 _car_debugDescription];
        *buf = 134349826;
        v22 = self;
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v14;
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
  v3 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v6 = [v5 searchPinsManager];
    v7 = [v6 routeStartEndItemSource];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Resigning top context", buf, 0xCu);
  }

  v7 = +[MapsRadarController sharedInstance];
  [v7 removeAttachmentProvider:self];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100BA6F50;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [v5 addPreparation:v8];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6 = sub_100BA3DFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v12 = self;
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
  v9 = [v5 isAnimated];
  [v5 addPreparation:v10 animations:v8 completion:0];
}

- (BOOL)showsSpeedLimit
{
  v2 = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  v3 = [v2 chromeConfiguration];
  v4 = [v3 showsSpeedLimit] != 2;

  return v4;
}

- (BOOL)showsHeadingIndicator
{
  v2 = [(CarHybridInstrumentClusterNavigationModeController *)self _mapWidgetChromeViewController];
  v3 = [v2 chromeConfiguration];
  v4 = [v3 showsHeadingIndicator] != 2;

  return v4;
}

- (void)configureNavigationDisplay:(id)a3
{
  v4 = a3;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 134349056;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Configuring navigation display", &v13, 0xCu);
  }

  [v4 setCameraStyle:{-[CarHybridInstrumentClusterNavigationModeController cameraStyle](self, "cameraStyle")}];
  [v4 setCameraPaused:0];
  if (GEOConfigGetBOOL())
  {
    [v4 setShowsRoadLabel:&__kCFBooleanFalse];
  }

  else
  {
    v6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
    v7 = [v6 view];
    v8 = [v7 window];
    v9 = [v8 _car_hybridInstrumentClusterLayout];

    v11 = [(CarHybridInstrumentClusterNavigationModeController *)self cameraStyle]== 1 && v9 == 2;
    v12 = [NSNumber numberWithInt:v11];
    [v4 setShowsRoadLabel:v12];
  }
}

- (void)refreshCameraTypeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100BA3DFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Refreshing camera type", buf, 0xCu);
  }

  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  [v6 setNeedsUpdateMapInsets];

  v7 = [(CarHybridInstrumentClusterNavigationModeController *)self carChromeViewController];
  v8 = [v7 navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BA7BC8;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [v8 configureDisplay:v9 animated:v3];
}

- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_cameraStyle != a3)
  {
    v4 = a4;
    v7 = sub_100BA3DFC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134349312;
      v9 = self;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Updating camera style: %ld", &v8, 0x16u);
    }

    self->_cameraStyle = a3;
    [(CarHybridInstrumentClusterNavigationModeController *)self refreshCameraTypeAnimated:v4];
  }
}

- (id)mapView
{
  v2 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  v4 = +[CarChromeNavigationCameraStyleManager sharedInstance];
  cameraStyleManager = self->_cameraStyleManager;
  self->_cameraStyleManager = v4;

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager registerObserver:self];
  v6 = [(CarHybridInstrumentClusterNavigationModeController *)self chromeViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 _car_hybridInstrumentClusterDisplayLocation];

  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      v10 = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager centerConsoleCameraStyle];
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

  v10 = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager instrumentClusterCameraStyle];
LABEL_6:
  self->_cameraStyle = v10;
}

- (void)dealloc
{
  v3 = sub_100BA3DFC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  [(CARSessionStatus *)self->_sessionStatus removeSessionObserver:self];
  v4.receiver = self;
  v4.super_class = CarHybridInstrumentClusterNavigationModeController;
  [(CarHybridInstrumentClusterNavigationModeController *)&v4 dealloc];
}

- (CarHybridInstrumentClusterNavigationModeController)initWithPresentationType:(unint64_t)a3
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
    v4->_presentationType = a3;
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