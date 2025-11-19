@interface CarRouteGeniusManager
+ (id)sharedDebugPanelChrome;
- (CarRouteGeniusManager)init;
- (void)_startPredictingRetryTimer;
- (void)_stopPredictingRetryTimer;
- (void)activateIfPossibleForChrome:(id)a3;
- (void)deactivateForAllChromes;
- (void)deactivateForChrome:(id)a3;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)a3;
- (void)locationApprovalDidChange:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setPreciseLocationEnabled:(BOOL)a3;
- (void)startPredictingDestinationIfNeeded;
- (void)stopPredictingDestinationIfNeeded;
- (void)vehicleBatteryChangedSignificantly;
@end

@implementation CarRouteGeniusManager

- (void)deactivateForAllChromes
{
  v3 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_10008B9E8;
  v12 = &unk_101661B18;
  v13 = self;
  v4 = &_dispatch_main_q;
  v5 = v10;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label == v7 || (label ? (v8 = v7 == 0) : (v8 = 1), !v8 && !strcmp(label, v7)))
  {
    v9 = objc_autoreleasePoolPush();
    v11(v5);
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v5);
  }
}

- (void)locationApprovalDidChange:(id)a3
{
  v4 = +[MKLocationManager sharedLocationManager];
  -[CarRouteGeniusManager setPreciseLocationEnabled:](self, "setPreciseLocationEnabled:", [v4 isAuthorizedForPreciseLocation]);
}

- (void)vehicleBatteryChangedSignificantly
{
  v2 = sub_10008B0B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "vehicleBatteryChangedSignificantly -> will force a reroute", v4, 2u);
  }

  v3 = +[CarRouteGeniusService sharedService];
  [v3 forceReroute];
}

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  v5 = sub_10008B0B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didUpdateRouteGenius:entry: %@", &v6, 0xCu);
  }

  if (v4)
  {
    [(CarRouteGeniusManager *)self _stopPredictingRetryTimer];
  }

  else if ([(CarRouteGeniusManager *)self isActive])
  {
    [(CarRouteGeniusManager *)self _startPredictingRetryTimer];
  }
}

- (void)stopPredictingDestinationIfNeeded
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CarRouteGeniusManager *)self isActive];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stopPredictingDestinationIfNeeded routeGeniusActive=%@", &v14, 0xCu);
  }

  if (![(CarRouteGeniusManager *)self isActive])
  {
    [(CarRouteGeniusManager *)self _stopPredictingRetryTimer];
    v7 = +[CarRouteGeniusService sharedService];
    [v7 stop];

    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 platformController];
    v10 = [v9 currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v12 = +[CarDisplayController sharedInstance];
      v13 = [v12 platformController];
      [v13 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];
    }
  }
}

- (void)startPredictingDestinationIfNeeded
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CarRouteGeniusManager *)self isActive];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "startPredictingDestinationIfNeeded routeGeniusActive=%@", &v8, 0xCu);
  }

  if ([(CarRouteGeniusManager *)self isActive])
  {
    v7 = +[CarRouteGeniusService sharedService];
    [v7 start];
  }
}

- (void)_stopPredictingRetryTimer
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping predicting retry timer", v5, 2u);
  }

  v4 = [(CarRouteGeniusManager *)self predictingRetryTimer];
  [v4 invalidate];

  [(CarRouteGeniusManager *)self setPredictingRetryTimer:0];
  [(CarRouteGeniusManager *)self setRetryCount:0];
}

- (void)_startPredictingRetryTimer
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 state];

  if (v4 == 1)
  {
    v5 = sub_10008B0B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[MNNavigationService sharedService];
      *buf = 134217984;
      v22 = [v6 state];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Predicting retry timer not needed state=%lu", buf, 0xCu);
    }

    [(CarRouteGeniusManager *)self _stopPredictingRetryTimer];
  }

  else
  {
    v7 = [(CarRouteGeniusManager *)self predictingRetryTimer];

    v8 = sub_10008B0B8();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        v10 = [(CarRouteGeniusManager *)self retryCount];
        v11 = [(CarRouteGeniusManager *)self isActive];
        v12 = @"NO";
        if (v11)
        {
          v12 = @"YES";
        }

        v13 = v12;
        *buf = 134218242;
        v22 = v10;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Predicting retry timer already running retryCount=%lu routeGeniusActive=%@", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v14 = [(CarRouteGeniusManager *)self retryCount];
        v15 = [(CarRouteGeniusManager *)self isActive];
        v16 = @"NO";
        if (v15)
        {
          v16 = @"YES";
        }

        v17 = v16;
        *buf = 134218242;
        v22 = v14;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Predicting retry timer being started retryCount=%lu routeGeniusActive=%@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100C8C120;
      v19[3] = &unk_101661BC8;
      objc_copyWeak(&v20, buf);
      v18 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v19 block:2.0];
      [(CarRouteGeniusManager *)self setPredictingRetryTimer:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setPreciseLocationEnabled:(BOOL)a3
{
  if (self->_preciseLocationEnabled != a3)
  {
    self->_preciseLocationEnabled = a3;
    v4 = sub_10008B0B8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_preciseLocationEnabled)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = [(CarRouteGeniusManager *)self activeChromes];
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = [v7 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarRouteGeniusManager: precise location was set to %@. activeChromes.count: %ld.", &v9, 0x16u);
    }

    if (self->_preciseLocationEnabled)
    {
      v8 = [(CarRouteGeniusManager *)self activeChromes];
      -[CarRouteGeniusManager setActive:](self, "setActive:", [v8 count] != 0);
    }

    else
    {
      [(CarRouteGeniusManager *)self setActive:0];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    v5 = sub_10008B0B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_active)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setting route genius active:%@=>%@", &v13, 0x16u);
    }

    self->_active = v3;
    v10 = [(CarRouteGeniusManager *)self vehicleMonitor];
    [v10 setActive:v3];

    [(CarRouteGeniusManager *)self setRetryCount:0];
    v11 = +[CarRouteGeniusService sharedService];
    v12 = v11;
    if (v3)
    {
      [v11 registerObserver:self];

      [(CarRouteGeniusManager *)self startPredictingDestinationIfNeeded];
    }

    else
    {
      [v11 unregisterObserver:self];

      [(CarRouteGeniusManager *)self stopPredictingDestinationIfNeeded];
    }
  }
}

- (void)deactivateForChrome:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v23 = "[CarRouteGeniusManager deactivateForChrome:]";
        v24 = 2080;
        v25 = "CarRouteGeniusManager.m";
        v26 = 1024;
        v27 = 111;
        v28 = 2080;
        v29 = "dispatch_get_main_queue()";
        v30 = 2080;
        v31 = dispatch_queue_get_label(&_dispatch_main_q);
        v32 = 2080;
        v33 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_100C8C92C;
  v19 = &unk_101661A90;
  v8 = v4;
  v20 = v8;
  v21 = self;
  v9 = &_dispatch_main_q;
  v10 = v17;
  v11 = dispatch_queue_get_label(&_dispatch_main_q);
  v12 = dispatch_queue_get_label(0);
  if (v11 == v12 || v11 && v12 && !strcmp(v11, v12))
  {
    v13 = objc_autoreleasePoolPush();
    v18(v10);
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v10);
  }
}

- (void)activateIfPossibleForChrome:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v51 = sub_10006D178();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v63 = "[CarRouteGeniusManager activateIfPossibleForChrome:]";
        v64 = 2080;
        v65 = "CarRouteGeniusManager.m";
        v66 = 1024;
        v67 = 72;
        v68 = 2080;
        v69 = "dispatch_get_main_queue()";
        v70 = 2080;
        v71 = dispatch_queue_get_label(&_dispatch_main_q);
        v72 = 2080;
        v73 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v52 = sub_10006D178();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v63 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = v4;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___CarSceneTyping])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 sceneType];
  v12 = v11 - 4;
  if (v11 >= 4)
  {
    v13 = sub_10008B0B8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v12 > 2)
      {
        v14 = @".Unknown";
      }

      else
      {
        v14 = off_10164FA78[v12];
      }

      *buf = 134218242;
      v63 = v8;
      v64 = 2112;
      v65 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: not activating RGManager for chrome: %p because it is not a supported sceneType: %@", buf, 0x16u);
    }

    goto LABEL_47;
  }

  v15 = +[GEOCountryConfiguration sharedConfiguration];
  v16 = [v15 currentCountrySupportsRouteGenius];

  if ((v16 & 1) == 0)
  {
    v13 = sub_10008B0B8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v42 = +[GEOCountryConfiguration sharedConfiguration];
    v43 = [v42 countryCode];
    *buf = 138412290;
    v63 = v43;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: not activating RGManager because we're in a country (%@) that does not support RG.", buf, 0xCu);

LABEL_44:
    goto LABEL_47;
  }

  v17 = +[MNNavigationService sharedService];
  v18 = [v17 state];

  if (!v8 || v18 >= 2)
  {
    v13 = sub_10008B0B8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v42 = +[MNNavigationService sharedService];
    v44 = [v42 state];
    *buf = 134217984;
    v63 = v44;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: not activating RGManager because MNNavigationService is in state=%lu", buf, 0xCu);
    goto LABEL_44;
  }

  v19 = +[CarDisplayController sharedInstance];
  v13 = [v19 platformController];

  v20 = [v13 sessionStack];
  if ([v20 count])
  {
    v21 = [v13 sessionStack];
    v22 = [v21 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v24 = sub_10008B0B8();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v13 sessionStack];
        v26 = v25;
        if (v25)
        {
          if ([v25 count])
          {
            v55 = v24;
            v56 = v13;
            v57 = v8;
            v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v54 = v26;
            v28 = v26;
            v29 = [v28 countByEnumeratingWithState:&v58 objects:buf count:16];
            if (!v29)
            {
              goto LABEL_39;
            }

            v30 = v29;
            v31 = *v59;
            while (1)
            {
              v32 = 0;
              do
              {
                if (*v59 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v58 + 1) + 8 * v32);
                if (v33)
                {
                  v34 = objc_opt_class();
                  v35 = NSStringFromClass(v34);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_32;
                  }

                  v36 = [v33 performSelector:"accessibilityIdentifier"];
                  v37 = v36;
                  if (v36 && ![v36 isEqualToString:v35])
                  {
                    v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];
                  }

                  else
                  {

LABEL_32:
                    v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
                  }

                  goto LABEL_35;
                }

                v38 = @"<nil>";
LABEL_35:

                [v27 addObject:v38];
                v32 = v32 + 1;
              }

              while (v30 != v32);
              v39 = [v28 countByEnumeratingWithState:&v58 objects:buf count:16];
              v30 = v39;
              if (!v39)
              {
LABEL_39:

                v40 = [v28 componentsJoinedByString:{@", "}];
                v41 = [NSString stringWithFormat:@"<%p> [%@]", v28, v40];

                v13 = v56;
                v8 = v57;
                v26 = v54;
                v24 = v55;
                goto LABEL_59;
              }
            }
          }

          v41 = [NSString stringWithFormat:@"<%p> (empty)", v26];
        }

        else
        {
          v41 = @"<nil>";
        }

LABEL_59:

        *buf = 138412290;
        v63 = v41;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: not activating RGManager because the current platform sessionStack is not empty. sessionStack: %@", buf, 0xCu);
      }

      goto LABEL_47;
    }
  }

  else
  {
  }

  v45 = sub_10008B0B8();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = objc_opt_class();
    *buf = 138412546;
    v63 = v46;
    v64 = 2048;
    v65 = v8;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: adding new active chrome: <%@: %p>", buf, 0x16u);
  }

  v47 = [(CarRouteGeniusManager *)self activeChromes];
  [v47 addObject:v8];

  if ([(CarRouteGeniusManager *)self isPreciseLocationEnabled])
  {
    v48 = [(CarRouteGeniusManager *)self activeChromes];
    v49 = [v48 count];

    if (v49)
    {
      [(CarRouteGeniusManager *)self setActive:1];
    }
  }

  else
  {
    v50 = sub_10008B0B8();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "activateIfPossibleForChrome: precise location is not enabled. Will not activate RG manager.", buf, 2u);
    }
  }

LABEL_47:
}

- (void)dealloc
{
  if (self->_active)
  {
    v3 = sub_10008B0B8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "dealloc of CarRGManager: stopping RG service", buf, 2u);
    }

    v4 = +[CarRouteGeniusService sharedService];
    [v4 stop];
  }

  v5.receiver = self;
  v5.super_class = CarRouteGeniusManager;
  [(CarRouteGeniusManager *)&v5 dealloc];
}

- (CarRouteGeniusManager)init
{
  v12.receiver = self;
  v12.super_class = CarRouteGeniusManager;
  v2 = [(CarRouteGeniusManager *)&v12 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    [(CarRouteGeniusManager *)v2 setActiveChromes:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"locationApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v5 = +[MKLocationManager sharedLocationManager];
    -[CarRouteGeniusManager setPreciseLocationEnabled:](v2, "setPreciseLocationEnabled:", [v5 isAuthorizedForPreciseLocation]);

    if (IsEVRoutingSupported())
    {
      v6 = [CarRouteGeniusVehicleBatteryMonitor alloc];
      v7 = +[CarRouteGeniusService sharedService];
      v8 = +[VGVirtualGarageService sharedService];
      v9 = [(CarRouteGeniusVehicleBatteryMonitor *)v6 initWithRouteGeniusService:v7 virtualGarageService:v8 callbackQueue:&_dispatch_main_q];
      [(CarRouteGeniusManager *)v2 setVehicleMonitor:v9];

      v10 = [(CarRouteGeniusManager *)v2 vehicleMonitor];
      [v10 setDelegate:v2];
    }
  }

  return v2;
}

+ (id)sharedDebugPanelChrome
{
  if (qword_10195EDE8 != -1)
  {
    dispatch_once(&qword_10195EDE8, &stru_10164FA58);
  }

  v3 = qword_10195EDE0;

  return v3;
}

@end