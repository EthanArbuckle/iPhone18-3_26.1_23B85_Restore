@interface CarMapWidgetNavigationModeController
- (BOOL)hidesStatusBanner;
- (BOOL)showsHeadingIndicator;
- (CarMapWidgetETACardViewController)etaCard;
- (CarMapWidgetNavigationModeController)initWithPresentationType:(unint64_t)a3;
- (ChromeViewController)chromeViewController;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (void)_cancelAlertDismissTimer;
- (void)_carDisplayConfigDidChangeNotification:(id)a3;
- (void)_dismissAlertIfNeeded:(id)a3 withResponse:(id)a4;
- (void)_trafficAlertVisibilityChanged:(id)a3;
- (void)_updateDisplayETA;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeCenterConsoleCameraStyle:(int64_t)a4;
- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeInstrumentClusterCameraStyle:(int64_t)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didDismissTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 didInvalidateTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)refreshCameraTypeAnimated:(BOOL)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setCurrentRoute:(id)a3;
- (void)setHasArrived:(BOOL)a3;
- (void)setHasETAInfo:(BOOL)a3;
@end

@implementation CarMapWidgetNavigationModeController

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

    v10 = [(CarMapWidgetNavigationModeController *)self etaCard];
    [v10 setLatestETA:v9];

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

- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeInstrumentClusterCameraStyle:(int64_t)a4
{
  v6 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 _car_hybridInstrumentClusterDisplayLocation];

  if (v9 <= 1)
  {

    [(CarMapWidgetNavigationModeController *)self setCameraStyle:a4 animated:1];
  }
}

- (void)carChromeNavigationCameraStyleManager:(id)a3 didChangeCenterConsoleCameraStyle:(int64_t)a4
{
  v6 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  v9 = [v8 _car_hybridInstrumentClusterDisplayLocation];

  if (v9 == 2)
  {

    [(CarMapWidgetNavigationModeController *)self setCameraStyle:a4 animated:1];
  }
}

- (void)_carDisplayConfigDidChangeNotification:(id)a3
{
  v3 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  [v3 setNeedsUpdateComponent:@"statusBanner" animated:0];
}

- (void)_cancelAlertDismissTimer
{
  [(NSTimer *)self->_alertDismissTimer invalidate];
  alertDismissTimer = self->_alertDismissTimer;
  self->_alertDismissTimer = 0;
}

- (void)_dismissAlertIfNeeded:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CarDisplayController sharedInstance];
  v9 = [v8 isCurrentlyConnectedToCarAppScene];

  v10 = sub_100799BCC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
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
    v13 = [v6 alertID];
    [(NSMutableSet *)invalidatedAlertIds addObject:v13];

    v14 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    v15 = [v14 navigationDisplay];
    [v15 setTrafficAlert:0];

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (void)_trafficAlertVisibilityChanged:(id)a3
{
  v4 = a3;
  v5 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v6 = [v5 navigationDisplay];
  v15 = [v6 trafficAlert];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"kCarTrafficAlertIdKey"];
  v9 = [v15 alertID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    invalidatedAlertIds = self->_invalidatedAlertIds;
    v12 = [v15 alertID];
    [(NSMutableSet *)invalidatedAlertIds addObject:v12];

    v13 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    v14 = [v13 navigationDisplay];
    [v14 setTrafficAlert:0];
  }
}

- (void)navigationService:(id)a3 didDismissTrafficIncidentAlert:(id)a4
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v6 = [a4 alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:v6];

  v8 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v7 = [v8 navigationDisplay];
  [v7 setTrafficAlert:0];
}

- (void)navigationService:(id)a3 didInvalidateTrafficIncidentAlert:(id)a4
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v6 = [a4 alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:v6];

  v8 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v7 = [v8 navigationDisplay];
  [v7 setTrafficAlert:0];
}

- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4
{
  v5 = a4;
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v10 = v5;
  v7 = [v5 alertID];
  LOBYTE(invalidatedAlertIds) = [(NSMutableSet *)invalidatedAlertIds containsObject:v7];

  if ((invalidatedAlertIds & 1) == 0)
  {
    v8 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    v9 = [v8 navigationDisplay];
    [v9 setTrafficAlert:v10];
  }
}

- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v12 = [v11 navigationDisplay];
  [v12 setTrafficAlert:v9];

  [(CarMapWidgetNavigationModeController *)self _cancelAlertDismissTimer];
  objc_initWeak(&location, self);
  v13 = +[CarDisplayController sharedInstance];
  LOBYTE(v12) = [v13 isCurrentlyConnectedToCarAppScene];

  if ((v12 & 1) == 0)
  {
    v14 = sub_100799BCC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "didReceiveTrafficIncidentAlert and was not connected to carApp scene. Starting auto dismiss timer.", buf, 2u);
    }

    [v9 alertDisplayDuration];
    v16 = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006A4538;
    v19[3] = &unk_101626058;
    objc_copyWeak(&v22, &location);
    v20 = v9;
    v21 = v10;
    v17 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
    alertDismissTimer = self->_alertDismissTimer;
    self->_alertDismissTimer = v17;

    objc_destroyWeak(&v22);
  }

  objc_destroyWeak(&location);
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = [v7 route];
    [(CarMapWidgetNavigationModeController *)self setCurrentRoute:v6];
  }
}

- (void)refreshCameraTypeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"mapcontrols" animated:1];

  v6 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [v6 setNeedsUpdateComponent:@"accessories" animated:1];

  v7 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  [v7 setNeedsUpdateMapInsets];

  v8 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v9 = [v8 navigationDisplay];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A4738;
  v10[3] = &unk_10164F208;
  v10[4] = self;
  [v9 configureDisplay:v10 animated:v3];
}

- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_cameraStyle != a3)
  {
    self->_cameraStyle = a3;
    [(CarMapWidgetNavigationModeController *)self refreshCameraTypeAnimated:a4];
  }
}

- (id)personalizedItemSources
{
  v3 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
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

- (void)configureNavigationDisplay:(id)a3
{
  v4 = a3;
  [v4 setCameraStyle:{-[CarMapWidgetNavigationModeController cameraStyle](self, "cameraStyle")}];
  [v4 setCameraPaused:0];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v27 = a3;
  if ([a4 isEqualToString:@"DashboardETACardKey"])
  {
    v6 = [(CarMapWidgetNavigationModeController *)self etaCard];
    [v27 setContent:v6];

    v7 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
    v8 = [v7 sceneType];
    v9 = 3;
    v10 = 1000.0;
    if (v8 <= 6 && ((1 << v8) & 0x72) != 0)
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
    v15 = [(CarCardLayout *)v14 primaryAxis];
    v16 = [(CarCardLayout *)v14 cornerPosition];
    if (v15 == 1)
    {
      if (v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
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
      v18 = v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
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
      v20 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
      v21 = [v20 view];
      v22 = [v21 window];
      v23 = [v22 screen];
      [v23 nativeScale];
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
    [v27 setLayout:v14];
    [v27 setAccessoryType:0];
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

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006A4E14;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4 animations:&stru_101626030 completion:0];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
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
  v7 = [v5 isAnimated];
  [v5 addPreparation:v8 animations:v6 completion:0];
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  cameraStyleManager = self->_cameraStyleManager;
  v5 = a3;
  [(CarChromeNavigationCameraStyleManager *)cameraStyleManager unregisterObserver:self];
  v6 = +[CarChromeNavigationCameraStyleManager sharedInstance];
  v7 = self->_cameraStyleManager;
  self->_cameraStyleManager = v6;

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager registerObserver:self];
  v8 = [v5 view];

  v9 = [v8 window];
  v10 = [v9 _car_hybridInstrumentClusterDisplayLocation];

  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      v11 = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager centerConsoleCameraStyle];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager instrumentClusterCameraStyle];
  }

  self->_cameraStyle = v11;
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
      if (qword_10195CEE0 != -1)
      {
        dispatch_once(&qword_10195CEE0, &stru_101626078);
      }

      v9 = qword_10195CED8;
      if (os_log_type_enabled(qword_10195CED8, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [v7 uniqueRouteID];
        v12 = [v11 UUIDString];
        v15 = 134349314;
        v16 = self;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Updating route: %@", &v15, 0x16u);
      }

      objc_storeStrong(&self->_currentRoute, a3);
      v13 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
      v14 = [v13 navigationDisplay];
      [v14 updateWithRoute:self->_currentRoute];
    }
  }
}

- (void)setHasArrived:(BOOL)a3
{
  if (self->_hasArrived != a3)
  {
    self->_hasArrived = a3;
    v5 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
    [v5 updateCardsForContext:self animated:1];
  }
}

- (void)setHasETAInfo:(BOOL)a3
{
  if (self->_hasETAInfo != a3)
  {
    self->_hasETAInfo = a3;
    v5 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
    [v5 updateCardsForContext:self animated:1];
  }
}

- (BOOL)hidesStatusBanner
{
  v2 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v3 = [v2 sceneType];
  if (v3 > 6 || ((1 << v3) & 0x72) == 0)
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
  v2 = [(CarMapWidgetNavigationModeController *)self carChromeViewController];
  v3 = [v2 sceneType];
  v4 = v3 < 7;
  v5 = 0x72u >> v3;

  return v4 & v5;
}

- (id)mapView
{
  v2 = [(CarMapWidgetNavigationModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)dealloc
{
  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = CarMapWidgetNavigationModeController;
  [(CarMapWidgetNavigationModeController *)&v3 dealloc];
}

- (CarMapWidgetNavigationModeController)initWithPresentationType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CarMapWidgetNavigationModeController;
  v4 = [(CarMapWidgetNavigationModeController *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_presentationType = a3;
    v6 = objc_alloc_init(NSMutableSet);
    invalidatedAlertIds = v5->_invalidatedAlertIds;
    v5->_invalidatedAlertIds = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_carDisplayConfigDidChangeNotification:" name:@"CarDisplayConfigDidChangeNotification" object:0];
  }

  return v5;
}

@end