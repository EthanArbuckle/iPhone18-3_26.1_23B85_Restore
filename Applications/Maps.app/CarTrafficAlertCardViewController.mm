@interface CarTrafficAlertCardViewController
+ (BOOL)alertVotable:(id)votable;
- (BOOL)_alertRequiresOptIn:(id)in;
- (CarTrafficAlertCardViewController)initWithDelegate:(id)delegate trafficAlert:(id)alert response:(id)response;
- (CarTrafficAlertCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (int)_feedbackActionTypeFor:(int64_t)for;
- (int)_voteTypeAlertWithResult:(int64_t)result;
- (void)_cancelDismissTimer;
- (void)_didReceiveIncidentUpdate:(id)update;
- (void)_didVoteIncident:(int64_t)incident onTarget:(int)target;
- (void)_dismissTrafficAlertWithResult:(int64_t)result;
- (void)_dismissTrafficAlertWithResult:(int64_t)result onTarget:(int)target;
- (void)_recordEVAnalyticsWithResult:(int64_t)result;
- (void)_registerForSceneNotifications;
- (void)_sceneDidActivate:(id)activate;
- (void)_sendTrafficFeedbackForAlert:(id)alert actionType:(int)type;
- (void)_startProgressAnimationIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)updateFromTrafficAlert:(id)alert;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarTrafficAlertCardViewController

- (CarTrafficAlertCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didReceiveIncidentUpdate:(id)update
{
  userInfo = [update userInfo];
  v5 = [userInfo objectForKey:@"SiriTrafficIncidentIsClearKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [(CarTrafficAlertCardViewController *)self _dismissTrafficAlertWithResult:v7 onTarget:0];
}

- (int)_feedbackActionTypeFor:(int64_t)for
{
  if (for > 6)
  {
    return 1;
  }

  else
  {
    return dword_101212F78[for];
  }
}

- (NSArray)preferredFocusEnvironments
{
  trafficAlertView = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  preferredFocusEnvironments = [trafficAlertView preferredFocusEnvironments];

  return preferredFocusEnvironments;
}

- (NSArray)focusOrderSubItems
{
  trafficAlertView = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  focusOrderSubItems = [trafficAlertView focusOrderSubItems];

  return focusOrderSubItems;
}

- (int)_voteTypeAlertWithResult:(int64_t)result
{
  if ((result - 3) > 3)
  {
    return 1;
  }

  else
  {
    return dword_101212BF0[result - 3];
  }
}

- (void)_didVoteIncident:(int64_t)incident onTarget:(int)target
{
  v4 = *&target;
  v7 = [(CarTrafficAlertCardViewController *)self _voteTypeAlertWithResult:?];
  if (v7 == 1)
  {
    if (incident != 5)
    {
      return;
    }

    incident2 = +[MKMapService sharedService];
    trafficAlert = [(CarTrafficAlertCardViewController *)self trafficAlert];
    incident = [trafficAlert incident];
    type = [incident type];
    v11 = @"ACCIDENT";
    switch(type)
    {
      case 0:
        break;
      case 1:
        v11 = @"CONSTRUCTION";
        break;
      case 2:
        v11 = @"ROAD_CLOSURE";
        break;
      case 3:
        v11 = @"EVENT";
        break;
      case 4:
        v11 = @"HAZARD";
        break;
      case 5:
        v11 = @"LANE_CLOSURE";
        break;
      case 6:
        v11 = @"RAMP_CLOSURE";
        break;
      case 7:
        v11 = @"TRAFFIC";
        break;
      case 8:
        v11 = @"WALKING_CLOSURE";
        break;
      case 9:
        v11 = @"CONGESTION_ZONE_RESTRICTION";
        break;
      case 10:
        v11 = @"LICENSE_PLATE_RESTRICTION";
        break;
      case 11:
      case 12:
        goto LABEL_31;
      case 13:
        v11 = @"SPEED_TRAP";
        break;
      case 14:
        v11 = @"AREA_INCIDENT";
        break;
      default:
        if (type == 100)
        {
          v11 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_31:
          v11 = [NSString stringWithFormat:@"(unknown: %i)", type];
        }

        break;
    }

    [incident2 captureUserAction:108 onTarget:v4 eventValue:v11];
  }

  else
  {
    v12 = v7;
    trafficAlert2 = [(CarTrafficAlertCardViewController *)self trafficAlert];
    incident2 = [trafficAlert2 incident];

    trafficAlert = [incident2 incidentId];
    v14 = +[MKTrafficSupport GEOTrafficIncidentTypeForGEORouteIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForGEORouteIncidentType:", [incident2 type]);
    if ([incident2 hasPosition])
    {
      v15 = [GEOLocation alloc];
      position = [incident2 position];
      [position lat];
      v18 = v17;
      position2 = [incident2 position];
      [position2 lng];
      incident = [v15 initWithLatitude:v18 longitude:v20];
    }

    else
    {
      position = +[MKLocationManager sharedLocationManager];
      incident = [position currentLocation];
    }

    v11 = [[TrafficIncidentReport alloc] initWithIncidentLocation:incident type:v14 userPath:3];
    [(__CFString *)v11 setReportedFromCarplay:1];
    if (v12 == 3 && incident2)
    {
      v21 = [[VKTrafficIncidentFeature alloc] initWithRouteIncident:incident2 routeOffsetInMeters:0 routeRelevance:0 onRoute:0];
      v22 = +[TrafficIncidentsStorageManager sharedInstance];
      [v22 removeTrafficIncidentFeature:v21];
    }

    [(__CFString *)v11 submitFeedbackForType:v12 incidentId:trafficAlert completionHandler:0];
    v23 = +[MKMapService sharedService];
    v24 = [TrafficIncidentReport actionForVoteType:v12];
    trafficAlert3 = [(CarTrafficAlertCardViewController *)self trafficAlert];
    incident3 = [trafficAlert3 incident];
    type2 = [incident3 type];
    v28 = @"ACCIDENT";
    switch(type2)
    {
      case 0:
        break;
      case 1:
        v28 = @"CONSTRUCTION";
        break;
      case 2:
        v28 = @"ROAD_CLOSURE";
        break;
      case 3:
        v28 = @"EVENT";
        break;
      case 4:
        v28 = @"HAZARD";
        break;
      case 5:
        v28 = @"LANE_CLOSURE";
        break;
      case 6:
        v28 = @"RAMP_CLOSURE";
        break;
      case 7:
        v28 = @"TRAFFIC";
        break;
      case 8:
        v28 = @"WALKING_CLOSURE";
        break;
      case 9:
        v28 = @"CONGESTION_ZONE_RESTRICTION";
        break;
      case 10:
        v28 = @"LICENSE_PLATE_RESTRICTION";
        break;
      case 11:
      case 12:
        goto LABEL_16;
      case 13:
        v28 = @"SPEED_TRAP";
        break;
      case 14:
        v28 = @"AREA_INCIDENT";
        break;
      default:
        if (type2 == 100)
        {
          v28 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_16:
          v28 = [NSString stringWithFormat:@"(unknown: %i)", type2];
        }

        break;
    }

    [v23 captureUserAction:v24 onTarget:v4 eventValue:v28];
  }
}

- (BOOL)_alertRequiresOptIn:(id)in
{
  inCopy = in;
  if ([inCopy alertType] == 3)
  {
    v4 = [inCopy isAutomaticReroute] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_sendTrafficFeedbackForAlert:(id)alert actionType:(int)type
{
  v4 = *&type;
  alertCopy = alert;
  v6 = objc_alloc_init(GEOTrafficRerouteFeedback);
  etaResponseID = [alertCopy etaResponseID];
  [v6 setResponseId:etaResponseID];

  alternateRoute = [alertCopy alternateRoute];
  serverRouteID = [alternateRoute serverRouteID];
  [v6 setReroutedRouteID:serverRouteID];

  [alertCopy newEstimatedTime];
  [v6 setReroutedRouteTravelTime:v10];
  alternateRoute2 = [alertCopy alternateRoute];
  [v6 setReroutedRouteHistoricTravelTime:{objc_msgSend(alternateRoute2, "historicTravelTime")}];

  originalRoute = [alertCopy originalRoute];
  serverRouteID2 = [originalRoute serverRouteID];
  [v6 setOldRouteID:serverRouteID2];

  [alertCopy oldEstimatedTime];
  [v6 setOldRouteTravelTime:v14];
  [alertCopy oldHistoricTime];
  [v6 setOldRouteHistoricTravelTime:v15];
  oldRouteIncidents = [alertCopy oldRouteIncidents];
  [v6 setOldRouteIncidents:oldRouteIncidents];

  [v6 setActionType:v4];
  [v6 setBackgrounded:{+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground](UIApplication, "_maps_isAnyApplicationOrCarPlayApplicationSceneForeground") ^ 1}];
  bannerID = [alertCopy bannerID];
  [v6 setDisplayedBannerId:bannerID];

  [alertCopy distanceToDestination];
  [v6 setDistanceToDestination:?];
  displayTime = [(CarTrafficAlertCardViewController *)self displayTime];
  if (displayTime)
  {
    v19 = displayTime;
    dismissTime = [(CarTrafficAlertCardViewController *)self dismissTime];

    if (dismissTime)
    {
      dismissTime2 = [(CarTrafficAlertCardViewController *)self dismissTime];
      displayTime2 = [(CarTrafficAlertCardViewController *)self displayTime];
      [dismissTime2 timeIntervalSinceDate:displayTime2];
      v24 = v23;

      [v6 setBannerDurationSeconds:v24];
    }
  }

  alertType = [alertCopy alertType];
  if (alertType <= 7)
  {
    if (((1 << alertType) & 0x18) != 0)
    {
      v26 = 2;
      goto LABEL_16;
    }

    if (((1 << alertType) & 0x44) != 0)
    {
      incident = [alertCopy incident];

      if (incident)
      {
        v26 = 5;
      }

      else
      {
        v26 = 3;
      }

      goto LABEL_16;
    }

    if (((1 << alertType) & 0xA0) != 0)
    {
      goto LABEL_11;
    }
  }

  if (!alertType)
  {
LABEL_11:
    v26 = 0;
  }

  else
  {
    if (alertType != 1)
    {
      goto LABEL_17;
    }

    v26 = 1;
  }

LABEL_16:
  [v6 setAlertType:v26];
LABEL_17:
  v28 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v28 addTrafficRerouteFeedback:v6];
}

- (void)_recordEVAnalyticsWithResult:(int64_t)result
{
  originalRoute = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  waypoints = [originalRoute waypoints];
  v7 = [waypoints count];
  alternateRoute = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];
  waypoints2 = [alternateRoute waypoints];
  v10 = [waypoints2 count];

  if (v7 != v10)
  {
    v11 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    alternateRoute2 = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];
    [v11 offeredEVRerouteWithAlternateRoute:alternateRoute2 wasAccepted:0];
  }

  originalRoute2 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  if ([originalRoute2 isEVRoute])
  {
    alternateRoute3 = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];

    if (alternateRoute3)
    {
      v15 = +[MKMapService sharedService];
      v29 = v15;
      v16 = 6097;
LABEL_11:
      v21 = 1001;
      goto LABEL_12;
    }
  }

  else
  {
  }

  originalRoute3 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  if (([originalRoute3 isEVRoute] & 1) == 0)
  {

LABEL_16:
    v22 = sub_100006E1C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      return;
    }

    selfCopy = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(CarTrafficAlertCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy, v27];

        goto LABEL_22;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy];
LABEL_22:

    *buf = 138543362;
    v31 = selfCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] CarTrafficAlertCardViewController: tried to record EV CarPlay dodgeball, but received an unsupported state.", buf, 0xCu);

    goto LABEL_23;
  }

  originalRouteNavigability = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRouteNavigability];
  isEvFeasible = [originalRouteNavigability isEvFeasible];

  if (isEvFeasible)
  {
    goto LABEL_16;
  }

  isReroute = [(MNTrafficIncidentAlert *)self->_trafficAlert isReroute];
  v15 = +[MKMapService sharedService];
  v29 = v15;
  if (isReroute)
  {
    v16 = 6095;
    goto LABEL_11;
  }

  [v15 captureUserAction:75 onTarget:1001 eventValue:0];

  if (result != 1)
  {
    return;
  }

  v15 = +[MKMapService sharedService];
  v29 = v15;
  v16 = 6099;
  v21 = 615;
LABEL_12:
  [v15 captureUserAction:v16 onTarget:v21 eventValue:0];
}

- (void)_dismissTrafficAlertWithResult:(int64_t)result onTarget:(int)target
{
  v4 = *&target;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CarTrafficAlertCardViewController *)selfCopy isDismissing])
  {
    v7 = sub_100006E1C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      objc_sync_exit(selfCopy);
      return;
    }

    v8 = selfCopy;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarTrafficAlertCardViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ([v11 isEqualToString:v10] & 1) == 0)
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_9;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_9:

LABEL_19:
    *buf = 138543362;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] CarTrafficAlertCardViewController: Already in the dismiss flow.", buf, 0xCu);

    goto LABEL_20;
  }

  [(CarTrafficAlertCardViewController *)selfCopy setIsDismissing:1];
  objc_sync_exit(selfCopy);

  [(CarTrafficAlertCardViewController *)selfCopy _cancelDismissTimer];
  v14 = [(CarTrafficAlertCardViewController *)selfCopy _feedbackActionTypeFor:result];
  v15 = sub_100006E1C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = selfCopy;
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(CarTrafficAlertCardViewController *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_17;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_17:

LABEL_22:
    *buf = 138543618;
    v51 = v21;
    v52 = 1024;
    LODWORD(resultCopy) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] CarTrafficAlertCardViewController: Dismissing TrafficAlert with actionType: %d", buf, 0x12u);
  }

  if (v14 == 1)
  {
    v24 = 1;
  }

  else if (v14 == 3)
  {
    trafficAlert = [(CarTrafficAlertCardViewController *)selfCopy trafficAlert];
    v23 = [(CarTrafficAlertCardViewController *)selfCopy _alertRequiresOptIn:trafficAlert];

    v24 = v23 ^ 1;
  }

  else
  {
    v24 = 0;
  }

  response = [(CarTrafficAlertCardViewController *)selfCopy response];
  v26 = response == 0;

  if (!v26)
  {
    response2 = [(CarTrafficAlertCardViewController *)selfCopy response];
    response2[2](response2, v24);

    [(CarTrafficAlertCardViewController *)selfCopy setResponse:0];
  }

  v28 = +[NSDate date];
  [(CarTrafficAlertCardViewController *)selfCopy setDismissTime:v28];

  trafficAlert2 = [(CarTrafficAlertCardViewController *)selfCopy trafficAlert];
  [(CarTrafficAlertCardViewController *)selfCopy _sendTrafficFeedbackForAlert:trafficAlert2 actionType:v14];

  originalRoute = [(MNTrafficIncidentAlert *)selfCopy->_trafficAlert originalRoute];
  LODWORD(trafficAlert2) = [originalRoute isEVRoute];

  if (trafficAlert2)
  {
    [(CarTrafficAlertCardViewController *)selfCopy _recordEVAnalyticsWithResult:result];
  }

  else
  {
    analyticsMessage = [(MNTrafficIncidentAlert *)selfCopy->_trafficAlert analyticsMessage];

    if (analyticsMessage)
    {
      if (result == 2)
      {
        v34 = +[MKMapService sharedService];
        analyticsMessage2 = [(MNTrafficIncidentAlert *)selfCopy->_trafficAlert analyticsMessage];
        [v34 captureUserAction:3061 onTarget:1001 eventValue:analyticsMessage2];
      }

      else if (result == 1)
      {
        v32 = +[MKMapService sharedService];
        analyticsMessage3 = [(MNTrafficIncidentAlert *)selfCopy->_trafficAlert analyticsMessage];
        [v32 captureUserAction:3060 onTarget:1001 eventValue:analyticsMessage3];
      }
    }
  }

  v36 = +[IPCServer sharedServer];
  trafficAlert3 = [(CarTrafficAlertCardViewController *)selfCopy trafficAlert];
  [v36 dismissTrafficIncidentAlert:trafficAlert3];

  v38 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  trafficAlert4 = [(CarTrafficAlertCardViewController *)selfCopy trafficAlert];
  alertID = [trafficAlert4 alertID];
  [v38 clearTrafficIncidentBulletinWithAlertID:alertID];

  trafficAlert5 = [(CarTrafficAlertCardViewController *)selfCopy trafficAlert];
  LODWORD(trafficAlert4) = [CarTrafficAlertCardViewController alertVotable:trafficAlert5];

  if (!trafficAlert4)
  {
    goto LABEL_46;
  }

  v42 = sub_100006E1C();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = selfCopy;
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    if (objc_opt_respondsToSelector())
    {
      v46 = [(CarTrafficAlertCardViewController *)v43 performSelector:"accessibilityIdentifier"];
      v47 = v46;
      if (v46 && ![v46 isEqualToString:v45])
      {
        v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];

        goto LABEL_44;
      }
    }

    v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
LABEL_44:

    *buf = 138543618;
    v51 = v48;
    v52 = 2048;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] CarTrafficAlertCardViewController: did vote on TrafficAlert: %ld", buf, 0x16u);
  }

  [(CarTrafficAlertCardViewController *)selfCopy _didVoteIncident:result onTarget:v4];
LABEL_46:
  delegate = [(CarTrafficAlertCardViewController *)selfCopy delegate];
  [delegate trafficAlertCardViewControllerDismiss:selfCopy];

  [(CarTrafficAlertCardViewController *)selfCopy setIsDismissing:0];
}

- (void)_dismissTrafficAlertWithResult:(int64_t)result
{
  [(CarTrafficAlertCardViewController *)self setStartedAnimatingProgressBar:0];

  [(CarTrafficAlertCardViewController *)self _dismissTrafficAlertWithResult:result onTarget:1001];
}

- (void)updateFromTrafficAlert:(id)alert
{
  alertCopy = alert;
  v5 = sub_1005B8AF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = alertCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic alert: %@", &v7, 0x16u);
  }

  [(CarTrafficAlertCardViewController *)self setTrafficAlert:alertCopy];
  trafficAlertView = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  [trafficAlertView setTrafficAlert:alertCopy];

  [(CarTrafficAlertCardViewController *)self _startProgressAnimationIfNeeded];
}

- (void)_cancelDismissTimer
{
  dismissTimer = [(CarTrafficAlertCardViewController *)self dismissTimer];
  [dismissTimer invalidate];

  [(CarTrafficAlertCardViewController *)self setDismissTimer:0];
}

- (void)_startProgressAnimationIfNeeded
{
  if (![(CarTrafficAlertCardViewController *)self hasStartedAnimatingProgressBar])
  {
    if ([(CarTrafficAlertCardViewController *)self isViewLoaded])
    {
      view = [(CarTrafficAlertCardViewController *)self view];
      window = [view window];

      if (window)
      {
        trafficAlert = [(CarTrafficAlertCardViewController *)self trafficAlert];
        shouldShowTimer = [trafficAlert shouldShowTimer];
        trafficAlertView = [(CarTrafficAlertCardViewController *)self trafficAlertView];
        [trafficAlertView setProgressionHidden:shouldShowTimer ^ 1];

        trafficAlert2 = [(CarTrafficAlertCardViewController *)self trafficAlert];
        [trafficAlert2 alertDisplayDuration];
        v10 = v9;

        if (v10 > 0.0)
        {
          trafficAlert3 = [(CarTrafficAlertCardViewController *)self trafficAlert];
          shouldShowTimer2 = [trafficAlert3 shouldShowTimer];

          if (shouldShowTimer2)
          {
            objc_initWeak(&location, self);
            trafficAlertView2 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
            [trafficAlertView2 startProgressAnimationWithDuration:v10];

            [(CarTrafficAlertCardViewController *)self setStartedAnimatingProgressBar:1];
            [(CarTrafficAlertCardViewController *)self _cancelDismissTimer];
            v15 = _NSConcreteStackBlock;
            v16 = 3221225472;
            v17 = sub_1005B8DBC;
            v18 = &unk_101661BC8;
            objc_copyWeak(&v19, &location);
            v14 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v15 block:v10];
            [(CarTrafficAlertCardViewController *)self setDismissTimer:v14, v15, v16, v17, v18];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- (void)_sceneDidActivate:(id)activate
{
  if (![(CarTrafficAlertCardViewController *)self hasStartedAnimatingProgressBar])
  {
    [(CarTrafficAlertCardViewController *)self _startProgressAnimationIfNeeded];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self];
  }
}

- (void)_registerForSceneNotifications
{
  view = [(CarTrafficAlertCardViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (!windowScene)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarTrafficAlertCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] CarTrafficAlert card failed to get scene to register for lifecycle events.", buf, 0xCu);

    goto LABEL_13;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:windowScene];
LABEL_13:
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v5 viewWillDisappear:disappear];
  [(CarTrafficAlertCardViewController *)self _cancelDismissTimer];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v9 viewDidAppear:appear];
  view = [(CarTrafficAlertCardViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (activationState)
  {
    [(CarTrafficAlertCardViewController *)self _registerForSceneNotifications];
  }

  else
  {
    [(CarTrafficAlertCardViewController *)self _startProgressAnimationIfNeeded];
  }

  v8 = +[NSDate date];
  [(CarTrafficAlertCardViewController *)self setDisplayTime:v8];

  [(CarTrafficAlertCardViewController *)self setDismissTime:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v8 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_didReceiveIncidentUpdate:" name:@"SiriTrafficIncidentUpdateNotification" object:0];

  analyticsMessage = [(MNTrafficIncidentAlert *)self->_trafficAlert analyticsMessage];

  if (analyticsMessage)
  {
    v6 = +[MKMapService sharedService];
    analyticsMessage2 = [(MNTrafficIncidentAlert *)self->_trafficAlert analyticsMessage];
    [v6 captureUserAction:248 onTarget:1001 eventValue:analyticsMessage2];
  }
}

- (void)loadView
{
  v3 = [CarTrafficAlertView alloc];
  trafficAlert = [(CarTrafficAlertCardViewController *)self trafficAlert];
  v6 = [(CarTrafficAlertView *)v3 initWithDelegate:self trafficAlert:trafficAlert];

  [(CarTrafficAlertView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarTrafficAlertCardViewController *)self setView:v6];
  [(CarTrafficAlertCardViewController *)self setTrafficAlertView:v6];
  trafficAlert2 = [(CarTrafficAlertCardViewController *)self trafficAlert];
  [(CarTrafficAlertCardViewController *)self _sendTrafficFeedbackForAlert:trafficAlert2 actionType:4];
}

- (void)dealloc
{
  v3 = sub_1005B8AF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v4 dealloc];
}

- (CarTrafficAlertCardViewController)initWithDelegate:(id)delegate trafficAlert:(id)alert response:(id)response
{
  delegateCopy = delegate;
  alertCopy = alert;
  responseCopy = response;
  v16.receiver = self;
  v16.super_class = CarTrafficAlertCardViewController;
  v11 = [(CarTrafficAlertCardViewController *)&v16 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = sub_1005B8AF4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v18 = v11;
      v19 = 2112;
      v20 = alertCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with traffic alert: %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_trafficAlert, alert);
    v13 = objc_retainBlock(responseCopy);
    response = v11->_response;
    v11->_response = v13;
  }

  return v11;
}

+ (BOOL)alertVotable:(id)votable
{
  votableCopy = votable;
  if ([votableCopy alertType] == 1 || objc_msgSend(votableCopy, "alertType") == 2)
  {
    acceptButtonInfo = [votableCopy acceptButtonInfo];
    v5 = acceptButtonInfo != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end