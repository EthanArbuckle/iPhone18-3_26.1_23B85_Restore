@interface RoutePlanningSessionDirectionsPlanBuilder
- (RoutePlanningSessionDirectionsPlanBuilder)initWithRoutePlanningSession:(id)session fidelity:(unint64_t)fidelity;
- (RoutePlanningSessionDirectionsPlanBuilder)initWithSessionStack:(id)stack fidelity:(unint64_t)fidelity;
- (id)_timingForTransportType:(int64_t)type;
- (id)_transitPreferences;
- (id)buildDirectionsPlan;
- (void)_addOriginDestinationToPlan:(id)plan;
- (void)_addTimingToPlan:(id)plan;
- (void)_addTransitOptionsToPlan:(id)plan;
@end

@implementation RoutePlanningSessionDirectionsPlanBuilder

- (id)_timingForTransportType:(int64_t)type
{
  session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  configuration = [session configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v8 = [transportTypeInformation requestInfoProviderForTransportType:type];

    timing = [v8 timing];
  }

  else
  {
    timing = 0;
  }

  return timing;
}

- (id)_transitPreferences
{
  session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  configuration = [session configuration];
  routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportTypeInformation = [routeLoadingTaskFactory transportTypeInformation];
    v6 = [transportTypeInformation requestInfoProviderForTransportType:3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitPreferences = [v6 transitPreferences];
    }

    else
    {
      transitPreferences = 0;
    }
  }

  else
  {
    transitPreferences = 0;
  }

  return transitPreferences;
}

- (void)_addTimingToPlan:(id)plan
{
  planCopy = plan;
  session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v5 = -[RoutePlanningSessionDirectionsPlanBuilder _timingForTransportType:](self, "_timingForTransportType:", [session currentTransportType]);

  departureDate = [v5 departureDate];

  if (departureDate)
  {
    departureDate2 = [v5 departureDate];
    [departureDate2 timeIntervalSinceReferenceDate];
    [planCopy setDepartureTime:?];
  }

  else
  {
    arrivalDate = [v5 arrivalDate];

    if (arrivalDate)
    {
      departureDate2 = [v5 arrivalDate];
      [departureDate2 timeIntervalSinceReferenceDate];
      [planCopy setArrivalTime:?];
    }

    else
    {
      departureDate2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
      if ([departureDate2 currentTransportType] == 3)
      {
        session2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
        startDate = [session2 startDate];

        if (!startDate)
        {
          goto LABEL_9;
        }

        departureDate2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
        startDate2 = [departureDate2 startDate];
        [startDate2 timeIntervalSinceReferenceDate];
        [planCopy setDepartureTime:?];
      }
    }
  }

LABEL_9:
}

- (void)_addTransitOptionsToPlan:(id)plan
{
  planCopy = plan;
  session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  currentTransportType = [session currentTransportType];

  if (currentTransportType == 3)
  {
    _transitPreferences = [(RoutePlanningSessionDirectionsPlanBuilder *)self _transitPreferences];
    if (_transitPreferences)
    {
      v7 = [DirectionsPlanTransitPreferences alloc];
      transitOptions = [_transitPreferences transitOptions];
      v9 = [(DirectionsPlanTransitPreferences *)v7 initWithGEOTransitOptions:transitOptions];
      [planCopy setTransitPreferences:v9];

      [planCopy setTransitPrioritization:{objc_msgSend(_transitPreferences, "sortOption")}];
      surchargeOption = [_transitPreferences surchargeOption];

      if (surchargeOption)
      {
        surchargeOption2 = [_transitPreferences surchargeOption];
        [planCopy setTransitSurchargeOption:{objc_msgSend(surchargeOption2, "integerValue")}];
      }
    }
  }
}

- (void)_addOriginDestinationToPlan:(id)plan
{
  planCopy = plan;
  navigationSession = [(RoutePlanningSessionDirectionsPlanBuilder *)self navigationSession];
  waypointController = [navigationSession waypointController];

  originWaypoint = [waypointController originWaypoint];
  displayedWaypoints = [waypointController displayedWaypoints];
  if (![displayedWaypoints count] || !originWaypoint)
  {
    session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
    resolvedWaypoints = [session resolvedWaypoints];

    if ([resolvedWaypoints areAllValidWaypoints])
    {
      v66 = originWaypoint;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v31 = resolvedWaypoints;
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
            routeRequestStorage = [planCopy routeRequestStorage];
            [routeRequestStorage addWaypoints:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v33);
      }

      v38 = +[NSUUID UUID];
      uUIDString = [v38 UUIDString];

      v40 = sub_100028730();
      originWaypoint = v66;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      selfCopy = self;
      if (!selfCopy)
      {
        selfCopy = @"<nil>";
        goto LABEL_46;
      }

      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      if (objc_opt_respondsToSelector())
      {
        v44 = [(RoutePlanningSessionDirectionsPlanBuilder *)selfCopy performSelector:"accessibilityIdentifier"];
        v45 = v44;
        if (v44 && ![v44 isEqualToString:v43])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v43, selfCopy, v45];

          goto LABEL_33;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v43, selfCopy];
LABEL_33:

      originWaypoint = v66;
LABEL_46:

      *buf = 138543618;
      v87 = selfCopy;
      v88 = 2112;
      v89 = uUIDString;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are from navigation : %@", buf, 0x16u);

LABEL_47:
      routeRequestStorage2 = [planCopy routeRequestStorage];
      waypoints = [routeRequestStorage2 waypoints];
      v62 = sub_10099F8F0(waypoints);

      v63 = dispatch_get_global_queue(0, 0);
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100A25710;
      v71[3] = &unk_101661A90;
      v72 = uUIDString;
      v73 = v62;
      v59 = v62;
      configuration = uUIDString;
      dispatch_async(v63, v71);

      goto LABEL_51;
    }

    session2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
    configuration = [session2 configuration];

    waypointRequests = [configuration waypointRequests];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100A257C4;
    v68[3] = &unk_101632038;
    v31 = resolvedWaypoints;
    v69 = v31;
    v70 = planCopy;
    [waypointRequests enumerateObjectsUsingBlock:v68];

    v50 = sub_100028730();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
LABEL_50:

      v59 = v69;
      goto LABEL_51;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_49;
    }

    v67 = originWaypoint;
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    if (objc_opt_respondsToSelector())
    {
      v54 = v53;
      v55 = [(RoutePlanningSessionDirectionsPlanBuilder *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v56 = v55;
      if (v55 && ![v55 isEqualToString:v54])
      {
        v64 = v54;
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v54, selfCopy2, v56];

        v53 = v64;
        goto LABEL_41;
      }

      v53 = v54;
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v53, selfCopy2];
LABEL_41:

    originWaypoint = v67;
LABEL_49:

    *buf = 138543362;
    v87 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are planning waypoints", buf, 0xCu);

    goto LABEL_50;
  }

  routeRequestStorage3 = [planCopy routeRequestStorage];
  v65 = originWaypoint;
  [routeRequestStorage3 addWaypoints:originWaypoint];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = displayedWaypoints;
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
        routeRequestStorage4 = [planCopy routeRequestStorage];
        [routeRequestStorage4 addWaypoints:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v12);
  }

  v17 = +[NSUUID UUID];
  uUIDString2 = [v17 UUIDString];

  routeRequestStorage5 = [planCopy routeRequestStorage];
  waypoints2 = [routeRequestStorage5 waypoints];
  v21 = sub_10099F8F0(waypoints2);

  v22 = sub_100028730();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    goto LABEL_44;
  }

  selfCopy3 = self;
  if (!selfCopy3)
  {
    selfCopy3 = @"<nil>";
    goto LABEL_43;
  }

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  if (objc_opt_respondsToSelector())
  {
    v26 = [(RoutePlanningSessionDirectionsPlanBuilder *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v27 = v26;
    if (v26 && ![v26 isEqualToString:v25])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy3, v27];

      goto LABEL_17;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy3];
LABEL_17:

LABEL_43:
  *buf = 138543618;
  v87 = selfCopy3;
  v88 = 2112;
  v89 = uUIDString2;
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] Waypoints for directions plan are from navigation : %@", buf, 0x16u);

LABEL_44:
  v58 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A2565C;
  block[3] = &unk_101661A90;
  v79 = uUIDString2;
  v80 = v21;
  configuration = v21;
  v31 = uUIDString2;
  dispatch_async(v58, block);

  v59 = v79;
  originWaypoint = v65;
LABEL_51:
}

- (id)buildDirectionsPlan
{
  v3 = objc_alloc_init(DirectionsPlan);
  v4 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v3 setRouteRequestStorage:v4];
  session = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  v6 = [session currentTransportType] - 2;
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_101212C30[v6];
  }

  routeRequestStorage = [(DirectionsPlan *)v3 routeRequestStorage];
  [routeRequestStorage setTransportType:v7];

  [(DirectionsPlan *)v3 setDisplayMethod:1];
  session2 = [(RoutePlanningSessionDirectionsPlanBuilder *)self session];
  currentRouteCollection = [session2 currentRouteCollection];

  if (currentRouteCollection)
  {
    -[DirectionsPlan setCurrentRouteIndex:](v3, "setCurrentRouteIndex:", [currentRouteCollection currentRouteIndex]);
  }

  currentRoute = [currentRouteCollection currentRoute];
  if (currentRoute)
  {
    v12 = [[GEOURLRouteHandle alloc] initWithRoute:currentRoute fidelity:{-[RoutePlanningSessionDirectionsPlanBuilder fidelity](self, "fidelity")}];
    routeRequestStorage2 = [(DirectionsPlan *)v3 routeRequestStorage];
    [routeRequestStorage2 setRouteHandle:v12];
  }

  currentRoute2 = [currentRouteCollection currentRoute];
  v15 = [DirectionsPlan _maps_expiryDateForRoute:currentRoute2];
  [v15 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)v3 setExpiryTime:?];

  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addOriginDestinationToPlan:v3];
  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addTransitOptionsToPlan:v3];
  [(RoutePlanningSessionDirectionsPlanBuilder *)self _addTimingToPlan:v3];
  v16 = sub_100028730();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_17;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(RoutePlanningSessionDirectionsPlanBuilder *)selfCopy performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

        goto LABEL_15;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_15:

LABEL_17:
    v23 = selfCopy;
    displayMethod = [(DirectionsPlan *)v3 displayMethod];
    if (displayMethod >= 3)
    {
      v25 = [NSString stringWithFormat:@"(unknown: %i)", displayMethod];
    }

    else
    {
      v25 = *(&off_101632058 + displayMethod);
    }

    v26 = v25;
    waypointsCount = [v4 waypointsCount];
    [(DirectionsPlan *)v3 expiryTime];
    v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    *buf = 138544130;
    v31 = v23;
    v32 = 2114;
    v33 = v25;
    v34 = 2048;
    v35 = waypointsCount;
    v36 = 2112;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Preparing directions plan (%{public}@, %lu waypoints, expires: %@)", buf, 0x2Au);
  }

  return v3;
}

- (RoutePlanningSessionDirectionsPlanBuilder)initWithRoutePlanningSession:(id)session fidelity:(unint64_t)fidelity
{
  sessionCopy = session;
  if (!sessionCopy)
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

  v13 = sessionCopy;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [(RoutePlanningSessionDirectionsPlanBuilder *)self initWithSessionStack:v7 fidelity:fidelity];

  return v8;
}

- (RoutePlanningSessionDirectionsPlanBuilder)initWithSessionStack:(id)stack fidelity:(unint64_t)fidelity
{
  stackCopy = stack;
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

  v7->_fidelity = fidelity;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  reverseObjectEnumerator = [stackCopy reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v28 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v8->_session, v14);
          goto LABEL_12;
        }
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v28 count:16];
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
    v15 = [stackCopy indexOfObject:?] + 1;
    if (v15 < [stackCopy count])
    {
      while (1)
      {
        v16 = [stackCopy objectAtIndexedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (++v15 >= [stackCopy count])
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
    v27 = stackCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No route planning session present in stack: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_22:

  return v18;
}

@end