@interface CarMapWidgetNavigationModeController
- (BOOL)hidesStatusBanner;
- (BOOL)showsHeadingIndicator;
- (CarMapWidgetETACardViewController)etaCard;
- (CarMapWidgetNavigationModeController)initWithPresentationType:(unint64_t)type;
- (ChromeViewController)chromeViewController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (void)_cancelAlertDismissTimer;
- (void)_carDisplayConfigDidChangeNotification:(id)notification;
- (void)_dismissAlertIfNeeded:(id)needed withResponse:(id)response;
- (void)_trafficAlertVisibilityChanged:(id)changed;
- (void)_updateDisplayETA;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeCenterConsoleCameraStyle:(int64_t)style;
- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeInstrumentClusterCameraStyle:(int64_t)style;
- (void)configureCard:(id)card forKey:(id)key;
- (void)configureNavigationDisplay:(id)display;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didDismissTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service didInvalidateTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)refreshCameraTypeAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated;
- (void)setCurrentRoute:(id)route;
- (void)setHasArrived:(BOOL)arrived;
- (void)setHasETAInfo:(BOOL)info;
@end

@implementation CarMapWidgetNavigationModeController

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

    etaCard = [(CarMapWidgetNavigationModeController *)self etaCard];
    [etaCard setLatestETA:v9];

    [(CarMapWidgetNavigationModeController *)self setHasETAInfo:v9 != 0];
  }
}

- (CarMapWidgetETACardViewController)etaCard
{
  etaCard = self->_etaCard;
  if (!etaCard)
  {
    v4 = [[CarMapWidgetETACardViewController alloc] initWithDestination:0 presentationType:self->_presentationType];
    v5 = self->_etaCard;
    self->_etaCard = v4;

    etaCard = self->_etaCard;
  }

  return etaCard;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeInstrumentClusterCameraStyle:(int64_t)style
{
  chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation <= 1)
  {

    [(CarMapWidgetNavigationModeController *)self setCameraStyle:style animated:1];
  }
}

- (void)carChromeNavigationCameraStyleManager:(id)manager didChangeCenterConsoleCameraStyle:(int64_t)style
{
  chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation == 2)
  {

    [(CarMapWidgetNavigationModeController *)self setCameraStyle:style animated:1];
  }
}

- (void)_carDisplayConfigDidChangeNotification:(id)notification
{
  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  [carChromeViewController setNeedsUpdateComponent:@"statusBanner" animated:0];
}

- (void)_cancelAlertDismissTimer
{
  [(NSTimer *)self->_alertDismissTimer invalidate];
  alertDismissTimer = self->_alertDismissTimer;
  self->_alertDismissTimer = 0;
}

- (void)_dismissAlertIfNeeded:(id)needed withResponse:(id)response
{
  neededCopy = needed;
  responseCopy = response;
  v8 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToCarAppScene = [v8 isCurrentlyConnectedToCarAppScene];

  v10 = sub_100799BCC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (isCurrentlyConnectedToCarAppScene)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_dismissAlertIfNeeded called, but user opened main app in the meantime.", buf, 2u);
    }
  }

  else
  {
    if (v11)
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_dismissAlertIfNeeded - dismissing alert.", v16, 2u);
    }

    [(CarMapWidgetNavigationModeController *)self _cancelAlertDismissTimer];
    invalidatedAlertIds = self->_invalidatedAlertIds;
    alertID = [neededCopy alertID];
    [(NSMutableSet *)invalidatedAlertIds addObject:alertID];

    carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    navigationDisplay = [carChromeViewController navigationDisplay];
    [navigationDisplay setTrafficAlert:0];

    if (responseCopy)
    {
      responseCopy[2](responseCopy, 0);
    }
  }
}

- (void)_trafficAlertVisibilityChanged:(id)changed
{
  changedCopy = changed;
  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  trafficAlert = [navigationDisplay trafficAlert];

  userInfo = [changedCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"kCarTrafficAlertIdKey"];
  alertID = [trafficAlert alertID];
  v10 = [v8 isEqual:alertID];

  if (v10)
  {
    invalidatedAlertIds = self->_invalidatedAlertIds;
    alertID2 = [trafficAlert alertID];
    [(NSMutableSet *)invalidatedAlertIds addObject:alertID2];

    carChromeViewController2 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    navigationDisplay2 = [carChromeViewController2 navigationDisplay];
    [navigationDisplay2 setTrafficAlert:0];
  }
}

- (void)navigationService:(id)service didDismissTrafficIncidentAlert:(id)alert
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  alertID = [alert alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:alertID];

  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:0];
}

- (void)navigationService:(id)service didInvalidateTrafficIncidentAlert:(id)alert
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  alertID = [alert alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:alertID];

  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:0];
}

- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v10 = alertCopy;
  alertID = [alertCopy alertID];
  LOBYTE(invalidatedAlertIds) = [(NSMutableSet *)invalidatedAlertIds containsObject:alertID];

  if ((invalidatedAlertIds & 1) == 0)
  {
    carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    navigationDisplay = [carChromeViewController navigationDisplay];
    [navigationDisplay setTrafficAlert:v10];
  }
}

- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  serviceCopy = service;
  alertCopy = alert;
  callbackCopy = callback;
  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:alertCopy];

  [(CarMapWidgetNavigationModeController *)self _cancelAlertDismissTimer];
  objc_initWeak(&location, self);
  v13 = +[CarDisplayController sharedInstance];
  LOBYTE(navigationDisplay) = [v13 isCurrentlyConnectedToCarAppScene];

  if ((navigationDisplay & 1) == 0)
  {
    v14 = sub_100799BCC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "didReceiveTrafficIncidentAlert and was not connected to carApp scene. Starting auto dismiss timer.", buf, 2u);
    }

    [alertCopy alertDisplayDuration];
    v16 = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006A4538;
    v19[3] = &unk_101626058;
    objc_copyWeak(&v22, &location);
    v20 = alertCopy;
    v21 = callbackCopy;
    v17 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
    alertDismissTimer = self->_alertDismissTimer;
    self->_alertDismissTimer = v17;

    objc_destroyWeak(&v22);
  }

  objc_destroyWeak(&location);
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    route = [serviceCopy route];
    [(CarMapWidgetNavigationModeController *)self setCurrentRoute:route];
  }
}

- (void)refreshCameraTypeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:1];

  chromeViewController2 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"accessories" animated:1];

  chromeViewController3 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [chromeViewController3 setNeedsUpdateMapInsets];

  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A4738;
  v10[3] = &unk_10164F208;
  v10[4] = self;
  [navigationDisplay configureDisplay:v10 animated:animatedCopy];
}

- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_cameraStyle != style)
  {
    self->_cameraStyle = style;
    [(CarMapWidgetNavigationModeController *)self refreshCameraTypeAnimated:animated];
  }
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
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

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  [displayCopy setCameraStyle:{-[CarMapWidgetNavigationModeController cameraStyle](self, "cameraStyle")}];
  [displayCopy setCameraPaused:0];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if ([key isEqualToString:@"DashboardETACardKey"])
  {
    etaCard = [(CarMapWidgetNavigationModeController *)self etaCard];
    [cardCopy setContent:etaCard];

    carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    sceneType = [carChromeViewController sceneType];
    v9 = 3;
    v10 = 1000.0;
    if (sceneType <= 6 && ((1 << sceneType) & 0x72) != 0)
    {
      if (self->_presentationType)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      if (self->_presentationType)
      {
        v10 = 1000.0;
      }

      else
      {
        v10 = 1.0;
      }
    }

    v11 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v11 setEdgePosition:4];
    [(CarCardLayout *)v11 setCornerPosition:0];
    [(CarCardLayout *)v11 setPrimaryAxis:1];
    [(CarCardLayout *)v11 setPinnedEdges:0];
    [(CarCardLayout *)v11 setPrimaryAxisFillMode:0];
    LODWORD(v12) = 1.0;
    [(CarCardLayout *)v11 setPrimaryAxisFillModePriority:v12];
    [(CarCardLayout *)v11 setSecondaryAxisFillMode:v9];
    *&v13 = v10;
    [(CarCardLayout *)v11 setSecondaryAxisFillModePriority:v13];
    [(CarCardLayout *)v11 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v11 setFlipForRightHandDrive:1];
    v14 = v11;
    primaryAxis = [(CarCardLayout *)v14 primaryAxis];
    cornerPosition = [(CarCardLayout *)v14 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      if ([(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 8)
      {
        v17 |= 2uLL;
      }

      if ([(CarCardLayout *)v14 edgePosition]== 1)
      {
        v17 |= 4uLL;
      }

      v18 = v17 | ([(CarCardLayout *)v14 edgePosition]== 4);
    }

    else
    {
      v18 = cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
      if ([(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 1)
      {
        v18 |= 4uLL;
      }

      if ([(CarCardLayout *)v14 edgePosition]== 2)
      {
        v18 |= 8uLL;
      }

      if ([(CarCardLayout *)v14 edgePosition]== 8)
      {
        v18 |= 2uLL;
      }
    }

    [(CarCardLayout *)v14 setEdgesAffectingMapInsets:v18];
    [(CarCardLayout *)v14 setHorizontallyCenterMapInsets:0];
    presentationType = self->_presentationType;
    if (presentationType == 2)
    {
      [(CarCardLayout *)v14 setMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
      chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
      view = [chromeViewController view];
      window = [view window];
      screen = [window screen];
      [screen nativeScale];
      v25 = [NSNumber numberWithDouble:436.0 / v24];
      [(CarCardLayout *)v14 setSecondaryAxisFillUpperLimit:v25];
    }

    else
    {
      if (presentationType != 1)
      {
        if (!presentationType)
        {
          [(CarCardLayout *)v14 setMargins:5.0, 5.0, 5.0, 5.0];
        }

        goto LABEL_41;
      }

      [(CarCardLayout *)v14 setMargins:5.0, 5.0, 5.0, 5.0];
    }

    GEOConfigGetDouble();
    v26 = [NSNumber numberWithDouble:?];
    [(CarCardLayout *)v14 setPrimaryAxisFillLowerLimit:v26];

LABEL_41:
    [cardCopy setLayout:v14];
    [cardCopy setAccessoryType:0];
  }
}

- (id)desiredCards
{
  if ([(CarMapWidgetNavigationModeController *)self hasArrived]|| ![(CarMapWidgetNavigationModeController *)self hasETAInfo])
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v5 = @"DashboardETACardKey";
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  return v3;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006A4E14;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4 animations:&stru_101626030 completion:0];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006A4F80;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006A500C;
  v6[3] = &unk_101661AE0;
  v6[4] = self;
  isAnimated = [animationCopy isAnimated];
  [animationCopy addPreparation:v8 animations:v6 completion:0];
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  cameraStyleManager = self->_cameraStyleManager;
  controllerCopy = controller;
  [(CarChromeNavigationCameraStyleManager *)cameraStyleManager unregisterObserver:self];
  v6 = +[CarChromeNavigationCameraStyleManager sharedInstance];
  v7 = self->_cameraStyleManager;
  self->_cameraStyleManager = v6;

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager registerObserver:self];
  view = [controllerCopy view];

  window = [view window];
  _car_hybridInstrumentClusterDisplayLocation = [window _car_hybridInstrumentClusterDisplayLocation];

  if (_car_hybridInstrumentClusterDisplayLocation >= 2)
  {
    if (_car_hybridInstrumentClusterDisplayLocation == 2)
    {
      centerConsoleCameraStyle = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager centerConsoleCameraStyle];
    }

    else
    {
      centerConsoleCameraStyle = 1;
    }
  }

  else
  {
    centerConsoleCameraStyle = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager instrumentClusterCameraStyle];
  }

  self->_cameraStyle = centerConsoleCameraStyle;
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
      if (qword_10195CEE0 != -1)
      {
        dispatch_once(&qword_10195CEE0, &stru_101626078);
      }

      v9 = qword_10195CED8;
      if (os_log_type_enabled(qword_10195CED8, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        uniqueRouteID = [v7 uniqueRouteID];
        uUIDString = [uniqueRouteID UUIDString];
        v15 = 134349314;
        selfCopy = self;
        v17 = 2112;
        v18 = uUIDString;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Updating route: %@", &v15, 0x16u);
      }

      objc_storeStrong(&self->_currentRoute, route);
      carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
      navigationDisplay = [carChromeViewController navigationDisplay];
      [navigationDisplay updateWithRoute:self->_currentRoute];
    }
  }
}

- (void)setHasArrived:(BOOL)arrived
{
  if (self->_hasArrived != arrived)
  {
    self->_hasArrived = arrived;
    chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }
}

- (void)setHasETAInfo:(BOOL)info
{
  if (self->_hasETAInfo != info)
  {
    self->_hasETAInfo = info;
    chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }
}

- (BOOL)hidesStatusBanner
{
  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  sceneType = [carChromeViewController sceneType];
  if (sceneType > 6 || ((1 << sceneType) & 0x72) == 0)
  {

    return 0;
  }

  else
  {

    return +[CarDisplayConfigAuxiliaryTask centerConsoleSceneCount]!= 0;
  }
}

- (BOOL)showsHeadingIndicator
{
  carChromeViewController = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  sceneType = [carChromeViewController sceneType];
  v4 = sceneType < 7;
  v5 = 0x72u >> sceneType;

  return v4 & v5;
}

- (id)mapView
{
  chromeViewController = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)dealloc
{
  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = CarMapWidgetNavigationModeController;
  [(CarMapWidgetNavigationModeController *)&v3 dealloc];
}

- (CarMapWidgetNavigationModeController)initWithPresentationType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = CarMapWidgetNavigationModeController;
  v4 = [(CarMapWidgetNavigationModeController *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_presentationType = type;
    v6 = objc_alloc_init(NSMutableSet);
    invalidatedAlertIds = v5->_invalidatedAlertIds;
    v5->_invalidatedAlertIds = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_carDisplayConfigDidChangeNotification:" name:@"CarDisplayConfigDidChangeNotification" object:0];
  }

  return v5;
}

@end