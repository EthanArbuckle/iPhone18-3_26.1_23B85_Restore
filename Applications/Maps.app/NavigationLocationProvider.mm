@interface NavigationLocationProvider
- (MKLocationProviderDelegate)delegate;
- (NavigationLocationProvider)init;
- (id)_console;
- (int)headingOrientation;
- (void)_updateDebugLocationConsoleForLocation:(id)a3;
- (void)accuracyAuthorizationOnQueue:(id)a3 result:(id)a4;
- (void)authorizationStatusOnQueue:(id)a3 result:(id)a4;
- (void)dealloc;
- (void)navigationService:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)setHeadingOrientation:(int)a3;
@end

@implementation NavigationLocationProvider

- (id)_console
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];

  v5 = [v4 _debugConsole];

  return v5;
}

- (MKLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5
{
  +[NSDate timeIntervalSinceReferenceDate];
  memset(v12, 0, sizeof(v12));
  v13 = a4;
  v14 = a5;
  v15 = v8;
  v16 = 0u;
  v17 = 0u;
  v9 = [[CLHeading alloc] initWithClientHeading:v12];
  if (qword_10195D278 != -1)
  {
    dispatch_once(&qword_10195D278, &stru_101629050);
  }

  v10 = qword_10195D270;
  if (os_log_type_enabled(qword_10195D270, OS_LOG_TYPE_INFO))
  {
    LODWORD(v12[0]) = 134218240;
    *(v12 + 4) = a4;
    WORD6(v12[0]) = 2048;
    *(v12 + 14) = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Got updated heading: %f, accuracy: %f", v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didUpdateHeading:v9];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v5 = a4;
  v6 = [v5 uuid];
  if (v6)
  {
    v7 = sub_100799FA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2080;
      v14 = "[NavigationLocationProvider navigationService:didUpdateMatchedLocation:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Maps] %@ Received - in %s", &v11, 0x16u);
    }

    [(NavigationLocationProvider *)self _updateDebugLocationConsoleForLocation:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationProvider:self didUpdateLocation:v5];

    v9 = sub_100799FA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2080;
      v14 = "[NavigationLocationProvider navigationService:didUpdateMatchedLocation:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[Maps] %@ Processed - in %s", &v11, 0x16u);
    }
  }

  else
  {
    [(NavigationLocationProvider *)self _updateDebugLocationConsoleForLocation:v5];
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 locationProvider:self didUpdateLocation:v5];
  }
}

- (void)accuracyAuthorizationOnQueue:(id)a3 result:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    if (!a3)
    {
      v7 = &_dispatch_main_q;
      v8 = &_dispatch_main_q;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100790734;
    v9[3] = &unk_101661090;
    v9[4] = self;
    v10 = v6;
    dispatch_async(v7, v9);
    if (!a3)
    {
    }
  }
}

- (void)authorizationStatusOnQueue:(id)a3 result:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    if (!a3)
    {
      v7 = &_dispatch_main_q;
      v8 = &_dispatch_main_q;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100790848;
    v9[3] = &unk_101661090;
    v9[4] = self;
    v10 = v6;
    dispatch_async(v7, v9);
    if (!a3)
    {
    }
  }
}

- (void)setHeadingOrientation:(int)a3
{
  v3 = *&a3;
  v4 = +[MNNavigationService sharedService];
  [v4 setHeadingOrientation:v3];
}

- (int)headingOrientation
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 headingOrientation];

  return v3;
}

- (void)_updateDebugLocationConsoleForLocation:(id)a3
{
  v4 = a3;
  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v7 = +[MNNavigationService sharedService];
    v8 = [v7 navigationTransportType];

    if (v8 != 1)
    {
      v9 = [v4 routeMatch];
      v38 = [v9 routeCoordinate];
      LODWORD(v10) = [v9 routeCoordinate] >> 32;
      [v4 coordinate];
      v12 = v11;
      [v4 coordinate];
      v14 = v13;
      [v4 horizontalAccuracy];
      v16 = v15;
      [v4 course];
      v18 = v17;
      if (v4)
      {
        [v4 clientLocation];
        v19 = *(&v46 + 4);
      }

      else
      {
        v49 = 0u;
        memset(v50, 0, sizeof(v50));
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v19 = 0;
        v42 = 0u;
      }

      v20 = v10;
      [v4 speed];
      v22 = v21;
      v23 = [v9 stepIndex];
      [v9 distanceFromRoute];
      v25 = v24;
      v26 = [v9 step];
      v27 = [v26 geoStep];
      v28 = [v27 maneuverType];
      v29 = @"NO_TURN";
      switch(v28)
      {
        case 0:
          break;
        case 1:
          v29 = @"LEFT_TURN";
          break;
        case 2:
          v29 = @"RIGHT_TURN";
          break;
        case 3:
          v29 = @"STRAIGHT_AHEAD";
          break;
        case 4:
          v29 = @"U_TURN";
          break;
        case 5:
          v29 = @"FOLLOW_ROAD";
          break;
        case 6:
          v29 = @"ENTER_ROUNDABOUT";
          break;
        case 7:
          v29 = @"EXIT_ROUNDABOUT";
          break;
        case 11:
          v29 = @"OFF_RAMP";
          break;
        case 12:
          v29 = @"ON_RAMP";
          break;
        case 16:
          v29 = @"ARRIVE_END_OF_NAVIGATION";
          break;
        case 17:
          v29 = @"START_ROUTE";
          break;
        case 18:
          v29 = @"ARRIVE_AT_DESTINATION";
          break;
        case 20:
          v29 = @"KEEP_LEFT";
          break;
        case 21:
          v29 = @"KEEP_RIGHT";
          break;
        case 22:
          v29 = @"ENTER_FERRY";
          break;
        case 23:
          v29 = @"EXIT_FERRY";
          break;
        case 24:
          v29 = @"CHANGE_FERRY";
          break;
        case 25:
          v29 = @"START_ROUTE_WITH_U_TURN";
          break;
        case 26:
          v29 = @"U_TURN_AT_ROUNDABOUT";
          break;
        case 27:
          v29 = @"LEFT_TURN_AT_END";
          break;
        case 28:
          v29 = @"RIGHT_TURN_AT_END";
          break;
        case 29:
          v29 = @"HIGHWAY_OFF_RAMP_LEFT";
          break;
        case 30:
          v29 = @"HIGHWAY_OFF_RAMP_RIGHT";
          break;
        case 33:
          v29 = @"ARRIVE_AT_DESTINATION_LEFT";
          break;
        case 34:
          v29 = @"ARRIVE_AT_DESTINATION_RIGHT";
          break;
        case 35:
          v29 = @"U_TURN_WHEN_POSSIBLE";
          break;
        case 39:
          v29 = @"ARRIVE_END_OF_DIRECTIONS";
          break;
        case 41:
          v29 = @"ROUNDABOUT_EXIT_1";
          break;
        case 42:
          v29 = @"ROUNDABOUT_EXIT_2";
          break;
        case 43:
          v29 = @"ROUNDABOUT_EXIT_3";
          break;
        case 44:
          v29 = @"ROUNDABOUT_EXIT_4";
          break;
        case 45:
          v29 = @"ROUNDABOUT_EXIT_5";
          break;
        case 46:
          v29 = @"ROUNDABOUT_EXIT_6";
          break;
        case 47:
          v29 = @"ROUNDABOUT_EXIT_7";
          break;
        case 48:
          v29 = @"ROUNDABOUT_EXIT_8";
          break;
        case 49:
          v29 = @"ROUNDABOUT_EXIT_9";
          break;
        case 50:
          v29 = @"ROUNDABOUT_EXIT_10";
          break;
        case 51:
          v29 = @"ROUNDABOUT_EXIT_11";
          break;
        case 52:
          v29 = @"ROUNDABOUT_EXIT_12";
          break;
        case 53:
          v29 = @"ROUNDABOUT_EXIT_13";
          break;
        case 54:
          v29 = @"ROUNDABOUT_EXIT_14";
          break;
        case 55:
          v29 = @"ROUNDABOUT_EXIT_15";
          break;
        case 56:
          v29 = @"ROUNDABOUT_EXIT_16";
          break;
        case 57:
          v29 = @"ROUNDABOUT_EXIT_17";
          break;
        case 58:
          v29 = @"ROUNDABOUT_EXIT_18";
          break;
        case 59:
          v29 = @"ROUNDABOUT_EXIT_19";
          break;
        case 60:
          v29 = @"SHARP_LEFT_TURN";
          break;
        case 61:
          v29 = @"SHARP_RIGHT_TURN";
          break;
        case 62:
          v29 = @"SLIGHT_LEFT_TURN";
          break;
        case 63:
          v29 = @"SLIGHT_RIGHT_TURN";
          break;
        case 64:
          v29 = @"CHANGE_HIGHWAY";
          break;
        case 65:
          v29 = @"CHANGE_HIGHWAY_LEFT";
          break;
        case 66:
          v29 = @"CHANGE_HIGHWAY_RIGHT";
          break;
        case 80:
          v29 = @"TOLL_STATION";
          break;
        case 81:
          v29 = @"ENTER_TUNNEL";
          break;
        case 82:
          v29 = @"WAYPOINT_STOP";
          break;
        case 83:
          v29 = @"WAYPOINT_STOP_LEFT";
          break;
        case 84:
          v29 = @"WAYPOINT_STOP_RIGHT";
          break;
        case 85:
          v29 = @"RESUME_ROUTE";
          break;
        case 86:
          v29 = @"RESUME_ROUTE_WITH_U_TURN";
          break;
        case 87:
          v29 = @"CUSTOM";
          break;
        case 88:
          v29 = @"TURN_AROUND";
          break;
        default:
          v29 = [NSString stringWithFormat:@"(unknown: %i)", v28];
          break;
      }

      v30 = [(__CFString *)v29 lowercaseString];
      v31 = [v9 step];
      v32 = [v31 maneuverRoadName];
      v33 = [NSString stringWithFormat:@"[%u, %0.2f]  (%0.5f, %0.5f)±%0.0fm  %0.0f°±%0.0f°  %0.1fm/s\nStep %d  Dist: %0.1f  (%@ > %@)", v38, *&v20, v12, v14, v16, v18, v19, v22, v23, v25, v30, v32];

      v34 = [v4 state];
      if (v34 == 2)
      {
        v35 = +[UIColor redColor];
      }

      else
      {
        if (v34 == 1)
        {
          +[UIColor greenColor];
        }

        else
        {
          +[UIColor grayColor];
        }
        v35 = ;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100790FD8;
      block[3] = &unk_101661A40;
      block[4] = self;
      v40 = v33;
      v41 = v35;
      v36 = v35;
      v37 = v33;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)dealloc
{
  v3 = +[GEOPlatform sharedPlatform];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    dispatch_async(&_dispatch_main_q, &stru_101629030);
  }

  v5 = +[MNNavigationService sharedService];
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = NavigationLocationProvider;
  [(NavigationLocationProvider *)&v6 dealloc];
}

- (NavigationLocationProvider)init
{
  v9.receiver = self;
  v9.super_class = NavigationLocationProvider;
  v2 = [(NavigationLocationProvider *)&v9 init];
  if (v2)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 registerObserver:v2];

    v4 = +[GEOPlatform sharedPlatform];
    v5 = [v4 isInternalInstall];

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100791260;
      block[3] = &unk_101661B18;
      v8 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  return v2;
}

@end