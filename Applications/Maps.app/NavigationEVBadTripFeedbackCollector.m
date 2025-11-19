@interface NavigationEVBadTripFeedbackCollector
- (BOOL)_checkForBadTrip;
- (BOOL)isBadTrip;
- (NavigationEVBadTripFeedbackCollector)initWithNavigationService:(id)a3 virtualGarageService:(id)a4;
- (void)_rebuildExpectedEVInfos;
- (void)_reset;
- (void)_virtualGarageDidBecomeAvailable;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)setCurrentVehicleState:(id)a3;
- (void)setObservedRoute:(id)a3;
- (void)startRecording;
- (void)stopRecording;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation NavigationEVBadTripFeedbackCollector

- (void)_virtualGarageDidBecomeAvailable
{
  if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
  {
    v3 = sub_100024D88();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "virtualGarageDidBecomeAvailable fetching garage", buf, 2u);
    }

    [(VGVirtualGarageService *)self->_virtualGarageService registerObserver:self];
    objc_initWeak(buf, self);
    virtualGarageService = self->_virtualGarageService;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003549C;
    v5[3] = &unk_101655840;
    objc_copyWeak(&v6, buf);
    [(VGVirtualGarageService *)virtualGarageService virtualGarageGetGarageWithReply:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100886AD8;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100886BEC;
  v11[3] = &unk_10164C698;
  v13 = a4;
  v14 = a5;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100887174;
  v9[3] = &unk_101661A90;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)_reset
{
  observedRoute = self->_observedRoute;
  self->_observedRoute = 0;

  v4 = objc_opt_new();
  routeInfos = self->_routeInfos;
  self->_routeInfos = v4;

  stepIDToExpectedEVInfos = self->_stepIDToExpectedEVInfos;
  self->_stepIDToExpectedEVInfos = 0;
}

- (void)_rebuildExpectedEVInfos
{
  if (!self->_observedRoute)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "[NavigationEVBadTripFeedbackCollector _rebuildExpectedEVInfos]";
      v26 = 2080;
      v27 = "NavigationEVBadTripFeedbackCollector.m";
      v28 = 1024;
      v29 = 248;
      v30 = 2080;
      v31 = "_observedRoute";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (self->_isRecording && self->_observedRoute)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v4 = [(GEOComposedRoute *)self->_observedRoute steps];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 evInfo];
          if (v10)
          {
            v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 stepID]);
            [v3 setObject:v10 forKeyedSubscript:v11];
          }

          else
          {
            v11 = sub_100024D88();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = [v9 stepID];
              *buf = 134217984;
              v25 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "stepID: %lu didn't have evInfo", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v13 = [v3 copy];
    stepIDToExpectedEVInfos = v18->_stepIDToExpectedEVInfos;
    v18->_stepIDToExpectedEVInfos = v13;
  }
}

- (void)setObservedRoute:(id)a3
{
  v4 = a3;
  if (!self->_isRecording)
  {
    v5 = sub_100024D88();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "observedRoute called when we are not recording", v10, 2u);
    }

    v4 = 0;
  }

  objc_storeStrong(&self->_observedRoute, v4);
  if (self->_observedRoute)
  {
    v6 = [EVBadTripRouteInfo alloc];
    v7 = [(NavigationEVBadTripFeedbackCollector *)self observedRoute];
    v8 = [(NavigationEVBadTripFeedbackCollector *)self currentVehicleState];
    v9 = [(EVBadTripRouteInfo *)v6 initWithRoute:v7 currentVehicleState:v8];

    [(NSMutableArray *)self->_routeInfos addObject:v9];
    [(NavigationEVBadTripFeedbackCollector *)self _rebuildExpectedEVInfos];
  }

  else
  {
    [(NavigationEVBadTripFeedbackCollector *)self _reset];
  }
}

- (void)setCurrentVehicleState:(id)a3
{
  v5 = a3;
  currentVehicleState = self->_currentVehicleState;
  p_currentVehicleState = &self->_currentVehicleState;
  v8 = v5;
  v9 = currentVehicleState;
  if (v8 | v9)
  {
    v10 = v9;
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong(p_currentVehicleState, a3);
      v12 = sub_100024D88();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v8 identifier];
        v14 = [v8 currentBatteryCharge];
        v15 = 138412546;
        v16 = v13;
        v17 = 2048;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "currentVehicleState was changed to: %@, battery charge (Wh): %lu", &v15, 0x16u);
      }
    }
  }
}

- (BOOL)_checkForBadTrip
{
  v2 = self;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v3 = self->_routeInfos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (!v4)
  {

LABEL_23:
    v42 = sub_100024D88();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v45 = v2->_routeInfos;
      v46 = v45;
      if (v45)
      {
        if ([(NSMutableArray *)v45 count])
        {
          v67 = v42;
          v47 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v46 count]];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v65 = v46;
          v48 = v46;
          v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v72 objects:buf count:16];
          if (!v49)
          {
            goto LABEL_43;
          }

          v50 = v49;
          v51 = *v73;
          while (1)
          {
            v52 = 0;
            do
            {
              if (*v73 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v72 + 1) + 8 * v52);
              if (v53)
              {
                v54 = objc_opt_class();
                v55 = NSStringFromClass(v54);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_36;
                }

                v56 = [v53 performSelector:"accessibilityIdentifier"];
                v57 = v56;
                if (v56 && ![v56 isEqualToString:v55])
                {
                  v58 = [NSString stringWithFormat:@"%@<%p, %@>", v55, v53, v57];
                }

                else
                {

LABEL_36:
                  v58 = [NSString stringWithFormat:@"%@<%p>", v55, v53];
                }

                goto LABEL_39;
              }

              v58 = @"<nil>";
LABEL_39:

              [v47 addObject:v58];
              v52 = v52 + 1;
            }

            while (v50 != v52);
            v59 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v72 objects:buf count:16];
            v50 = v59;
            if (!v59)
            {
LABEL_43:

              v60 = [(NSMutableArray *)v48 componentsJoinedByString:@", "];
              [NSString stringWithFormat:@"<%p> [%@]", v48, v60];
              *&v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              v46 = v65;
              v42 = v67;
              goto LABEL_46;
            }
          }
        }

        [NSString stringWithFormat:@"<%p> (empty)", v46];
        *&v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      }

      else
      {
        *&v61 = COERCE_DOUBLE(@"<nil>");
      }

LABEL_46:

      *buf = 138412290;
      v78 = *&v61;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "No consumption for routeInfos: %@", buf, 0xCu);
    }

    v41 = 0;
    goto LABEL_48;
  }

  v5 = v4;
  v63 = v2;
  v6 = *v69;
  v7 = 0.0;
  v8 = 0.0;
  v64 = *v69;
  v66 = v3;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v69 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v68 + 1) + 8 * i);
      v11 = [v10 initialBatteryCharge];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 realArrivalBatteryCharge];
        if (v13)
        {
          v14 = v13;
          v15 = [v10 expectedArrivalBatteryCharge];

          if (v15)
          {
            v16 = [v10 realArrivalBatteryCharge];
            [v16 doubleValue];
            v18 = v17;
            v19 = [v10 expectedArrivalBatteryCharge];
            [v19 doubleValue];
            v21 = v18 - v20;

            v22 = [v10 realArrivalBatteryCharge];
            [v22 doubleValue];
            v24 = v23;
            v25 = [v10 initialBatteryCharge];
            [v25 doubleValue];
            v27 = vabdd_f64(v24, v26);

            v8 = v21 + v8;
            v7 = v27 + v7;
            v28 = sub_100024D88();
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              goto LABEL_15;
            }

            v29 = [v10 route];
            v30 = COERCE_DOUBLE([v29 serverIdentifier]);
            v31 = [v10 lastTraversedStep];
            v32 = COERCE_DOUBLE([v31 stepIndex]);
            [v10 initialBatteryCharge];
            v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v34 = [v10 realArrivalBatteryCharge];
            v35 = [v10 expectedArrivalBatteryCharge];
            *buf = 134219522;
            v78 = v30;
            v79 = 2048;
            v80 = v32;
            v81 = 2048;
            v82 = v21;
            v83 = 2048;
            v84 = v27;
            v85 = 2112;
            v86 = v33;
            v87 = 2112;
            v88 = v34;
            v89 = 2112;
            v90 = v35;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Added new segment (%lu lastTraveledStep: %lu) with delta: %.4f, consumption: %.2f, initial: %@, real: %@, expected: %@", buf, 0x48u);

            v6 = v64;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v28 = sub_100024D88();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v29 = [v10 route];
      v36 = COERCE_DOUBLE([v29 serverIdentifier]);
      v31 = [v10 lastTraversedStep];
      v37 = COERCE_DOUBLE([v31 stepIndex]);
      [v10 initialBatteryCharge];
      v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v10 realArrivalBatteryCharge];
      v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v39 = [v10 expectedArrivalBatteryCharge];
      *buf = 134219010;
      v78 = v36;
      v79 = 2048;
      v80 = v37;
      v6 = v64;
      v81 = 2112;
      v82 = v33;
      v83 = 2112;
      v84 = v38;
      v85 = 2112;
      v86 = *&v39;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Will not be able to calculate delta for route: %lu, lastTraveledStep: %lu, initial: %@, real: %@, expected: %@", buf, 0x34u);

LABEL_14:
      v3 = v66;

LABEL_15:
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v68 objects:v76 count:16];
  }

  while (v5);

  v2 = v63;
  if (v7 < 2.22044605e-16)
  {
    goto LABEL_23;
  }

  v40 = fabs(v8 / v7);
  v41 = v40 > 0.05;
  v42 = sub_100024D88();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *&v43 = COERCE_DOUBLE(@"NO");
    *buf = 134218754;
    v78 = v8;
    if (v40 > 0.05)
    {
      *&v43 = COERCE_DOUBLE(@"YES");
    }

    v79 = 2048;
    v80 = v7;
    v81 = 2048;
    v82 = v8 / v7;
    v83 = 2112;
    v84 = *&v43;
    v44 = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Finished adding up segments. deltaSum: %.4f, consumptionSum: %.2f, result: %.4f, isBadTrip: %@", buf, 0x2Au);
  }

LABEL_48:

  return v41;
}

- (BOOL)isBadTrip
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100887F80;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopRecording
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10088819C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startRecording
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10088828C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NavigationEVBadTripFeedbackCollector)initWithNavigationService:(id)a3 virtualGarageService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NavigationEVBadTripFeedbackCollector;
  v9 = [(NavigationEVBadTripFeedbackCollector *)&v15 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("NavigationFeedbackEVBadTripCollector", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_navigationService, a3);
    [(MNNavigationService *)v9->_navigationService registerObserver:v9];
    objc_storeStrong(&v9->_virtualGarageService, a4);
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v9 selector:"_virtualGarageDidBecomeAvailable" name:@"VirtualGarageAvailableNotification" object:0];
  }

  return v9;
}

@end