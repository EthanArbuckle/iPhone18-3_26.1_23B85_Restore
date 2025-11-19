@interface NavigationFeedbackCollector
+ (NavigationFeedbackCollector)sharedFeedbackCollector;
- (BOOL)_isSuppressed;
- (BOOL)_shouldSendFeedback;
- (NavigationFeedbackCollector)initWithNavigationService:(id)a3;
- (id)_stateOfChargeOfCurrentVehicle;
- (id)_trafficCameraFeedbackForEventFeedback:(id)a3;
- (int)_navigationModeTypeForState:(unint64_t)a3;
- (void)_addArrival;
- (void)_addGuidance;
- (void)_captureArrivalAtWaypoint:(id)a3;
- (void)_captureInitialEVRouteState;
- (void)_captureSessionlessEVRouteMessageIfNeeded;
- (void)_captureVirtualGarageAnalytics:(id)a3;
- (void)_completeCurrentStepFeedback:(BOOL)a3;
- (void)_didSelectAlternate:(unint64_t)a3 forPrimaryString:(BOOL)a4 inSign:(id)a5;
- (void)_didStartManeuver;
- (void)_finalizeDirectionsFeedbackWithReason:(int64_t)a3;
- (void)_flushModalitiesFeedback;
- (void)_flushStepFeedback;
- (void)_handleNavigationErrors;
- (void)_initializeDirectionsFeedbackWithNavigationState:(unint64_t)a3;
- (void)_openNewStepFeedbackWithRoute:(id)a3 step:(id)a4;
- (void)_runAsyncBlockOnLocalQueue:(id)a3;
- (void)_runAsyncBlockOnLocalQueueIfNotSuppressed:(id)a3;
- (void)_runAsyncBlockOnMainQueue:(id)a3;
- (void)_updateFeedbackCollectorWithEVData;
- (void)addAlightNotificationFeedback:(id)a3;
- (void)addTrafficRerouteFeedback:(id)a3;
- (void)carManeuverView:(id)a3 didSelectAlternate:(unint64_t)a4 forPrimaryString:(BOOL)a5 inSign:(id)a6;
- (void)dealloc;
- (void)navSignView:(id)a3 didSelectAlternate:(unint64_t)a4 forPrimaryString:(BOOL)a5 inSign:(id)a6;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didEndWithReason:(unint64_t)a4;
- (void)navigationService:(id)a3 didReceiveRoutingServiceError:(id)a4;
- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didStartRecordingTraceWithPath:(id)a4;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateETAResponse:(id)a4 forRoute:(id)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5;
- (void)navigationService:(id)a3 newGuidanceEventFeedback:(id)a4;
- (void)navigationService:(id)a3 updatedGuidanceEventFeedback:(id)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)offeredEVRerouteWithAlternateRoute:(id)a3 wasAccepted:(BOOL)a4;
- (void)reset;
- (void)setAddedChargingStationThroughSAR:(BOOL)a3;
- (void)setCurrentRoute:(id)a3;
- (void)setIsConnectedToCarplay:(BOOL)a3;
- (void)setJunctionViewDisplayed:(id)a3;
- (void)updateAudioPreferences;
- (void)virtualGarageDidBecomeAvailable;
- (void)virtualGarageDidUpdate:(id)a3;
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
  v2 = [(NavigationFeedbackCollector *)self navigationService];
  [v2 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  return IsNavigating ^ 1;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7E8EC;
  v5[3] = &unk_1016532F0;
  v6 = a3;
  v4 = v6;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v5];
}

- (void)carManeuverView:(id)a3 didSelectAlternate:(unint64_t)a4 forPrimaryString:(BOOL)a5 inSign:(id)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7E9F4;
  v9[3] = &unk_101653788;
  v12 = a5;
  v10 = a6;
  v11 = a4;
  v8 = v10;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v9];
}

- (void)navSignView:(id)a3 didSelectAlternate:(unint64_t)a4 forPrimaryString:(BOOL)a5 inSign:(id)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7EAAC;
  v9[3] = &unk_101653788;
  v12 = a5;
  v10 = a6;
  v11 = a4;
  v8 = v10;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v9];
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v16 = a3;
  v7 = [a4 arrivalState];
  if ((v7 - 5) < 2)
  {
    ++self->_parkingCount;
  }

  else if (v7 == 4)
  {
    ++self->_arrivedCount;
    v12 = [(NavigationFeedbackCollector *)self lastLocation];
    v13 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v13 setArrivalLocation:v12];
  }

  else if (v7 == 1)
  {
    v8 = [v16 alternateWalkingRouteDisplayETAInfo];

    if (v8)
    {
      v9 = [v16 alternateWalkingRouteDisplayETAInfo];
      v10 = [v9 remainingMinutesToEndOfRoute];
      v11 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [v11 setTimeBetweenParkedAndArrival:v10];
    }

    else
    {
      v9 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [v9 setTimeBetweenParkedAndArrival:-1.0];
    }

    v14 = [(NavigationFeedbackCollector *)self lastLocation];
    v15 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v15 setParkingDetectionLocation:v14];

    ++self->_parkedCount;
  }
}

- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v6 = a4;
  [(NavigationFeedbackCollector *)self setPreviousAlert:v6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D7ECDC;
  v8[3] = &unk_1016532F0;
  v9 = v6;
  v7 = v6;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v8];
}

- (void)navigationService:(id)a3 didStartRecordingTraceWithPath:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7EE44;
  v6[3] = &unk_1016532F0;
  v7 = a4;
  v5 = v7;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D7EEC0;
  v5[3] = &unk_101653720;
  v5[4] = a4;
  v5[5] = a5;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v5];
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v6 = *&a4;
  v8 = a3;
  if (![(NavigationFeedbackCollector *)self _isSuppressed])
  {
    if (v6 == 4)
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

      v6 = [v8 desiredTransportType];
    }

    v13 = [(NavigationFeedbackCollector *)self currentRoute];
    v14 = [v13 transportType];

    if (v6 == v14)
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 7)
        {
          v16 = [NSString stringWithFormat:@"(unknown: %i)", v6];
        }

        else
        {
          v16 = off_1016537C8[v6];
        }

        *buf = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Got a transport type change callback (%@) but we are already on that transport type. Doing nothing.", buf, 0xCu);
      }
    }

    else
    {
      [(NavigationFeedbackCollector *)self _finalizeDirectionsFeedback];
      -[NavigationFeedbackCollector _initializeDirectionsFeedbackWithNavigationState:](self, "_initializeDirectionsFeedbackWithNavigationState:", [v8 state]);
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653700];
    }
  }
}

- (void)navigationService:(id)a3 updatedGuidanceEventFeedback:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7F3E4;
  v6[3] = &unk_1016532F0;
  v7 = a4;
  v5 = v7;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)a3 newGuidanceEventFeedback:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D7F57C;
  v6[3] = &unk_1016532F0;
  v7 = a4;
  v5 = v7;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7F69C;
  v9[3] = &unk_1016536E0;
  v10 = a3;
  v11 = a4;
  v8 = v10;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v9];
}

- (void)navigationService:(id)a3 didUpdateETAResponse:(id)a4 forRoute:(id)a5
{
  v7 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D7F7FC;
  v10[3] = &unk_101653318;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v10];
}

- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D7F908;
  v7[3] = &unk_1016532F0;
  v8 = a4;
  v6 = v8;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v7];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D7F9EC;
  v9[3] = &unk_101653460;
  v10 = a3;
  v11 = a4;
  v12 = !+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground];
  v7 = v11;
  v8 = v10;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v9];
}

- (void)navigationService:(id)a3 didEndWithReason:(unint64_t)a4
{
  if (a4 == 3)
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:&stru_1016536B8];
  }
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D7FEC8;
  v11[3] = &unk_101653678;
  v13 = a4;
  v14 = a5;
  v12 = v8;
  v9 = v13;
  v10 = v8;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v11];
}

- (void)navigationService:(id)a3 didReceiveRoutingServiceError:(id)a4
{
  v9 = a4;
  if (!self->_routingServiceErrors)
  {
    v5 = +[NSMutableArray array];
    routingServiceErrors = self->_routingServiceErrors;
    self->_routingServiceErrors = v5;
  }

  v7 = objc_opt_new();
  [v7 setError:v9];
  v8 = +[NSDate date];
  [v7 setDate:v8];

  [(NSMutableArray *)self->_routingServiceErrors addObject:v7];
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateIsNavigating())
  {
    if (MNNavigationServiceStateChangedToNavigating())
    {

      [(NavigationFeedbackCollector *)self _initializeDirectionsFeedbackWithNavigationState:a5];
    }

    else
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100D80198;
      v7[3] = &unk_101653630;
      v7[4] = a5;
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v7];
    }
  }

  else if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {

    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653650];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v28 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    v7 = [v6 platformController];
    v8 = [v7 auxiliaryTasksManager];
    v9 = [v8 auxilaryTaskForClass:objc_opt_class()];

    v10 = [(NavigationFeedbackCollector *)self feedbackCollector];
    v11 = [v9 analyticsTracker];
    [v10 setIsVLFImprovementUsed:{objc_msgSend(v11, "hasVLFLocalizedRecently")}];

    v12 = +[PedestrianARSessionUsageTracker sharedInstance];
    v13 = [(NavigationFeedbackCollector *)self currentRoute];
    v14 = [v13 uniqueRouteID];
    v15 = [v14 UUIDString];
    v16 = [v12 hasUserEnteredARForRoute:v15 entryPoint:0];

    if (v16)
    {
      v17 = [(NavigationFeedbackCollector *)self feedbackCollector];
      [v17 setARWalkingUsedInRoutePlanning:1];
    }

    v18 = +[MKLocationManager sharedLocationManager];
    v19 = [v18 isAuthorizedForPreciseLocation];

    v20 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v20 setIsCoarseLocationUsed:v19 ^ 1];

    v21 = [(NavigationFeedbackCollector *)self feedbackCollector];
    v22 = [v28 route];
    v23 = [v22 origin];
    v24 = [v23 bestLatLng];
    [v21 setTripOrigin:v24];

    [(NavigationFeedbackCollector *)self _initializeEVRecording];
    [(NavigationFeedbackCollector *)self updateAudioPreferences];
    routingServiceErrors = self->_routingServiceErrors;
    self->_routingServiceErrors = 0;
  }

  else if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {
    v26 = [(NavigationFeedbackCollector *)self feedbackCollector];
    v27 = [v26 hasActiveFeedbackSession];

    if (v27)
    {
      [(NavigationFeedbackCollector *)self _finalizeDirectionsFeedbackWithReason:1];
    }

    [(NavigationFeedbackCollector *)self _handleNavigationErrors];
  }
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D8059C;
  v6[3] = &unk_101653318;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueueIfNotSuppressed:v6];
}

- (void)_finalizeDirectionsFeedbackWithReason:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D809C0;
  v3[3] = &unk_101653630;
  v3[4] = a3;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v3];
}

- (void)_initializeDirectionsFeedbackWithNavigationState:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D80DE0;
  v3[3] = &unk_101653630;
  v3[4] = a3;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v3];
}

- (void)_handleNavigationErrors
{
  v3 = +[GEOPlatform sharedPlatform];
  v4 = [v3 isInternalInstall];

  if (v4)
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

- (id)_trafficCameraFeedbackForEventFeedback:(id)a3
{
  v3 = a3;
  if ([v3 trafficCameraType])
  {
    v4 = [v3 trafficCameraType];
    if (v4 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (v4 == 1);
    }

    v6 = objc_alloc_init(GEOTrafficCameraInformation);
    [v6 setCameraType:v5];
    v7 = [v3 enrouteNoticeIdentifier];
    [v6 setCameraIdentifier:v7];
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
  v4 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v4 setArrivedAtDestinationCount:arrivedCount];

  parkingCount = self->_parkingCount;
  v6 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v6 setInParkingModeCount:parkingCount];

  v7 = self->_parkingCount != 0;
  v8 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v8 setEnteredParkingMode:v7];
}

- (void)_addGuidance
{
  v3 = [NSMutableArray alloc];
  v4 = [(NSMutableDictionary *)self->_guidance allValues];
  v5 = [v3 initWithArray:v4];

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
        v12 = [v10 routeID];
        [v11 setRouteID:v12];

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

        v29 = [v10 type];
        if (v29 == 4)
        {
          v40 = [v10 junctionViewImageIDs];
          v41 = [v40 count];

          if (!v41)
          {
            goto LABEL_41;
          }

          v42 = objc_alloc_init(GEOJunctionViewGuidanceFeedback);
          [v11 setJunctionViewGuidanceFeedback:v42];

          v43 = [v10 junctionViewImageIDs];
          v44 = [v43 mutableCopy];
          [v11 junctionViewGuidanceFeedback];
          v45 = self;
          v46 = v8;
          v47 = v7;
          v49 = v48 = v6;
          [v49 setImageIDs:v44];

          v6 = v48;
          v7 = v47;
          v8 = v46;
          self = v45;

          junctionViewEventsDisplayed = v45->_junctionViewEventsDisplayed;
          v35 = [v10 uniqueID];
          v51 = [(NSMutableSet *)junctionViewEventsDisplayed containsObject:v35];
          v52 = [v11 junctionViewGuidanceFeedback];
          [v52 setImageDisplayed:v51];

          goto LABEL_40;
        }

        if (v29 == 2)
        {
          if ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v36 = objc_alloc_init(GEOSpokenGuidanceFeedback);
            [v11 setSpokenGuidanceFeedback:v36];

            v37 = [v10 selectedPrimaryStringIndex];
            v38 = [v11 spokenGuidanceFeedback];
            [v38 setSpokenGuidanceIndex:v37];

            if ([v10 trafficCameraType])
            {
              v35 = [(NavigationFeedbackCollector *)self _trafficCameraFeedbackForEventFeedback:v10];
              if (v35)
              {
                v39 = [v11 spokenGuidanceFeedback];
                [v39 setTrafficCameraGuidanceFeedback:v35];
              }

              goto LABEL_40;
            }
          }
        }

        else if (v29 == 1 && ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "selectedSecondaryStringIndex") != 0x7FFFFFFFFFFFFFFFLL))
        {
          v30 = objc_alloc_init(GEOSignGuidanceFeedback);
          [v11 setSignGuidanceFeedback:v30];

          if ([v10 selectedPrimaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v31 = [v10 selectedPrimaryStringIndex];
            v32 = [v11 signGuidanceFeedback];
            [v32 setSignTitleIndex:v31];
          }

          if ([v10 selectedSecondaryStringIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = [v10 selectedSecondaryStringIndex];
            v34 = [v11 signGuidanceFeedback];
            [v34 setSignDetailIndex:v33];
          }

          if ([v10 trafficCameraType])
          {
            v35 = [(NavigationFeedbackCollector *)self _trafficCameraFeedbackForEventFeedback:v10];
            if (v35)
            {
              [v11 setTrafficCameraGuidanceFeedback:v35];
            }

LABEL_40:
          }
        }

LABEL_41:
        v53 = [(NavigationFeedbackCollector *)self feedbackCollector];
        [v53 addGuidanceEventFeedback:v11];

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
  v3 = [(NavigationFeedbackCollector *)self navigationService];
  -[GEOStepFeedback setLightGuidance:](self->_stepFeedback, "setLightGuidance:", [v3 state] == 5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_guidance allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 stepID];
        v11 = [(NavigationFeedbackCollector *)self prevStep];
        v12 = [v11 stepID];

        if (v10 == v12)
        {
          [v9 maneuverTime];
          if (v13 == 0.0)
          {
            [v9 setManeuverTime:CFAbsoluteTimeGetCurrent()];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)updateAudioPreferences
{
  v3 = [AudioPreferences alloc];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(AudioPreferences *)v3 initWithDefaults:v4];

  v6 = [(NavigationFeedbackCollector *)self navigationService];
  v7 = [v6 route];
  v8 = -[AudioPreferences guidanceLevelForTransportType:](v5, "guidanceLevelForTransportType:", [v7 transportType]);

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
  v11 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v11 setVoiceGuidanceLevel:v9];

  v12 = [(NavigationFeedbackCollector *)self feedbackCollector];
  if (qword_10195F128 != -1)
  {
    dispatch_once(&qword_10195F128, &stru_1016537A8);
  }

  v13 = [qword_10195F120 path];
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

  [v12 setIsHandsFreeProfileUsed:v17];
}

- (void)_flushModalitiesFeedback
{
  if (self->_modalitiesFeedback)
  {
    v3 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v3 setModalities:self->_modalitiesFeedback];

    modalitiesFeedback = self->_modalitiesFeedback;
    self->_modalitiesFeedback = 0;
  }
}

- (void)_flushStepFeedback
{
  if (self->_stepFeedback)
  {
    v3 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v3 addStepFeedback:self->_stepFeedback];

    stepFeedback = self->_stepFeedback;
    self->_stepFeedback = 0;
  }
}

- (void)_completeCurrentStepFeedback:(BOOL)a3
{
  stepFeedback = self->_stepFeedback;
  if (stepFeedback)
  {
    v5 = a3;
    v6 = [(GEOStepFeedback *)stepFeedback evStepInfo];
    if (v6)
    {
      v7 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
      v8 = [v7 currentBatteryCapacity];
      v9 = +[NSUnitEnergy kilowattHours];
      v10 = [v8 measurementByConvertingToUnit:v9];
      [v10 doubleValue];
      v12 = (v11 * 1000.0);

      v13 = v12;
      if ([v6 remainingBatteryCharge] >= v12)
      {
        v13 = [v6 remainingBatteryCharge];
      }

      if ([v6 remainingBatteryCharge] <= v12)
      {
        v12 = [v6 remainingBatteryCharge];
      }

      v14 = v13 - v12;
      v15 = [(GEOStepFeedback *)self->_stepFeedback evStepInfo];
      [v15 setStateOfChargeDiff:v14];
    }

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(GEOStepFeedback *)self->_stepFeedback stepID];
      v18 = [(GEOStepFeedback *)self->_stepFeedback completedStep];
      v19 = [(GEOStepFeedback *)self->_stepFeedback routeID];
      v20 = [(GEOStepFeedback *)self->_stepFeedback waypointRouteID];
      v21[0] = 67109890;
      v21[1] = v17;
      v22 = 1024;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 1024;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Adding step feedback. ID: %u, completed: %d, route: %@, waypointRouteID: %u", v21, 0x1Eu);
    }

    [(GEOStepFeedback *)self->_stepFeedback setCompletionTimeStamp:CFAbsoluteTimeGetCurrent()];
    [(GEOStepFeedback *)self->_stepFeedback setCompletedStep:v5];
    [(NavigationFeedbackCollector *)self _flushStepFeedback];
  }
}

- (void)_openNewStepFeedbackWithRoute:(id)a3 step:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (self->_stepFeedback)
  {
    [(NavigationFeedbackCollector *)self _completeCurrentStepFeedback:0];
  }

  v7 = objc_alloc_init(GEOStepFeedback);
  if ([v17 isNewProtocolRoute])
  {
    v8 = [v17 legIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];
    v9 = [v17 legs];
    v10 = [v9 objectAtIndexedSubscript:v8];

    v11 = [v10 serverLegIDForAnalytics];
    [v7 setRouteID:v11];

    [v7 setWaypointRouteID:{objc_msgSend(v17, "serverIdentifier")}];
  }

  else
  {
    v10 = [v17 serverRouteID];
    [v7 setRouteID:v10];
  }

  [v7 setRouteIndex:{objc_msgSend(v17, "indexInResponse")}];
  [v7 setStepID:{objc_msgSend(v6, "stepID")}];
  [v7 setCompletedStep:0];
  [v7 setStepEndPathPointIndex:{objc_msgSend(v6, "endRouteCoordinate")}];
  [v7 setStepEndPathPointOffset:{COERCE_FLOAT(objc_msgSend(v6, "endRouteCoordinate") >> 32)}];
  [v7 setManeuverType:{objc_msgSend(v6, "maneuverType")}];
  [v7 setExpectedTime:{objc_msgSend(v6, "duration")}];
  v12 = [v17 etauResponseID];

  if (v12)
  {
    v13 = [v17 etauResponseID];
    [v7 setEtaTrafficUpdateResponseId:v13];
  }

  v14 = [v6 evInfo];
  if (v14)
  {
    v15 = objc_alloc_init(GEOEVStepFeedbackInfo);
    [v15 setRemainingBatteryPercentage:{objc_msgSend(v14, "remainingBatteryPercentage")}];
    [v15 setRemainingBatteryCharge:{objc_msgSend(v14, "remainingBatteryCharge")}];
    [v7 setEvStepInfo:v15];
  }

  stepFeedback = self->_stepFeedback;
  self->_stepFeedback = v7;
}

- (int)_navigationModeTypeForState:(unint64_t)a3
{
  if (a3 == 4)
  {
    return 2;
  }

  else
  {
    return a3 == 5;
  }
}

- (void)addAlightNotificationFeedback:(id)a3
{
  v4 = a3;
  v5 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v5 addAlightNotificationFeedback:v4];
}

- (BOOL)_shouldSendFeedback
{
  if (![(NavigationFeedbackCollector *)self isPlayingTrace])
  {
    return 1;
  }

  return GEOConfigGetBOOL();
}

- (void)_runAsyncBlockOnMainQueue:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D82A80;
  v7[3] = &unk_1016535B0;
  objc_copyWeak(v9, &location);
  v8 = v5;
  v9[1] = a2;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_runAsyncBlockOnLocalQueueIfNotSuppressed:(id)a3
{
  v4 = a3;
  if (![(NavigationFeedbackCollector *)self _isSuppressed])
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v4];
  }
}

- (void)_runAsyncBlockOnLocalQueue:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D82CB0;
  v8[3] = &unk_1016535B0;
  objc_copyWeak(v10, &location);
  v9 = v5;
  v10[1] = a2;
  v7 = v5;
  dispatch_async(queue, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_didSelectAlternate:(unint64_t)a3 forPrimaryString:(BOOL)a4 inSign:(id)a5
{
  v5 = a4;
  v7 = [(NSMutableDictionary *)self->_guidance objectForKeyedSubscript:a5];
  if (v7)
  {
    v8 = v7;
    if (v5)
    {
      [v7 setSelectedPrimaryStringIndex:a3];
    }

    else
    {
      [v7 setSelectedSecondaryStringIndex:a3];
    }

    v7 = v8;
  }
}

- (void)_captureArrivalAtWaypoint:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D82EBC;
  v5[3] = &unk_1016532F0;
  v6 = a3;
  v4 = v6;
  [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v5];
}

- (void)_updateFeedbackCollectorWithEVData
{
  v3 = [(NavigationFeedbackCollector *)self currentRoute];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    v5 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
    v6 = [v5 chargingArguments];
    v7 = [v6 copy];
    v8 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v8 setEvChargingModel:v7];

    v9 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
    v10 = [v9 consumptionArguments];
    v11 = [v10 copy];
    v12 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v12 setEvConsumptionModel:v11];

    initialStateOfCharge = self->_initialStateOfCharge;
    v14 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v14 setStateOfChargeAtOrigin:initialStateOfCharge];

    expectedFinalStateOfCharge = self->_expectedFinalStateOfCharge;
    v16 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v16 setStateOfChargeAtDestPredicted:expectedFinalStateOfCharge];

    v17 = [(NavigationFeedbackCollector *)self _stateOfChargeOfCurrentVehicle];
    v18 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v18 setStateOfChargeAtDestActual:v17];

    v19 = [(NavigationFeedbackCollector *)self currentRoute];
    v20 = [v19 legs];
    v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);

    v21 = objc_alloc_init(GEOWaypointInfo);
    v22 = [(NavigationFeedbackCollector *)self currentRoute];
    v23 = [v22 origin];
    v24 = [v23 latLng];
    [v21 setPosition:v24];

    [v30 addObject:v21];
    v25 = [(NavigationFeedbackCollector *)self currentRoute];
    v26 = [v25 legs];
    v27 = sub_100021DB0(v26, &stru_101653500);

    [v30 addObjectsFromArray:v27];
    v28 = [v30 copy];
    v29 = [(NavigationFeedbackCollector *)self feedbackCollector];
    [v29 setWaypoints:v28];
  }
}

- (void)_captureSessionlessEVRouteMessageIfNeeded
{
  v3 = [(NavigationFeedbackCollector *)self currentRoute];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    v9 = [(NavigationFeedbackCollector *)self feedbackCollector];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 batteryDied]);
    v6 = [NSNumber numberWithBool:self->_outOfRangeDodgeballDisplayed];
    v7 = [NSNumber numberWithBool:self->_originalTripIncludedChargingStation];
    v8 = [NSNumber numberWithBool:self->_addedChargingStationThroughSAR];
    [GEOAPPortal captureEvTripWithOutOfCharge:v5 outOfRangeAlertDisplayed:v6 originalTripIncludedChargingStation:v7 chargingStopAddedThroughSar:v8 tripIncludedPreferredChargingStation:0 stopRemovedDetails:self->_removedStopsDetails realtimeDodgeballs:0 chargeLocationDetails:self->_chargingSteps stopAddedDetails:self->_addedStopsDetails];
  }
}

- (void)_captureInitialEVRouteState
{
  v3 = [(NavigationFeedbackCollector *)self currentRoute];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    v7 = [(NavigationFeedbackCollector *)self currentRoute];
    v5 = [v7 waypoints];
    v6 = sub_1000282CC(v5, &stru_1016534A0);
    self->_originalTripIncludedChargingStation = [v6 count] != 0;
  }
}

- (void)offeredEVRerouteWithAlternateRoute:(id)a3 wasAccepted:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D83AC4;
  v6[3] = &unk_101653460;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NavigationFeedbackCollector *)v7 _runAsyncBlockOnLocalQueue:v6];
}

- (id)_stateOfChargeOfCurrentVehicle
{
  currentVehicle = self->_currentVehicle;
  if (currentVehicle)
  {
    v4 = [(VGVehicle *)currentVehicle currentVehicleState];
    v5 = [v4 currentBatteryCapacity];

    if (v5)
    {
      v6 = [(VGVehicle *)self->_currentVehicle currentVehicleState];
      v7 = [v6 currentBatteryCapacity];
      v8 = +[NSUnitEnergy kilowattHours];
      v9 = [v7 measurementByConvertingToUnit:v8];
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

- (void)setCurrentRoute:(id)a3
{
  p_currentRoute = &self->_currentRoute;
  v6 = a3;
  if (([v6 isEqual:*p_currentRoute] & 1) == 0)
  {
    objc_storeStrong(&self->_currentRoute, a3);
    if (v6)
    {
      -[GEODirectionsFeedbackCollector setTransportType:](self->_feedbackCollector, "setTransportType:", [v6 transportType]);
    }

    if ([(GEOComposedRoute *)*p_currentRoute isEVRoute])
    {
      [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653378];
      [(NavigationFeedbackCollector *)self _saveChargingStationInfo];
    }
  }
}

- (void)setAddedChargingStationThroughSAR:(BOOL)a3
{
  if (self->_addedChargingStationThroughSAR != a3)
  {
    self->_addedChargingStationThroughSAR = a3;
  }
}

- (void)setIsConnectedToCarplay:(BOOL)a3
{
  wasEverConnectedToCarplay = self->_wasEverConnectedToCarplay;
  self->_wasEverConnectedToCarplay = wasEverConnectedToCarplay | a3;
  if (wasEverConnectedToCarplay != (wasEverConnectedToCarplay | a3))
  {
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:&stru_101653358];
  }
}

- (void)setJunctionViewDisplayed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D84288;
    v6[3] = &unk_101653318;
    v6[4] = self;
    v7 = v4;
    [(NavigationFeedbackCollector *)self _runAsyncBlockOnLocalQueue:v6];
  }
}

- (void)addTrafficRerouteFeedback:(id)a3
{
  v4 = a3;
  v5 = [(NavigationFeedbackCollector *)self feedbackCollector];
  [v5 addTrafficRerouteFeedback:v4];
}

- (void)_captureVirtualGarageAnalytics:(id)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 licensePlate];

        if (v11)
        {
          v7 = (v7 + 1);
        }

        else
        {
          v7 = v7;
        }

        v6 = v6 + [v10 isPureElectricVehicle];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(NavigationFeedbackCollector *)self navigationService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NavigationFeedbackCollector;
  [(NavigationFeedbackCollector *)&v4 dealloc];
}

- (NavigationFeedbackCollector)initWithNavigationService:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = NavigationFeedbackCollector;
  v6 = [(NavigationFeedbackCollector *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, a3);
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