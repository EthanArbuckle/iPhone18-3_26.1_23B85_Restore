@interface NavTrafficIncidentCoordinator
- (BOOL)_alertRequiresOptIn:(id)a3;
- (BOOL)_alertVotable:(id)a3;
- (BOOL)_hasValidRerouteTimer;
- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController;
- (NavTrafficIncidentCoordinator)init;
- (NavTrafficIncidentPresentation)presentationDelegate;
- (double)_timeoutTimerProgress;
- (int)_GEOTrafficFeedbackTypeForAction:(int64_t)a3;
- (int)_voteTypeAlertWithResult:(int64_t)a3;
- (void)_animateProgressWithDuration:(double)a3 startValue:(double)a4;
- (void)_didBecomeActive:(id)a3;
- (void)_didVoteAlert:(id)a3 type:(int)a4 target:(int)a5;
- (void)_dismissTrafficAlertWithActionType:(int64_t)a3 target:(int)a4;
- (void)_dismissTrafficAlertWithTimer:(id)a3;
- (void)_getTimeoutTimerProgress:(double *)a3 timeRemaining:(double *)a4;
- (void)_sendTrafficFeedbackForAlert:(id)a3 actionType:(int)a4;
- (void)_updateProgressTimerForAlert:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)didTapAcceptButtonOnTrafficIncidentViewControllerTarget:(int)a3;
- (void)didTapRejectButtonOnTrafficIncidentViewControllerTarget:(int)a3;
- (void)dismissAlertViewForTrafficIncidentAlert:(id)a3 acceptedNewRoute:(BOOL)a4;
- (void)dismissAlertViewForTrafficIncidentAlert:(id)a3 actionType:(int64_t)a4 target:(int)a5;
- (void)dismissVisibleTrafficAlertView:(BOOL)a3;
- (void)presentAlertViewForTrafficIncidentAlert:(id)a3 responseCallback:(id)a4;
- (void)setPresentedAlert:(id)a3;
- (void)updatedAlertViewWithTrafficIncidentAlert:(id)a3;
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

- (BOOL)_alertVotable:(id)a3
{
  v3 = a3;
  if ([v3 alertType] == 1 || objc_msgSend(v3, "alertType") == 2)
  {
    v4 = [v3 acceptButtonInfo];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_alertRequiresOptIn:(id)a3
{
  v3 = a3;
  if ([v3 isReroute])
  {
    v4 = [v3 isAutomaticReroute] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_sendTrafficFeedbackForAlert:(id)a3 actionType:(int)a4
{
  v4 = *&a4;
  v29 = a3;
  v6 = objc_alloc_init(GEOTrafficRerouteFeedback);
  v7 = [v29 etaResponseID];
  [v6 setResponseId:v7];

  v8 = [v29 alternateRoute];
  v9 = [v8 serverRouteID];
  [v6 setReroutedRouteID:v9];

  [v29 newEstimatedTime];
  [v6 setReroutedRouteTravelTime:v10];
  v11 = [v29 alternateRoute];
  [v6 setReroutedRouteHistoricTravelTime:{objc_msgSend(v11, "historicTravelTime")}];

  v12 = [v29 originalRoute];
  v13 = [v12 serverRouteID];
  [v6 setOldRouteID:v13];

  [v29 oldEstimatedTime];
  [v6 setOldRouteTravelTime:v14];
  [v29 oldHistoricTime];
  [v6 setOldRouteHistoricTravelTime:v15];
  v16 = [v29 oldRouteIncidents];
  [v6 setOldRouteIncidents:v16];

  [v6 setActionType:v4];
  [v6 setBackgrounded:{+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground](UIApplication, "_maps_isAnyApplicationOrCarPlayApplicationSceneForeground") ^ 1}];
  v17 = [v29 bannerID];
  [v6 setDisplayedBannerId:v17];

  [v29 distanceToDestination];
  [v6 setDistanceToDestination:?];
  v18 = [(NavTrafficIncidentCoordinator *)self displayTime];
  if (v18)
  {
    v19 = v18;
    v20 = [(NavTrafficIncidentCoordinator *)self dismissTime];

    if (v20)
    {
      v21 = [(NavTrafficIncidentCoordinator *)self dismissTime];
      v22 = [(NavTrafficIncidentCoordinator *)self displayTime];
      [v21 timeIntervalSinceDate:v22];
      v24 = v23;

      [v6 setBannerDurationSeconds:v24];
    }
  }

  v25 = [v29 alertType];
  if (v25 <= 7)
  {
    if (((1 << v25) & 0x18) != 0)
    {
      v26 = 2;
      goto LABEL_16;
    }

    if (((1 << v25) & 0x44) != 0)
    {
      v27 = [v29 incident];

      if (v27)
      {
        v26 = 5;
      }

      else
      {
        v26 = 3;
      }

      goto LABEL_16;
    }

    if (((1 << v25) & 0xA0) != 0)
    {
      goto LABEL_11;
    }
  }

  if (!v25)
  {
LABEL_11:
    v26 = 0;
  }

  else
  {
    if (v25 != 1)
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
  v3 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  if ([v3 isValid])
  {
    v4 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    if ([v4 isReroute])
    {
      v5 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
      v6 = [v5 isAutomaticReroute];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)_timeoutTimerProgress
{
  v3 = 0.0;
  [(NavTrafficIncidentCoordinator *)self _getTimeoutTimerProgress:&v3 timeRemaining:0];
  return v3;
}

- (void)_getTimeoutTimerProgress:(double *)a3 timeRemaining:(double *)a4
{
  v7 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [v7 alertDisplayDuration];
  v9 = v8;

  v10 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  v11 = [v10 fireDate];
  [v11 timeIntervalSinceNow];
  v12 = 0.0;
  if (v13 > 0.0)
  {
    v14 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
    v15 = [v14 fireDate];
    [v15 timeIntervalSinceNow];
    v12 = v16;
  }

  v17 = fmin(v12, v9);
  if (a4)
  {
    *a4 = v17;
  }

  if (a3)
  {
    if (v9 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = fmin(fmax((v9 - v17) / v9, 0.0), 1.0);
    }

    *a3 = v18;
  }
}

- (void)_didBecomeActive:(id)a3
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

- (void)_animateProgressWithDuration:(double)a3 startValue:(double)a4
{
  v7 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  v8 = [v7 view];
  v9 = [v8 layer];
  [v9 removeAllAnimations];

  v10 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  [v10 setRerouteTimerProgress:a4];

  v11 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  v12 = [v11 view];
  [v12 layoutIfNeeded];

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
  [UIView animateWithDuration:v14 animations:v13 completion:a3];
}

- (void)_dismissTrafficAlertWithActionType:(int64_t)a3 target:(int)a4
{
  v4 = *&a4;
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

    v8 = [(NavTrafficIncidentCoordinator *)obj timeoutTimer];
    [v8 invalidate];

    v9 = sub_100713A00();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Dismissing TrafficAlert with actionType: %ld", buf, 0xCu);
    }

    v10 = [(NavTrafficIncidentCoordinator *)obj trafficIncidentViewController];
    v11 = [(NavTrafficIncidentCoordinator *)obj presentedAlert];
    [(NavTrafficIncidentCoordinator *)obj setPresentedAlert:0];
    v12 = [(NavTrafficIncidentCoordinator *)obj responseCallback];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = obj;
      if (a3 == 1)
      {
        v15 = 1;
      }

      else if (a3 == 6)
      {
        v15 = [(NavTrafficIncidentCoordinator *)obj _alertRequiresOptIn:v11]^ 1;
        v14 = obj;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NavTrafficIncidentCoordinator *)v14 responseCallback];
      v16[2](v16, v15);

      [(NavTrafficIncidentCoordinator *)obj setResponseCallback:0];
    }

    v17 = [(NavTrafficIncidentCoordinator *)obj presentationDelegate];
    [v17 dismissTrafficIncidentViewController:v10];

    [(NavTrafficIncidentCoordinator *)obj _sendTrafficFeedbackForAlert:v11 actionType:[(NavTrafficIncidentCoordinator *)obj _GEOTrafficFeedbackTypeForAction:a3]];
    v18 = +[IPCServer sharedServer];
    [v18 dismissTrafficIncidentAlert:v11];

    v19 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    v20 = [v11 alertID];
    [v19 clearTrafficIncidentBulletinWithAlertID:v20];

    v21 = ![(NavTrafficIncidentCoordinator *)obj _alertVotable:v11];
    if (a3 == 5)
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      [(NavTrafficIncidentCoordinator *)obj _didVoteAlert:v11 type:[(NavTrafficIncidentCoordinator *)obj _voteTypeAlertWithResult:a3] target:v4];
    }

    [(NavTrafficIncidentCoordinator *)obj setIsDismissing:0];
  }
}

- (void)_dismissTrafficAlertWithTimer:(id)a3
{
  v11 = a3;
  v4 = [v11 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v11 userInfo];
  }

  else
  {
    [(NavTrafficIncidentCoordinator *)self presentedAlert];
  }
  v6 = ;
  v7 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  v8 = [v7 bannerID];
  v9 = [v6 bannerID];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:6 target:739];
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v10 = [(NavTrafficIncidentCoordinator *)self presentedAlert:a3];
  v5 = [v10 originalRoute];
  if ([v5 isEVRoute])
  {
    v6 = [v10 originalRouteNavigability];
    v7 = [v6 isEvFeasible];

    if (!v7)
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

- (int)_GEOTrafficFeedbackTypeForAction:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_1012133C8[a3 - 1];
  }
}

- (int)_voteTypeAlertWithResult:(int64_t)a3
{
  if ((a3 - 3) > 3)
  {
    return 1;
  }

  else
  {
    return dword_101212BF0[a3 - 3];
  }
}

- (void)_didVoteAlert:(id)a3 type:(int)a4 target:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v37 = v8;
  if (v6 != 4 || ([v8 acceptButtonInfo], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "buttonDisplay"), v9, v8 = v37, v10 == 1))
  {
    v11 = [v8 incident];
    v12 = [v11 incidentId];

    v13 = [v37 incident];
    if ([v13 hasPosition])
    {
      v14 = [GEOLocation alloc];
      v15 = [v37 incident];
      v16 = [v15 position];
      [v16 lat];
      v18 = v17;
      v19 = [v37 incident];
      v20 = [v19 position];
      [v20 lng];
      v22 = [v14 initWithLatitude:v18 longitude:v21];
    }

    else
    {
      v15 = +[MKLocationManager sharedLocationManager];
      v22 = [v15 currentLocation];
    }

    v23 = [v37 incident];
    v24 = +[MKTrafficSupport GEOTrafficIncidentTypeForGEORouteIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForGEORouteIncidentType:", [v23 type]);

    v25 = [[TrafficIncidentReport alloc] initWithIncidentLocation:v22 type:v24 userPath:3];
    v26 = [v37 incident];

    if (v6 == 3 && v26)
    {
      v27 = [VKTrafficIncidentFeature alloc];
      v28 = [v37 incident];
      v29 = [v27 initWithRouteIncident:v28 routeOffsetInMeters:0 routeRelevance:0 onRoute:0];

      v30 = +[TrafficIncidentsStorageManager sharedInstance];
      [v30 removeTrafficIncidentFeature:v29];
    }

    [(TrafficIncidentReport *)v25 submitFeedbackForType:v6 incidentId:v12 completionHandler:0];
    v31 = +[MKMapService sharedService];
    v32 = [TrafficIncidentReport actionForVoteType:v6];
    v33 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    v34 = [v33 incident];
    v35 = [v34 type];
    v36 = @"ACCIDENT";
    switch(v35)
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
        if (v35 == 100)
        {
          v36 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_13:
          v36 = [NSString stringWithFormat:@"(unknown: %i)", v35];
        }

        break;
    }

    [v31 captureUserAction:v32 onTarget:v5 eventValue:v36];

    v8 = v37;
  }
}

- (void)didTapAcceptButtonOnTrafficIncidentViewControllerTarget:(int)a3
{
  v3 = *&a3;
  v5 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  if ([v5 isReroute])
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v7 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:v7 actionType:v6 target:v3];
}

- (void)didTapRejectButtonOnTrafficIncidentViewControllerTarget:(int)a3
{
  v3 = *&a3;
  v5 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  if ([v5 isReroute])
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  v7 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:v7 actionType:v6 target:v3];
}

- (void)updatedAlertViewWithTrafficIncidentAlert:(id)a3
{
  v12 = a3;
  v4 = [v12 bannerID];
  v5 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
  v6 = [v5 bannerID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(NavTrafficIncidentCoordinator *)self presentedAlert];
    v9 = [v8 shouldShowTimer];
    v10 = [v12 shouldShowTimer];

    if (v9 != v10)
    {
      [(NavTrafficIncidentCoordinator *)self _updateProgressTimerForAlert:v12];
    }

    [(NavTrafficIncidentCoordinator *)self setPresentedAlert:v12];
    v11 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [v11 setIncidentAlert:v12];
  }
}

- (void)dismissVisibleTrafficAlertView:(BOOL)a3
{
  if (a3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:v3 target:739];
}

- (void)dismissAlertViewForTrafficIncidentAlert:(id)a3 actionType:(int64_t)a4 target:(int)a5
{
  v7 = a3;
  v8 = [(NavTrafficIncidentCoordinator *)self presentedAlert];

  if (v8 == v7)
  {

    [(NavTrafficIncidentCoordinator *)self _dismissTrafficAlertWithActionType:a4 target:739];
  }
}

- (void)dismissAlertViewForTrafficIncidentAlert:(id)a3 acceptedNewRoute:(BOOL)a4
{
  if (a4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(NavTrafficIncidentCoordinator *)self dismissAlertViewForTrafficIncidentAlert:a3 actionType:v4 target:739];
}

- (void)_updateProgressTimerForAlert:(id)a3
{
  v4 = a3;
  [v4 alertDisplayDuration];
  v6 = v5;
  if (![v4 shouldShowTimer] || v6 <= 0.0)
  {
    v11 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [v11 setProgressionHidden:1];

    v12 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
    [v12 invalidate];

    goto LABEL_6;
  }

  v7 = [(NavTrafficIncidentCoordinator *)self _alertRequiresOptIn:v4];
  v8 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
  [v8 setProgressionHidden:v7];

  v9 = [(NavTrafficIncidentCoordinator *)self timeoutTimer];
  [v9 invalidate];

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
  v14 = v4;
  dispatch_after(v10, &_dispatch_main_q, block);

LABEL_7:
}

- (void)presentAlertViewForTrafficIncidentAlert:(id)a3 responseCallback:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    [(NavTrafficIncidentCoordinator *)self setPresentedAlert:v6];
    [(NavTrafficIncidentCoordinator *)self setResponseCallback:v7];

    v8 = +[NSDate date];
    [(NavTrafficIncidentCoordinator *)self setDisplayTime:v8];

    [(NavTrafficIncidentCoordinator *)self setDismissTime:0];
    v9 = [v6 isReroute];
    [v6 alertDisplayDuration];
    v11 = v10;
    v12 = 1;
    if ([v6 shouldShowTimer] && v11 > 0.0)
    {
      v12 = [(NavTrafficIncidentCoordinator *)self _alertRequiresOptIn:v6];
    }

    v13 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [v13 setIncidentAlert:v6];

    v14 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    [v14 setProgressionHidden:v12];

    [(NavTrafficIncidentCoordinator *)self _updateProgressTimerForAlert:v6];
    v15 = [(NavTrafficIncidentCoordinator *)self presentationDelegate];
    v16 = [(NavTrafficIncidentCoordinator *)self trafficIncidentViewController];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100714824;
    v24[3] = &unk_1016574C0;
    v24[4] = self;
    v25 = v9;
    [v15 presentTrafficIncidentViewController:v16 completion:v24];

    v17 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
    v18 = [v6 alertID];
    v19 = [v6 isReroute];
    v20 = [v6 alertTitles];
    v21 = [v20 firstObject];
    v22 = [v6 alertDescriptions];
    v23 = [v22 firstObject];
    [v17 showTrafficIncidentAlertWithID:v18 withReroute:v19 title:v21 description:v23];

    [(NavTrafficIncidentCoordinator *)self _sendTrafficFeedbackForAlert:v6 actionType:4];
  }
}

- (void)setPresentedAlert:(id)a3
{
  v5 = a3;
  if (self->_presentedAlert != v5)
  {
    v6 = sub_100713A00();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134349314;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic incident alert: %@", &v7, 0x16u);
    }

    objc_storeStrong(&self->_presentedAlert, a3);
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