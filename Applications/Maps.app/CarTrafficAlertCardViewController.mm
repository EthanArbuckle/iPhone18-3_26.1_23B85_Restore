@interface CarTrafficAlertCardViewController
+ (BOOL)alertVotable:(id)a3;
- (BOOL)_alertRequiresOptIn:(id)a3;
- (CarTrafficAlertCardViewController)initWithDelegate:(id)a3 trafficAlert:(id)a4 response:(id)a5;
- (CarTrafficAlertCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (int)_feedbackActionTypeFor:(int64_t)a3;
- (int)_voteTypeAlertWithResult:(int64_t)a3;
- (void)_cancelDismissTimer;
- (void)_didReceiveIncidentUpdate:(id)a3;
- (void)_didVoteIncident:(int64_t)a3 onTarget:(int)a4;
- (void)_dismissTrafficAlertWithResult:(int64_t)a3;
- (void)_dismissTrafficAlertWithResult:(int64_t)a3 onTarget:(int)a4;
- (void)_recordEVAnalyticsWithResult:(int64_t)a3;
- (void)_registerForSceneNotifications;
- (void)_sceneDidActivate:(id)a3;
- (void)_sendTrafficFeedbackForAlert:(id)a3 actionType:(int)a4;
- (void)_startProgressAnimationIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)updateFromTrafficAlert:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarTrafficAlertCardViewController

- (CarTrafficAlertCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didReceiveIncidentUpdate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SiriTrafficIncidentIsClearKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [(CarTrafficAlertCardViewController *)self _dismissTrafficAlertWithResult:v7 onTarget:0];
}

- (int)_feedbackActionTypeFor:(int64_t)a3
{
  if (a3 > 6)
  {
    return 1;
  }

  else
  {
    return dword_101212F78[a3];
  }
}

- (NSArray)preferredFocusEnvironments
{
  v2 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  v3 = [v2 preferredFocusEnvironments];

  return v3;
}

- (NSArray)focusOrderSubItems
{
  v2 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  v3 = [v2 focusOrderSubItems];

  return v3;
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

- (void)_didVoteIncident:(int64_t)a3 onTarget:(int)a4
{
  v4 = *&a4;
  v7 = [(CarTrafficAlertCardViewController *)self _voteTypeAlertWithResult:?];
  if (v7 == 1)
  {
    if (a3 != 5)
    {
      return;
    }

    v29 = +[MKMapService sharedService];
    v8 = [(CarTrafficAlertCardViewController *)self trafficAlert];
    v9 = [v8 incident];
    v10 = [v9 type];
    v11 = @"ACCIDENT";
    switch(v10)
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
        if (v10 == 100)
        {
          v11 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_31:
          v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
        }

        break;
    }

    [v29 captureUserAction:108 onTarget:v4 eventValue:v11];
  }

  else
  {
    v12 = v7;
    v13 = [(CarTrafficAlertCardViewController *)self trafficAlert];
    v29 = [v13 incident];

    v8 = [v29 incidentId];
    v14 = +[MKTrafficSupport GEOTrafficIncidentTypeForGEORouteIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForGEORouteIncidentType:", [v29 type]);
    if ([v29 hasPosition])
    {
      v15 = [GEOLocation alloc];
      v16 = [v29 position];
      [v16 lat];
      v18 = v17;
      v19 = [v29 position];
      [v19 lng];
      v9 = [v15 initWithLatitude:v18 longitude:v20];
    }

    else
    {
      v16 = +[MKLocationManager sharedLocationManager];
      v9 = [v16 currentLocation];
    }

    v11 = [[TrafficIncidentReport alloc] initWithIncidentLocation:v9 type:v14 userPath:3];
    [(__CFString *)v11 setReportedFromCarplay:1];
    if (v12 == 3 && v29)
    {
      v21 = [[VKTrafficIncidentFeature alloc] initWithRouteIncident:v29 routeOffsetInMeters:0 routeRelevance:0 onRoute:0];
      v22 = +[TrafficIncidentsStorageManager sharedInstance];
      [v22 removeTrafficIncidentFeature:v21];
    }

    [(__CFString *)v11 submitFeedbackForType:v12 incidentId:v8 completionHandler:0];
    v23 = +[MKMapService sharedService];
    v24 = [TrafficIncidentReport actionForVoteType:v12];
    v25 = [(CarTrafficAlertCardViewController *)self trafficAlert];
    v26 = [v25 incident];
    v27 = [v26 type];
    v28 = @"ACCIDENT";
    switch(v27)
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
        if (v27 == 100)
        {
          v28 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_16:
          v28 = [NSString stringWithFormat:@"(unknown: %i)", v27];
        }

        break;
    }

    [v23 captureUserAction:v24 onTarget:v4 eventValue:v28];
  }
}

- (BOOL)_alertRequiresOptIn:(id)a3
{
  v3 = a3;
  if ([v3 alertType] == 3)
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
  v18 = [(CarTrafficAlertCardViewController *)self displayTime];
  if (v18)
  {
    v19 = v18;
    v20 = [(CarTrafficAlertCardViewController *)self dismissTime];

    if (v20)
    {
      v21 = [(CarTrafficAlertCardViewController *)self dismissTime];
      v22 = [(CarTrafficAlertCardViewController *)self displayTime];
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

- (void)_recordEVAnalyticsWithResult:(int64_t)a3
{
  v5 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  v6 = [v5 waypoints];
  v7 = [v6 count];
  v8 = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];
  v9 = [v8 waypoints];
  v10 = [v9 count];

  if (v7 != v10)
  {
    v11 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    v12 = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];
    [v11 offeredEVRerouteWithAlternateRoute:v12 wasAccepted:0];
  }

  v13 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  if ([v13 isEVRoute])
  {
    v14 = [(MNTrafficIncidentAlert *)self->_trafficAlert alternateRoute];

    if (v14)
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

  v17 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRoute];
  if (([v17 isEVRoute] & 1) == 0)
  {

LABEL_16:
    v22 = sub_100006E1C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      return;
    }

    v23 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(CarTrafficAlertCardViewController *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_22;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_22:

    *buf = 138543362;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] CarTrafficAlertCardViewController: tried to record EV CarPlay dodgeball, but received an unsupported state.", buf, 0xCu);

    goto LABEL_23;
  }

  v18 = [(MNTrafficIncidentAlert *)self->_trafficAlert originalRouteNavigability];
  v19 = [v18 isEvFeasible];

  if (v19)
  {
    goto LABEL_16;
  }

  v20 = [(MNTrafficIncidentAlert *)self->_trafficAlert isReroute];
  v15 = +[MKMapService sharedService];
  v29 = v15;
  if (v20)
  {
    v16 = 6095;
    goto LABEL_11;
  }

  [v15 captureUserAction:75 onTarget:1001 eventValue:0];

  if (a3 != 1)
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

- (void)_dismissTrafficAlertWithResult:(int64_t)a3 onTarget:(int)a4
{
  v4 = *&a4;
  v6 = self;
  objc_sync_enter(v6);
  if ([(CarTrafficAlertCardViewController *)v6 isDismissing])
  {
    v7 = sub_100006E1C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      objc_sync_exit(v6);
      return;
    }

    v8 = v6;
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

  [(CarTrafficAlertCardViewController *)v6 setIsDismissing:1];
  objc_sync_exit(v6);

  [(CarTrafficAlertCardViewController *)v6 _cancelDismissTimer];
  v14 = [(CarTrafficAlertCardViewController *)v6 _feedbackActionTypeFor:a3];
  v15 = sub_100006E1C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v6;
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
    LODWORD(v53) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] CarTrafficAlertCardViewController: Dismissing TrafficAlert with actionType: %d", buf, 0x12u);
  }

  if (v14 == 1)
  {
    v24 = 1;
  }

  else if (v14 == 3)
  {
    v22 = [(CarTrafficAlertCardViewController *)v6 trafficAlert];
    v23 = [(CarTrafficAlertCardViewController *)v6 _alertRequiresOptIn:v22];

    v24 = v23 ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(CarTrafficAlertCardViewController *)v6 response];
  v26 = v25 == 0;

  if (!v26)
  {
    v27 = [(CarTrafficAlertCardViewController *)v6 response];
    v27[2](v27, v24);

    [(CarTrafficAlertCardViewController *)v6 setResponse:0];
  }

  v28 = +[NSDate date];
  [(CarTrafficAlertCardViewController *)v6 setDismissTime:v28];

  v29 = [(CarTrafficAlertCardViewController *)v6 trafficAlert];
  [(CarTrafficAlertCardViewController *)v6 _sendTrafficFeedbackForAlert:v29 actionType:v14];

  v30 = [(MNTrafficIncidentAlert *)v6->_trafficAlert originalRoute];
  LODWORD(v29) = [v30 isEVRoute];

  if (v29)
  {
    [(CarTrafficAlertCardViewController *)v6 _recordEVAnalyticsWithResult:a3];
  }

  else
  {
    v31 = [(MNTrafficIncidentAlert *)v6->_trafficAlert analyticsMessage];

    if (v31)
    {
      if (a3 == 2)
      {
        v34 = +[MKMapService sharedService];
        v35 = [(MNTrafficIncidentAlert *)v6->_trafficAlert analyticsMessage];
        [v34 captureUserAction:3061 onTarget:1001 eventValue:v35];
      }

      else if (a3 == 1)
      {
        v32 = +[MKMapService sharedService];
        v33 = [(MNTrafficIncidentAlert *)v6->_trafficAlert analyticsMessage];
        [v32 captureUserAction:3060 onTarget:1001 eventValue:v33];
      }
    }
  }

  v36 = +[IPCServer sharedServer];
  v37 = [(CarTrafficAlertCardViewController *)v6 trafficAlert];
  [v36 dismissTrafficIncidentAlert:v37];

  v38 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v39 = [(CarTrafficAlertCardViewController *)v6 trafficAlert];
  v40 = [v39 alertID];
  [v38 clearTrafficIncidentBulletinWithAlertID:v40];

  v41 = [(CarTrafficAlertCardViewController *)v6 trafficAlert];
  LODWORD(v39) = [CarTrafficAlertCardViewController alertVotable:v41];

  if (!v39)
  {
    goto LABEL_46;
  }

  v42 = sub_100006E1C();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = v6;
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
    v53 = a3;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] CarTrafficAlertCardViewController: did vote on TrafficAlert: %ld", buf, 0x16u);
  }

  [(CarTrafficAlertCardViewController *)v6 _didVoteIncident:a3 onTarget:v4];
LABEL_46:
  v49 = [(CarTrafficAlertCardViewController *)v6 delegate];
  [v49 trafficAlertCardViewControllerDismiss:v6];

  [(CarTrafficAlertCardViewController *)v6 setIsDismissing:0];
}

- (void)_dismissTrafficAlertWithResult:(int64_t)a3
{
  [(CarTrafficAlertCardViewController *)self setStartedAnimatingProgressBar:0];

  [(CarTrafficAlertCardViewController *)self _dismissTrafficAlertWithResult:a3 onTarget:1001];
}

- (void)updateFromTrafficAlert:(id)a3
{
  v4 = a3;
  v5 = sub_1005B8AF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic alert: %@", &v7, 0x16u);
  }

  [(CarTrafficAlertCardViewController *)self setTrafficAlert:v4];
  v6 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
  [v6 setTrafficAlert:v4];

  [(CarTrafficAlertCardViewController *)self _startProgressAnimationIfNeeded];
}

- (void)_cancelDismissTimer
{
  v3 = [(CarTrafficAlertCardViewController *)self dismissTimer];
  [v3 invalidate];

  [(CarTrafficAlertCardViewController *)self setDismissTimer:0];
}

- (void)_startProgressAnimationIfNeeded
{
  if (![(CarTrafficAlertCardViewController *)self hasStartedAnimatingProgressBar])
  {
    if ([(CarTrafficAlertCardViewController *)self isViewLoaded])
    {
      v3 = [(CarTrafficAlertCardViewController *)self view];
      v4 = [v3 window];

      if (v4)
      {
        v5 = [(CarTrafficAlertCardViewController *)self trafficAlert];
        v6 = [v5 shouldShowTimer];
        v7 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
        [v7 setProgressionHidden:v6 ^ 1];

        v8 = [(CarTrafficAlertCardViewController *)self trafficAlert];
        [v8 alertDisplayDuration];
        v10 = v9;

        if (v10 > 0.0)
        {
          v11 = [(CarTrafficAlertCardViewController *)self trafficAlert];
          v12 = [v11 shouldShowTimer];

          if (v12)
          {
            objc_initWeak(&location, self);
            v13 = [(CarTrafficAlertCardViewController *)self trafficAlertView];
            [v13 startProgressAnimationWithDuration:v10];

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

- (void)_sceneDidActivate:(id)a3
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
  v3 = [(CarTrafficAlertCardViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (!v5)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarTrafficAlertCardViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] CarTrafficAlert card failed to get scene to register for lifecycle events.", buf, 0xCu);

    goto LABEL_13;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:v5];
LABEL_13:
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v5 viewWillDisappear:a3];
  [(CarTrafficAlertCardViewController *)self _cancelDismissTimer];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v9 viewDidAppear:a3];
  v4 = [(CarTrafficAlertCardViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState];

  if (v7)
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

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v8 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_didReceiveIncidentUpdate:" name:@"SiriTrafficIncidentUpdateNotification" object:0];

  v5 = [(MNTrafficIncidentAlert *)self->_trafficAlert analyticsMessage];

  if (v5)
  {
    v6 = +[MKMapService sharedService];
    v7 = [(MNTrafficIncidentAlert *)self->_trafficAlert analyticsMessage];
    [v6 captureUserAction:248 onTarget:1001 eventValue:v7];
  }
}

- (void)loadView
{
  v3 = [CarTrafficAlertView alloc];
  v4 = [(CarTrafficAlertCardViewController *)self trafficAlert];
  v6 = [(CarTrafficAlertView *)v3 initWithDelegate:self trafficAlert:v4];

  [(CarTrafficAlertView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarTrafficAlertCardViewController *)self setView:v6];
  [(CarTrafficAlertCardViewController *)self setTrafficAlertView:v6];
  v5 = [(CarTrafficAlertCardViewController *)self trafficAlert];
  [(CarTrafficAlertCardViewController *)self _sendTrafficFeedbackForAlert:v5 actionType:4];
}

- (void)dealloc
{
  v3 = sub_1005B8AF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarTrafficAlertCardViewController;
  [(CarTrafficAlertCardViewController *)&v4 dealloc];
}

- (CarTrafficAlertCardViewController)initWithDelegate:(id)a3 trafficAlert:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with traffic alert: %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v11->_trafficAlert, a4);
    v13 = objc_retainBlock(v10);
    response = v11->_response;
    v11->_response = v13;
  }

  return v11;
}

+ (BOOL)alertVotable:(id)a3
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

@end