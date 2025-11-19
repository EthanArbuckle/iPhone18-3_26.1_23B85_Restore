@interface CarNavigationModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (AudioPreferences)audioPreferences;
- (BOOL)_shouldShowShareButton;
- (BOOL)isSharingTrip;
- (BOOL)shouldSuppressAutohideRecognizerForTouch:(id)a3;
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
- (unint64_t)_upcomingGuidanceLevelForGuidanceSignStyle:(int64_t)a3 currentGuidanceLevel:(unint64_t)a4;
- (unint64_t)audioSettingsCurrentState;
- (void)_captureCurrentNavigationModeState;
- (void)_captureUserToggledCameraStyle;
- (void)_completeTrafficIncidentAlert:(id)a3;
- (void)_loadCompressionTestCardWithHeight:(double)a3 priority:(float)a4;
- (void)_maneuverBannerViewEVStationsNotification:(id)a3;
- (void)_sendOtherEVStationsRequest;
- (void)_setupGuidanceDisplays:(BOOL)a3;
- (void)_toggleCameraStyle;
- (void)_toggleETACardAnimated:(BOOL)a3;
- (void)_updateShareButtonContentAndVisibility:(BOOL)a3;
- (void)_updateShareETADisclosureAutoDismissTimer;
- (void)audioControlUserDidChangeAudioType;
- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)carShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification:(id)a3;
- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4;
- (void)chromeNavigationDisplay:(id)a3 userDidTapMap:(id)a4 atPoint:(CGPoint)a5;
- (void)compressionTestCard:(id)a3 reloadWithSpacerHeight:(double)a4 priority:(float)a5;
- (void)compressionTestCardRequestsDismiss:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)dealloc;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)etaCardSign:(id)a3 didSelectAction:(unint64_t)a4;
- (void)guidanceCardController:(id)a3 didChangeGuidanceSignStyle:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)hideAutohidingContentWithAnimation:(id)a3;
- (void)incidentsReportingEnablementDidUpdate;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeVoiceGuidanceLevel:(unint64_t)a4;
- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4;
- (void)navigationService:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateNavTrayGuidance:(id)a4;
- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationService:(id)a3 showJunctionView:(id)a4;
- (void)navigationWaypointController:(id)a3 didUpdateDisplayedWaypoints:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)refreshCameraTypeAnimated:(BOOL)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setCurrentRoute:(id)a3;
- (void)setNavigationModeState:(int64_t)a3;
- (void)setShowingJunctionView:(BOOL)a3;
- (void)setTrafficAlertCardController:(id)a3;
- (void)setTrayExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4;
- (void)trafficAlertCardViewControllerDismiss:(id)a3;
- (void)waypointsOverviewController:(id)a3 didSelectWaypoint:(id)a4 atIndex:(unint64_t)a5;
- (void)waypointsOverviewControllerDidSelectAddWaypoint:(id)a3;
@end

@implementation CarNavigationModeController

- (CarETACardViewController)etaCardController
{
  etaCardController = self->_etaCardController;
  if (!etaCardController)
  {
    v4 = [CarETACardViewController alloc];
    v5 = [(CarNavigationModeController *)self carChromeViewController];
    v6 = [(CarETACardViewController *)v4 initWithDataSource:self delegate:self interruptPresenter:v5];
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
  v3 = [v2 receivers];

  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [v4 displayName];
      if ([v5 length])
      {
        v6 = +[NSBundle mainBundle];
        v7 = [v6 localizedStringForKey:@"CarPlay_ShareTripButton_OneContact" value:@"localized string not found" table:0];
        v8 = [NSString stringWithFormat:v7, v5];

        goto LABEL_8;
      }
    }

    v4 = +[NSBundle mainBundle];
    v9 = [v4 localizedStringForKey:@"CarPlay_ShareTripButton" value:@"localized string not found" table:0];
    v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, [v3 count]);
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v8 = [v4 localizedStringForKey:@"[NavTray] Share ETA" value:@"localized string not found" table:0];
  }

LABEL_8:

  return v8;
}

- (id)contactSharingSuggestion
{
  v2 = [(CarNavigationModeController *)self currentRoute];
  v3 = [v2 shareETAWaypointContacts];

  if ([v3 count] == 1)
  {
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSharingTrip
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 receivers];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)upcomingWaypoints
{
  v2 = [(CarNavigationModeController *)self waypointController];
  v3 = [v2 displayedWaypoints];

  return v3;
}

- (_TtC4Maps28NavigationWaypointController)waypointController
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 platformController];

  v4 = [v3 currentNavigationSession];
  v5 = [v4 waypointController];

  if (!v5)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Couldn't find a navigation waypoint controller within car nav context.", v8, 2u);
    }
  }

  return v5;
}

- (NSString)arrivalTitle
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 arrivalChargingStationInfo];

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isArrivedAtEVCharger];

  if (v6)
  {
    v7 = +[MNNavigationService sharedService];
    v8 = [v7 activeNavTrayGuidanceEvent];

    [v4 chargingTime];
    if (v9 <= 0.0)
    {
      v10 = +[NSBundle mainBundle];
      v15 = [v10 localizedStringForKey:@"Charged [Nav Tray Header Title]" value:@"localized string not found" table:0];
    }

    else
    {
      if (v8)
      {
        v10 = [v8 title];
        v11 = [v10 stringWithDefaultOptions];
LABEL_18:

        goto LABEL_19;
      }

      v10 = +[NSBundle mainBundle];
      v15 = [v10 localizedStringForKey:@"Charging [Nav Tray Header Title]" value:@"localized string not found" table:0];
      [v4 batteryPercentageAfterCharging];
      v18 = v16;
    }

    v11 = [NSString stringWithFormat:v15, v18];

    goto LABEL_18;
  }

  v12 = [(CarNavigationModeController *)self navigationModeState];
  v11 = 0;
  if (v12 > 4)
  {
    if (v12 == 5)
    {
      v13 = +[NSBundle mainBundle];
      v8 = v13;
      v14 = @"Arriving [Nav Tray Header]";
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_20;
      }

      v13 = +[NSBundle mainBundle];
      v8 = v13;
      v14 = @"Arrived [Nav Tray Header]";
    }
  }

  else if (v12 == 3)
  {
    v13 = +[NSBundle mainBundle];
    v8 = v13;
    v14 = @"Parking [Nav Tray Header]";
  }

  else
  {
    if (v12 != 4)
    {
      goto LABEL_20;
    }

    v13 = +[NSBundle mainBundle];
    v8 = v13;
    v14 = @"Parked [Nav Tray Header]";
  }

  v11 = [v13 localizedStringForKey:v14 value:@"localized string not found" table:0];
LABEL_19:

LABEL_20:

  return v11;
}

- (NSString)arrivalSubtitle
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 arrivalInfo];

  v5 = [v4 destination];
  v6 = +[MNNavigationService sharedService];
  v7 = [v6 arrivalChargingStationInfo];

  v8 = +[MNNavigationService sharedService];
  v9 = [v8 isArrivedAtEVCharger];

  if (v9)
  {
    v10 = +[MNNavigationService sharedService];
    v11 = [v10 activeNavTrayGuidanceEvent];

    [v7 chargingTime];
    if (v12 <= 0.0)
    {
      v13 = +[NSBundle mainBundle];
      v16 = [v13 localizedStringForKey:@"Charged [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
      v17 = +[MNNavigationService sharedService];
      v18 = [v17 stopAfterCharging];
      v19 = [v18 navDisplayName];
      v14 = [NSString stringWithFormat:v16, v19];
    }

    else
    {
      if (v11)
      {
        v13 = [v11 detail];
        v14 = [v13 stringWithDefaultOptions];
LABEL_13:

        goto LABEL_14;
      }

      v13 = +[NSBundle mainBundle];
      v16 = [v13 localizedStringForKey:@"Charging [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
      [v7 chargingTime];
      v17 = [NSString _navigation_stringWithSeconds:v22 abbreviated:1];
      v14 = [NSString stringWithFormat:v16, v17];
    }

    goto LABEL_13;
  }

  v15 = [(CarNavigationModeController *)self navigationModeState];
  if ((v15 - 5) < 2)
  {
    v20 = +[MNNavigationService sharedService];
    v21 = [v20 route];

    v14 = [v21 arrivalInstructionStringForLegIndex:{objc_msgSend(v4, "legIndex")}];
  }

  else if ((v15 - 3) > 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v5 parkingDisplayName];
  }

LABEL_14:

  return v14;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (id)desiredCards
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  v4 = [(CarNavigationModeController *)self compressionTestCardController];

  if (v4)
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
    v8 = [(CarNavigationModeController *)self carChromeViewController];
    v9 = [v8 navigationDisplay];
    v10 = [v9 isCameraPanning];

    v11 = [(CarNavigationModeController *)self carChromeViewController];
    v12 = [v11 navigationDisplay];
    v13 = [v12 isNonDefaultZoom];

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
    if (((v10 | v13) & 1) == 0)
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
  v2 = [(CarNavigationModeController *)self audioPreferences];
  v3 = [v2 guidanceLevelForTransportType:0];

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
  v3 = [v2 guidanceObserver];

  return v3;
}

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarNavigationModeController: incidentsReportingEnablementDidUpdate", v5, 2u);
  }

  v4 = [(CarNavigationModeController *)self carChromeViewController];
  [v4 setNeedsUpdateComponent:@"mapcontrols" animated:1];
}

- (void)_maneuverBannerViewEVStationsNotification:(id)a3
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

- (void)carShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification:(id)a3
{
  v4 = [(CarNavigationModeController *)self carChromeViewController];
  [v4 updateCardsForContext:self animated:1 completion:0];

  v5 = [(CarNavigationModeController *)self carChromeViewController];
  [v5 updateComponentsIfNeeded];
}

- (void)chromeNavigationDisplay:(id)a3 userDidTapMap:(id)a4 atPoint:(CGPoint)a5
{
  v5 = [(CarNavigationModeController *)self guidanceCardController:a3];
  [v5 temporarilyHideJunctionViewForSeconds:0 animated:12.0];
}

- (void)chromeNavigationDisplay:(id)a3 configurationDidChange:(id)a4
{
  v4 = [(CarNavigationModeController *)self carChromeViewController:a3];
  [v4 setNeedsUpdateComponent:@"mapcontrols" animated:1];
}

- (NSArray)carFocusOrderSequences
{
  v14 = [(CarNavigationModeController *)self chromeViewController];
  v13 = [v14 itemRepresentingStatusBanner];
  v15[0] = v13;
  v3 = [(CarNavigationModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingOverlays];
  v15[1] = v4;
  v5 = [(CarNavigationModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingAlternateRoutes];
  v15[2] = v6;
  v7 = [(CarNavigationModeController *)self chromeViewController];
  v8 = [v7 itemRepresentingMapControls];
  v15[3] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:4];
  v10 = [CarFocusOrderSequence sequenceWithItems:v9 options:5];
  v16 = v10;
  v11 = [NSArray arrayWithObjects:&v16 count:1];

  return v11;
}

- (void)compressionTestCardRequestsDismiss:(id)a3
{
  [(CarNavigationModeController *)self setCompressionTestCardController:0];
  v4 = [(CarNavigationModeController *)self chromeViewController];
  [v4 updateCardsForContext:self animated:1];
}

- (void)compressionTestCard:(id)a3 reloadWithSpacerHeight:(double)a4 priority:(float)a5
{
  [(CarNavigationModeController *)self setCompressionTestCardController:0];
  v8 = [(CarNavigationModeController *)self chromeViewController];
  [v8 updateCardsForContext:self animated:1];

  v9 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005D4800;
  block[3] = &unk_10165FDC8;
  block[4] = self;
  *&block[5] = a4;
  v11 = a5;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)_loadCompressionTestCardWithHeight:(double)a3 priority:(float)a4
{
  v7 = +[GEOPlatform sharedPlatform];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    v9 = objc_alloc_init(CarCompressionTestCardViewController);
    [(CarNavigationModeController *)self setCompressionTestCardController:v9];

    v10 = [(CarNavigationModeController *)self compressionTestCardController];
    [v10 setDelegate:self];

    if (a3 >= 0.0)
    {
      v11 = [(CarNavigationModeController *)self compressionTestCardController];
      [v11 setSpacerHeight:a3];
    }

    if (a4 >= 0.0)
    {
      v12 = [(CarNavigationModeController *)self compressionTestCardController];
      *&v13 = a4;
      [v12 setSpacerPriority:v13];
    }

    v14 = [(CarNavigationModeController *)self carChromeViewController];
    [v14 updateCardsForContext:self animated:1];
  }
}

- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4
{
  v5 = a4;
  v6 = [(CarNavigationModeController *)self _shouldShowShareButton];
  v7 = [v5 count];

  if (v7)
  {
    v8 = [(CarNavigationModeController *)self etaCardController];
    v9 = [v8 isShowingShareETASuggestion];

    if (v9)
    {
      [(CarNavigationModeController *)self _updateShareETADisclosureAutoDismissTimer];
    }

    else
    {
      [(CarNavigationModeController *)self setShareEtaDisclosureAutoDismissTimer:0];
    }
  }

  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:v6 ^ 1];
  v10 = +[UIApplication _maps_keyMapsSceneDelegate];
  [v10 setNeedsUserActivityUpdate];
}

- (void)trafficAlertCardViewControllerDismiss:(id)a3
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v5 = a3;
  v6 = [v5 trafficAlert];
  v7 = [v6 alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:v7];

  v15 = @"kCarTrafficAlertIdKey";
  v8 = [v5 trafficAlert];

  v9 = [v8 alertID];
  v16 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"CarTrafficAlertDidChangeVisibility" object:0 userInfo:v10];

  [(CarNavigationModeController *)self setTrafficAlertCardController:0];
  v12 = [(CarNavigationModeController *)self carChromeViewController];
  v13 = [v12 navigationDisplay];
  [v13 setTrafficAlert:0];

  v14 = [(CarNavigationModeController *)self chromeViewController];
  [v14 updateCardsForContext:self animated:1];
}

- (void)_completeTrafficIncidentAlert:(id)a3
{
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v5 = [a3 alertID];
  [(NSMutableSet *)invalidatedAlertIds addObject:v5];

  v6 = [(CarNavigationModeController *)self trafficAlertCardController];

  if (v6)
  {
    [(CarNavigationModeController *)self setTrafficAlertCardController:0];
    v7 = [(CarNavigationModeController *)self chromeViewController];
    [v7 updateCardsForContext:self animated:1];
  }

  v9 = [(CarNavigationModeController *)self carChromeViewController];
  v8 = [v9 navigationDisplay];
  [v8 setTrafficAlert:0];
}

- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4
{
  v5 = a4;
  invalidatedAlertIds = self->_invalidatedAlertIds;
  v14 = v5;
  v7 = [v5 alertID];
  LOBYTE(invalidatedAlertIds) = [(NSMutableSet *)invalidatedAlertIds containsObject:v7];

  if ((invalidatedAlertIds & 1) == 0)
  {
    v8 = [(CarNavigationModeController *)self trafficAlertCardController];

    if (!v8)
    {
      v9 = [[CarTrafficAlertCardViewController alloc] initWithDelegate:self trafficAlert:v14 response:0];
      [(CarNavigationModeController *)self setTrafficAlertCardController:v9];

      v10 = [(CarNavigationModeController *)self chromeViewController];
      [v10 updateCardsForContext:self animated:1];
    }

    v11 = [(CarNavigationModeController *)self trafficAlertCardController];
    [v11 updateFromTrafficAlert:v14];

    v12 = [(CarNavigationModeController *)self carChromeViewController];
    v13 = [v12 navigationDisplay];
    [v13 setTrafficAlert:v14];
  }
}

- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[CarTrafficAlertCardViewController alloc] initWithDelegate:self trafficAlert:v8 response:v7];

  [(CarNavigationModeController *)self setTrafficAlertCardController:v9];
  v10 = [(CarNavigationModeController *)self carChromeViewController];
  v11 = [v10 navigationDisplay];
  [v11 setTrafficAlert:v8];

  v12 = [(CarNavigationModeController *)self chromeViewController];
  [v12 updateCardsForContext:self animated:1];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v4 = [(CarNavigationModeController *)self etaCardController:a3];
  [v4 updateContent];
}

- (void)navigationService:(id)a3 hideJunctionViewForId:(id)a4
{
  self->_forceShareButtonHidden = 0;
  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:1, a4];

  [(CarNavigationModeController *)self setShowingJunctionView:0];
}

- (void)navigationService:(id)a3 showJunctionView:(id)a4
{
  self->_forceShareButtonHidden = 1;
  [(CarNavigationModeController *)self _updateShareButtonContentAndVisibility:1, a4];

  [(CarNavigationModeController *)self setShowingJunctionView:1];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = [v7 route];
    [(CarNavigationModeController *)self setCurrentRoute:v6];
  }
}

- (void)navigationService:(id)a3 didUpdateNavTrayGuidance:(id)a4
{
  v4 = [(CarNavigationModeController *)self etaCardController:a3];
  [v4 updateContent];
}

- (void)navigationService:(id)a3 didChangeVoiceGuidanceLevel:(unint64_t)a4
{
  v4 = [(CarNavigationModeController *)self etaCardController:a3];
  [v4 updateContent];
}

- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4
{
  if (!a4)
  {
    [a3 stopCurrentGuidancePrompt];
  }

  v5 = [(CarNavigationModeController *)self etaCardController];
  [v5 updateContent];
}

- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v4 = [(CarNavigationModeController *)self etaCardController:a3];
  [v4 updateContent];
}

- (void)navigationService:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v5 = [(CarNavigationModeController *)self etaCardController:a3];
  [v5 updateContent];
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  [(CarNavigationModeController *)self setNavigationModeState:0, a4, a5, a6];
  v7 = [(CarNavigationModeController *)self etaCardController];
  [v7 updateContent];
}

- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  v4 = [(CarNavigationModeController *)self etaCardController:a3];
  [v4 updateContent];
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  [(CarNavigationModeController *)self _captureCurrentNavigationModeState:a3];
  v6 = [(CarNavigationModeController *)self etaCardController];
  [v6 updateContent];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  [(CarNavigationModeController *)self setCurrentRoute:a4];
  [(CarNavigationModeController *)self _captureCurrentNavigationModeState];
  v6 = [(CarNavigationModeController *)self etaCardController];
  [v6 updateContent];
}

- (void)_toggleETACardAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(CarNavigationModeController *)self isTogglingETACard])
  {
    [(CarNavigationModeController *)self setIsTogglingETACard:1];
    v8 = [(CarNavigationModeController *)self etaCardController];
    v9 = [v8 isExpanded];

    objc_initWeak(&location, self);
    v10 = v9 ^ 1;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1005D5744;
    v33[3] = &unk_10162A208;
    v35 = v9 ^ 1;
    objc_copyWeak(&v34, &location);
    v11 = objc_retainBlock(v33);
    v12 = [(CarNavigationModeController *)self desiredCards];
    v13 = [v12 containsObject:@"ETA"];

    if (v13)
    {
      v14 = sub_100006E1C();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if ((v9 & 1) == 0)
      {
        if (v15)
        {
          v23 = @"NO";
          if (v3)
          {
            v23 = @"YES";
          }

          v24 = v23;
          *buf = 138412290;
          v38 = v24;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, Will configure card then expand tray", buf, 0xCu);
        }

        v19 = [(CarNavigationModeController *)self chromeViewController];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1005D5824;
        v27[3] = &unk_101623228;
        v21 = &v29;
        objc_copyWeak(&v29, &location);
        v30 = v3;
        v28 = v11;
        [v19 updateCardsForContext:self animated:0 completion:v27];
        v22 = &v28;
        goto LABEL_21;
      }

      if (v15)
      {
        v16 = @"NO";
        if (v3)
        {
          v16 = @"YES";
        }

        v17 = v16;
        *buf = 138412290;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, Will collapse tray then configure card", buf, 0xCu);
      }

      v18 = [(CarNavigationModeController *)self guidanceCardController];
      [v18 temporarilyHideJunctionViewForSeconds:0 animated:12.0];

      v19 = [(CarNavigationModeController *)self etaCardController];
      v20 = v25;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1005D58D0;
      v25[3] = &unk_101661108;
      v21 = &v26;
      objc_copyWeak(&v26, &location);
      v25[4] = v11;
      [v19 setExpanded:0 animated:v3 completion:v25];
    }

    else
    {
      v19 = [(CarNavigationModeController *)self etaCardController];
      v20 = v31;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1005D57C0;
      v31[3] = &unk_101661108;
      v21 = &v32;
      objc_copyWeak(&v32, &location);
      v31[4] = v11;
      [v19 setExpanded:v10 animated:v3 completion:v31];
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
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_toggleETACardAnimated:%@, currently in the middle of expanding tray animation", buf, 0xCu);
  }
}

- (void)_setupGuidanceDisplays:(BOOL)a3
{
  v13 = [(CarNavigationModeController *)self guidanceObserver];
  v4 = [(CarNavigationModeController *)self guidanceCardController];
  [v13 addOutlet:v4];

  v5 = [(CarNavigationModeController *)self etaCardController];
  [v13 addOutlet:v5];

  v6 = [(CarNavigationModeController *)self guidanceCardController];
  v7 = [v6 isViewLoaded];

  if ((v7 & 1) == 0)
  {
    v8 = [(CarNavigationModeController *)self guidanceCardController];
    v9 = [v8 view];

    v10 = [(CarNavigationModeController *)self chromeViewController];
    [v10 updateCardsForContext:self animated:0];
  }

  v11 = [(CarNavigationModeController *)self guidanceCardController];
  [v13 repeatAllUpdatesForOutlet:v11];

  v12 = [(CarNavigationModeController *)self etaCardController];
  [v13 repeatAllUpdatesForOutlet:v12];
}

- (BOOL)_shouldShowShareButton
{
  if (!MSPSharedTripSharingAvailable() || self->_forceShareButtonHidden)
  {
    return 0;
  }

  v4 = +[MSPSharedTripService sharedInstance];
  v5 = [v4 receivers];
  if ([v5 count])
  {
    v3 = 1;
  }

  else
  {
    v6 = [(CarNavigationModeController *)self shareEtaDisclosureAutoDismissTimer];
    v3 = v6 != 0;
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

- (void)_updateShareButtonContentAndVisibility:(BOOL)a3
{
  v3 = a3;
  [(CarETACardViewController *)self->_etaCardController updateContent];
  etaCardController = self->_etaCardController;
  v6 = [(CarNavigationModeController *)self _shouldShowShareButton]^ 1;

  [(CarETACardViewController *)etaCardController setSharingButtonHidden:v6 animated:v3];
}

- (void)waypointsOverviewController:(id)a3 didSelectWaypoint:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a4;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2048;
    v14 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "waypointsOverviewController:didSelectWaypoint:atIndex, will remove waypoint: %@, index: %ld", &v11, 0x16u);
  }

  v9 = [(CarNavigationModeController *)self waypointController];
  [v9 removeWaypointAt:a5];

  v10 = [(CarNavigationModeController *)self chromeViewController];
  [v10 captureUserAction:280 onTarget:1025];
}

- (void)waypointsOverviewControllerDidSelectAddWaypoint:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "waypointsOverviewControllerDidSelectAddWaypoint: user tapped search within waypoints overview", v7, 2u);
  }

  v5 = [(CarNavigationModeController *)self chromeViewController];
  [v5 captureUserAction:6097 onTarget:1025];

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displayNavigationSearch];
}

- (void)_sendOtherEVStationsRequest
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 arrivalInfo];

  v4 = [v3 destination];
  v15[0] = &__kCFBooleanTrue;
  v14[0] = @"SearchSessionIsSearchAlongRoute";
  v14[1] = @"SearchSessionSearchAlongRouteImplicitRequestMUID";
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 muid]);
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

- (void)etaCardSign:(id)a3 didSelectAction:(unint64_t)a4
{
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v30 = 134217984;
    v31 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "etaCardSign:didSelectAction: %ld", &v30, 0xCu);
  }

  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v21 = +[MNNavigationService sharedService];
        v22 = [v21 nextWaypoint];
        v23 = [v22 shouldOfferAlternateChargersAtArrival];

        if (v23)
        {
          [(CarNavigationModeController *)self _sendOtherEVStationsRequest];
          return;
        }

        v27 = [(CarNavigationModeController *)self chromeViewController];
        [v27 captureUserAction:292 onTarget:1001];

        v16 = +[MNNavigationService sharedService];
        [v16 advanceToNextLeg];
      }

      else
      {
        v7 = [(CarNavigationModeController *)self upcomingWaypoints];
        v8 = [v7 count];

        v9 = [(CarNavigationModeController *)self upcomingWaypoints];
        v10 = sub_1000282CC(v9, &stru_1016231D8);
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

          v13 = [(CarNavigationModeController *)self chromeViewController];
          [v13 captureUserAction:v12 onTarget:1021];

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

        v29 = [(CarNavigationModeController *)self chromeViewController];
        [v29 captureUserAction:v28 onTarget:1021];

        v16 = +[CarChromeModeCoordinator sharedInstance];
        [v16 displayNavigationSearch];
      }

LABEL_38:

      return;
    }

    if (a4 == 5)
    {
      v24 = [(CarNavigationModeController *)self chromeViewController];
      [v24 captureUserAction:115 onTarget:1021];

      v16 = +[CarChromeModeCoordinator sharedInstance];
      [v16 displayIncidentReporting];
      goto LABEL_38;
    }

    if (a4 == 6)
    {
      v17 = [(CarNavigationModeController *)self chromeViewController];
      [v17 captureUserAction:9022 onTarget:1021];

      v16 = +[CarChromeModeCoordinator sharedInstance];
      [v16 displayTripSharing];
      goto LABEL_38;
    }

LABEL_25:
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = 134217984;
      v31 = a4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "etaCardContent delegate didn't handle action: %ld", &v30, 0xCu);
    }

    goto LABEL_38;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v25 = [(CarNavigationModeController *)self chromeViewController];
      [v25 captureUserAction:3002 onTarget:1021];

      v16 = +[CarDisplayController sharedInstance];
      v26 = [v16 platformController];
      [v26 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

      goto LABEL_38;
    }

    if (a4 == 2)
    {
      if ([(GEOComposedRoute *)self->_currentRoute isEVRoute])
      {
        v14 = 1021;
      }

      else
      {
        v14 = 1001;
      }

      v15 = [(CarNavigationModeController *)self chromeViewController];
      [v15 captureUserAction:6096 onTarget:v14];

      v16 = +[MNNavigationService sharedService];
      [v16 stopNavigationWithReason:3];
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v18 = [(CarNavigationModeController *)self etaCardController];
  if ([v18 isExpanded])
  {
    v19 = 1038;
  }

  else
  {
    v19 = 1039;
  }

  v20 = [(CarNavigationModeController *)self chromeViewController];
  [v20 captureUserAction:v19 onTarget:1021];

  [(CarNavigationModeController *)self _toggleETACardAnimated:1];
}

- (void)_captureUserToggledCameraStyle
{
  v3 = [(CarNavigationModeController *)self cameraStyle];
  if (v3 == 1)
  {
    v4 = 3051;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    v5 = 3050;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(CarNavigationModeController *)self chromeViewController];
  [v6 captureUserAction:v5];
}

- (void)_captureCurrentNavigationModeState
{
  v3 = +[MNNavigationService sharedService];
  v6 = [v3 arrivalInfo];

  v4 = [v6 arrivalState] - 1;
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
  v3 = [(CarNavigationModeController *)self cameraStyleManager];
  [v3 toggleCameraStyle];

  [(CarNavigationModeController *)self _captureUserToggledCameraStyle];
}

- (void)refreshCameraTypeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarNavigationModeController *)self chromeViewController];
  [v5 setNeedsUpdateMapInsets];

  v6 = [(CarNavigationModeController *)self carChromeViewController];
  v7 = [v6 navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005D6884;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [v7 configureDisplay:v9 animated:v3];

  v8 = [(CarNavigationModeController *)self etaCardController];
  [v8 updateContent];
}

- (void)setTrayExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CarNavigationModeController *)self etaCardController];
  v8 = [v7 isExpanded];

  if (v8 == v5)
  {

    [(CarNavigationModeController *)self _ppt_notityETATrayUpdateCompleted];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = [(CarNavigationModeController *)self etaCardController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D69FC;
    v10[3] = &unk_1016619A8;
    objc_copyWeak(&v11, &location);
    [v9 setExpanded:v5 animated:v4 completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)setCameraStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_cameraStyle != a3)
  {
    v5 = a4;
    self->_cameraStyle = a3;
    v7 = [(CarNavigationModeController *)self etaCardController];
    [v7 updateContent];

    [(CarNavigationModeController *)self refreshCameraTypeAnimated:v5];
  }
}

- (void)navigationWaypointController:(id)a3 didUpdateDisplayedWaypoints:(id)a4
{
  v5 = a4;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10099F8F0(v5);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "navigationWaypointController:didUpdateDisplayedWaypoints: %@", &v9, 0xCu);
  }

  v8 = [(CarNavigationModeController *)self waypointsOverviewCardController];
  [v8 setWaypoints:v5];
}

- (void)guidanceCardController:(id)a3 didChangeGuidanceSignStyle:(int64_t)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (a4)
    {
      if (a4 == 1)
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
    if (v5)
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

  self->_navigationGuidanceSignStyle = a4;
  v15 = [(CarNavigationModeController *)self carChromeViewController];
  [v15 setNeedsUpdateComponent:@"cards" animated:0];

  v16 = [(CarNavigationModeController *)self carChromeViewController];
  [v16 updateComponentsIfNeeded];

  if (v5)
  {
    if (self->_hasUserManuallyReducedAudio)
    {
      v17 = sub_100006E1C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "guidanceCardController:didChangeNavigationSignStyle: was user initiated but the user has manually reduced audio this session so we will not change the audio settings.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
      }
    }

    else
    {
      v19 = [(CarNavigationModeController *)self audioPreferences];
      v20 = [v19 guidanceLevelForTransportType:0];

      v21 = [(CarNavigationModeController *)self _upcomingGuidanceLevelForGuidanceSignStyle:self->_navigationGuidanceSignStyle currentGuidanceLevel:v20];
      v22 = [NSNumber numberWithUnsignedInteger:v20];
      previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
      self->_previousGuidanceCardSignAudioSetting = v22;

      v17 = sub_100006E1C();
      v24 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
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
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "guidanceCardController:didChangeCardState currentSignStyle: %@, currentGuidanceLevel: %@ -> No need to change upcoming guidance level.", buf, 0x16u);
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
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "guidanceCardController:didChangeCardState currentSignStyle: %@, currentGuidanceLevel: %@ -> Will change guidance level to: %@.", buf, 0x20u);
        }

        v39 = [(CarNavigationModeController *)self carChromeViewController];
        [v39 interruptAutohideForIncidentalInteraction];

        v40 = [(CarNavigationModeController *)self audioPreferences];
        [v40 setGuidanceLevel:v21 forTransportType:0];

        v41 = [(CarNavigationModeController *)self audioPreferences];
        [v41 synchronize];

        v17 = [(CarNavigationModeController *)self carChromeViewController];
        [v17 setNeedsUpdateComponent:@"mapcontrols" animated:1];
      }
    }
  }

  else
  {
    v17 = sub_100006E1C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "guidanceCardController:didChangeNavigationSignStyle: was not user initiated so we will not update audio level";
      goto LABEL_22;
    }
  }
}

- (unint64_t)_upcomingGuidanceLevelForGuidanceSignStyle:(int64_t)a3 currentGuidanceLevel:(unint64_t)a4
{
  if (a3)
  {
    if (a3 != 1 || a4 < 2)
    {
      return a4;
    }

    if (a4 == -1)
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

    if (a4 == 2)
    {
      return 1;
    }
  }

  previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
  if (!previousGuidanceCardSignAudioSetting)
  {
    return a4;
  }

  return [(NSNumber *)previousGuidanceCardSignAudioSetting unsignedIntegerValue];
}

- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4
{
  v5 = [_TtC4Maps22NavAudioControlFactory guidanceLevelForNavAudioType:a4];
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
  v9 = [(CarNavigationModeController *)self audioPreferences];
  v10 = [(CarNavigationModeController *)self currentRoute];
  [v9 setGuidanceLevel:v5 forTransportType:{objc_msgSend(v10, "transportType")}];

  v11 = [(CarNavigationModeController *)self audioPreferences];
  [v11 synchronize];
}

- (void)audioControlUserDidChangeAudioType
{
  v3 = [(CarNavigationModeController *)self audioPreferences];
  [v3 loadValuesFromDefaults];

  v4 = [(CarNavigationModeController *)self audioPreferences];
  v5 = [v4 guidanceLevelForTransportType:0];

  previousGuidanceCardSignAudioSetting = self->_previousGuidanceCardSignAudioSetting;
  self->_previousGuidanceCardSignAudioSetting = 0;

  self->_hasUserManuallyReducedAudio = v5 != 2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && a6 == &off_1016231D0 && [v10 isEqualToString:@"NavigationVoiceGuidanceLevelDriving"])
  {
    v13 = sub_100006E1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "NavigationVoiceGuidanceLevelDriving changed to %@", buf, 0xCu);
    }

    v14 = [(CarNavigationModeController *)self audioPreferences];
    [v14 loadValuesFromDefaults];

    v15 = [(CarNavigationModeController *)self carChromeViewController];
    v16 = [(CarNavigationModeController *)self etaCardController];
    [v15 setNeedsUpdateComponent:@"mapcontrols" animated:{objc_msgSend(v16, "isViewLoaded")}];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CarNavigationModeController;
    [(CarNavigationModeController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)hideAutohidingContentWithAnimation:(id)a3
{
  v6 = a3;
  v4 = [(CarNavigationModeController *)self etaCardController];
  v5 = [v4 isExpanded];

  if (v5)
  {
    -[CarNavigationModeController _toggleETACardAnimated:](self, "_toggleETACardAnimated:", [v6 isAnimated]);
  }
}

- (void)configureNavigationDisplay:(id)a3
{
  v4 = a3;
  [v4 setCameraStyle:{-[CarNavigationModeController cameraStyle](self, "cameraStyle")}];
  [v4 setCameraPaused:0];
  [v4 setRouteGeniusEntry:0];
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  if ([(CarNavigationModeController *)self navigationModeState]== 1)
  {
    v4 = [(CarNavigationModeController *)self chromeViewController];
    [v4 captureUserAction:4 onTarget:1025];

    [(CarNavigationModeController *)self setNavigationModeState:0];
  }

  else
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [(CarNavigationModeController *)self navigationModeState];
      if ((v6 - 1) > 5)
      {
        v7 = @"Default";
      }

      else
      {
        v7 = *(&off_101623248 + v6 - 1);
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "carCardViewCloseButtonTapped in nav mode in an unexpected state: %@", &v8, 0xCu);
    }
  }
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005D79A4;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D7AC4;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v5 = a4;
  [v5 addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005D7C0C;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [v5 addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
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
  v8 = [v5 isAnimated];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005D80A0;
  v6[3] = &unk_101661738;
  [v5 addPreparation:v9 animations:v7 completion:v6];
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v3 = [a3 currentTraits];
  [BrowseManager precacheCategoriesForCacheKey:@"Stark-SAR" withTraits:v3 completion:0];
}

- (id)personalizedItemSources
{
  v3 = [(CarNavigationModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(CarNavigationModeController *)self chromeViewController];
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

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarNavigationModeController *)self etaCardController];
  [v8 updateContent];

  v9 = [(CarNavigationModeController *)self etaCardController];
  v10 = [v9 isExpanded];

  v11 = [(CarNavigationModeController *)self etaCardController];
  v12 = [v11 isShowingShareETASuggestion];

  v13 = v10 ^ [(CarNavigationModeController *)self isTogglingETACard];
  if ([v7 isEqualToString:@"Guidance"])
  {
    v14 = [(CarNavigationModeController *)self guidanceCardController];
    [v6 setContent:v14];

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
    v22 = [(CarCardLayout *)v21 primaryAxis];
    v23 = [(CarCardLayout *)v21 cornerPosition];
    if (v22 == 1)
    {
      if (v23 == 4 || [(CarCardLayout *)v21 cornerPosition]== 1 || [(CarCardLayout *)v21 edgePosition]== 2)
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
      v25 = v23 == 4 || [(CarCardLayout *)v21 cornerPosition]== 8 || [(CarCardLayout *)v21 edgePosition]== 4;
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
    [v6 setLayout:v21];
    [v6 setAccessoryType:0];
    v37 = [(CarNavigationModeController *)self guidanceCardController];
    objc_initWeak(&location, v37);

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

    [v6 setSelectionHandler:v38];
    if ((v13 & 1) == 0)
    {
      objc_destroyWeak(v25);
    }

    objc_destroyWeak(&location);
  }

  else if ([v7 isEqualToString:@"ETA"])
  {
    v26 = [(CarNavigationModeController *)self etaCardController];
    [v6 setContent:v26];

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
    v31 = [(CarCardLayout *)v30 primaryAxis];
    v32 = [(CarCardLayout *)v30 cornerPosition];
    if (v31 == 1)
    {
      if (v32 == 4 || [(CarCardLayout *)v30 cornerPosition]== 1 || [(CarCardLayout *)v30 edgePosition]== 2)
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
      v34 = v32 == 4 || [(CarCardLayout *)v30 cornerPosition]== 8 || [(CarCardLayout *)v30 edgePosition]== 4;
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
    [v6 setLayout:v30];

    [v6 setStaysOnTop:(v13 | v12) & 1];
    [v6 setAccessoryType:0];
    [v6 setInitialFocusSortValue:{sub_100D8E3AC(1, 0) - 1}];
    objc_initWeak(&location, self);
    v48 = [(CarNavigationModeController *)self autohideBehavior];
    if (v48)
    {
      v49 = v74;
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_1005D91F8;
      v74[3] = &unk_10165F2E8;
      v12 = &v75;
      objc_copyWeak(&v75, &location);
    }

    else
    {
      v49 = 0;
    }

    [v6 setSelectionHandler:v49];
    v59 = 0.0;
    if (v13)
    {
      +[_TtC4Maps18CarETAExpandedSign topMargin];
    }

    [v6 setSelectionTriggerHeight:v59];
    if (v48)
    {
      objc_destroyWeak(v12);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    if (![v7 isEqualToString:@"Traffic Alert"])
    {
      if ([v7 isEqualToString:@"Compression Test"])
      {
        v50 = [(CarNavigationModeController *)self compressionTestCardController];
        [v6 setContent:v50];

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
        v55 = [(CarCardLayout *)v54 primaryAxis];
        v56 = [(CarCardLayout *)v54 cornerPosition];
        if (v55 == 1)
        {
          if (v56 == 4 || [(CarCardLayout *)v54 cornerPosition]== 1 || [(CarCardLayout *)v54 edgePosition]== 2)
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
          v58 = v56 == 4 || [(CarCardLayout *)v54 cornerPosition]== 8 || [(CarCardLayout *)v54 edgePosition]== 4;
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
        [v6 setLayout:v54];

        v72 = v6;
        v73 = 0;
      }

      else
      {
        if (![v7 isEqualToString:@"Stops"])
        {
          goto LABEL_153;
        }

        v61 = +[NSBundle mainBundle];
        v62 = [v61 localizedStringForKey:@"CarPlay_EditStops" value:@"localized string not found" table:0];
        [v6 setTitle:v62];

        v63 = [(CarNavigationModeController *)self waypointsOverviewCardController];
        [v6 setContent:v63];

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
        v68 = [(CarCardLayout *)v67 primaryAxis];
        v69 = [(CarCardLayout *)v67 cornerPosition];
        if (v68 == 1)
        {
          if (v69 == 4 || [(CarCardLayout *)v67 cornerPosition]== 1 || [(CarCardLayout *)v67 edgePosition]== 2)
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
          v71 = v69 == 4 || [(CarCardLayout *)v67 cornerPosition]== 8 || [(CarCardLayout *)v67 edgePosition]== 4;
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
        [v6 setLayout:v67];

        v72 = v6;
        v73 = 1;
      }

      [v72 setAccessoryType:v73];
      goto LABEL_153;
    }

    v39 = [(CarNavigationModeController *)self trafficAlertCardController];
    [v6 setContent:v39];

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
    v44 = [(CarCardLayout *)v43 primaryAxis];
    v45 = [(CarCardLayout *)v43 cornerPosition];
    if (v44 == 1)
    {
      if (v45 == 4 || [(CarCardLayout *)v43 cornerPosition]== 1 || [(CarCardLayout *)v43 edgePosition]== 2)
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
      v47 = v45 == 4 || [(CarCardLayout *)v43 cornerPosition]== 8 || [(CarCardLayout *)v43 edgePosition]== 4;
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
    [v6 setLayout:v43];
    [v6 setAccessoryType:0];
  }

LABEL_153:
}

- (void)setShowingJunctionView:(BOOL)a3
{
  if (self->_showingJunctionView != a3)
  {
    self->_showingJunctionView = a3;
    v6 = [(CarNavigationModeController *)self chromeViewController];
    v5 = [(CarNavigationModeController *)self etaCardController];
    [v6 updateCardsForContext:self animated:{objc_msgSend(v5, "isViewLoaded")}];
  }
}

- (void)setCurrentRoute:(id)a3
{
  v10 = a3;
  if (([v10 isEqual:self->_currentRoute] & 1) == 0)
  {
    objc_storeStrong(&self->_currentRoute, a3);
    v5 = [(CarNavigationModeController *)self carChromeViewController];
    v6 = [v5 navigationDisplay];
    [v6 updateWithRoute:self->_currentRoute];

    v7 = [(CarNavigationModeController *)self etaCardController];
    [v7 updateContent];

    v8 = [(CarNavigationModeController *)self carChromeViewController];
    [v8 updateCardsForContext:self animated:0];

    v9 = [(CarNavigationModeController *)self carChromeViewController];
    [v9 updateComponentsIfNeeded];
  }
}

- (void)setNavigationModeState:(int64_t)a3
{
  if (self->_navigationModeState != a3)
  {
    self->_navigationModeState = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if ((a3 - 1) > 5)
      {
        v6 = @"Default";
      }

      else
      {
        v6 = *(&off_101623248 + a3 - 1);
      }

      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "NavMode: setNavigationModeState: %@, -> updating chrome.", &v13, 0xCu);
    }

    v7 = [(CarNavigationModeController *)self etaCardController];
    v8 = [v7 isViewLoaded];

    v9 = [(CarNavigationModeController *)self carChromeViewController];
    [v9 updateCardsForContext:self animated:v8];

    v10 = [(CarNavigationModeController *)self carChromeViewController];
    [v10 setNeedsUpdateComponent:@"mapcontrols" animated:v8];

    navigationModeState = self->_navigationModeState;
    if ((navigationModeState - 3) < 4 || !navigationModeState)
    {
      v12 = [(CarNavigationModeController *)self etaCardController];
      [v12 updateContent];
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

- (void)setTrafficAlertCardController:(id)a3
{
  v5 = a3;
  if (self->_trafficAlertCardController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trafficAlertCardController, a3);
    [(CarNavigationModeController *)self setNavigationModeState:2 * (self->_trafficAlertCardController != 0)];
    v5 = v6;
  }
}

- (BOOL)shouldSuppressAutohideRecognizerForTouch:(id)a3
{
  v4 = a3;
  if ([(CarNavigationModeController *)self cameraStyle]== 2)
  {
    v5 = [(CarNavigationModeController *)self mapView];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(CarNavigationModeController *)self chromeViewController];
    v11 = [v10 routeAnnotationsController];
    v12 = [v11 configuration];

    v13 = [(CarNavigationModeController *)self mapView];
    v14 = [v12 routes];
    v15 = [v12 selectedRoute];
    v16 = +[MNNavigationService sharedService];
    v17 = sub_1007D8258(v16);
    v18 = [RouteAnnotationsResponder routeAtPoint:v13 inMapView:v14 withRoutes:v15 selectedRoute:v17 overlappingRouteSelectorBlock:v7, v9];

    if (v18)
    {
      v19 = [(CarNavigationModeController *)self currentRoute];
      v20 = v18 != v19;
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
  v2 = [(CarNavigationModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
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

    v13 = [(CarNavigationModeController *)v2 cameraStyleManager];
    [v13 registerObserver:v2];

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