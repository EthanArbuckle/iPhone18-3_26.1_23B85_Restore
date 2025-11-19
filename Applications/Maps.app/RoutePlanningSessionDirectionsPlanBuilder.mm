@interface RoutePlanningSessionDirectionsPlanBuilder
- (RoutePlanningSessionDirectionsPlanBuilder)initWithRoutePlanningSession:(id)a3 fidelity:(unint64_t)a4;
- (RoutePlanningSessionDirectionsPlanBuilder)initWithSessionStack:(id)a3 fidelity:(unint64_t)a4;
- (id)_timingForTransportType:(int64_t)a3;
- (id)_transitPreferences;
- (id)buildDirectionsPlan;
- (void)_addOriginDestinationToPlan:(id)a3;
- (void)_addTimingToPlan:(id)a3;
- (void)_addTransitOptionsToPlan:(id)a3;
@end

@implementation RoutePlanningSessionDirectionsPlanBuilder

- (id)_timingForTransportType:(int64_t)a3
{
  v4 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v5 = [v4 configuration];
  v6 = [v5 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 transportTypeInformation];
    v8 = [v7 requestInfoProviderForTransportType:a3];

    v9 = [v8 timing];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_transitPreferences
{
  v2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v3 = [v2 configuration];
  v4 = [v3 routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 transportTypeInformation];
    v6 = [v5 requestInfoProviderForTransportType:3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 transitPreferences];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addTimingToPlan:(id)a3
{
  v12 = a3;
  v4 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v5 = -[RoutePlanningSessionDirectionsPlanBuilder _timingForTransportType:](self, "_timingForTransportType:", [v4 currentTransportType]);

  v6 = [v5 departureDate];

  if (v6)
  {
    v7 = [v5 departureDate];
    [v7 timeIntervalSinceReferenceDate];
    [v12 setDepartureTime:?];
  }

  else
  {
    v8 = [v5 arrivalDate];

    if (v8)
    {
      v7 = [v5 arrivalDate];
      [v7 timeIntervalSinceReferenceDate];
      [v12 setArrivalTime:?];
    }

    else
    {
      v7 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
      if ([v7 currentTransportType] == 3)
      {
        v9 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
        v10 = [v9 startDate];

        if (!v10)
        {
          goto LABEL_9;
        }

        v7 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
        v11 = [v7 startDate];
        [v11 timeIntervalSinceReferenceDate];
        [v12 setDepartureTime:?];
      }
    }
  }

LABEL_9:
}

- (void)_addTransitOptionsToPlan:(id)a3
{
  v12 = a3;
  v4 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v5 = [v4 currentTransportType];

  if (v5 == 3)
  {
    v6 = [(RoutePlanningSessionDirectionsPlanBuilder *)self _transitPreferences];
    if (v6)
    {
      v7 = [DirectionsPlanTransitPreferences alloc];
      v8 = [v6 transitOptions];
      v9 = [(DirectionsPlanTransitPreferences *)v7 initWithGEOTransitOptions:v8];
      [v12 setTransitPreferences:v9];

      [v12 setTransitPrioritization:{objc_msgSend(v6, "sortOption")}];
      v10 = [v6 surchargeOption];

      if (v10)
      {
        v11 = [v6 surchargeOption];
        [v12 setTransitSurchargeOption:{objc_msgSend(v11, "integerValue")}];
      }
    }
  }
}

- (void)_addOriginDestinationToPlan:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningSessionDirectionsPlanBuilder *)self navigationSession];
  v6 = [v5 waypointController];

  v7 = [v6 originWaypoint];
  v8 = [v6 displayedWaypoints];
  if (![v8 count] || !v7)
  {
    v29 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
    v30 = [v29 resolvedWaypoints];

    if ([v30 areAllValidWaypoints])
    {
      v66 = v7;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v75;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v75 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v74 + 1) + 8 * i);
            v37 = [v4 routeRequestStorage];
            [v37 addWaypoints:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v33);
      }

      v38 = +[NSUUID UUID];
      v39 = [v38 UUIDString];

      v40 = sub_100028730();
      v7 = v66;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v41 = self;
      if (!v41)
      {
        v46 = @"<nil>";
        goto LABEL_46;
      }

      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      if (objc_opt_respondsToSelector())
      {
        v44 = [(RoutePlanningSessionDirectionsPlanBuilder *)v41 performSelector:"accessibilityIdentifier"];
        v45 = v44;
        if (v44 && ![v44 isEqualToString:v43])
        {
          v46 = [NSString stringWithFormat:@"%@<%p, %@>", v43, v41, v45];

          goto LABEL_33;
        }
      }

      v46 = [NSString stringWithFormat:@"%@<%p>", v43, v41];
LABEL_33:

      v7 = v66;
LABEL_46:

      *buf = 138543618;
      v87 = v46;
      v88 = 2112;
      v89 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are from navigation : %@", buf, 0x16u);

LABEL_47:
      v60 = [v4 routeRequestStorage];
      v61 = [v60 waypoints];
      v62 = sub_10099F8F0(v61);

      v63 = dispatch_get_global_queue(0, 0);
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100A25710;
      v71[3] = &unk_101661A90;
      v72 = v39;
      v73 = v62;
      v59 = v62;
      v48 = v39;
      dispatch_async(v63, v71);

      goto LABEL_51;
    }

    v47 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
    v48 = [v47 configuration];

    v49 = [v48 waypointRequests];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100A257C4;
    v68[3] = &unk_101632038;
    v31 = v30;
    v69 = v31;
    v70 = v4;
    [v49 enumerateObjectsUsingBlock:v68];

    v50 = sub_100028730();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
LABEL_50:

      v59 = v69;
      goto LABEL_51;
    }

    v51 = self;
    if (!v51)
    {
      v57 = @"<nil>";
      goto LABEL_49;
    }

    v67 = v7;
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    if (objc_opt_respondsToSelector())
    {
      v54 = v53;
      v55 = [(RoutePlanningSessionDirectionsPlanBuilder *)v51 performSelector:"accessibilityIdentifier"];
      v56 = v55;
      if (v55 && ![v55 isEqualToString:v54])
      {
        v64 = v54;
        v57 = [NSString stringWithFormat:@"%@<%p, %@>", v54, v51, v56];

        v53 = v64;
        goto LABEL_41;
      }

      v53 = v54;
    }

    v57 = [NSString stringWithFormat:@"%@<%p>", v53, v51];
LABEL_41:

    v7 = v67;
LABEL_49:

    *buf = 138543362;
    v87 = v57;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are planning waypoints", buf, 0xCu);

    goto LABEL_50;
  }

  v9 = [v4 routeRequestStorage];
  v65 = v7;
  [v9 addWaypoints:v7];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v82;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v82 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v81 + 1) + 8 * j);
        v16 = [v4 routeRequestStorage];
        [v16 addWaypoints:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v12);
  }

  v17 = +[NSUUID UUID];
  v18 = [v17 UUIDString];

  v19 = [v4 routeRequestStorage];
  v20 = [v19 waypoints];
  v21 = sub_10099F8F0(v20);

  v22 = sub_100028730();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    goto LABEL_44;
  }

  v23 = self;
  if (!v23)
  {
    v28 = @"<nil>";
    goto LABEL_43;
  }

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  if (objc_opt_respondsToSelector())
  {
    v26 = [(RoutePlanningSessionDirectionsPlanBuilder *)v23 performSelector:"accessibilityIdentifier"];
    v27 = v26;
    if (v26 && ![v26 isEqualToString:v25])
    {
      v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

      goto LABEL_17;
    }
  }

  v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_17:

LABEL_43:
  *buf = 138543618;
  v87 = v28;
  v88 = 2112;
  v89 = v18;
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are from navigation : %@", buf, 0x16u);

LABEL_44:
  v58 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A2565C;
  block[3] = &unk_101661A90;
  v79 = v18;
  v80 = v21;
  v48 = v21;
  v31 = v18;
  dispatch_async(v58, block);

  v59 = v79;
  v7 = v65;
LABEL_51:
}

- (id)buildDirectionsPlan
{
  v3 = objc_alloc_init(DirectionsPlan);
  v4 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v3 setRouteRequestStorage:v4];
  v5 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v6 = [v5 currentTransportType] - 2;
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_101212C30[v6];
  }

  v8 = [(DirectionsPlan *)v3 routeRequestStorage];
  [v8 setTransportType:v7];

  [(DirectionsPlan *)v3 setDisplayMethod:1];
  v9 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v10 = [v9 currentRouteCollection];

  if (v10)
  {
    -[DirectionsPlan setCurrentRouteIndex:](v3, "setCurrentRouteIndex:", [v10 currentRouteIndex]);
  }

  v11 = [v10 currentRoute];
  if (v11)
  {
    v12 = [[GEOURLRouteHandle alloc] initWithRoute:v11 fidelity:{-[RoutePlanningSessionDirectionsPlanBuilder fidelity](self, "fidelity")}];
    v13 = [(DirectionsPlan *)v3 routeRequestStorage];
    [v13 setRouteHandle:v12];
  }

  v14 = [v10 currentRoute];
  v15 = [DirectionsPlan _maps_expiryDateForRoute:v14];
  [v15 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)v3 setExpiryTime:?];

  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addOriginDestinationToPlan:v3];
  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addTransitOptionsToPlan:v3];
  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addTimingToPlan:v3];
  v16 = sub_100028730();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_17;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(RoutePlanningSessionDirectionsPlanBuilder *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_15;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_15:

LABEL_17:
    v23 = v22;
    v24 = [(DirectionsPlan *)v3 displayMethod];
    if (v24 >= 3)
    {
      v25 = [NSString stringWithFormat:@"(unknown: %i)", v24];
    }

    else
    {
      v25 = *(&off_101632058 + v24);
    }

    v26 = v25;
    v27 = [v4 waypointsCount];
    [(DirectionsPlan *)v3 expiryTime];
    v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    *buf = 138544130;
    v31 = v23;
    v32 = 2114;
    v33 = v25;
    v34 = 2048;
    v35 = v27;
    v36 = 2112;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Preparing directions plan (%{public}@, %lu waypoints, expires: %@)", buf, 0x2Au);
  }

  return v3;
}

- (RoutePlanningSessionDirectionsPlanBuilder)initWithRoutePlanningSession:(id)a3 fidelity:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "[RoutePlanningSessionDirectionsPlanBuilder initWithRoutePlanningSession:fidelity:]";
      v16 = 2080;
      v17 = "RoutePlanningSessionDirectionsPlanBuilder.m";
      v18 = 1024;
      v19 = 72;
      v20 = 2080;
      v21 = "session != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [(RoutePlanningSessionDirectionsPlanBuilder *)self initWithSessionStack:v7 fidelity:a4];

  return v8;
}

- (RoutePlanningSessionDirectionsPlanBuilder)initWithSessionStack:(id)a3 fidelity:(unint64_t)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = RoutePlanningSessionDirectionsPlanBuilder;
  v7 = [(RoutePlanningSessionDirectionsPlanBuilder *)&v25 init];
  v8 = v7;
  if (!v7)
  {
LABEL_21:
    v18 = v8;
    goto LABEL_22;
  }

  v7->_fidelity = a4;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v6 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v8->_session, v14);
          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (v8->_session)
  {
    v15 = [v6 indexOfObject:?] + 1;
    if (v15 < [v6 count])
    {
      while (1)
      {
        v16 = [v6 objectAtIndexedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (++v15 >= [v6 count])
        {
          goto LABEL_21;
        }
      }

      navigationSession = v8->_navigationSession;
      v8->_navigationSession = v16;
    }

    goto LABEL_21;
  }

  v17 = sub_100028730();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No route planning session present in stack: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_22:

  return v18;
}

@end