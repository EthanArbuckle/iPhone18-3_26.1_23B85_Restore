@interface NavigationFeedbackCollector
+ (NavigationFeedbackCollector)sharedFeedbackCollector;
- (BOOL)_isSuppressed;
- (BOOL)_shouldSendFeedback;
- (NavigationFeedbackCollector)initWithNavigationService:(id)service;
- (id)_stateOfChargeOfCurrentVehicle;
- (id)_trafficCameraFeedbackForEventFeedback:(id)feedback;
- (int)_navigationModeTypeForState:(unint64_t)state;
- (void)_addArrival;
- (void)_addGuidance;
- (void)_captureArrivalAtWaypoint:(id)waypoint;
- (void)_captureInitialEVRouteState;
- (void)_captureSessionlessEVRouteMessageIfNeeded;
- (void)_captureVirtualGarageAnalytics:(id)analytics;
- (void)_completeCurrentStepFeedback:(BOOL)feedback;
- (void)_didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign;
- (void)_didStartManeuver;
- (void)_finalizeDirectionsFeedbackWithReason:(int64_t)reason;
- (void)_flushModalitiesFeedback;
- (void)_flushStepFeedback;
- (void)_handleNavigationErrors;
- (void)_initializeDirectionsFeedbackWithNavigationState:(unint64_t)state;
- (void)_openNewStepFeedbackWithRoute:(id)route step:(id)step;
- (void)_runAsyncBlockOnLocalQueue:(id)queue;
- (void)_runAsyncBlockOnLocalQueueIfNotSuppressed:(id)suppressed;
- (void)_runAsyncBlockOnMainQueue:(id)queue;
- (void)_updateFeedbackCollectorWithEVData;
- (void)addAlightNotificationFeedback:(id)feedback;
- (void)addTrafficRerouteFeedback:(id)feedback;
- (void)carManeuverView:(id)view didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign;
- (void)dealloc;
- (void)navSignView:(id)view didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didEndWithReason:(unint64_t)reason;
- (void)navigationService:(id)service didReceiveRoutingServiceError:(id)error;
- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didStartRecordingTraceWithPath:(id)path;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateETAResponse:(id)response forRoute:(id)route;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence;
- (void)navigationService:(id)service newGuidanceEventFeedback:(id)feedback;
- (void)navigationService:(id)service updatedGuidanceEventFeedback:(id)feedback;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)offeredEVRerouteWithAlternateRoute:(id)route wasAccepted:(BOOL)accepted;
- (void)reset;
- (void)setAddedChargingStationThroughSAR:(BOOL)r;
- (void)setCurrentRoute:(id)route;
- (void)setIsConnectedToCarplay:(BOOL)carplay;
- (void)setJunctionViewDisplayed:(id)displayed;
- (void)updateAudioPreferences;
- (void)virtualGarageDidBecomeAvailable;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation NavigationFeedbackCollector

+ (NavigationFeedbackCollector)sharedFeedbackCollector
{
  if (qword_10195F118 != -1)
  {
    dispatch_once(&qword_10195F118, &stru_1016532C8);
  }

  v3 = qword_10195F110;

  return v3;
}

- (void)reset
{
  [(NavigationFeedbackCollector *)self setAudioFeedbackCollector:0];
  responseID = self->_responseID;
  self->_responseID = 0;

  traceFileName = self->_traceFileName;
  self->_traceFileName = 0;

  v5 = objc_alloc_init(NSMutableDictionary);
  guidance = self->_guidance;
  self->_guidance = v5;

  stepFeedback = self->_stepFeedback;
  self->_stepFeedback = 0;

  junctionViewEventsDisplayed = self->_junctionViewEventsDisplayed;
  self->_junctionViewEventsDisplayed = 0;

  lastLocation = self->_lastLocation;
  self->_lastLocation = 0;

  v10 = +[NSDate date];
  navigationStartTime = self->_navigationStartTime;
  self->_navigationStartTime = v10;

  *&self->_wasEverConnectedToCarplay = 0;
  chargingSteps = self->_chargingSteps;
  self->_chargingSteps = 0;

  v13 = +[NSMutableArray array];
  addedStopsDetails = self->_addedStopsDetails;
  self->_addedStopsDetails = v13;

  v15 = objc_opt_new();
  removedStopsDetails = self->_removedStopsDetails;
  self->_removedStopsDetails = v15;

  expectedFinalStateOfCharge = self->_expectedFinalStateOfCharge;
  self->_expectedFinalStateOfCharge = 0;

  initialStateOfCharge = self->_initialStateOfCharge;
  self->_initialStateOfCharge = 0;

  self->_batteryDied = 0;
  self->_parkingCount = 0;
  self->_parkedCount = 0;
  self->_arrivedCount = 0;
  *&self->_addedChargingStationThroughSAR = 0;
  [(NavigationFeedbackCollector *)self setDidArrive:0];
  v19 = objc_alloc_init(GEODirectionsFeedbackCollector);
  [(NavigationFeedbackCollector *)self setFeedbackCollector:v19];

  [(NavigationFeedbackCollector *)self setPrevStep:0];
  [(NavigationFeedbackCollector *)self setIsPlayingTrace:0];

  [(NavigationFeedbackCollector *)self setPreviousAlert:0];
}

- (void)virtualGarageDidBecomeAvailable
{
  if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "virtualGarageDidBecomeAvailable, fetching garage.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = +[VGVirtualGarageService sharedService];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000355E4;
    v5[3] = &unk_101655840;
    objc_copyWeak(&v6, buf);
    [v4 virtualGarageGetGarageWithReply:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (BOOL)_isSuppressed
{
  navigationService = [(NavigationFeedbackCollector *)self navigationService];
  [navigationService state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  return IsNavigating ^ 1;
}

- (void)virtualGarageDidUpdate:(id)update
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7E8EC;
  v5[3] = &unk_1016532F0;
  updateCopy = update;
  v4 = updateCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v5];
}

- (void)carManeuverView:(id)view didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7E9F4;
  v9[3] = &unk_101653788;
  stringCopy = string;
  signCopy = sign;
  alternateCopy = alternate;
  v8 = signCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v9];
}

- (void)navSignView:(id)view didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7EAAC;
  v9[3] = &unk_101653788;
  stringCopy = string;
  signCopy = sign;
  alternateCopy = alternate;
  v8 = signCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v9];
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  serviceCopy = service;
  arrivalState = [info arrivalState];
  if ((arrivalState - 5) < 2)
  {
    ++self->_parkingCount;
  }

  else if (arrivalState == 4)
  {
    ++self->_arrivedCount;
    lastLocation = [(NavigationFeedbackCollector *)self lastLocation];
    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector setArrivalLocation:lastLocation];
  }

  else if (arrivalState == 1)
  {
    alternateWalkingRouteDisplayETAInfo = [serviceCopy alternateWalkingRouteDisplayETAInfo];

    if (alternateWalkingRouteDisplayETAInfo)
    {
      alternateWalkingRouteDisplayETAInfo2 = [serviceCopy alternateWalkingRouteDisplayETAInfo];
      remainingMinutesToEndOfRoute = [alternateWalkingRouteDisplayETAInfo2 remainingMinutesToEndOfRoute];
      feedbackCollector2 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [feedbackCollector2 setTimeBetweenParkedAndArrival:remainingMinutesToEndOfRoute];
    }

    else
    {
      alternateWalkingRouteDisplayETAInfo2 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [alternateWalkingRouteDisplayETAInfo2 setTimeBetweenParkedAndArrival:-1.0];
    }

    lastLocation2 = [(NavigationFeedbackCollector *)self lastLocation];
    feedbackCollector3 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector3 setParkingDetectionLocation:lastLocation2];

    ++self->_parkedCount;
  }
}

- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  [(NavigationFeedbackCollector *)self setPreviousAlert:alertCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D7ECDC;
  v8[3] = &unk_1016532F0;
  v9 = alertCopy;
  v7 = alertCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v8];
}

- (void)navigationService:(id)service didStartRecordingTraceWithPath:(id)path
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7EE44;
  v6[3] = &unk_1016532F0;
  pathCopy = path;
  v5 = pathCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)service didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7EEC0;
  v5[3] = &unk_101653720;
  v5[4] = type;
  v5[5] = confidence;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v5];
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  desiredTransportType = *&type;
  serviceCopy = service;
  if (![(NavigationFeedbackCollector *)self _isSuppressed])
  {
    if (desiredTransportType == 4)
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "[NavigationFeedbackCollector navigationService:didSwitchToNewTransportType:newRoute:traffic:]";
        v19 = 2080;
        v20 = "NavigationFeedbackCollector.m";
        v21 = 1024;
        v22 = 1315;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "While navigating there wasn't a transport type.", buf, 2u);
      }

      desiredTransportType = [serviceCopy desiredTransportType];
    }

    currentRoute = [(NavigationFeedbackCollector *)self currentRoute];
    transportType = [currentRoute transportType];

    if (desiredTransportType == transportType)
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (desiredTransportType >= 7)
        {
          v16 = [NSString stringWithFormat:@"(unknown: %i)", desiredTransportType];
        }

        else
        {
          v16 = off_1016537C8[desiredTransportType];
        }

        *buf = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Got a transport type change callback (%@) but we are already on that transport type. Doing nothing.", buf, 0xCu);
      }
    }

    else
    {
      [(NavigationFeedbackCollector *)self _finalizeDirectionsFeedback];
      -[NavigationFeedbackCollector _initializeDirectionsFeedbackWithNavigationState:](self, "_initializeDirectionsFeedbackWithNavigationState:", [serviceCopy state]);
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653700];
    }
  }
}

- (void)navigationService:(id)service updatedGuidanceEventFeedback:(id)feedback
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7F3E4;
  v6[3] = &unk_1016532F0;
  feedbackCopy = feedback;
  v5 = feedbackCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)service newGuidanceEventFeedback:(id)feedback
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7F57C;
  v6[3] = &unk_1016532F0;
  feedbackCopy = feedback;
  v5 = feedbackCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7F69C;
  v9[3] = &unk_1016536E0;
  serviceCopy = service;
  maneuverCopy = maneuver;
  v8 = serviceCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v9];
}

- (void)navigationService:(id)service didUpdateETAResponse:(id)response forRoute:(id)route
{
  responseCopy = response;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D7F7FC;
  v10[3] = &unk_101653318;
  routeCopy = route;
  v12 = responseCopy;
  v8 = responseCopy;
  v9 = routeCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v10];
}

- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D7F908;
  v7[3] = &unk_1016532F0;
  routesCopy = routes;
  v6 = routesCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v7];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7F9EC;
  v9[3] = &unk_101653460;
  serviceCopy = service;
  rerouteCopy = reroute;
  v12 = !+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground];
  v7 = rerouteCopy;
  v8 = serviceCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v9];
}

- (void)navigationService:(id)service didEndWithReason:(unint64_t)reason
{
  if (reason == 3)
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:&stru_1016536B8];
  }
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  serviceCopy = service;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D7FEC8;
  v11[3] = &unk_101653678;
  waypointCopy = waypoint;
  indexCopy = index;
  v12 = serviceCopy;
  v9 = waypointCopy;
  v10 = serviceCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v11];
}

- (void)navigationService:(id)service didReceiveRoutingServiceError:(id)error
{
  errorCopy = error;
  if (!self->_routingServiceErrors)
  {
    v5 = +[NSMutableArray array];
    routingServiceErrors = self->_routingServiceErrors;
    self->_routingServiceErrors = v5;
  }

  v7 = objc_opt_new();
  [v7 setError:errorCopy];
  v8 = +[NSDate date];
  [v7 setDate:v8];

  [(NSMutableArray *)self->_routingServiceErrors addObject:v7];
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateIsNavigating())
  {
    if (MNNavigationServiceStateChangedToNavigating())
    {

      [(NavigationFeedbackCollector *)self _initializeDirectionsFeedbackWithNavigationState:toState];
    }

    else
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100D80198;
      v7[3] = &unk_101653630;
      v7[4] = toState;
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v7];
    }
  }

  else if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {

    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653650];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    platformController = [v6 platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v9 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    analyticsTracker = [v9 analyticsTracker];
    [feedbackCollector setIsVLFImprovementUsed:{objc_msgSend(analyticsTracker, "hasVLFLocalizedRecently")}];

    v12 = +[PedestrianARSessionUsageTracker sharedInstance];
    currentRoute = [(NavigationFeedbackCollector *)self currentRoute];
    uniqueRouteID = [currentRoute uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v16 = [v12 hasUserEnteredARForRoute:uUIDString entryPoint:0];

    if (v16)
    {
      feedbackCollector2 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [feedbackCollector2 setARWalkingUsedInRoutePlanning:1];
    }

    v18 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v18 isAuthorizedForPreciseLocation];

    feedbackCollector3 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector3 setIsCoarseLocationUsed:isAuthorizedForPreciseLocation ^ 1];

    feedbackCollector4 = [(NavigationFeedbackCollector *)self feedbackCollector];
    route = [serviceCopy route];
    origin = [route origin];
    bestLatLng = [origin bestLatLng];
    [feedbackCollector4 setTripOrigin:bestLatLng];

    [(NavigationFeedbackCollector *)self _initializeEVRecording];
    [(NavigationFeedbackCollector *)self updateAudioPreferences];
    routingServiceErrors = self->_routingServiceErrors;
    self->_routingServiceErrors = 0;
  }

  else if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {
    feedbackCollector5 = [(NavigationFeedbackCollector *)self feedbackCollector];
    hasActiveFeedbackSession = [feedbackCollector5 hasActiveFeedbackSession];

    if (hasActiveFeedbackSession)
    {
      [(NavigationFeedbackCollector *)self _finalizeDirectionsFeedbackWithReason:1];
    }

    [(NavigationFeedbackCollector *)self _handleNavigationErrors];
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D8059C;
  v6[3] = &unk_101653318;
  locationCopy = location;
  selfCopy = self;
  v5 = locationCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)_finalizeDirectionsFeedbackWithReason:(int64_t)reason
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D809C0;
  v3[3] = &unk_101653630;
  v3[4] = reason;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v3];
}

- (void)_initializeDirectionsFeedbackWithNavigationState:(unint64_t)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D80DE0;
  v3[3] = &unk_101653630;
  v3[4] = state;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v3];
}

- (void)_handleNavigationErrors
{
  v3 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    if ([(NSMutableArray *)self->_routingServiceErrors count])
    {
      v5 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100D811E0;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v5, &_dispatch_main_q, block);
    }
  }
}

- (id)_trafficCameraFeedbackForEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([feedbackCopy trafficCameraType])
  {
    trafficCameraType = [feedbackCopy trafficCameraType];
    if (trafficCameraType == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (trafficCameraType == 1);
    }

    v6 = objc_alloc_init(GEOTrafficCameraInformation);
    [v6 setCameraType:v5];
    enrouteNoticeIdentifier = [feedbackCopy enrouteNoticeIdentifier];
    [v6 setCameraIdentifier:enrouteNoticeIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addArrival
{
  arrivedCount = self->_arrivedCount;
  feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector setArrivedAtDestinationCount:arrivedCount];

  parkingCount = self->_parkingCount;
  feedbackCollector2 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector2 setInParkingModeCount:parkingCount];

  v7 = self->_parkingCount != 0;
  feedbackCollector3 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector3 setEnteredParkingMode:v7];
}

- (void)_addGuidance
{
  v3 = [NSMutableArray alloc];
  allValues = [(NSMutableDictionary *)self->_guidance allValues];
  v5 = [v3 initWithArray:allValues];

  [v5 sortUsingComparator:&stru_1016535F0];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v5;
  v54 = [v6 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v54)
  {
    v7 = &GEOMapsAuthEnvironmentKey_ptr;
    v8 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        v11 = objc_alloc_init(v7[186]);
        routeID = [v10 routeID];
        [v11 setRouteID:routeID];

        if ([v10 stepID] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setStepID:{objc_msgSend(v10, "stepID")}];
        }

        if ([v10 enrouteNoticeIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setEnrouteNoticeIndex:{objc_msgSend(v10, "enrouteNoticeIndex")}];
        }

        if ([v10 eventIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setEventIndex:{objc_msgSend(v10, "eventIndex")}];
        }

        [v10 startTime];
        if (v13 > 0.0)
        {
          [v10 endTime];
          if (v14 > 0.0)
          {
            [v10 endTime];
            v16 = v15;
            [v10 startTime];
            v18 = v16 - v17;
            *&v18 = v18;
            [v11 setDuration:v18];
          }
        }

        [v10 startTime];
        if (v19 > 0.0)
        {
          [v10 maneuverTime];
          if (v20 > 0.0)
          {
            [v10 maneuverTime];
            v22 = v21;
            [v10 startTime];
            v24 = v22 - v23;
            *&v24 = v24;
            [v11 setTimeToManeuver:v24];
          }
        }

        [v10 vehicleSpeed];
        if (v25 != 0.0)
        {
          [v10 vehicleSpeed];
          *&v26 = v26;
          [v11 setVehicleSpeed:v26];
        }

        [v11 setTrafficSpeed:{objc_msgSend(v10, "trafficColor")}];
        [v10 startDistance];
        if (v27 > 0.0)
        {
          [v10 startDistance];
          *&v28 = v28;
          [v11 setDistanceToManeuver:v28];
        }

        type = [v10 type];
        if (type == 4)
        {
          junctionViewImageIDs = [v10 junctionViewImageIDs];
          v41 = [junctionViewImageIDs count];

          if (!v41)
          {
            goto LABEL_41;
          }

          v42 = objc_alloc_init(GEOJunctionViewGuidanceFeedback);
          [v11 setJunctionViewGuidanceFeedback:v42];

          junctionViewImageIDs2 = [v10 junctionViewImageIDs];
          v44 = [junctionViewImageIDs2 mutableCopy];
          [v11 junctionViewGuidanceFeedback];
          selfCopy = self;
          v46 = v8;
          v47 = v7;
          v49 = v48 = v6;
          [v49 setImageIDs:v44];

          v6 = v48;
          v7 = v47;
          v8 = v46;
          self = selfCopy;

          junctionViewEventsDisplayed = selfCopy->_junctionViewEventsDisplayed;
          uniqueID = [v10 uniqueID];
          v51 = [(NSMutableSet *)junctionViewEventsDisplayed containsObject:uniqueID];
          junctionViewGuidanceFeedback = [v11 junctionViewGuidanceFeedback];
          [junctionViewGuidanceFeedback setImageDisplayed:v51];

          goto LABEL_40;
        }

        if (type == 2)
        {
          if ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v36 = objc_alloc_init(GEOSpokenGuidanceFeedback);
            [v11 setSpokenGuidanceFeedback:v36];

            selectedPrimaryStringIndex = [v10 selectedPrimaryStringIndex];
            spokenGuidanceFeedback = [v11 spokenGuidanceFeedback];
            [spokenGuidanceFeedback setSpokenGuidanceIndex:selectedPrimaryStringIndex];

            if ([v10 trafficCameraType])
            {
              uniqueID = [(NavigationFeedbackCollector *)self _trafficCameraFeedbackForEventFeedback:v10];
              if (uniqueID)
              {
                spokenGuidanceFeedback2 = [v11 spokenGuidanceFeedback];
                [spokenGuidanceFeedback2 setTrafficCameraGuidanceFeedback:uniqueID];
              }

              goto LABEL_40;
            }
          }
        }

        else if (type == 1 && ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "selectedSecondaryStringIndex") != 0x7FFFFFFFFFFFFFFFLL))
        {
          v30 = objc_alloc_init(GEOSignGuidanceFeedback);
          [v11 setSignGuidanceFeedback:v30];

          if ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            selectedPrimaryStringIndex2 = [v10 selectedPrimaryStringIndex];
            signGuidanceFeedback = [v11 signGuidanceFeedback];
            [signGuidanceFeedback setSignTitleIndex:selectedPrimaryStringIndex2];
          }

          if ([v10 selectedSecondaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            selectedSecondaryStringIndex = [v10 selectedSecondaryStringIndex];
            signGuidanceFeedback2 = [v11 signGuidanceFeedback];
            [signGuidanceFeedback2 setSignDetailIndex:selectedSecondaryStringIndex];
          }

          if ([v10 trafficCameraType])
          {
            uniqueID = [(NavigationFeedbackCollector *)self _trafficCameraFeedbackForEventFeedback:v10];
            if (uniqueID)
            {
              [v11 setTrafficCameraGuidanceFeedback:uniqueID];
            }

LABEL_40:
          }
        }

LABEL_41:
        feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
        [feedbackCollector addGuidanceEventFeedback:v11];

        v9 = v9 + 1;
      }

      while (v54 != v9);
      v54 = [v6 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v54);
  }

  [(NSMutableDictionary *)self->_guidance removeAllObjects];
}

- (void)_didStartManeuver
{
  navigationService = [(NavigationFeedbackCollector *)self navigationService];
  -[GEOStepFeedback setLightGuidance:](self->_stepFeedback, "setLightGuidance:", [navigationService state] == 5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_guidance allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        stepID = [v9 stepID];
        prevStep = [(NavigationFeedbackCollector *)self prevStep];
        stepID2 = [prevStep stepID];

        if (stepID == stepID2)
        {
          [v9 maneuverTime];
          if (v13 == 0.0)
          {
            [v9 setManeuverTime:CFAbsoluteTimeGetCurrent()];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)updateAudioPreferences
{
  v3 = [AudioPreferences alloc];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(AudioPreferences *)v3 initWithDefaults:v4];

  navigationService = [(NavigationFeedbackCollector *)self navigationService];
  route = [navigationService route];
  v8 = -[AudioPreferences guidanceLevelForTransportType:](v5, "guidanceLevelForTransportType:", [route transportType]);

  if (v8 <= 0)
  {
    if (v8 == -1)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Invalid guidance level NoOverride in NavigationFeedbackCollector.", v18, 2u);
      }
    }

    else if (!v8)
    {
      v9 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_13;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      v9 = 3;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v9 = 2;
LABEL_13:
  feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector setVoiceGuidanceLevel:v9];

  feedbackCollector2 = [(NavigationFeedbackCollector *)self feedbackCollector];
  if (qword_10195F128 != -1)
  {
    dispatch_once(&qword_10195F128, &stru_1016537A8);
  }

  path = [qword_10195F120 path];
  v14 = _CFPreferencesCopyAppValueWithContainer();

  if (v14)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v14 BOOLValue];
      GEOConfigSetBOOL();
    }

    v15 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v15 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    BOOL = [v14 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v17 = BOOL;

  [feedbackCollector2 setIsHandsFreeProfileUsed:v17];
}

- (void)_flushModalitiesFeedback
{
  if (self->_modalitiesFeedback)
  {
    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector setModalities:self->_modalitiesFeedback];

    modalitiesFeedback = self->_modalitiesFeedback;
    self->_modalitiesFeedback = 0;
  }
}

- (void)_flushStepFeedback
{
  if (self->_stepFeedback)
  {
    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector addStepFeedback:self->_stepFeedback];

    stepFeedback = self->_stepFeedback;
    self->_stepFeedback = 0;
  }
}

- (void)_completeCurrentStepFeedback:(BOOL)feedback
{
  stepFeedback = self->_stepFeedback;
  if (stepFeedback)
  {
    feedbackCopy = feedback;
    evStepInfo = [(GEOStepFeedback *)stepFeedback evStepInfo];
    if (evStepInfo)
    {
      currentVehicleState = [(VGVehicle *)self->_currentVehicle currentVehicleState];
      currentBatteryCapacity = [currentVehicleState currentBatteryCapacity];
      v9 = +[NSUnitEnergy kilowattHours];
      v10 = [currentBatteryCapacity measurementByConvertingToUnit:v9];
      [v10 doubleValue];
      remainingBatteryCharge2 = (v11 * 1000.0);

      remainingBatteryCharge = remainingBatteryCharge2;
      if ([evStepInfo remainingBatteryCharge] >= remainingBatteryCharge2)
      {
        remainingBatteryCharge = [evStepInfo remainingBatteryCharge];
      }

      if ([evStepInfo remainingBatteryCharge] <= remainingBatteryCharge2)
      {
        remainingBatteryCharge2 = [evStepInfo remainingBatteryCharge];
      }

      v14 = remainingBatteryCharge - remainingBatteryCharge2;
      evStepInfo2 = [(GEOStepFeedback *)self->_stepFeedback evStepInfo];
      [evStepInfo2 setStateOfChargeDiff:v14];
    }

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      stepID = [(GEOStepFeedback *)self->_stepFeedback stepID];
      completedStep = [(GEOStepFeedback *)self->_stepFeedback completedStep];
      routeID = [(GEOStepFeedback *)self->_stepFeedback routeID];
      waypointRouteID = [(GEOStepFeedback *)self->_stepFeedback waypointRouteID];
      v21[0] = 67109890;
      v21[1] = stepID;
      v22 = 1024;
      v23 = completedStep;
      v24 = 2112;
      v25 = routeID;
      v26 = 1024;
      v27 = waypointRouteID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Adding step feedback. ID: %u, completed: %d, route: %@, waypointRouteID: %u", v21, 0x1Eu);
    }

    [(GEOStepFeedback *)self->_stepFeedback setCompletionTimeStamp:CFAbsoluteTimeGetCurrent()];
    [(GEOStepFeedback *)self->_stepFeedback setCompletedStep:feedbackCopy];
    [(NavigationFeedbackCollector *)self _flushStepFeedback];
  }
}

- (void)_openNewStepFeedbackWithRoute:(id)route step:(id)step
{
  routeCopy = route;
  stepCopy = step;
  if (self->_stepFeedback)
  {
    [(NavigationFeedbackCollector *)self _completeCurrentStepFeedback:0];
  }

  v7 = objc_alloc_init(GEOStepFeedback);
  if ([routeCopy isNewProtocolRoute])
  {
    v8 = [routeCopy legIndexForStepIndex:{objc_msgSend(stepCopy, "stepIndex")}];
    legs = [routeCopy legs];
    serverRouteID = [legs objectAtIndexedSubscript:v8];

    serverLegIDForAnalytics = [serverRouteID serverLegIDForAnalytics];
    [v7 setRouteID:serverLegIDForAnalytics];

    [v7 setWaypointRouteID:{objc_msgSend(routeCopy, "serverIdentifier")}];
  }

  else
  {
    serverRouteID = [routeCopy serverRouteID];
    [v7 setRouteID:serverRouteID];
  }

  [v7 setRouteIndex:{objc_msgSend(routeCopy, "indexInResponse")}];
  [v7 setStepID:{objc_msgSend(stepCopy, "stepID")}];
  [v7 setCompletedStep:0];
  [v7 setStepEndPathPointIndex:{objc_msgSend(stepCopy, "endRouteCoordinate")}];
  [v7 setStepEndPathPointOffset:{COERCE_FLOAT(objc_msgSend(stepCopy, "endRouteCoordinate") >> 32)}];
  [v7 setManeuverType:{objc_msgSend(stepCopy, "maneuverType")}];
  [v7 setExpectedTime:{objc_msgSend(stepCopy, "duration")}];
  etauResponseID = [routeCopy etauResponseID];

  if (etauResponseID)
  {
    etauResponseID2 = [routeCopy etauResponseID];
    [v7 setEtaTrafficUpdateResponseId:etauResponseID2];
  }

  evInfo = [stepCopy evInfo];
  if (evInfo)
  {
    v15 = objc_alloc_init(GEOEVStepFeedbackInfo);
    [v15 setRemainingBatteryPercentage:{objc_msgSend(evInfo, "remainingBatteryPercentage")}];
    [v15 setRemainingBatteryCharge:{objc_msgSend(evInfo, "remainingBatteryCharge")}];
    [v7 setEvStepInfo:v15];
  }

  stepFeedback = self->_stepFeedback;
  self->_stepFeedback = v7;
}

- (int)_navigationModeTypeForState:(unint64_t)state
{
  if (state == 4)
  {
    return 2;
  }

  else
  {
    return state == 5;
  }
}

- (void)addAlightNotificationFeedback:(id)feedback
{
  feedbackCopy = feedback;
  feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector addAlightNotificationFeedback:feedbackCopy];
}

- (BOOL)_shouldSendFeedback
{
  if (![(NavigationFeedbackCollector *)self isPlayingTrace])
  {
    return 1;
  }

  return GEOConfigGetBOOL();
}

- (void)_runAsyncBlockOnMainQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D82A80;
  v7[3] = &unk_1016535B0;
  objc_copyWeak(v9, &location);
  v8 = queueCopy;
  v9[1] = a2;
  v6 = queueCopy;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_runAsyncBlockOnLocalQueueIfNotSuppressed:(id)suppressed
{
  suppressedCopy = suppressed;
  if (![(NavigationFeedbackCollector *)self _isSuppressed])
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:suppressedCopy];
  }
}

- (void)_runAsyncBlockOnLocalQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D82CB0;
  v8[3] = &unk_1016535B0;
  objc_copyWeak(v10, &location);
  v9 = queueCopy;
  v10[1] = a2;
  v7 = queueCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_didSelectAlternate:(unint64_t)alternate forPrimaryString:(BOOL)string inSign:(id)sign
{
  stringCopy = string;
  v7 = [(NSMutableDictionary *)self->_guidance objectForKeyedSubscript:sign];
  if (v7)
  {
    v8 = v7;
    if (stringCopy)
    {
      [v7 setSelectedPrimaryStringIndex:alternate];
    }

    else
    {
      [v7 setSelectedSecondaryStringIndex:alternate];
    }

    v7 = v8;
  }
}

- (void)_captureArrivalAtWaypoint:(id)waypoint
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D82EBC;
  v5[3] = &unk_1016532F0;
  waypointCopy = waypoint;
  v4 = waypointCopy;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v5];
}

- (void)_updateFeedbackCollectorWithEVData
{
  currentRoute = [(NavigationFeedbackCollector *)self currentRoute];
  isEVRoute = [currentRoute isEVRoute];

  if (isEVRoute)
  {
    currentVehicleState = [(VGVehicle *)self->_currentVehicle currentVehicleState];
    chargingArguments = [currentVehicleState chargingArguments];
    v7 = [chargingArguments copy];
    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector setEvChargingModel:v7];

    currentVehicleState2 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
    consumptionArguments = [currentVehicleState2 consumptionArguments];
    v11 = [consumptionArguments copy];
    feedbackCollector2 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector2 setEvConsumptionModel:v11];

    initialStateOfCharge = self->_initialStateOfCharge;
    feedbackCollector3 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector3 setStateOfChargeAtOrigin:initialStateOfCharge];

    expectedFinalStateOfCharge = self->_expectedFinalStateOfCharge;
    feedbackCollector4 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector4 setStateOfChargeAtDestPredicted:expectedFinalStateOfCharge];

    _stateOfChargeOfCurrentVehicle = [(NavigationFeedbackCollector *)self _stateOfChargeOfCurrentVehicle];
    feedbackCollector5 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector5 setStateOfChargeAtDestActual:_stateOfChargeOfCurrentVehicle];

    currentRoute2 = [(NavigationFeedbackCollector *)self currentRoute];
    legs = [currentRoute2 legs];
    v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [legs count]);

    v21 = objc_alloc_init(GEOWaypointInfo);
    currentRoute3 = [(NavigationFeedbackCollector *)self currentRoute];
    origin = [currentRoute3 origin];
    latLng = [origin latLng];
    [v21 setPosition:latLng];

    [v30 addObject:v21];
    currentRoute4 = [(NavigationFeedbackCollector *)self currentRoute];
    legs2 = [currentRoute4 legs];
    v27 = sub_100021DB0(legs2, &stru_101653500);

    [v30 addObjectsFromArray:v27];
    v28 = [v30 copy];
    feedbackCollector6 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [feedbackCollector6 setWaypoints:v28];
  }
}

- (void)_captureSessionlessEVRouteMessageIfNeeded
{
  currentRoute = [(NavigationFeedbackCollector *)self currentRoute];
  isEVRoute = [currentRoute isEVRoute];

  if (isEVRoute)
  {
    feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [feedbackCollector batteryDied]);
    v6 = [NSNumber numberWithBool:self->_outOfRangeDodgeballDisplayed];
    v7 = [NSNumber numberWithBool:self->_originalTripIncludedChargingStation];
    v8 = [NSNumber numberWithBool:self->_addedChargingStationThroughSAR];
    [GEOAPPortal captureEvTripWithOutOfCharge:v5 outOfRangeAlertDisplayed:v6 originalTripIncludedChargingStation:v7 chargingStopAddedThroughSar:v8 tripIncludedPreferredChargingStation:0 stopRemovedDetails:self->_removedStopsDetails realtimeDodgeballs:0 chargeLocationDetails:self->_chargingSteps stopAddedDetails:self->_addedStopsDetails];
  }
}

- (void)_captureInitialEVRouteState
{
  currentRoute = [(NavigationFeedbackCollector *)self currentRoute];
  isEVRoute = [currentRoute isEVRoute];

  if (isEVRoute)
  {
    currentRoute2 = [(NavigationFeedbackCollector *)self currentRoute];
    waypoints = [currentRoute2 waypoints];
    v6 = sub_1000282CC(waypoints, &stru_1016534A0);
    self->_originalTripIncludedChargingStation = [v6 count] != 0;
  }
}

- (void)offeredEVRerouteWithAlternateRoute:(id)route wasAccepted:(BOOL)accepted
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D83AC4;
  v6[3] = &unk_101653460;
  selfCopy = self;
  routeCopy = route;
  acceptedCopy = accepted;
  v5 = routeCopy;
  [(NavigationFeedbackCollector *)selfCopy _runAsyncBlockOnLocalQueue:v6];
}

- (id)_stateOfChargeOfCurrentVehicle
{
  currentVehicle = self->_currentVehicle;
  if (currentVehicle)
  {
    currentVehicleState = [(VGVehicle *)currentVehicle currentVehicleState];
    currentBatteryCapacity = [currentVehicleState currentBatteryCapacity];

    if (currentBatteryCapacity)
    {
      currentVehicleState2 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
      currentBatteryCapacity2 = [currentVehicleState2 currentBatteryCapacity];
      v8 = +[NSUnitEnergy kilowattHours];
      v9 = [currentBatteryCapacity2 measurementByConvertingToUnit:v8];
      [v9 doubleValue];
      v11 = v10 * 1000.0;

      v12 = [NSNumber numberWithDouble:v11];
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "_saveExpectedFinalStateOfChargeIfNeeded: there is no vehicle selected", v15, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setCurrentRoute:(id)route
{
  p_currentRoute = &self->_currentRoute;
  routeCopy = route;
  if (([routeCopy isEqual:*p_currentRoute] & 1) == 0)
  {
    objc_storeStrong(&self->_currentRoute, route);
    if (routeCopy)
    {
      -[GEODirectionsFeedbackCollector setTransportType:](self->_feedbackCollector, "setTransportType:", [routeCopy transportType]);
    }

    if ([(GEOComposedRoute *)*p_currentRoute isEVRoute])
    {
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653378];
      [(NavigationFeedbackCollector *)self _saveChargingStationInfo];
    }
  }
}

- (void)setAddedChargingStationThroughSAR:(BOOL)r
{
  if (self->_addedChargingStationThroughSAR != r)
  {
    self->_addedChargingStationThroughSAR = r;
  }
}

- (void)setIsConnectedToCarplay:(BOOL)carplay
{
  wasEverConnectedToCarplay = self->_wasEverConnectedToCarplay;
  self->_wasEverConnectedToCarplay = wasEverConnectedToCarplay | carplay;
  if (wasEverConnectedToCarplay != (wasEverConnectedToCarplay | carplay))
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653358];
  }
}

- (void)setJunctionViewDisplayed:(id)displayed
{
  displayedCopy = displayed;
  v5 = displayedCopy;
  if (displayedCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D84288;
    v6[3] = &unk_101653318;
    v6[4] = self;
    v7 = displayedCopy;
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v6];
  }
}

- (void)addTrafficRerouteFeedback:(id)feedback
{
  feedbackCopy = feedback;
  feedbackCollector = [(NavigationFeedbackCollector *)self feedbackCollector];
  [feedbackCollector addTrafficRerouteFeedback:feedbackCopy];
}

- (void)_captureVirtualGarageAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [analyticsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 0;
    LODWORD(v7) = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(analyticsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        licensePlate = [v10 licensePlate];

        if (licensePlate)
        {
          v7 = (v7 + 1);
        }

        else
        {
          v7 = v7;
        }

        v6 = v6 + [v10 isPureElectricVehicle];
      }

      v5 = [analyticsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v12 = +[GEOAPSharedStateData sharedData];
  [v12 setMapFeatureLicensePlateCount:v7];

  v13 = +[GEOAPSharedStateData sharedData];
  [v13 setMapFeatureElectronicVehicleCount:v6];
}

- (void)dealloc
{
  navigationService = [(NavigationFeedbackCollector *)self navigationService];
  [navigationService unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NavigationFeedbackCollector;
  [(NavigationFeedbackCollector *)&v4 dealloc];
}

- (NavigationFeedbackCollector)initWithNavigationService:(id)service
{
  serviceCopy = service;
  v19.receiver = self;
  v19.super_class = NavigationFeedbackCollector;
  v6 = [(NavigationFeedbackCollector *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, service);
    [(MNNavigationService *)v7->_navigationService registerObserver:v7];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NavigationFeedbackCollectorQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    [(NavigationFeedbackCollector *)v7 reset];
    if (MapsFeature_IsEnabled_EVRouting())
    {
      v11 = +[VGVirtualGarageService sharedService];
      [v11 registerObserver:v7];

      v12 = [NavigationEVBadTripFeedbackCollector alloc];
      navigationService = v7->_navigationService;
      v14 = +[VGVirtualGarageService sharedService];
      v15 = [(NavigationEVBadTripFeedbackCollector *)v12 initWithNavigationService:navigationService virtualGarageService:v14];
      badTripCollector = v7->_badTripCollector;
      v7->_badTripCollector = v15;

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v7 selector:"virtualGarageDidBecomeAvailable" name:@"VirtualGarageAvailableNotification" object:0];
    }
  }

  return v7;
}

@end