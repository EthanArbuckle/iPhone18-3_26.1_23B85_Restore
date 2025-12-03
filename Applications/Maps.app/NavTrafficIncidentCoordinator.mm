@interface NavTrafficIncidentCoordinator
- (BOOL)_alertRequiresOptIn:(id)in;
- (BOOL)_alertVotable:(id)votable;
- (BOOL)_hasValidRerouteTimer;
- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController;
- (NavTrafficIncidentCoordinator)init;
- (NavTrafficIncidentPresentation)presentationDelegate;
- (double)_timeoutTimerProgress;
- (int)_GEOTrafficFeedbackTypeForAction:(int64_t)action;
- (int)_voteTypeAlertWithResult:(int64_t)result;
- (void)_animateProgressWithDuration:(double)duration startValue:(double)value;
- (void)_didBecomeActive:(id)active;
- (void)_didVoteAlert:(id)alert type:(int)type target:(int)target;
- (void)_dismissTrafficAlertWithActionType:(int64_t)type target:(int)target;
- (void)_dismissTrafficAlertWithTimer:(id)timer;
- (void)_getTimeoutTimerProgress:(double *)progress timeRemaining:(double *)remaining;
- (void)_sendTrafficFeedbackForAlert:(id)alert actionType:(int)type;
- (void)_updateProgressTimerForAlert:(id)alert;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)didTapAcceptButtonOnTrafficIncidentViewControllerTarget:(int)target;
- (void)didTapRejectButtonOnTrafficIncidentViewControllerTarget:(int)target;
- (void)dismissAlertViewForTrafficIncidentAlert:(id)alert acceptedNewRoute:(BOOL)route;
- (void)dismissAlertViewForTrafficIncidentAlert:(id)alert actionType:(int64_t)type target:(int)target;
- (void)dismissVisibleTrafficAlertView:(BOOL)view;
- (void)presentAlertViewForTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)setPresentedAlert:(id)alert;
- (void)updatedAlertViewWithTrafficIncidentAlert:(id)alert;
@end

@implementation NavTrafficIncidentCoordinator

- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController
{
  trafficIncidentViewController = self->_trafficIncidentViewController;
  if (!trafficIncidentViewController)
  {
    v4 = [[NavTrafficIncidentContaineeViewController alloc] initWithNibName:0 bundle:0];
    v5 = self->_trafficIncidentViewController;
    self->_trafficIncidentViewController = v4;

    [(ContaineeViewController *)self->_trafficIncidentViewController setContaineeDelegate:self];
    [(NavTrafficIncidentContaineeViewController *)self->_trafficIncidentViewController setDelegate:self];
    trafficIncidentViewController = self->_trafficIncidentViewController;
  }

  return trafficIncidentViewController;
}

- (NavTrafficIncidentPresentation)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (BOOL)_alertVotable:(id)votable
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

- (BOOL)_alertRequiresOptIn:(id)in
{
  inCopy = in;
  if ([inCopy isReroute])
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
  displayTime = [(NavTrafficIncidentCoordinator *)self displayTime];
  if (displayTime)
  {
    v19 = displayTime;
    dismissTime = [(NavTrafficIncidentCoordinator *)self dismissTime];

    if (dismissTime)
    {
      dismissTime2 = [(NavTrafficIncidentCoordinator *)self dismissTime];
      displayTime2 = [(NavTrafficIncidentCoordinator *)self displayTime];
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

- (BOOL)_hasValidRerouteTimer
{
  timeoutTimer = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  if ([timeoutTimer isValid])
  {
    presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    if ([presentedAlert isReroute])
    {
      presentedAlert2 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
      isAutomaticReroute = [presentedAlert2 isAutomaticReroute];
    }

    else
    {
      isAutomaticReroute = 0;
    }
  }

  else
  {
    isAutomaticReroute = 0;
  }

  return isAutomaticReroute;
}

- (double)_timeoutTimerProgress
{
  v3 = 0.0;
  [(NavTrafficIncidentCoordinator *)self _getTimeoutTimerProgress:&v3 timeRemaining:0];
  return v3;
}

- (void)_getTimeoutTimerProgress:(double *)progress timeRemaining:(double *)remaining
{
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [presentedAlert alertDisplayDuration];
  v9 = v8;

  timeoutTimer = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  fireDate = [timeoutTimer fireDate];
  [fireDate timeIntervalSinceNow];
  v12 = 0.0;
  if (v13 > 0.0)
  {
    timeoutTimer2 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
    fireDate2 = [timeoutTimer2 fireDate];
    [fireDate2 timeIntervalSinceNow];
    v12 = v16;
  }

  v17 = fmin(v12, v9);
  if (remaining)
  {
    *remaining = v17;
  }

  if (progress)
  {
    if (v9 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = fmin(fmax((v9 - v17) / v9, 0.0), 1.0);
    }

    *progress = v18;
  }
}

- (void)_didBecomeActive:(id)active
{
  if ([(NavTrafficIncidentCoordinator *)self _hasValidRerouteTimer]|| ([(NavTrafficIncidentCoordinator *)self presentedAlert], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(NavTrafficIncidentCoordinator *)self _alertVotable:v4], v4, v5))
  {
    v6 = 0.0;
    v7 = 0.0;
    [(NavTrafficIncidentCoordinator *)self _getTimeoutTimerProgress:&v7 timeRemaining:&v6];
    if (v6 > 0.0)
    {
      [(NavTrafficIncidentCoordinator *)self _animateProgressWithDuration:v6 startValue:v7];
    }
  }
}

- (void)_animateProgressWithDuration:(double)duration startValue:(double)value
{
  trafficIncidentViewController = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  view = [trafficIncidentViewController view];
  layer = [view layer];
  [layer removeAllAnimations];

  trafficIncidentViewController2 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  [trafficIncidentViewController2 setRerouteTimerProgress:value];

  trafficIncidentViewController3 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  view2 = [trafficIncidentViewController3 view];
  [view2 layoutIfNeeded];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007135D4;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100713650;
  v13[3] = &unk_101661738;
  v13[4] = self;
  [UIView animateWithDuration:v14 animations:v13 completion:duration];
}

- (void)_dismissTrafficAlertWithActionType:(int64_t)type target:(int)target
{
  v4 = *&target;
  obj = self;
  objc_sync_enter(obj);
  if ([(NavTrafficIncidentCoordinator *)obj isDismissing]|| ([(NavTrafficIncidentCoordinator *)obj presentedAlert], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(NavTrafficIncidentCoordinator *)obj setIsDismissing:1];
    objc_sync_exit(obj);

    v7 = +[NSDate date];
    [(NavTrafficIncidentCoordinator *)obj setDismissTime:v7];

    timeoutTimer = [(NavTrafficIncidentCoordinator *)obj timeoutTimer];
    [timeoutTimer invalidate];

    v9 = sub_100713A00();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Dismissing TrafficAlert with actionType: %ld", buf, 0xCu);
    }

    trafficIncidentViewController = [(NavTrafficIncidentCoordinator *)obj trafficIncidentViewController];
    presentedAlert = [(NavTrafficIncidentCoordinator *)obj presentedAlert];
    [(NavTrafficIncidentCoordinator *)obj setPresentedAlert:0];
    responseCallback = [(NavTrafficIncidentCoordinator *)obj responseCallback];
    v13 = responseCallback == 0;

    if (!v13)
    {
      v14 = obj;
      if (type == 1)
      {
        v15 = 1;
      }

      else if (type == 6)
      {
        v15 = [(NavTrafficIncidentCoordinator *)obj _alertRequiresOptIn:presentedAlert]^ 1;
        v14 = obj;
      }

      else
      {
        v15 = 0;
      }

      responseCallback2 = [(NavTrafficIncidentCoordinator *)v14 responseCallback];
      responseCallback2[2](responseCallback2, v15);

      [(NavTrafficIncidentCoordinator *)obj setResponseCallback:0];
    }

    presentationDelegate = [(NavTrafficIncidentCoordinator *)obj presentationDelegate];
    [presentationDelegate dismissTrafficIncidentViewController:trafficIncidentViewController];

    [(NavTrafficIncidentCoordinator *)obj _sendTrafficFeedbackForAlert:presentedAlert actionType:[(NavTrafficIncidentCoordinator *)obj _GEOTrafficFeedbackTypeForAction:type]];
    v18 = +[IPCServer sharedServer];
    [v18 dismissTrafficIncidentAlert:presentedAlert];

    v19 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    alertID = [presentedAlert alertID];
    [v19 clearTrafficIncidentBulletinWithAlertID:alertID];

    v21 = ![(NavTrafficIncidentCoordinator *)obj _alertVotable:presentedAlert];
    if (type == 5)
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      [(NavTrafficIncidentCoordinator *)obj _didVoteAlert:presentedAlert type:[(NavTrafficIncidentCoordinator *)obj _voteTypeAlertWithResult:type] target:v4];
    }

    [(NavTrafficIncidentCoordinator *)obj setIsDismissing:0];
  }
}

- (void)_dismissTrafficAlertWithTimer:(id)timer
{
  timerCopy = timer;
  userInfo = [timerCopy userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [timerCopy userInfo];
  }

  else
  {
    [(NavTrafficIncidentCoordinator *)self presentedAlert];
  }
  v6 = ;
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  bannerID = [presentedAlert bannerID];
  bannerID2 = [v6 bannerID];
  v10 = [bannerID isEqualToString:bannerID2];

  if (v10)
  {
    [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:6 target:739];
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  v10 = [(NavTrafficIncidentCoordinator *)self presentedAlert:state];
  originalRoute = [v10 originalRoute];
  if ([originalRoute isEVRoute])
  {
    originalRouteNavigability = [v10 originalRouteNavigability];
    isEvFeasible = [originalRouteNavigability isEvFeasible];

    if (!isEvFeasible)
    {
      v8 = 6099;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = 3059;
LABEL_6:
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v8 onTarget:615 eventValue:0];

  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:v10 actionType:5 target:739];
}

- (int)_GEOTrafficFeedbackTypeForAction:(int64_t)action
{
  if ((action - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_1012133C8[action - 1];
  }
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

- (void)_didVoteAlert:(id)alert type:(int)type target:(int)target
{
  v5 = *&target;
  v6 = *&type;
  alertCopy = alert;
  v37 = alertCopy;
  if (v6 != 4 || ([alertCopy acceptButtonInfo], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "buttonDisplay"), v9, alertCopy = v37, v10 == 1))
  {
    incident = [alertCopy incident];
    incidentId = [incident incidentId];

    incident2 = [v37 incident];
    if ([incident2 hasPosition])
    {
      v14 = [GEOLocation alloc];
      incident3 = [v37 incident];
      position = [incident3 position];
      [position lat];
      v18 = v17;
      incident4 = [v37 incident];
      position2 = [incident4 position];
      [position2 lng];
      currentLocation = [v14 initWithLatitude:v18 longitude:v21];
    }

    else
    {
      incident3 = +[MKLocationManager sharedLocationManager];
      currentLocation = [incident3 currentLocation];
    }

    incident5 = [v37 incident];
    v24 = +[MKTrafficSupport GEOTrafficIncidentTypeForGEORouteIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForGEORouteIncidentType:", [incident5 type]);

    v25 = [[TrafficIncidentReport alloc] initWithIncidentLocation:currentLocation type:v24 userPath:3];
    incident6 = [v37 incident];

    if (v6 == 3 && incident6)
    {
      v27 = [VKTrafficIncidentFeature alloc];
      incident7 = [v37 incident];
      v29 = [v27 initWithRouteIncident:incident7 routeOffsetInMeters:0 routeRelevance:0 onRoute:0];

      v30 = +[TrafficIncidentsStorageManager sharedInstance];
      [v30 removeTrafficIncidentFeature:v29];
    }

    [(TrafficIncidentReport *)v25 submitFeedbackForType:v6 incidentId:incidentId completionHandler:0];
    v31 = +[MKMapService sharedService];
    v32 = [TrafficIncidentReport actionForVoteType:v6];
    presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    incident8 = [presentedAlert incident];
    type = [incident8 type];
    v36 = @"ACCIDENT";
    switch(type)
    {
      case 0:
        break;
      case 1:
        v36 = @"CONSTRUCTION";
        break;
      case 2:
        v36 = @"ROAD_CLOSURE";
        break;
      case 3:
        v36 = @"EVENT";
        break;
      case 4:
        v36 = @"HAZARD";
        break;
      case 5:
        v36 = @"LANE_CLOSURE";
        break;
      case 6:
        v36 = @"RAMP_CLOSURE";
        break;
      case 7:
        v36 = @"TRAFFIC";
        break;
      case 8:
        v36 = @"WALKING_CLOSURE";
        break;
      case 9:
        v36 = @"CONGESTION_ZONE_RESTRICTION";
        break;
      case 10:
        v36 = @"LICENSE_PLATE_RESTRICTION";
        break;
      case 11:
      case 12:
        goto LABEL_13;
      case 13:
        v36 = @"SPEED_TRAP";
        break;
      case 14:
        v36 = @"AREA_INCIDENT";
        break;
      default:
        if (type == 100)
        {
          v36 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_13:
          v36 = [NSString stringWithFormat:@"(unknown: %i)", type];
        }

        break;
    }

    [v31 captureUserAction:v32 onTarget:v5 eventValue:v36];

    alertCopy = v37;
  }
}

- (void)didTapAcceptButtonOnTrafficIncidentViewControllerTarget:(int)target
{
  v3 = *&target;
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  if ([presentedAlert isReroute])
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  presentedAlert2 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:presentedAlert2 actionType:v6 target:v3];
}

- (void)didTapRejectButtonOnTrafficIncidentViewControllerTarget:(int)target
{
  v3 = *&target;
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  if ([presentedAlert isReroute])
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  presentedAlert2 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:presentedAlert2 actionType:v6 target:v3];
}

- (void)updatedAlertViewWithTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  bannerID = [alertCopy bannerID];
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  bannerID2 = [presentedAlert bannerID];
  v7 = [bannerID isEqualToString:bannerID2];

  if (v7)
  {
    presentedAlert2 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    shouldShowTimer = [presentedAlert2 shouldShowTimer];
    shouldShowTimer2 = [alertCopy shouldShowTimer];

    if (shouldShowTimer != shouldShowTimer2)
    {
      [(NavTrafficIncidentCoordinator *)self _updateProgressTimerForAlert:alertCopy];
    }

    [(NavTrafficIncidentCoordinator *)self setPresentedAlert:alertCopy];
    trafficIncidentViewController = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController setIncidentAlert:alertCopy];
  }
}

- (void)dismissVisibleTrafficAlertView:(BOOL)view
{
  if (view)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:v3 target:739];
}

- (void)dismissAlertViewForTrafficIncidentAlert:(id)alert actionType:(int64_t)type target:(int)target
{
  alertCopy = alert;
  presentedAlert = [(NavTrafficIncidentCoordinator *)self presentedAlert];

  if (presentedAlert == alertCopy)
  {

    [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:type target:739];
  }
}

- (void)dismissAlertViewForTrafficIncidentAlert:(id)alert acceptedNewRoute:(BOOL)route
{
  if (route)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:alert actionType:v4 target:739];
}

- (void)_updateProgressTimerForAlert:(id)alert
{
  alertCopy = alert;
  [alertCopy alertDisplayDuration];
  v6 = v5;
  if (![alertCopy shouldShowTimer] || v6 <= 0.0)
  {
    trafficIncidentViewController = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController setProgressionHidden:1];

    timeoutTimer = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
    [timeoutTimer invalidate];

    goto LABEL_6;
  }

  v7 = [(NavTrafficIncidentCoordinator *)self _alertRequiresOptIn:alertCopy];
  trafficIncidentViewController2 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  [trafficIncidentViewController2 setProgressionHidden:v7];

  timeoutTimer2 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  [timeoutTimer2 invalidate];

  if (v7)
  {
LABEL_6:
    [(NavTrafficIncidentCoordinator *)self setTimeoutTimer:0];
    goto LABEL_7;
  }

  v10 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007144BC;
  block[3] = &unk_10165E668;
  block[4] = self;
  v15 = v6;
  v14 = alertCopy;
  dispatch_after(v10, &_dispatch_main_q, block);

LABEL_7:
}

- (void)presentAlertViewForTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  if (alertCopy)
  {
    callbackCopy = callback;
    [(NavTrafficIncidentCoordinator *)self setPresentedAlert:alertCopy];
    [(NavTrafficIncidentCoordinator *)self setResponseCallback:callbackCopy];

    v8 = +[NSDate date];
    [(NavTrafficIncidentCoordinator *)self setDisplayTime:v8];

    [(NavTrafficIncidentCoordinator *)self setDismissTime:0];
    isReroute = [alertCopy isReroute];
    [alertCopy alertDisplayDuration];
    v11 = v10;
    v12 = 1;
    if ([alertCopy shouldShowTimer] && v11 > 0.0)
    {
      v12 = [(NavTrafficIncidentCoordinator *)self _alertRequiresOptIn:alertCopy];
    }

    trafficIncidentViewController = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController setIncidentAlert:alertCopy];

    trafficIncidentViewController2 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController2 setProgressionHidden:v12];

    [(NavTrafficIncidentCoordinator *)self _updateProgressTimerForAlert:alertCopy];
    presentationDelegate = [(NavTrafficIncidentCoordinator *)self presentationDelegate];
    trafficIncidentViewController3 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100714824;
    v24[3] = &unk_1016574C0;
    v24[4] = self;
    v25 = isReroute;
    [presentationDelegate presentTrafficIncidentViewController:trafficIncidentViewController3 completion:v24];

    v17 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    alertID = [alertCopy alertID];
    isReroute2 = [alertCopy isReroute];
    alertTitles = [alertCopy alertTitles];
    firstObject = [alertTitles firstObject];
    alertDescriptions = [alertCopy alertDescriptions];
    firstObject2 = [alertDescriptions firstObject];
    [v17 showTrafficIncidentAlertWithID:alertID withReroute:isReroute2 title:firstObject description:firstObject2];

    [(NavTrafficIncidentCoordinator *)self _sendTrafficFeedbackForAlert:alertCopy actionType:4];
  }
}

- (void)setPresentedAlert:(id)alert
{
  alertCopy = alert;
  if (self->_presentedAlert != alertCopy)
  {
    v6 = sub_100713A00();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = alertCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic incident alert: %@", &v7, 0x16u);
    }

    objc_storeStrong(&self->_presentedAlert, alert);
  }
}

- (NavTrafficIncidentCoordinator)init
{
  v6.receiver = self;
  v6.super_class = NavTrafficIncidentCoordinator;
  v2 = [(NavTrafficIncidentCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v4 = v2;
  }

  return v2;
}

@end