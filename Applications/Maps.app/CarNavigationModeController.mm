@interface CarNavigationModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (AudioPreferences)audioPreferences;
- (BOOL)_shouldShowShareButton;
- (BOOL)isSharingTrip;
- (BOOL)shouldSuppressAutohideRecognizerForTouch:(id)touch;
- (CarETACardViewController)etaCardController;
- (CarGuidanceCardViewController)guidanceCardController;
- (CarNavigationModeController)init;
- (ChromeViewController)chromeViewController;
- (GuidanceObserver)guidanceObserver;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (NSString)arrivalSubtitle;
- (NSString)arrivalTitle;
- (_TtC4Maps28NavigationWaypointController)waypointController;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)waypointsOverviewCardController;
- (id)contactSharingSuggestion;
- (id)desiredCards;
- (id)mapView;
- (id)personalizedItemSources;
- (id)sharingButtonTitle;
- (id)upcomingWaypoints;
- (unint64_t)_upcomingGuidanceLevelForGuidanceSignStyle:(int64_t)style currentGuidanceLevel:(unint64_t)level;
- (unint64_t)audioSettingsCurrentState;
- (void)_captureCurrentNavigationModeState;
- (void)_captureUserToggledCameraStyle;
- (void)_completeTrafficIncidentAlert:(id)alert;
- (void)_loadCompressionTestCardWithHeight:(double)height priority:(float)priority;
- (void)_maneuverBannerViewEVStationsNotification:(id)notification;
- (void)_sendOtherEVStationsRequest;
- (void)_setupGuidanceDisplays:(BOOL)displays;
- (void)_toggleCameraStyle;
- (void)_toggleETACardAnimated:(BOOL)animated;
- (void)_updateShareButtonContentAndVisibility:(BOOL)visibility;
- (void)_updateShareETADisclosureAutoDismissTimer;
- (void)audioControlUserDidChangeAudioType;
- (void)audioControlView:(id)view didSelectAudioType:(unint64_t)type;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)carShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification:(id)notification;
- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change;
- (void)chromeNavigationDisplay:(id)display userDidTapMap:(id)map atPoint:(CGPoint)point;
- (void)compressionTestCard:(id)card reloadWithSpacerHeight:(double)height priority:(float)priority;
- (void)compressionTestCardRequestsDismiss:(id)dismiss;
- (void)configureCard:(id)card forKey:(id)key;
- (void)configureNavigationDisplay:(id)display;
- (void)dealloc;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)etaCardSign:(id)sign didSelectAction:(unint64_t)action;
- (void)guidanceCardController:(id)controller didChangeGuidanceSignStyle:(int64_t)style userInitiated:(BOOL)initiated;
- (void)hideAutohidingContentWithAnimation:(id)animation;
- (void)incidentsReportingEnablementDidUpdate;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didChangeVoiceGuidanceLevel:(unint64_t)level;
- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts;
- (void)navigationService:(id)service didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateNavTrayGuidance:(id)guidance;
- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service hideJunctionViewForId:(id)id;
- (void)navigationService:(id)service isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationService:(id)service showJunctionView:(id)view;
- (void)navigationWaypointController:(id)controller didUpdateDisplayedWaypoints:(id)waypoints;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)refreshCameraTypeAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated;
- (void)setCurrentRoute:(id)route;
- (void)setNavigationModeState:(int64_t)state;
- (void)setShowingJunctionView:(BOOL)view;
- (void)setTrafficAlertCardController:(id)controller;
- (void)setTrayExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers;
- (void)trafficAlertCardViewControllerDismiss:(id)dismiss;
- (void)waypointsOverviewController:(id)controller didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index;
- (void)waypointsOverviewControllerDidSelectAddWaypoint:(id)waypoint;
@end

@implementation CarNavigationModeController

- (CarETACardViewController)etaCardController
{
  etaCardController = self->_etaCardController;
  if (!etaCardController)
  {
    v4 = [CarETACardViewController alloc];
    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    v6 = [(CarETACardViewController *)v4 initWithDataSource:self delegate:self interruptPresenter:carChromeViewController];
    v7 = self->_etaCardController;
    self->_etaCardController = v6;

    [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:0];
    etaCardController = self->_etaCardController;
  }

  return etaCardController;
}

- (id)sharingButtonTitle
{
  v2 = +[MSPSharedTripService sharedInstance];
  receivers = [v2 receivers];

  if ([receivers count])
  {
    if ([receivers count] == 1)
    {
      firstObject = [receivers firstObject];
      displayName = [firstObject displayName];
      if ([displayName length])
      {
        v6 = +[NSBundle mainBundle];
        v7 = [v6 localizedStringForKey:@"CarPlay_ShareTripButton_OneContact" value:@"localized string not found" table:0];
        v8 = [NSString stringWithFormat:v7, displayName];

        goto LABEL_8;
      }
    }

    firstObject = +[NSBundle mainBundle];
    v9 = [firstObject localizedStringForKey:@"CarPlay_ShareTripButton" value:@"localized string not found" table:0];
    v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, [receivers count]);
  }

  else
  {
    firstObject = +[NSBundle mainBundle];
    v8 = [firstObject localizedStringForKey:@"[NavTray] Share ETA" value:@"localized string not found" table:0];
  }

LABEL_8:

  return v8;
}

- (id)contactSharingSuggestion
{
  currentRoute = [(CarNavigationModeController *)self currentRoute];
  shareETAWaypointContacts = [currentRoute shareETAWaypointContacts];

  if ([shareETAWaypointContacts count] == 1)
  {
    lastObject = [shareETAWaypointContacts lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (BOOL)isSharingTrip
{
  v2 = +[MSPSharedTripService sharedInstance];
  receivers = [v2 receivers];
  v4 = [receivers count] != 0;

  return v4;
}

- (id)upcomingWaypoints
{
  waypointController = [(CarNavigationModeController *)self waypointController];
  displayedWaypoints = [waypointController displayedWaypoints];

  return displayedWaypoints;
}

- (_TtC4Maps28NavigationWaypointController)waypointController
{
  v2 = +[CarDisplayController sharedInstance];
  platformController = [v2 platformController];

  currentNavigationSession = [platformController currentNavigationSession];
  waypointController = [currentNavigationSession waypointController];

  if (!waypointController)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Couldn't find a navigation waypoint controller within car nav context.", v8, 2u);
    }
  }

  return waypointController;
}

- (NSString)arrivalTitle
{
  v3 = +[MNNavigationService sharedService];
  arrivalChargingStationInfo = [v3 arrivalChargingStationInfo];

  v5 = +[MNNavigationService sharedService];
  isArrivedAtEVCharger = [v5 isArrivedAtEVCharger];

  if (isArrivedAtEVCharger)
  {
    v7 = +[MNNavigationService sharedService];
    activeNavTrayGuidanceEvent = [v7 activeNavTrayGuidanceEvent];

    [arrivalChargingStationInfo chargingTime];
    if (v9 <= 0.0)
    {
      title = +[NSBundle mainBundle];
      v15 = [title localizedStringForKey:@"Charged [Nav Tray Header Title]" value:@"localized string not found" table:0];
    }

    else
    {
      if (activeNavTrayGuidanceEvent)
      {
        title = [activeNavTrayGuidanceEvent title];
        stringWithDefaultOptions = [title stringWithDefaultOptions];
LABEL_18:

        goto LABEL_19;
      }

      title = +[NSBundle mainBundle];
      v15 = [title localizedStringForKey:@"Charging [Nav Tray Header Title]" value:@"localized string not found" table:0];
      [arrivalChargingStationInfo batteryPercentageAfterCharging];
      v18 = v16;
    }

    stringWithDefaultOptions = [NSString stringWithFormat:v15, v18];

    goto LABEL_18;
  }

  navigationModeState = [(CarNavigationModeController *)self navigationModeState];
  stringWithDefaultOptions = 0;
  if (navigationModeState > 4)
  {
    if (navigationModeState == 5)
    {
      v13 = +[NSBundle mainBundle];
      activeNavTrayGuidanceEvent = v13;
      v14 = @"Arriving [Nav Tray Header]";
    }

    else
    {
      if (navigationModeState != 6)
      {
        goto LABEL_20;
      }

      v13 = +[NSBundle mainBundle];
      activeNavTrayGuidanceEvent = v13;
      v14 = @"Arrived [Nav Tray Header]";
    }
  }

  else if (navigationModeState == 3)
  {
    v13 = +[NSBundle mainBundle];
    activeNavTrayGuidanceEvent = v13;
    v14 = @"Parking [Nav Tray Header]";
  }

  else
  {
    if (navigationModeState != 4)
    {
      goto LABEL_20;
    }

    v13 = +[NSBundle mainBundle];
    activeNavTrayGuidanceEvent = v13;
    v14 = @"Parked [Nav Tray Header]";
  }

  stringWithDefaultOptions = [v13 localizedStringForKey:v14 value:@"localized string not found" table:0];
LABEL_19:

LABEL_20:

  return stringWithDefaultOptions;
}

- (NSString)arrivalSubtitle
{
  v3 = +[MNNavigationService sharedService];
  arrivalInfo = [v3 arrivalInfo];

  destination = [arrivalInfo destination];
  v6 = +[MNNavigationService sharedService];
  arrivalChargingStationInfo = [v6 arrivalChargingStationInfo];

  v8 = +[MNNavigationService sharedService];
  isArrivedAtEVCharger = [v8 isArrivedAtEVCharger];

  if (isArrivedAtEVCharger)
  {
    v10 = +[MNNavigationService sharedService];
    activeNavTrayGuidanceEvent = [v10 activeNavTrayGuidanceEvent];

    [arrivalChargingStationInfo chargingTime];
    if (v12 <= 0.0)
    {
      detail = +[NSBundle mainBundle];
      v16 = [detail localizedStringForKey:@"Charged [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
      v17 = +[MNNavigationService sharedService];
      stopAfterCharging = [v17 stopAfterCharging];
      navDisplayName = [stopAfterCharging navDisplayName];
      stringWithDefaultOptions = [NSString stringWithFormat:v16, navDisplayName];
    }

    else
    {
      if (activeNavTrayGuidanceEvent)
      {
        detail = [activeNavTrayGuidanceEvent detail];
        stringWithDefaultOptions = [detail stringWithDefaultOptions];
LABEL_13:

        goto LABEL_14;
      }

      detail = +[NSBundle mainBundle];
      v16 = [detail localizedStringForKey:@"Charging [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
      [arrivalChargingStationInfo chargingTime];
      v17 = [NSString _navigation_stringWithSeconds:v22 abbreviated:1];
      stringWithDefaultOptions = [NSString stringWithFormat:v16, v17];
    }

    goto LABEL_13;
  }

  navigationModeState = [(CarNavigationModeController *)self navigationModeState];
  if ((navigationModeState - 5) < 2)
  {
    v20 = +[MNNavigationService sharedService];
    route = [v20 route];

    stringWithDefaultOptions = [route arrivalInstructionStringForLegIndex:{objc_msgSend(arrivalInfo, "legIndex")}];
  }

  else if ((navigationModeState - 3) > 1)
  {
    stringWithDefaultOptions = 0;
  }

  else
  {
    stringWithDefaultOptions = [destination parkingDisplayName];
  }

LABEL_14:

  return stringWithDefaultOptions;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (id)desiredCards
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  compressionTestCardController = [(CarNavigationModeController *)self compressionTestCardController];

  if (compressionTestCardController)
  {
    v18 = @"Guidance";
    v19 = @"Compression Test";
    v5 = &v18;
LABEL_3:
    v6 = 2;
LABEL_7:
    v8 = [NSArray arrayWithObjects:v5 count:v6, v13, v14, v15, v16, v17, v18, v19];
    [v3 addObjectsFromArray:v8];

    goto LABEL_8;
  }

  navigationModeState = self->_navigationModeState;
  if (navigationModeState > 2)
  {
    if ((navigationModeState - 3) >= 4)
    {
      goto LABEL_8;
    }

    v15 = @"ETA";
    v5 = &v15;
    v6 = 1;
    goto LABEL_7;
  }

  switch(navigationModeState)
  {
    case 0:
      v16 = @"Guidance";
      v17 = @"ETA";
      v5 = &v16;
      goto LABEL_3;
    case 1:
      [v3 addObject:@"Stops"];
      break;
    case 2:
      v13 = @"Guidance";
      v14 = @"Traffic Alert";
      v5 = &v13;
      goto LABEL_3;
  }

LABEL_8:
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"CarNavigationHideGuidanceCard"];

  if (v10)
  {
    [v3 removeObject:@"Guidance"];
  }

  v11 = [v3 copy];

  return v11;
}

- (NSArray)preferredCarFocusEnvironments
{
  v2 = [CarFocusOrderEnvironment environmentWithRepresentativeItemType:1];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (CarGuidanceCardViewController)guidanceCardController
{
  guidanceCardController = self->_guidanceCardController;
  if (!guidanceCardController)
  {
    v4 = [[CarGuidanceCardViewController alloc] initWithDestination:1 presentationType:0 guidanceCardSizeProvider:0 interactionDelegate:self];
    v5 = self->_guidanceCardController;
    self->_guidanceCardController = v4;

    guidanceCardController = self->_guidanceCardController;
  }

  return guidanceCardController;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  if (-[CarNavigationModeController navigationModeState](self, "navigationModeState") - 3 <= 3 && (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 navigationState], v5, v6 == 6))
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  else
  {
    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    navigationDisplay = [carChromeViewController navigationDisplay];
    isCameraPanning = [navigationDisplay isCameraPanning];

    carChromeViewController2 = [(CarNavigationModeController *)self carChromeViewController];
    navigationDisplay2 = [carChromeViewController2 navigationDisplay];
    isNonDefaultZoom = [navigationDisplay2 isNonDefaultZoom];

    result = MapsFeature_IsEnabled_MoreReportTypes();
    if (result)
    {
      v14 = +[TrafficIncidentLayoutManager sharedInstance];
      if ([v14 isIncidentReportingEnabled])
      {
        v15 = 3;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = 6;
    if (((isCameraPanning | isNonDefaultZoom) & 1) == 0)
    {
      v16 = v15;
    }

    retstr->var0 = 2;
    retstr->var1 = v16;
    retstr->var2 = 5;
  }

  return result;
}

- (unint64_t)audioSettingsCurrentState
{
  audioPreferences = [(CarNavigationModeController *)self audioPreferences];
  v3 = [audioPreferences guidanceLevelForTransportType:0];

  v4 = [_TtC4Maps22NavAudioControlFactory navAudioTypeForGuidanceLevel:v3];
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v3 + 1 >= 4)
    {
      v6 = [NSString stringWithFormat:@"UNKNOWN: %lu", v3];
    }

    else
    {
      v6 = *(&off_101623278 + v3 + 1);
    }

    *buf = 134218242;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "audioSettingsCurrentState will return audioType: %ld for guidanceLevel: %@", buf, 0x16u);
  }

  return v4;
}

- (AudioPreferences)audioPreferences
{
  audioPreferences = self->_audioPreferences;
  if (!audioPreferences)
  {
    v4 = [AudioPreferences alloc];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [(AudioPreferences *)v4 initWithDefaults:v5];
    v7 = self->_audioPreferences;
    self->_audioPreferences = v6;

    audioPreferences = self->_audioPreferences;
  }

  return audioPreferences;
}

- (GuidanceObserver)guidanceObserver
{
  v2 = +[CarDisplayController sharedInstance];
  guidanceObserver = [v2 guidanceObserver];

  return guidanceObserver;
}

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarNavigationModeController: incidentsReportingEnablementDidUpdate", v5, 2u);
  }

  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  [carChromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:1];
}

- (void)_maneuverBannerViewEVStationsNotification:(id)notification
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005D43E8;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)carShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification:(id)notification
{
  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  [carChromeViewController updateCardsForContext:self animated:1 completion:0];

  carChromeViewController2 = [(CarNavigationModeController *)self carChromeViewController];
  [carChromeViewController2 updateComponentsIfNeeded];
}

- (void)chromeNavigationDisplay:(id)display userDidTapMap:(id)map atPoint:(CGPoint)point
{
  v5 = [(CarNavigationModeController *)self guidanceCardController:display];
  [v5 temporarilyHideJunctionViewForSeconds:0 animated:12.0];
}

- (void)chromeNavigationDisplay:(id)display configurationDidChange:(id)change
{
  v4 = [(CarNavigationModeController *)self carChromeViewController:display];
  [v4 setNeedsUpdateComponent:@"mapcontrols" animated:1];
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  v15[0] = itemRepresentingStatusBanner;
  chromeViewController2 = [(CarNavigationModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v15[1] = itemRepresentingOverlays;
  chromeViewController3 = [(CarNavigationModeController *)self chromeViewController];
  itemRepresentingAlternateRoutes = [chromeViewController3 itemRepresentingAlternateRoutes];
  v15[2] = itemRepresentingAlternateRoutes;
  chromeViewController4 = [(CarNavigationModeController *)self chromeViewController];
  itemRepresentingMapControls = [chromeViewController4 itemRepresentingMapControls];
  v15[3] = itemRepresentingMapControls;
  v9 = [NSArray arrayWithObjects:v15 count:4];
  v10 = [CarFocusOrderSequence sequenceWithItems:v9 options:5];
  v16 = v10;
  v11 = [NSArray arrayWithObjects:&v16 count:1];

  return v11;
}

- (void)compressionTestCardRequestsDismiss:(id)dismiss
{
  [(CarNavigationModeController *)self setCompressionTestCardController:0];
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (void)compressionTestCard:(id)card reloadWithSpacerHeight:(double)height priority:(float)priority
{
  [(CarNavigationModeController *)self setCompressionTestCardController:0];
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];

  v9 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005D4800;
  block[3] = &unk_10165FDC8;
  block[4] = self;
  *&block[5] = height;
  priorityCopy = priority;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)_loadCompressionTestCardWithHeight:(double)height priority:(float)priority
{
  v7 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v7 isInternalInstall];

  if (isInternalInstall)
  {
    v9 = objc_alloc_init(CarCompressionTestCardViewController);
    [(CarNavigationModeController *)self setCompressionTestCardController:v9];

    compressionTestCardController = [(CarNavigationModeController *)self compressionTestCardController];
    [compressionTestCardController setDelegate:self];

    if (height >= 0.0)
    {
      compressionTestCardController2 = [(CarNavigationModeController *)self compressionTestCardController];
      [compressionTestCardController2 setSpacerHeight:height];
    }

    if (priority >= 0.0)
    {
      compressionTestCardController3 = [(CarNavigationModeController *)self compressionTestCardController];
      *&v13 = priority;
      [compressionTestCardController3 setSpacerPriority:v13];
    }

    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    [carChromeViewController updateCardsForContext:self animated:1];
  }
}

- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers
{
  receiversCopy = receivers;
  _shouldShowShareButton = [(CarNavigationModeController *)self _shouldShowShareButton];
  v7 = [receiversCopy count];

  if (v7)
  {
    etaCardController = [(CarNavigationModeController *)self etaCardController];
    isShowingShareETASuggestion = [etaCardController isShowingShareETASuggestion];

    if (isShowingShareETASuggestion)
    {
      [(CarNavigationModeController *)self _updateShareETADisclosureAutoDismissTimer];
    }

    else
    {
      [(CarNavigationModeController *)self setShareEtaDisclosureAutoDismissTimer:0];
    }
  }

  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:_shouldShowShareButton ^ 1];
  v10 = +[UIApplication _maps_keyMapsSceneDelegate];
  [v10 setNeedsUserActivityUpdate];
}

- (void)trafficAlertCardViewControllerDismiss:(id)dismiss
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  dismissCopy = dismiss;
  trafficAlert = [dismissCopy trafficAlert];
  alertID = [trafficAlert alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:alertID];

  v15 = @"kCarTrafficAlertIdKey";
  trafficAlert2 = [dismissCopy trafficAlert];

  alertID2 = [trafficAlert2 alertID];
  v16 = alertID2;
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"CarTrafficAlertDidChangeVisibility" object:0 userInfo:v10];

  [(CarNavigationModeController *)self setTrafficAlertCardController:0];
  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:0];

  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (void)_completeTrafficIncidentAlert:(id)alert
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  alertID = [alert alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:alertID];

  trafficAlertCardController = [(CarNavigationModeController *)self trafficAlertCardController];

  if (trafficAlertCardController)
  {
    [(CarNavigationModeController *)self setTrafficAlertCardController:0];
    chromeViewController = [(CarNavigationModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }

  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:0];
}

- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v14 = alertCopy;
  alertID = [alertCopy alertID];
  LOBYTE(invalidatedAlertIds) = [(NSMutableSet *)invalidatedAlertIds containsObject:alertID];

  if ((invalidatedAlertIds & 1) == 0)
  {
    trafficAlertCardController = [(CarNavigationModeController *)self trafficAlertCardController];

    if (!trafficAlertCardController)
    {
      v9 = [[CarTrafficAlertCardViewController alloc] initWithDelegate:self trafficAlert:v14 response:0];
      [(CarNavigationModeController *)self setTrafficAlertCardController:v9];

      chromeViewController = [(CarNavigationModeController *)self chromeViewController];
      [chromeViewController updateCardsForContext:self animated:1];
    }

    trafficAlertCardController2 = [(CarNavigationModeController *)self trafficAlertCardController];
    [trafficAlertCardController2 updateFromTrafficAlert:v14];

    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    navigationDisplay = [carChromeViewController navigationDisplay];
    [navigationDisplay setTrafficAlert:v14];
  }
}

- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  callbackCopy = callback;
  alertCopy = alert;
  v9 = [[CarTrafficAlertCardViewController alloc] initWithDelegate:self trafficAlert:alertCopy response:callbackCopy];

  [(CarNavigationModeController *)self setTrafficAlertCardController:v9];
  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  [navigationDisplay setTrafficAlert:alertCopy];

  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  v4 = [(CarNavigationModeController *)self etaCardController:service];
  [v4 updateContent];
}

- (void)navigationService:(id)service hideJunctionViewForId:(id)id
{
  self->_forceShareButtonHidden = 0;
  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:1, id];

  [(CarNavigationModeController *)self setShowingJunctionView:0];
}

- (void)navigationService:(id)service showJunctionView:(id)view
{
  self->_forceShareButtonHidden = 1;
  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:1, view];

  [(CarNavigationModeController *)self setShowingJunctionView:1];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    route = [serviceCopy route];
    [(CarNavigationModeController *)self setCurrentRoute:route];
  }
}

- (void)navigationService:(id)service didUpdateNavTrayGuidance:(id)guidance
{
  v4 = [(CarNavigationModeController *)self etaCardController:service];
  [v4 updateContent];
}

- (void)navigationService:(id)service didChangeVoiceGuidanceLevel:(unint64_t)level
{
  v4 = [(CarNavigationModeController *)self etaCardController:service];
  [v4 updateContent];
}

- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts
{
  if (!prompts)
  {
    [service stopCurrentGuidancePrompt];
  }

  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];
}

- (void)navigationService:(id)service isApproachingEndOfLeg:(unint64_t)leg
{
  v4 = [(CarNavigationModeController *)self etaCardController:service];
  [v4 updateContent];
}

- (void)navigationService:(id)service didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v5 = [(CarNavigationModeController *)self etaCardController:service];
  [v5 updateContent];
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  [(CarNavigationModeController *)self setNavigationModeState:0, waypoint, index, reason];
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];
}

- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index
{
  v4 = [(CarNavigationModeController *)self etaCardController:service];
  [v4 updateContent];
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  [(CarNavigationModeController *)self _captureCurrentNavigationModeState:service];
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  [(CarNavigationModeController *)self setCurrentRoute:reroute];
  [(CarNavigationModeController *)self _captureCurrentNavigationModeState];
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];
}

- (void)_toggleETACardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CarNavigationModeController *)self isTogglingETACard])
  {
    [(CarNavigationModeController *)self setIsTogglingETACard:1];
    etaCardController = [(CarNavigationModeController *)self etaCardController];
    isExpanded = [etaCardController isExpanded];

    objc_initWeak(&location, self);
    v10 = isExpanded ^ 1;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1005D5744;
    v33[3] = &unk_10162A208;
    v35 = isExpanded ^ 1;
    objc_copyWeak(&v34, &location);
    v11 = objc_retainBlock(v33);
    desiredCards = [(CarNavigationModeController *)self desiredCards];
    v13 = [desiredCards containsObject:@"ETA"];

    if (v13)
    {
      v14 = sub_100006E1C();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if ((isExpanded & 1) == 0)
      {
        if (v15)
        {
          v23 = @"NO";
          if (animatedCopy)
          {
            v23 = @"YES";
          }

          v24 = v23;
          *buf = 138412290;
          v38 = v24;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, Will configure card then expand tray", buf, 0xCu);
        }

        chromeViewController = [(CarNavigationModeController *)self chromeViewController];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1005D5824;
        v27[3] = &unk_101623228;
        v21 = &v29;
        objc_copyWeak(&v29, &location);
        v30 = animatedCopy;
        v28 = v11;
        [chromeViewController updateCardsForContext:self animated:0 completion:v27];
        v22 = &v28;
        goto LABEL_21;
      }

      if (v15)
      {
        v16 = @"NO";
        if (animatedCopy)
        {
          v16 = @"YES";
        }

        v17 = v16;
        *buf = 138412290;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, Will collapse tray then configure card", buf, 0xCu);
      }

      guidanceCardController = [(CarNavigationModeController *)self guidanceCardController];
      [guidanceCardController temporarilyHideJunctionViewForSeconds:0 animated:12.0];

      chromeViewController = [(CarNavigationModeController *)self etaCardController];
      v20 = v25;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1005D58D0;
      v25[3] = &unk_101661108;
      v21 = &v26;
      objc_copyWeak(&v26, &location);
      v25[4] = v11;
      [chromeViewController setExpanded:0 animated:animatedCopy completion:v25];
    }

    else
    {
      chromeViewController = [(CarNavigationModeController *)self etaCardController];
      v20 = v31;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1005D57C0;
      v31[3] = &unk_101661108;
      v21 = &v32;
      objc_copyWeak(&v32, &location);
      v31[4] = v11;
      [chromeViewController setExpanded:v10 animated:animatedCopy completion:v31];
    }

    v22 = (v20 + 4);
LABEL_21:

    objc_destroyWeak(v21);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
    return;
  }

  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (animatedCopy)
    {
      v6 = @"YES";
    }

    v7 = v6;
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, currently in the middle of expanding tray animation", buf, 0xCu);
  }
}

- (void)_setupGuidanceDisplays:(BOOL)displays
{
  guidanceObserver = [(CarNavigationModeController *)self guidanceObserver];
  guidanceCardController = [(CarNavigationModeController *)self guidanceCardController];
  [guidanceObserver addOutlet:guidanceCardController];

  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [guidanceObserver addOutlet:etaCardController];

  guidanceCardController2 = [(CarNavigationModeController *)self guidanceCardController];
  isViewLoaded = [guidanceCardController2 isViewLoaded];

  if ((isViewLoaded & 1) == 0)
  {
    guidanceCardController3 = [(CarNavigationModeController *)self guidanceCardController];
    view = [guidanceCardController3 view];

    chromeViewController = [(CarNavigationModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:0];
  }

  guidanceCardController4 = [(CarNavigationModeController *)self guidanceCardController];
  [guidanceObserver repeatAllUpdatesForOutlet:guidanceCardController4];

  etaCardController2 = [(CarNavigationModeController *)self etaCardController];
  [guidanceObserver repeatAllUpdatesForOutlet:etaCardController2];
}

- (BOOL)_shouldShowShareButton
{
  if (!MSPSharedTripSharingAvailable() || self->_forceShareButtonHidden)
  {
    return 0;
  }

  v4 = +[MSPSharedTripService sharedInstance];
  receivers = [v4 receivers];
  if ([receivers count])
  {
    v3 = 1;
  }

  else
  {
    shareEtaDisclosureAutoDismissTimer = [(CarNavigationModeController *)self shareEtaDisclosureAutoDismissTimer];
    v3 = shareEtaDisclosureAutoDismissTimer != 0;
  }

  return v3;
}

- (void)_updateShareETADisclosureAutoDismissTimer
{
  GEOConfigGetDouble();
  v4 = v3;
  objc_initWeak(&location, self);
  v5 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1005D5DA8;
  v10 = &unk_1016616E8;
  objc_copyWeak(&v11, &location);
  v6 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v7 block:v4];
  [(CarNavigationModeController *)self setShareEtaDisclosureAutoDismissTimer:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_updateShareButtonContentAndVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  [(CarETACardViewController *)self->_etaCardController updateContent];
  etaCardController = self->_etaCardController;
  v6 = [(CarNavigationModeController *)self _shouldShowShareButton]^ 1;

  [(CarETACardViewController *)etaCardController setSharingButtonHidden:v6 animated:visibilityCopy];
}

- (void)waypointsOverviewController:(id)controller didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = waypointCopy;
    v13 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "waypointsOverviewController:didSelectWaypoint:atIndex, will remove waypoint: %@, index: %ld", &v11, 0x16u);
  }

  waypointController = [(CarNavigationModeController *)self waypointController];
  [waypointController removeWaypointAt:index];

  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController captureUserAction:280 onTarget:1025];
}

- (void)waypointsOverviewControllerDidSelectAddWaypoint:(id)waypoint
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "waypointsOverviewControllerDidSelectAddWaypoint: user tapped search within waypoints overview", v7, 2u);
  }

  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController captureUserAction:6097 onTarget:1025];

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displayNavigationSearch];
}

- (void)_sendOtherEVStationsRequest
{
  v2 = +[MNNavigationService sharedService];
  arrivalInfo = [v2 arrivalInfo];

  destination = [arrivalInfo destination];
  v15[0] = &__kCFBooleanTrue;
  v14[0] = @"SearchSessionIsSearchAlongRoute";
  v14[1] = @"SearchSessionSearchAlongRouteImplicitRequestMUID";
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [destination muid]);
  v14[2] = @"SearchSessionIsSearchAlongRouteEVStationRequest";
  v15[1] = v5;
  v15[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  v7 = objc_alloc_init(SearchFieldItem);
  v8 = +[CarDisplayController sharedInstance];
  v9 = [v8 processSearchFieldItem:v7 searchInfo:0 userInfo:v6];

  v10 = sub_100006E1C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v6 objectForKeyedSubscript:@"SearchSessionIsSearchAlongRouteEVStationRequest"];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Tapped on other ev stations upon arriving at ev charging stations and muid: %@ is being sent in request.", &v12, 0xCu);
  }
}

- (void)etaCardSign:(id)sign didSelectAction:(unint64_t)action
{
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v30 = 134217984;
    actionCopy2 = action;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "etaCardSign:didSelectAction: %ld", &v30, 0xCu);
  }

  if (action > 2)
  {
    if (action <= 4)
    {
      if (action == 3)
      {
        v21 = +[MNNavigationService sharedService];
        nextWaypoint = [v21 nextWaypoint];
        shouldOfferAlternateChargersAtArrival = [nextWaypoint shouldOfferAlternateChargersAtArrival];

        if (shouldOfferAlternateChargersAtArrival)
        {
          [(CarNavigationModeController *)self _sendOtherEVStationsRequest];
          return;
        }

        chromeViewController = [(CarNavigationModeController *)self chromeViewController];
        [chromeViewController captureUserAction:292 onTarget:1001];

        v16 = +[MNNavigationService sharedService];
        [v16 advanceToNextLeg];
      }

      else
      {
        upcomingWaypoints = [(CarNavigationModeController *)self upcomingWaypoints];
        v8 = [upcomingWaypoints count];

        upcomingWaypoints2 = [(CarNavigationModeController *)self upcomingWaypoints];
        v10 = sub_1000282CC(upcomingWaypoints2, &stru_1016231D8);
        v11 = [v10 count];

        if (v8 > 1)
        {
          if (v11 <= 1)
          {
            v12 = 6097;
          }

          else
          {
            v12 = 6108;
          }

          chromeViewController2 = [(CarNavigationModeController *)self chromeViewController];
          [chromeViewController2 captureUserAction:v12 onTarget:1021];

          [(CarNavigationModeController *)self setNavigationModeState:1];
          return;
        }

        v28 = 6097;
        if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) == 0 && (MapsFeature_IsEnabled_Maps420() & 1) == 0)
        {
          if (MapsFeature_IsEnabled_Maps182())
          {
            v28 = 6097;
          }

          else
          {
            v28 = 9006;
          }
        }

        chromeViewController3 = [(CarNavigationModeController *)self chromeViewController];
        [chromeViewController3 captureUserAction:v28 onTarget:1021];

        v16 = +[CarChromeModeCoordinator sharedInstance];
        [v16 displayNavigationSearch];
      }

LABEL_38:

      return;
    }

    if (action == 5)
    {
      chromeViewController4 = [(CarNavigationModeController *)self chromeViewController];
      [chromeViewController4 captureUserAction:115 onTarget:1021];

      v16 = +[CarChromeModeCoordinator sharedInstance];
      [v16 displayIncidentReporting];
      goto LABEL_38;
    }

    if (action == 6)
    {
      chromeViewController5 = [(CarNavigationModeController *)self chromeViewController];
      [chromeViewController5 captureUserAction:9022 onTarget:1021];

      v16 = +[CarChromeModeCoordinator sharedInstance];
      [v16 displayTripSharing];
      goto LABEL_38;
    }

LABEL_25:
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = 134217984;
      actionCopy2 = action;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "etaCardContent delegate didn't handle action: %ld", &v30, 0xCu);
    }

    goto LABEL_38;
  }

  if (action)
  {
    if (action == 1)
    {
      chromeViewController6 = [(CarNavigationModeController *)self chromeViewController];
      [chromeViewController6 captureUserAction:3002 onTarget:1021];

      v16 = +[CarDisplayController sharedInstance];
      platformController = [v16 platformController];
      [platformController clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

      goto LABEL_38;
    }

    if (action == 2)
    {
      if ([(GEOComposedRoute *)self->_currentRoute isEVRoute])
      {
        v14 = 1021;
      }

      else
      {
        v14 = 1001;
      }

      chromeViewController7 = [(CarNavigationModeController *)self chromeViewController];
      [chromeViewController7 captureUserAction:6096 onTarget:v14];

      v16 = +[MNNavigationService sharedService];
      [v16 stopNavigationWithReason:3];
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  etaCardController = [(CarNavigationModeController *)self etaCardController];
  if ([etaCardController isExpanded])
  {
    v19 = 1038;
  }

  else
  {
    v19 = 1039;
  }

  chromeViewController8 = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController8 captureUserAction:v19 onTarget:1021];

  [(CarNavigationModeController *)self _toggleETACardAnimated:1];
}

- (void)_captureUserToggledCameraStyle
{
  cameraStyle = [(CarNavigationModeController *)self cameraStyle];
  if (cameraStyle == 1)
  {
    v4 = 3051;
  }

  else
  {
    v4 = 0;
  }

  if (cameraStyle == 2)
  {
    v5 = 3050;
  }

  else
  {
    v5 = v4;
  }

  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController captureUserAction:v5];
}

- (void)_captureCurrentNavigationModeState
{
  v3 = +[MNNavigationService sharedService];
  arrivalInfo = [v3 arrivalInfo];

  v4 = [arrivalInfo arrivalState] - 1;
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101212F98[v4];
  }

  [(CarNavigationModeController *)self setNavigationModeState:v5];
}

- (void)_toggleCameraStyle
{
  cameraStyleManager = [(CarNavigationModeController *)self cameraStyleManager];
  [cameraStyleManager toggleCameraStyle];

  [(CarNavigationModeController *)self _captureUserToggledCameraStyle];
}

- (void)refreshCameraTypeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateMapInsets];

  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005D6884;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [navigationDisplay configureDisplay:v9 animated:animatedCopy];

  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];
}

- (void)setTrayExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  isExpanded = [etaCardController isExpanded];

  if (isExpanded == expandedCopy)
  {

    [(CarNavigationModeController *)self _ppt_notityETATrayUpdateCompleted];
  }

  else
  {
    objc_initWeak(&location, self);
    etaCardController2 = [(CarNavigationModeController *)self etaCardController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D69FC;
    v10[3] = &unk_1016619A8;
    objc_copyWeak(&v11, &location);
    [etaCardController2 setExpanded:expandedCopy animated:animatedCopy completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)setCameraStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_cameraStyle != style)
  {
    animatedCopy = animated;
    self->_cameraStyle = style;
    etaCardController = [(CarNavigationModeController *)self etaCardController];
    [etaCardController updateContent];

    [(CarNavigationModeController *)self refreshCameraTypeAnimated:animatedCopy];
  }
}

- (void)navigationWaypointController:(id)controller didUpdateDisplayedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10099F8F0(waypointsCopy);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "navigationWaypointController:didUpdateDisplayedWaypoints: %@", &v9, 0xCu);
  }

  waypointsOverviewCardController = [(CarNavigationModeController *)self waypointsOverviewCardController];
  [waypointsOverviewCardController setWaypoints:waypointsCopy];
}

- (void)guidanceCardController:(id)controller didChangeGuidanceSignStyle:(int64_t)style userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (style)
    {
      if (style == 1)
      {
        v9 = @".Mini";
      }

      else
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v43 = "NSString * _Nonnull NSStringFromCarNavigationGuidanceSignStyle(CarNavigationGuidanceSignStyle)";
          v44 = 2080;
          v45 = "CarNavigationGuidanceSign.h";
          v46 = 1024;
          LODWORD(v47) = 37;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v11 = sub_10006D178();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v9 = @".Unknown";
      }
    }

    else
    {
      v9 = @".Default";
    }

    v13 = @"NO";
    if (initiatedCopy)
    {
      v13 = @"YES";
    }

    v14 = v13;
    *buf = 138412546;
    v43 = v9;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "guidanceCardController:didChangeNavigationSignStyle: %@ userInitiated: %@", buf, 0x16u);
  }

  self->_navigationGuidanceSignStyle = style;
  carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
  [carChromeViewController setNeedsUpdateComponent:@"cards" animated:0];

  carChromeViewController2 = [(CarNavigationModeController *)self carChromeViewController];
  [carChromeViewController2 updateComponentsIfNeeded];

  if (initiatedCopy)
  {
    if (self->_hasUserManuallyReducedAudio)
    {
      carChromeViewController4 = sub_100006E1C();
      if (os_log_type_enabled(carChromeViewController4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "guidanceCardController:didChangeNavigationSignStyle: was user initiated but the user has manually reduced audio this session so we will not change the audio settings.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, carChromeViewController4, OS_LOG_TYPE_INFO, v18, buf, 2u);
      }
    }

    else
    {
      audioPreferences = [(CarNavigationModeController *)self audioPreferences];
      v20 = [audioPreferences guidanceLevelForTransportType:0];

      v21 = [(CarNavigationModeController *)self _upcomingGuidanceLevelForGuidanceSignStyle:self->_navigationGuidanceSignStyle currentGuidanceLevel:v20];
      v22 = [NSNumber numberWithUnsignedInteger:v20];
      previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
      self->_previousGuidanceCardSignAudioSetting = v22;

      carChromeViewController4 = sub_100006E1C();
      v24 = os_log_type_enabled(carChromeViewController4, OS_LOG_TYPE_INFO);
      if (v20 == v21)
      {
        if (v24)
        {
          navigationGuidanceSignStyle = self->_navigationGuidanceSignStyle;
          if (navigationGuidanceSignStyle)
          {
            if (navigationGuidanceSignStyle == 1)
            {
              v26 = @".Mini";
            }

            else
            {
              v29 = sub_10006D178();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v43 = "NSString * _Nonnull NSStringFromCarNavigationGuidanceSignStyle(CarNavigationGuidanceSignStyle)";
                v44 = 2080;
                v45 = "CarNavigationGuidanceSign.h";
                v46 = 1024;
                LODWORD(v47) = 37;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
              }

              if (sub_100E03634())
              {
                v30 = sub_10006D178();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = +[NSThread callStackSymbols];
                  *buf = 138412290;
                  v43 = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }

              v26 = @".Unknown";
            }
          }

          else
          {
            v26 = @".Default";
          }

          if (v20 + 1 >= 4)
          {
            v32 = [NSString stringWithFormat:@"UNKNOWN: %lu", v20];
          }

          else
          {
            v32 = *(&off_101623278 + v20 + 1);
          }

          *buf = 138412546;
          v43 = v26;
          v44 = 2112;
          v45 = v32;
          _os_log_impl(&_mh_execute_header, carChromeViewController4, OS_LOG_TYPE_INFO, "guidanceCardController:didChangeCardState currentSignStyle: %@, currentGuidanceLevel: %@ -> No need to change upcoming guidance level.", buf, 0x16u);
        }
      }

      else
      {
        if (v24)
        {
          v27 = self->_navigationGuidanceSignStyle;
          if (v27)
          {
            if (v27 == 1)
            {
              v28 = @".Mini";
            }

            else
            {
              v33 = sub_10006D178();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v43 = "NSString * _Nonnull NSStringFromCarNavigationGuidanceSignStyle(CarNavigationGuidanceSignStyle)";
                v44 = 2080;
                v45 = "CarNavigationGuidanceSign.h";
                v46 = 1024;
                LODWORD(v47) = 37;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
              }

              if (sub_100E03634())
              {
                v34 = sub_10006D178();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = +[NSThread callStackSymbols];
                  *buf = 138412290;
                  v43 = v35;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }

              v28 = @".Unknown";
            }
          }

          else
          {
            v28 = @".Default";
          }

          if (v20 + 1 >= 4)
          {
            v36 = [NSString stringWithFormat:@"UNKNOWN: %lu", v20];
          }

          else
          {
            v36 = *(&off_101623278 + v20 + 1);
          }

          v37 = v36;
          if (v21 + 1 >= 4)
          {
            v38 = [NSString stringWithFormat:@"UNKNOWN: %lu", v21];
          }

          else
          {
            v38 = *(&off_101623278 + v21 + 1);
          }

          *buf = 138412802;
          v43 = v28;
          v44 = 2112;
          v45 = v37;
          v46 = 2112;
          v47 = v38;
          _os_log_impl(&_mh_execute_header, carChromeViewController4, OS_LOG_TYPE_INFO, "guidanceCardController:didChangeCardState currentSignStyle: %@, currentGuidanceLevel: %@ -> Will change guidance level to: %@.", buf, 0x20u);
        }

        carChromeViewController3 = [(CarNavigationModeController *)self carChromeViewController];
        [carChromeViewController3 interruptAutohideForIncidentalInteraction];

        audioPreferences2 = [(CarNavigationModeController *)self audioPreferences];
        [audioPreferences2 setGuidanceLevel:v21 forTransportType:0];

        audioPreferences3 = [(CarNavigationModeController *)self audioPreferences];
        [audioPreferences3 synchronize];

        carChromeViewController4 = [(CarNavigationModeController *)self carChromeViewController];
        [carChromeViewController4 setNeedsUpdateComponent:@"mapcontrols" animated:1];
      }
    }
  }

  else
  {
    carChromeViewController4 = sub_100006E1C();
    if (os_log_type_enabled(carChromeViewController4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "guidanceCardController:didChangeNavigationSignStyle: was not user initiated so we will not update audio level";
      goto LABEL_22;
    }
  }
}

- (unint64_t)_upcomingGuidanceLevelForGuidanceSignStyle:(int64_t)style currentGuidanceLevel:(unint64_t)level
{
  if (style)
  {
    if (style != 1 || level < 2)
    {
      return level;
    }

    if (level == -1)
    {
      v10 = v4;
      v11 = v5;
      v8 = sub_100006E1C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid guidance level NoOverride in CarNavigationModeController.", v9, 2u);
      }

      return 0;
    }

    if (level == 2)
    {
      return 1;
    }
  }

  previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
  if (!previousGuidanceCardSignAudioSetting)
  {
    return level;
  }

  return [(NSNumber *)previousGuidanceCardSignAudioSetting unsignedIntegerValue];
}

- (void)audioControlView:(id)view didSelectAudioType:(unint64_t)type
{
  v5 = [_TtC4Maps22NavAudioControlFactory guidanceLevelForNavAudioType:type];
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (v5 + 1 >= 4)
    {
      v7 = [NSString stringWithFormat:@"UNKNOWN: %lu", v5];
    }

    else
    {
      v7 = *(&off_101623278 + v5 + 1);
    }

    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "audioControlView:didSelectAudioType: user manually changed audio settings to: %@", buf, 0xCu);
  }

  previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
  self->_previousGuidanceCardSignAudioSetting = 0;

  self->_hasUserManuallyReducedAudio = v5 != 2;
  audioPreferences = [(CarNavigationModeController *)self audioPreferences];
  currentRoute = [(CarNavigationModeController *)self currentRoute];
  [audioPreferences setGuidanceLevel:v5 forTransportType:{objc_msgSend(currentRoute, "transportType")}];

  audioPreferences2 = [(CarNavigationModeController *)self audioPreferences];
  [audioPreferences2 synchronize];
}

- (void)audioControlUserDidChangeAudioType
{
  audioPreferences = [(CarNavigationModeController *)self audioPreferences];
  [audioPreferences loadValuesFromDefaults];

  audioPreferences2 = [(CarNavigationModeController *)self audioPreferences];
  v5 = [audioPreferences2 guidanceLevelForTransportType:0];

  previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
  self->_previousGuidanceCardSignAudioSetting = 0;

  self->_hasUserManuallyReducedAudio = v5 != 2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (pathCopy && context == &off_1016231D0 && [pathCopy isEqualToString:@"NavigationVoiceGuidanceLevelDriving"])
  {
    v13 = sub_100006E1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = changeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "NavigationVoiceGuidanceLevelDriving changed to %@", buf, 0xCu);
    }

    audioPreferences = [(CarNavigationModeController *)self audioPreferences];
    [audioPreferences loadValuesFromDefaults];

    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    etaCardController = [(CarNavigationModeController *)self etaCardController];
    [carChromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:{objc_msgSend(etaCardController, "isViewLoaded")}];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CarNavigationModeController;
    [(CarNavigationModeController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)hideAutohidingContentWithAnimation:(id)animation
{
  animationCopy = animation;
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  isExpanded = [etaCardController isExpanded];

  if (isExpanded)
  {
    -[CarNavigationModeController _toggleETACardAnimated:](self, "_toggleETACardAnimated:", [animationCopy isAnimated]);
  }
}

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  [displayCopy setCameraStyle:{-[CarNavigationModeController cameraStyle](self, "cameraStyle")}];
  [displayCopy setCameraPaused:0];
  [displayCopy setRouteGeniusEntry:0];
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  if ([(CarNavigationModeController *)self navigationModeState]== 1)
  {
    chromeViewController = [(CarNavigationModeController *)self chromeViewController];
    [chromeViewController captureUserAction:4 onTarget:1025];

    [(CarNavigationModeController *)self setNavigationModeState:0];
  }

  else
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      navigationModeState = [(CarNavigationModeController *)self navigationModeState];
      if ((navigationModeState - 1) > 5)
      {
        v7 = @"Default";
      }

      else
      {
        v7 = *(&off_101623248 + navigationModeState - 1);
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "carCardViewCloseButtonTapped in nav mode in an unexpected state: %@", &v8, 0xCu);
    }
  }
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005D79A4;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D7AC4;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  animationCopy = animation;
  [animationCopy addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005D7C0C;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [animationCopy addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005D7D70;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D7EF8;
  v7[3] = &unk_101661AE0;
  v7[4] = self;
  isAnimated = [animationCopy isAnimated];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005D80A0;
  v6[3] = &unk_101661738;
  [animationCopy addPreparation:v9 animations:v7 completion:v6];
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  currentTraits = [controller currentTraits];
  [BrowseManager precacheCategoriesForCacheKey:@"Stark-SAR" withTraits:currentTraits completion:0];
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(CarNavigationModeController *)self chromeViewController];
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

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  etaCardController = [(CarNavigationModeController *)self etaCardController];
  [etaCardController updateContent];

  etaCardController2 = [(CarNavigationModeController *)self etaCardController];
  isExpanded = [etaCardController2 isExpanded];

  etaCardController3 = [(CarNavigationModeController *)self etaCardController];
  isShowingShareETASuggestion = [etaCardController3 isShowingShareETASuggestion];

  v13 = isExpanded ^ [(CarNavigationModeController *)self isTogglingETACard];
  if ([keyCopy isEqualToString:@"Guidance"])
  {
    guidanceCardController = [(CarNavigationModeController *)self guidanceCardController];
    [cardCopy setContent:guidanceCardController];

    navigationGuidanceSignStyle = self->_navigationGuidanceSignStyle;
    v16 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v16 setEdgePosition:0];
    [(CarCardLayout *)v16 setCornerPosition:1];
    [(CarCardLayout *)v16 setPrimaryAxis:1];
    [(CarCardLayout *)v16 setPinnedEdges:0];
    [(CarCardLayout *)v16 setPrimaryAxisFillMode:0];
    v17 = 1.0;
    LODWORD(v18) = 1.0;
    [(CarCardLayout *)v16 setPrimaryAxisFillModePriority:v18];
    if (navigationGuidanceSignStyle == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (navigationGuidanceSignStyle != 1)
    {
      v17 = 1000.0;
    }

    [(CarCardLayout *)v16 setSecondaryAxisFillMode:v19];
    *&v20 = v17;
    [(CarCardLayout *)v16 setSecondaryAxisFillModePriority:v20];
    [(CarCardLayout *)v16 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v16 setFlipForRightHandDrive:1];
    v21 = v16;
    primaryAxis = [(CarCardLayout *)v21 primaryAxis];
    cornerPosition = [(CarCardLayout *)v21 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v21 cornerPosition]== 1 || [(CarCardLayout *)v21 edgePosition]== 2)
      {
        v24 = 8;
      }

      else
      {
        v24 = 0;
      }

      if ([(CarCardLayout *)v21 cornerPosition]== 8 || [(CarCardLayout *)v21 cornerPosition]== 2 || [(CarCardLayout *)v21 edgePosition]== 8)
      {
        v24 |= 2uLL;
      }

      if ([(CarCardLayout *)v21 edgePosition]== 1)
      {
        v24 |= 4uLL;
      }

      v25 = v24 | ([(CarCardLayout *)v21 edgePosition]== 4);
    }

    else
    {
      v25 = cornerPosition == 4 || [(CarCardLayout *)v21 cornerPosition]== 8 || [(CarCardLayout *)v21 edgePosition]== 4;
      if ([(CarCardLayout *)v21 cornerPosition]== 1 || [(CarCardLayout *)v21 cornerPosition]== 2 || [(CarCardLayout *)v21 edgePosition]== 1)
      {
        v25 |= 4uLL;
      }

      if ([(CarCardLayout *)v21 edgePosition]== 2)
      {
        v25 |= 8uLL;
      }

      if ([(CarCardLayout *)v21 edgePosition]== 8)
      {
        v25 |= 2uLL;
      }
    }

    [(CarCardLayout *)v21 setEdgesAffectingMapInsets:v25];
    [(CarCardLayout *)v21 setHorizontallyCenterMapInsets:0];
    LODWORD(v35) = 1148846080;
    [(CarCardLayout *)v21 setPrimaryAxisFillModePriority:v35];
    LODWORD(v36) = 1148846080;
    [(CarCardLayout *)v21 setSecondaryAxisFillModePriority:v36];
    [cardCopy setLayout:v21];
    [cardCopy setAccessoryType:0];
    guidanceCardController2 = [(CarNavigationModeController *)self guidanceCardController];
    objc_initWeak(&location, guidanceCardController2);

    if (v13)
    {
      v38 = 0;
    }

    else
    {
      v38 = v76;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_1005D911C;
      v76[3] = &unk_10165F2E8;
      v25 = &v77;
      objc_copyWeak(&v77, &location);
    }

    [cardCopy setSelectionHandler:v38];
    if ((v13 & 1) == 0)
    {
      objc_destroyWeak(v25);
    }

    objc_destroyWeak(&location);
  }

  else if ([keyCopy isEqualToString:@"ETA"])
  {
    etaCardController4 = [(CarNavigationModeController *)self etaCardController];
    [cardCopy setContent:etaCardController4];

    v27 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v27 setEdgePosition:0];
    [(CarCardLayout *)v27 setCornerPosition:4];
    [(CarCardLayout *)v27 setPrimaryAxis:1];
    [(CarCardLayout *)v27 setPinnedEdges:0];
    [(CarCardLayout *)v27 setPrimaryAxisFillMode:0];
    LODWORD(v28) = 1.0;
    [(CarCardLayout *)v27 setPrimaryAxisFillModePriority:v28];
    [(CarCardLayout *)v27 setSecondaryAxisFillMode:2];
    LODWORD(v29) = 1148846080;
    [(CarCardLayout *)v27 setSecondaryAxisFillModePriority:v29];
    [(CarCardLayout *)v27 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v27 setFlipForRightHandDrive:1];
    v30 = v27;
    primaryAxis2 = [(CarCardLayout *)v30 primaryAxis];
    cornerPosition2 = [(CarCardLayout *)v30 cornerPosition];
    if (primaryAxis2 == 1)
    {
      if (cornerPosition2 == 4 || [(CarCardLayout *)v30 cornerPosition]== 1 || [(CarCardLayout *)v30 edgePosition]== 2)
      {
        v33 = 8;
      }

      else
      {
        v33 = 0;
      }

      if ([(CarCardLayout *)v30 cornerPosition]== 8 || [(CarCardLayout *)v30 cornerPosition]== 2 || [(CarCardLayout *)v30 edgePosition]== 8)
      {
        v33 |= 2uLL;
      }

      if ([(CarCardLayout *)v30 edgePosition]== 1)
      {
        v33 |= 4uLL;
      }

      v34 = v33 | ([(CarCardLayout *)v30 edgePosition]== 4);
    }

    else
    {
      v34 = cornerPosition2 == 4 || [(CarCardLayout *)v30 cornerPosition]== 8 || [(CarCardLayout *)v30 edgePosition]== 4;
      if ([(CarCardLayout *)v30 cornerPosition]== 1 || [(CarCardLayout *)v30 cornerPosition]== 2 || [(CarCardLayout *)v30 edgePosition]== 1)
      {
        v34 |= 4uLL;
      }

      if ([(CarCardLayout *)v30 edgePosition]== 2)
      {
        v34 |= 8uLL;
      }

      if ([(CarCardLayout *)v30 edgePosition]== 8)
      {
        v34 |= 2uLL;
      }
    }

    [(CarCardLayout *)v30 setEdgesAffectingMapInsets:v34];
    [(CarCardLayout *)v30 setHorizontallyCenterMapInsets:0];
    [cardCopy setLayout:v30];

    [cardCopy setStaysOnTop:(v13 | isShowingShareETASuggestion) & 1];
    [cardCopy setAccessoryType:0];
    [cardCopy setInitialFocusSortValue:{sub_100D8E3AC(1, 0) - 1}];
    objc_initWeak(&location, self);
    autohideBehavior = [(CarNavigationModeController *)self autohideBehavior];
    if (autohideBehavior)
    {
      v49 = v74;
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_1005D91F8;
      v74[3] = &unk_10165F2E8;
      isShowingShareETASuggestion = &v75;
      objc_copyWeak(&v75, &location);
    }

    else
    {
      v49 = 0;
    }

    [cardCopy setSelectionHandler:v49];
    v59 = 0.0;
    if (v13)
    {
      +[_TtC4Maps18CarETAExpandedSign topMargin];
    }

    [cardCopy setSelectionTriggerHeight:v59];
    if (autohideBehavior)
    {
      objc_destroyWeak(isShowingShareETASuggestion);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    if (![keyCopy isEqualToString:@"Traffic Alert"])
    {
      if ([keyCopy isEqualToString:@"Compression Test"])
      {
        compressionTestCardController = [(CarNavigationModeController *)self compressionTestCardController];
        [cardCopy setContent:compressionTestCardController];

        v51 = objc_alloc_init(CarCardLayout);
        [(CarCardLayout *)v51 setEdgePosition:0];
        [(CarCardLayout *)v51 setCornerPosition:4];
        [(CarCardLayout *)v51 setPrimaryAxis:1];
        [(CarCardLayout *)v51 setPinnedEdges:0];
        [(CarCardLayout *)v51 setPrimaryAxisFillMode:0];
        LODWORD(v52) = 1.0;
        [(CarCardLayout *)v51 setPrimaryAxisFillModePriority:v52];
        [(CarCardLayout *)v51 setSecondaryAxisFillMode:2];
        LODWORD(v53) = 1148846080;
        [(CarCardLayout *)v51 setSecondaryAxisFillModePriority:v53];
        [(CarCardLayout *)v51 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
        [(CarCardLayout *)v51 setFlipForRightHandDrive:1];
        v54 = v51;
        primaryAxis3 = [(CarCardLayout *)v54 primaryAxis];
        cornerPosition3 = [(CarCardLayout *)v54 cornerPosition];
        if (primaryAxis3 == 1)
        {
          if (cornerPosition3 == 4 || [(CarCardLayout *)v54 cornerPosition]== 1 || [(CarCardLayout *)v54 edgePosition]== 2)
          {
            v57 = 8;
          }

          else
          {
            v57 = 0;
          }

          if ([(CarCardLayout *)v54 cornerPosition]== 8 || [(CarCardLayout *)v54 cornerPosition]== 2 || [(CarCardLayout *)v54 edgePosition]== 8)
          {
            v57 |= 2uLL;
          }

          if ([(CarCardLayout *)v54 edgePosition]== 1)
          {
            v57 |= 4uLL;
          }

          v58 = v57 | ([(CarCardLayout *)v54 edgePosition]== 4);
        }

        else
        {
          v58 = cornerPosition3 == 4 || [(CarCardLayout *)v54 cornerPosition]== 8 || [(CarCardLayout *)v54 edgePosition]== 4;
          if ([(CarCardLayout *)v54 cornerPosition]== 1 || [(CarCardLayout *)v54 cornerPosition]== 2 || [(CarCardLayout *)v54 edgePosition]== 1)
          {
            v58 |= 4uLL;
          }

          if ([(CarCardLayout *)v54 edgePosition]== 2)
          {
            v58 |= 8uLL;
          }

          if ([(CarCardLayout *)v54 edgePosition]== 8)
          {
            v58 |= 2uLL;
          }
        }

        [(CarCardLayout *)v54 setEdgesAffectingMapInsets:v58];
        [(CarCardLayout *)v54 setHorizontallyCenterMapInsets:0];
        [cardCopy setLayout:v54];

        v72 = cardCopy;
        v73 = 0;
      }

      else
      {
        if (![keyCopy isEqualToString:@"Stops"])
        {
          goto LABEL_153;
        }

        v61 = +[NSBundle mainBundle];
        v62 = [v61 localizedStringForKey:@"CarPlay_EditStops" value:@"localized string not found" table:0];
        [cardCopy setTitle:v62];

        waypointsOverviewCardController = [(CarNavigationModeController *)self waypointsOverviewCardController];
        [cardCopy setContent:waypointsOverviewCardController];

        v64 = objc_alloc_init(CarCardLayout);
        [(CarCardLayout *)v64 setEdgePosition:0];
        [(CarCardLayout *)v64 setCornerPosition:4];
        [(CarCardLayout *)v64 setPrimaryAxis:1];
        [(CarCardLayout *)v64 setPinnedEdges:0];
        [(CarCardLayout *)v64 setPrimaryAxisFillMode:0];
        LODWORD(v65) = 1.0;
        [(CarCardLayout *)v64 setPrimaryAxisFillModePriority:v65];
        [(CarCardLayout *)v64 setSecondaryAxisFillMode:2];
        LODWORD(v66) = 1148846080;
        [(CarCardLayout *)v64 setSecondaryAxisFillModePriority:v66];
        [(CarCardLayout *)v64 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
        [(CarCardLayout *)v64 setFlipForRightHandDrive:1];
        v67 = v64;
        primaryAxis4 = [(CarCardLayout *)v67 primaryAxis];
        cornerPosition4 = [(CarCardLayout *)v67 cornerPosition];
        if (primaryAxis4 == 1)
        {
          if (cornerPosition4 == 4 || [(CarCardLayout *)v67 cornerPosition]== 1 || [(CarCardLayout *)v67 edgePosition]== 2)
          {
            v70 = 8;
          }

          else
          {
            v70 = 0;
          }

          if ([(CarCardLayout *)v67 cornerPosition]== 8 || [(CarCardLayout *)v67 cornerPosition]== 2 || [(CarCardLayout *)v67 edgePosition]== 8)
          {
            v70 |= 2uLL;
          }

          if ([(CarCardLayout *)v67 edgePosition]== 1)
          {
            v70 |= 4uLL;
          }

          v71 = v70 | ([(CarCardLayout *)v67 edgePosition]== 4);
        }

        else
        {
          v71 = cornerPosition4 == 4 || [(CarCardLayout *)v67 cornerPosition]== 8 || [(CarCardLayout *)v67 edgePosition]== 4;
          if ([(CarCardLayout *)v67 cornerPosition]== 1 || [(CarCardLayout *)v67 cornerPosition]== 2 || [(CarCardLayout *)v67 edgePosition]== 1)
          {
            v71 |= 4uLL;
          }

          if ([(CarCardLayout *)v67 edgePosition]== 2)
          {
            v71 |= 8uLL;
          }

          if ([(CarCardLayout *)v67 edgePosition]== 8)
          {
            v71 |= 2uLL;
          }
        }

        [(CarCardLayout *)v67 setEdgesAffectingMapInsets:v71];
        [(CarCardLayout *)v67 setHorizontallyCenterMapInsets:0];
        [cardCopy setLayout:v67];

        v72 = cardCopy;
        v73 = 1;
      }

      [v72 setAccessoryType:v73];
      goto LABEL_153;
    }

    trafficAlertCardController = [(CarNavigationModeController *)self trafficAlertCardController];
    [cardCopy setContent:trafficAlertCardController];

    v40 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v40 setEdgePosition:0];
    [(CarCardLayout *)v40 setCornerPosition:4];
    [(CarCardLayout *)v40 setPrimaryAxis:1];
    [(CarCardLayout *)v40 setPinnedEdges:0];
    [(CarCardLayout *)v40 setPrimaryAxisFillMode:0];
    LODWORD(v41) = 1.0;
    [(CarCardLayout *)v40 setPrimaryAxisFillModePriority:v41];
    [(CarCardLayout *)v40 setSecondaryAxisFillMode:2];
    LODWORD(v42) = 1148846080;
    [(CarCardLayout *)v40 setSecondaryAxisFillModePriority:v42];
    [(CarCardLayout *)v40 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v40 setFlipForRightHandDrive:1];
    v43 = v40;
    primaryAxis5 = [(CarCardLayout *)v43 primaryAxis];
    cornerPosition5 = [(CarCardLayout *)v43 cornerPosition];
    if (primaryAxis5 == 1)
    {
      if (cornerPosition5 == 4 || [(CarCardLayout *)v43 cornerPosition]== 1 || [(CarCardLayout *)v43 edgePosition]== 2)
      {
        v46 = 8;
      }

      else
      {
        v46 = 0;
      }

      if ([(CarCardLayout *)v43 cornerPosition]== 8 || [(CarCardLayout *)v43 cornerPosition]== 2 || [(CarCardLayout *)v43 edgePosition]== 8)
      {
        v46 |= 2uLL;
      }

      if ([(CarCardLayout *)v43 edgePosition]== 1)
      {
        v46 |= 4uLL;
      }

      v47 = v46 | ([(CarCardLayout *)v43 edgePosition]== 4);
    }

    else
    {
      v47 = cornerPosition5 == 4 || [(CarCardLayout *)v43 cornerPosition]== 8 || [(CarCardLayout *)v43 edgePosition]== 4;
      if ([(CarCardLayout *)v43 cornerPosition]== 1 || [(CarCardLayout *)v43 cornerPosition]== 2 || [(CarCardLayout *)v43 edgePosition]== 1)
      {
        v47 |= 4uLL;
      }

      if ([(CarCardLayout *)v43 edgePosition]== 2)
      {
        v47 |= 8uLL;
      }

      if ([(CarCardLayout *)v43 edgePosition]== 8)
      {
        v47 |= 2uLL;
      }
    }

    [(CarCardLayout *)v43 setEdgesAffectingMapInsets:v47];
    [(CarCardLayout *)v43 setHorizontallyCenterMapInsets:0];
    LODWORD(v60) = 1144750080;
    [(CarCardLayout *)v43 setPrimaryAxisFillModePriority:v60];
    [cardCopy setLayout:v43];
    [cardCopy setAccessoryType:0];
  }

LABEL_153:
}

- (void)setShowingJunctionView:(BOOL)view
{
  if (self->_showingJunctionView != view)
  {
    self->_showingJunctionView = view;
    chromeViewController = [(CarNavigationModeController *)self chromeViewController];
    etaCardController = [(CarNavigationModeController *)self etaCardController];
    [chromeViewController updateCardsForContext:self animated:{objc_msgSend(etaCardController, "isViewLoaded")}];
  }
}

- (void)setCurrentRoute:(id)route
{
  routeCopy = route;
  if (([routeCopy isEqual:self->_currentRoute] & 1) == 0)
  {
    objc_storeStrong(&self->_currentRoute, route);
    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    navigationDisplay = [carChromeViewController navigationDisplay];
    [navigationDisplay updateWithRoute:self->_currentRoute];

    etaCardController = [(CarNavigationModeController *)self etaCardController];
    [etaCardController updateContent];

    carChromeViewController2 = [(CarNavigationModeController *)self carChromeViewController];
    [carChromeViewController2 updateCardsForContext:self animated:0];

    carChromeViewController3 = [(CarNavigationModeController *)self carChromeViewController];
    [carChromeViewController3 updateComponentsIfNeeded];
  }
}

- (void)setNavigationModeState:(int64_t)state
{
  if (self->_navigationModeState != state)
  {
    self->_navigationModeState = state;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if ((state - 1) > 5)
      {
        v6 = @"Default";
      }

      else
      {
        v6 = *(&off_101623248 + state - 1);
      }

      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "NavMode: setNavigationModeState: %@, -> updating chrome.", &v13, 0xCu);
    }

    etaCardController = [(CarNavigationModeController *)self etaCardController];
    isViewLoaded = [etaCardController isViewLoaded];

    carChromeViewController = [(CarNavigationModeController *)self carChromeViewController];
    [carChromeViewController updateCardsForContext:self animated:isViewLoaded];

    carChromeViewController2 = [(CarNavigationModeController *)self carChromeViewController];
    [carChromeViewController2 setNeedsUpdateComponent:@"mapcontrols" animated:isViewLoaded];

    navigationModeState = self->_navigationModeState;
    if ((navigationModeState - 3) < 4 || !navigationModeState)
    {
      etaCardController2 = [(CarNavigationModeController *)self etaCardController];
      [etaCardController2 updateContent];
    }
  }
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)waypointsOverviewCardController
{
  waypointsOverviewCardController = self->_waypointsOverviewCardController;
  if (!waypointsOverviewCardController)
  {
    v4 = [[_TtC4Maps38CarWaypointsOverviewCardViewController alloc] initWithDelegate:self];
    v5 = self->_waypointsOverviewCardController;
    self->_waypointsOverviewCardController = v4;

    waypointsOverviewCardController = self->_waypointsOverviewCardController;
  }

  return waypointsOverviewCardController;
}

- (void)setTrafficAlertCardController:(id)controller
{
  controllerCopy = controller;
  if (self->_trafficAlertCardController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_trafficAlertCardController, controller);
    [(CarNavigationModeController *)self setNavigationModeState:2 * (self->_trafficAlertCardController != 0)];
    controllerCopy = v6;
  }
}

- (BOOL)shouldSuppressAutohideRecognizerForTouch:(id)touch
{
  touchCopy = touch;
  if ([(CarNavigationModeController *)self cameraStyle]== 2)
  {
    mapView = [(CarNavigationModeController *)self mapView];
    [touchCopy locationInView:mapView];
    v7 = v6;
    v9 = v8;

    chromeViewController = [(CarNavigationModeController *)self chromeViewController];
    routeAnnotationsController = [chromeViewController routeAnnotationsController];
    configuration = [routeAnnotationsController configuration];

    mapView2 = [(CarNavigationModeController *)self mapView];
    routes = [configuration routes];
    selectedRoute = [configuration selectedRoute];
    v16 = +[MNNavigationService sharedService];
    v17 = sub_1007D8258(v16);
    v18 = [RouteAnnotationsResponder routeAtPoint:mapView2 inMapView:routes withRoutes:selectedRoute selectedRoute:v17 overlappingRouteSelectorBlock:v7, v9];

    if (v18)
    {
      currentRoute = [(CarNavigationModeController *)self currentRoute];
      v20 = v18 != currentRoute;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)mapView
{
  chromeViewController = [(CarNavigationModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (CarNavigationModeController)init
{
  v16.receiver = self;
  v16.super_class = CarNavigationModeController;
  v2 = [(CarNavigationModeController *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    invalidatedAlertIds = v2->_invalidatedAlertIds;
    v2->_invalidatedAlertIds = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1005D9A3C, @"com.apple.maps.compressionTest", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 addObserver:v2 forKeyPath:@"NavigationVoiceGuidanceLevelDriving" options:0 context:&off_1016231D0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_compressionTestNotification:" name:@"com.apple.maps.compressionTest" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"carShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification:" name:@"CarShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"carShareETAInfoViewDidInteractWithShareETASuggestionNotification:" name:@"CarShareETAInfoViewDidInteractWithShareETASuggestionNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[_TtC4Maps22NavAudioControlFactory audioTypeNotification];
    [v10 addObserver:v2 selector:"audioControlUserDidChangeAudioType" name:v11 object:0];

    v12 = +[CarChromeNavigationCameraStyleManager sharedInstance];
    [(CarNavigationModeController *)v2 setCameraStyleManager:v12];

    cameraStyleManager = [(CarNavigationModeController *)v2 cameraStyleManager];
    [cameraStyleManager registerObserver:v2];

    v2->_navigationGuidanceSignStyle = 0;
    v14 = +[TrafficIncidentLayoutManager sharedInstance];
    [v14 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.maps.compressionTest", 0);
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"NavigationVoiceGuidanceLevelDriving"];

  [(CarChromeNavigationCameraStyleManager *)self->_cameraStyleManager unregisterObserver:self];
  v5 = +[TrafficIncidentLayoutManager sharedInstance];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CarNavigationModeController;
  [(CarNavigationModeController *)&v6 dealloc];
}

@end