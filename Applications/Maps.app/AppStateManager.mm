@interface AppStateManager
- (AppCoordinator)appCoordinator;
- (AppStateManager)initWithPlatformController:(id)controller;
- (BOOL)_shouldSkipStateRestorationForDirectionPlan:(id)plan source:(int64_t)source;
- (BOOL)tryMovingStepModeToStepAtIndex:(unint64_t)index forRouteWithHandle:(id)handle;
- (id)directionsPlanWithFidelity:(unint64_t)fidelity;
- (id)iosChrome;
- (id)mapsActivityWithFidelity:(unint64_t)fidelity;
- (void)openCommuteEntry:(id)entry;
- (void)openMapsSuggestion:(id)suggestion;
- (void)openSearchWithQuery:(id)query;
- (void)openTransitIncidents:(id)incidents;
- (void)setDirectionsPlan:(id)plan source:(int64_t)source;
- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source;
@end

@implementation AppStateManager

- (id)iosChrome
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  chromeViewController = [WeakRetained chromeViewController];

  return chromeViewController;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (BOOL)tryMovingStepModeToStepAtIndex:(unint64_t)index forRouteWithHandle:(id)handle
{
  handleCopy = handle;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v29 = 134218242;
    indexCopy = index;
    v31 = 2112;
    v32 = handleCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "try moving stepping mode to stepIndex: %ld – routeHandle: %@", &v29, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  chromeViewController = [WeakRetained chromeViewController];
  currentIOSBasedContext = [chromeViewController currentIOSBasedContext];
  v11 = objc_loadWeakRetained(&self->_appCoordinator);
  stepModeController = [v11 stepModeController];

  if (currentIOSBasedContext == stepModeController)
  {
    v18 = objc_loadWeakRetained(&self->_appCoordinator);
    stepModeController2 = [v18 stepModeController];

    route = [stepModeController2 route];
    if ([route transportType] == 1)
    {
      suggestedRoute = [route suggestedRoute];
      routeHandle = [suggestedRoute routeHandle];
      transitData = [handleCopy transitData];
      v23 = [routeHandle isEqualToData:transitData];

      if ((v23 & 1) == 0)
      {
LABEL_9:
        v24 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "current route ID does not match routeHandle, aborting.", &v29, 2u);
        }

        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      serverRouteID = [route serverRouteID];
      routeID = [handleCopy routeID];
      v27 = [serverRouteID isEqualToData:routeID];

      if ((v27 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v24 = [route stepAtIndex:index];
    [stepModeController2 updateWithDisplayedStep:v24];
    v17 = 1;
LABEL_14:

    goto LABEL_15;
  }

  stepModeController2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(stepModeController2, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_loadWeakRetained(&self->_appCoordinator);
    chromeViewController2 = [v14 chromeViewController];
    currentIOSBasedContext2 = [chromeViewController2 currentIOSBasedContext];
    v29 = 138412290;
    indexCopy = currentIOSBasedContext2;
    _os_log_impl(&_mh_execute_header, stepModeController2, OS_LOG_TYPE_DEBUG, "current mode %@ is not stepModeController, aborting.", &v29, 0xCu);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)setDirectionsPlan:(id)plan source:(int64_t)source
{
  planCopy = plan;
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];

  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v167 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting directions plan (tag %@)", buf, 0xCu);
  }

  v10 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F186B8;
  block[3] = &unk_10165E668;
  v11 = uUIDString;
  v157 = v11;
  sourceCopy = source;
  v12 = planCopy;
  v158 = v12;
  dispatch_async(v10, block);

  if (v12 && ![(AppStateManager *)self _shouldSkipStateRestorationForDirectionPlan:v12 source:source])
  {
    v13 = sub_100F1877C();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetDirectionsPlan", "", buf, 2u);
    }

    selfCopy = self;
    iosChrome = [(AppStateManager *)self iosChrome];
    mapView = [iosChrome mapView];

    v137 = mapView;
    obj = [mapView userTrackingMode];
    routeRequestStorage = [v12 routeRequestStorage];
    waypoints = [routeRequestStorage waypoints];
    v17 = [waypoints count];
    v18 = objc_alloc_init(NSMutableArray);
    v144 = objc_alloc_init(NSMutableDictionary);
    sourceCopy2 = source;
    v19 = (source > 5) | (0xAu >> source);
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_100F187D0;
    v154[3] = &unk_10165D0B0;
    v155 = (source > 5) | (0xAu >> source) & 1;
    v20 = objc_retainBlock(v154);
    originString = [v12 originString];
    destinationString = [v12 destinationString];
    planningWaypoints = [v12 planningWaypoints];
    v23 = [planningWaypoints count];

    v138 = originString;
    v139 = waypoints;
    if (v23)
    {
      v135 = v11;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      planningWaypoints2 = [v12 planningWaypoints];
      v25 = [planningWaypoints2 countByEnumeratingWithState:&v150 objects:v165 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v151;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v151 != v27)
            {
              objc_enumerationMutation(planningWaypoints2);
            }

            v29 = *(*(&v150 + 1) + 8 * i);
            if ([v29 hasWaypoint])
            {
              waypoint = [v29 waypoint];
              (v20[2])(v20, waypoint);
            }

            else
            {
              waypoint = [v29 searchString];
              sub_100F18994(waypoint);
            }
            v31 = ;
            [v18 addObject:v31];
          }

          v26 = [planningWaypoints2 countByEnumeratingWithState:&v150 objects:v165 count:16];
        }

        while (v26);
        v11 = v135;
LABEL_29:
        v38 = routeRequestStorage;
        v37 = destinationString;
        waypoints = v139;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      if (v17 < 2)
      {
        if (v17 == 1)
        {
          v38 = routeRequestStorage;
          if (originString)
          {
            v42 = sub_100F18994(originString);
            [v18 addObject:v42];

            planningWaypoints2 = [waypoints firstObject];
            v43 = (v20[2])(v20, planningWaypoints2);
            [v18 addObject:v43];

            v37 = destinationString;
            goto LABEL_31;
          }

          if (!destinationString)
          {
            v121 = +[SearchResult currentLocationSearchResult];
            v122 = [SearchFieldItem searchFieldItemWithObject:v121];
            [v18 addObject:v122];

            planningWaypoints2 = [waypoints firstObject];
            v123 = (v20[2])(v20, planningWaypoints2);
            [v18 addObject:v123];

            v37 = 0;
            goto LABEL_31;
          }

          firstObject = [waypoints firstObject];
          v92 = (v20[2])(v20, firstObject);
          [v18 addObject:v92];

          v90 = sub_100F18994(destinationString);
          v37 = destinationString;
        }

        else
        {
          v38 = routeRequestStorage;
          v37 = destinationString;
          if (!originString || !destinationString)
          {
LABEL_32:
            if ([v18 count] <= 1)
            {
              v39 = sub_100005610();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Applying MapsActivity: Not enough waypoints in directions plan", buf, 2u);
              }

LABEL_137:

              goto LABEL_138;
            }

            if ([v38 hasTransportType])
            {
              v40 = [v38 transportType] - 1;
              if (v40 > 5)
              {
                v41 = 1;
              }

              else
              {
                v41 = qword_101216278[v40];
              }
            }

            else
            {
              v41 = 0;
            }

            v44 = [DirectionItem alloc];
            v45 = [v18 copy];
            v39 = [(DirectionItem *)v44 initWithItems:v45 transportType:v41];

            destinationRouteData = [v38 destinationRouteData];
            [v39 setPersistentData:destinationRouteData];

            if (![v12 hasDisplayMethod])
            {
              goto LABEL_134;
            }

            if ([v12 hasCurrentRouteIndex])
            {
              v47 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 currentRouteIndex]);
              [v144 setObject:v47 forKeyedSubscript:@"DirectionsRouteIndex"];
            }

            if ([v12 hasCurrentRouteStep])
            {
              v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 currentRouteStep]);
              [v144 setObject:v48 forKeyedSubscript:@"DirectionsStepIndex"];
            }

            if ([v38 hasRouteHandle])
            {
              routeHandle = [v38 routeHandle];
              [v144 setObject:routeHandle forKeyedSubscript:@"DirectionsRouteHandle"];
            }

            if ([v12 hasDepartureTime])
            {
              [v12 departureTime];
              v50 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              [v144 setObject:v50 forKeyedSubscript:@"DirectionsDepartureDateKey"];
            }

            if ([v12 hasArrivalTime])
            {
              [v12 arrivalTime];
              v51 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              [v144 setObject:v51 forKeyedSubscript:@"DirectionsArrivalDateKey"];
            }

            v38 = routeRequestStorage;
            v133 = v39;
            if ([routeRequestStorage hasAutomobileOptions])
            {
              v52 = [DrivePreferences alloc];
              [routeRequestStorage automobileOptions];
              v54 = v53 = v39;
              v55 = +[NSUserDefaults standardUserDefaults];
              v56 = [(DrivePreferences *)v52 initWithAutomobileOptions:v54 defaults:v55];
              [v53 setDrivePreferences:v56];
            }

            else
            {
              if (([v12 hasAvoidTolls] & 1) == 0 && !objc_msgSend(v12, "hasAvoidHighways"))
              {
LABEL_66:
                if ([routeRequestStorage hasTransitOptions])
                {
                  v63 = [TransitPreferences alloc];
                  transitOptions = [routeRequestStorage transitOptions];
                  v65 = +[NSUserDefaults standardUserDefaults];
                  v66 = [(TransitPreferences *)v63 initWithTransitOptions:transitOptions defaults:v65];
                  [v133 setTransitPreferences:v66];
                }

                else
                {
                  if ([v12 hasTransitPreferences])
                  {
                    transitPreferences = [v12 transitPreferences];
                    v68 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [transitPreferences avoidedTransitModes]);
                    [v144 setObject:v68 forKeyedSubscript:@"DirectionsAvoidedTransitModesKey"];
                  }

                  if ([v12 hasTransitPrioritization])
                  {
                    v69 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 transitPrioritization]);
                    [v144 setObject:v69 forKeyedSubscript:@"DirectionsSortOptionKey"];
                  }

                  if (![v12 hasTransitSurchargeOption])
                  {
LABEL_75:
                    if ([routeRequestStorage hasWalkingOptions])
                    {
                      v70 = [WalkPreferences alloc];
                      walkingOptions = [routeRequestStorage walkingOptions];
                      v72 = +[NSUserDefaults standardUserDefaults];
                      v73 = [(WalkPreferences *)v70 initWithWalkingOptions:walkingOptions defaults:v72];
                      [v133 setWalkPreferences:v73];
                    }

                    if ([routeRequestStorage hasCyclingOptions])
                    {
                      v74 = [CyclePreferences alloc];
                      cyclingOptions = [routeRequestStorage cyclingOptions];
                      v76 = +[NSUserDefaults standardUserDefaults];
                      v77 = [(CyclePreferences *)v74 initWithCyclingOptions:cyclingOptions defaults:v76];
                      [v133 setCyclePreferences:v77];
                    }

                    if ([v12 hasShouldRestoreLowGuidance])
                    {
                      v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 shouldRestoreLowGuidance]);
                      [v144 setObject:v78 forKeyedSubscript:@"DirectionsShouldRestoreLowGuidance"];
                    }

                    v79 = [NSNumber numberWithInteger:obj];
                    [v144 setObject:v79 forKeyedSubscript:@"DirectionsTrackingModeKey"];

                    v80 = [NSNumber numberWithInteger:sourceCopy2];
                    [v144 setObject:v80 forKeyedSubscript:@"DirectionsSourceKey"];

                    if ([v12 hasCompanionRouteContextData])
                    {
                      companionRouteContextData = [v12 companionRouteContextData];
                      v82 = [[GEOCompanionRouteContext alloc] initWithData:companionRouteContextData];
                      [v144 setObject:v82 forKeyedSubscript:@"DirectionsCompanionRouteContextKey"];
                    }

                    displayMethod = [v12 displayMethod];
                    if (displayMethod < 2)
                    {
                      v84 = sub_100005610();
                      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "Performing direction plan for route planning...", buf, 2u);
                      }

LABEL_132:

                      goto LABEL_133;
                    }

                    v39 = v133;
                    if (displayMethod == 2)
                    {
                      v85 = sub_100005610();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "Performing direction plan for active navigation...", buf, 2u);
                      }

                      v136 = v11;

                      items = [v133 items];
                      firstObject2 = [items firstObject];
                      searchResult = [firstObject2 searchResult];
                      if ([searchResult isDynamicCurrentLocation])
                      {
                      }

                      else
                      {
                        persistentData = [v133 persistentData];

                        if (!persistentData)
                        {
                          goto LABEL_104;
                        }
                      }

                      if (sourceCopy2 == 5)
                      {
                        v94 = [NSNumber numberWithDouble:5.0];
                        v95 = +[NSUserDefaults standardUserDefaults];
                        v96 = [v95 objectForKey:@"NavigationAutoLaunchDelayKey"];

                        if (v96)
                        {
                          v97 = v96;
                        }

                        else
                        {
                          v97 = v94;
                        }

                        v98 = v97;

                        [v98 doubleValue];
                        v100 = v99;

                        v101 = [NSNumber numberWithDouble:v100];
                        [v144 setObject:v101 forKeyedSubscript:@"DirectionsNavigationAutoLaunchDelayKey"];
                      }

                      else
                      {
                        [v144 setObject:&off_1016EA3B8 forKeyedSubscript:@"DirectionsNavigationAutoLaunchDelayKey"];
                      }

LABEL_104:
                      v11 = v136;
                      if (!GEOConfigGetBOOL())
                      {
LABEL_133:
                        WeakRetained = objc_loadWeakRetained(&selfCopy->_appCoordinator);
                        baseActionCoordinator = [WeakRetained baseActionCoordinator];
                        [baseActionCoordinator setCurrentDirectionItem:v133 withOptions:v144];

                        v39 = v133;
                        goto LABEL_134;
                      }

                      v102 = sub_100005610();
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                      {
                        handlesForSharingETAsCount = [v12 handlesForSharingETAsCount];
                        handlesForSharingETAs = [v12 handlesForSharingETAs];
                        v105 = handlesForSharingETAs;
                        if (handlesForSharingETAs)
                        {
                          if ([handlesForSharingETAs count])
                          {
                            v129 = handlesForSharingETAsCount;
                            v131 = v102;
                            v132 = v12;
                            v106 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v105 count]);
                            v160 = 0u;
                            v161 = 0u;
                            v162 = 0u;
                            v163 = 0u;
                            v130 = v105;
                            obja = v105;
                            v107 = [obja countByEnumeratingWithState:&v160 objects:buf count:16];
                            if (!v107)
                            {
                              goto LABEL_125;
                            }

                            v108 = v107;
                            v109 = *v161;
                            while (1)
                            {
                              v110 = 0;
                              do
                              {
                                if (*v161 != v109)
                                {
                                  objc_enumerationMutation(obja);
                                }

                                v111 = *(*(&v160 + 1) + 8 * v110);
                                if (v111)
                                {
                                  v112 = objc_opt_class();
                                  v113 = NSStringFromClass(v112);
                                  if ((objc_opt_respondsToSelector() & 1) == 0)
                                  {
                                    goto LABEL_118;
                                  }

                                  v114 = v106;
                                  v115 = [v111 performSelector:"accessibilityIdentifier"];
                                  v116 = v115;
                                  if (v115 && ![v115 isEqualToString:v113])
                                  {
                                    v116 = [NSString stringWithFormat:@"%@<%p, %@>", v113, v111, v116];

                                    v106 = v114;
                                  }

                                  else
                                  {

                                    v106 = v114;
LABEL_118:
                                    v116 = [NSString stringWithFormat:@"%@<%p>", v113, v111];
                                  }

                                  goto LABEL_121;
                                }

                                v116 = @"<nil>";
LABEL_121:

                                [v106 addObject:v116];
                                v110 = v110 + 1;
                              }

                              while (v108 != v110);
                              v118 = [obja countByEnumeratingWithState:&v160 objects:buf count:16];
                              v108 = v118;
                              if (!v118)
                              {
LABEL_125:

                                v119 = [obja componentsJoinedByString:{@", "}];
                                v119 = [NSString stringWithFormat:@"<%p> [%@]", obja, v119];

                                v11 = v136;
                                v102 = v131;
                                v12 = v132;
                                v38 = routeRequestStorage;
                                handlesForSharingETAsCount = v129;
                                v105 = v130;
                                goto LABEL_129;
                              }
                            }
                          }

                          v119 = [NSString stringWithFormat:@"<%p> (empty)", v105];
                        }

                        else
                        {
                          v119 = @"<nil>";
                        }

LABEL_129:

                        v124 = v119;
                        *buf = 134218242;
                        v167 = handlesForSharingETAsCount;
                        v168 = 2112;
                        v169 = v124;
                        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "Found %lu handles in directions plan for trip sharing: %@", buf, 0x16u);
                      }

                      handlesForSharingETAs2 = [v12 handlesForSharingETAs];
                      v84 = [MSPSharedTripContact contactsFromHandles:handlesForSharingETAs2];

                      if ([v84 count])
                      {
                        [v144 setObject:v84 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];
                      }

                      goto LABEL_132;
                    }

LABEL_134:
                    v128 = sub_100F1877C();
                    if (os_signpost_enabled(v128))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetDirectionsPlan", "", buf, 2u);
                    }

                    originString = v138;
                    waypoints = v139;
                    v37 = destinationString;
                    goto LABEL_137;
                  }

                  transitOptions = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 transitSurchargeOption]);
                  [v144 setObject:transitOptions forKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];
                }

                goto LABEL_75;
              }

              v57 = [DrivePreferences alloc];
              v58 = +[NSUserDefaults standardUserDefaults];
              v59 = [(DrivePreferences *)v57 initWithDefaults:v58];
              v60 = v39;
              v54 = v59;

              if ([v12 hasAvoidTolls])
              {
                v61 = v12;
              }

              else
              {
                v61 = v54;
              }

              [v54 setAvoidTolls:{objc_msgSend(v61, "avoidTolls")}];
              if ([v12 hasAvoidHighways])
              {
                v62 = v12;
              }

              else
              {
                v62 = v54;
              }

              [v54 setAvoidHighways:{objc_msgSend(v62, "avoidHighways")}];
              [v60 setDrivePreferences:v54];
            }

            goto LABEL_66;
          }

          v89 = sub_100F18994(originString);
          [v18 addObject:v89];

          v37 = destinationString;
          v90 = sub_100F18994(destinationString);
        }

        planningWaypoints2 = v90;
        [v18 addObject:v90];
        goto LABEL_31;
      }

      if (v19)
      {
        [v144 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsAttemptCachedRoute"];
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      planningWaypoints2 = waypoints;
      v32 = [planningWaypoints2 countByEnumeratingWithState:&v146 objects:v164 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v147;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v147 != v34)
            {
              objc_enumerationMutation(planningWaypoints2);
            }

            v36 = (v20[2])(v20, *(*(&v146 + 1) + 8 * j));
            [v18 addObject:v36];
          }

          v33 = [planningWaypoints2 countByEnumeratingWithState:&v146 objects:v164 count:16];
        }

        while (v33);
        goto LABEL_29;
      }
    }

    v38 = routeRequestStorage;
    v37 = destinationString;
    goto LABEL_31;
  }

LABEL_138:
}

- (BOOL)_shouldSkipStateRestorationForDirectionPlan:(id)plan source:(int64_t)source
{
  planCopy = plan;
  routeRequestStorage = [planCopy routeRequestStorage];
  transportType = [routeRequestStorage transportType];

  v9 = 0;
  if (source == 6 && transportType - 7 <= 0xFFFFFFFC)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    currentLocation = [v10 currentLocation];
    latLng = [currentLocation latLng];
    [latLng coordinate];
    v14 = v13;
    v16 = v15;

    routeRequestStorage2 = [planCopy routeRequestStorage];
    waypoints = [routeRequestStorage2 waypoints];
    lastObject = [waypoints lastObject];
    latLng2 = [lastObject latLng];
    [latLng2 coordinate];
    v22 = v21;
    v24 = v23;

    GEOCalculateDistance();
    v26 = v25;
    GEOConfigGetDouble();
    if (fabs(v14) >= 0.00000000999999994 || fabs(v16) >= 0.00000000999999994)
    {
      v28 = ((fabs(v22) >= 0.00000000999999994) | (fabs(v24) >= 0.00000000999999994)) & (v26 < v27);
    }

    else
    {
      v28 = 0;
    }

    v29 = sub_100F1877C();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = @"NO";
      if (v28)
      {
        v30 = @"YES";
      }

      v31 = v30;
      v39 = 138412546;
      v40 = v31;
      v41 = 2048;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Ignoring direction plan %@ for location change %f", &v39, 0x16u);
    }

    if (v28)
    {
      goto LABEL_20;
    }

    currentSession = [(PlatformController *)self->_platformController currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v34 = sub_100F1877C();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
LABEL_19:

LABEL_20:
        v9 = 1;
        goto LABEL_21;
      }

      LOWORD(v39) = 0;
      v35 = "Ignoring direction plan state restoration because the user is in route planning";
    }

    else
    {
      currentSession2 = [(PlatformController *)self->_platformController currentSession];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if ((v37 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_21;
      }

      v34 = sub_100F1877C();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      LOWORD(v39) = 0;
      v35 = "Ignoring direction plan state restoration because the user is in navigation";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, v35, &v39, 2u);
    goto LABEL_19;
  }

LABEL_21:

  return v9;
}

- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source
{
  activityCopy = activity;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    fidelityCopy = fidelity;
    v139 = activityCopy;
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];

    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting Maps activity (tag %@)", buf, 0xCu);
    }

    v10 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F19F60;
    block[3] = &unk_10165E668;
    v138 = uUIDString;
    v162 = v138;
    sourceCopy = source;
    v144 = v139;
    v163 = v144;
    dispatch_async(v10, block);

    if (!v144)
    {
      goto LABEL_112;
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = source;
      *&buf[12] = 2112;
      *&buf[14] = v144;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "setting Maps activity from source: %ld : state: %@", buf, 0x16u);
    }

    iosChrome = [(AppStateManager *)self iosChrome];
    mapView = [iosChrome mapView];

    [(AppStateManager *)self resetNonActivityStateForMapView:mapView];
    displayOptions = [v144 displayOptions];
    v142 = displayOptions;
    if (!displayOptions)
    {
      v136 = 0;
      goto LABEL_39;
    }

    if (![displayOptions hasCamera])
    {
      v136 = 0;
      v19 = 1;
LABEL_18:
      if ([v142 hasMapType] && !+[UIApplication _maps_isAnySceneConnectedForRole:](UIApplication, "_maps_isAnySceneConnectedForRole:", _UIWindowSceneSessionRoleCarPlay))
      {
        v38 = [v142 mapType] - 1;
        if (v38 > 3)
        {
          v39 = 0;
        }

        else
        {
          v39 = qword_1012160A0[v38];
        }

        iosChrome2 = [(AppStateManager *)self iosChrome];
        settingsController = [iosChrome2 settingsController];
        v42 = [settingsController bestMapViewModeForViewMode:v39 ignoringLabelPreference:{objc_msgSend(v142, "ignoreLabelPreference")}];

        iosChrome3 = [(AppStateManager *)self iosChrome];
        [iosChrome3 updateViewMode:v42 animated:0];
      }

      if ([v142 hasEnableTraffic])
      {
        enableTraffic = [v142 enableTraffic];
        iosChrome4 = [(AppStateManager *)self iosChrome];
        settingsController2 = [iosChrome4 settingsController];
        [settingsController2 setUserDesiresTraffic:enableTraffic];
      }

      if ([v142 hasUserTrackingMode])
      {
        userTrackingMode = [v142 userTrackingMode];
        if (userTrackingMode == 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2 * (userTrackingMode == 2);
        }

        [mapView setUserTrackingMode:v48];
        v19 = 0;
      }

      if ([v142 hasCenterSpan])
      {
        centerSpan = [v142 centerSpan];
        [centerSpan latitude];
        v51 = v50;
        [centerSpan longitude];
        v53 = CLLocationCoordinate2DMake(v51, v52);
        [centerSpan latitudeDelta];
        v55 = v54;
        [centerSpan longitudeDelta];
        [mapView setRegion:0 animated:{v53.latitude, v53.longitude, v55, v56}];

        v19 = 0;
      }

      if ([v142 hasUserTrackingMode] && objc_msgSend(v142, "hasUserTrackingMode") && objc_msgSend(v142, "hasPitchedWhileTracking") && objc_msgSend(v142, "pitchedWhileTracking"))
      {
        [mapView _enter3DMode];
      }

      if ((v19 & 1) == 0)
      {
LABEL_40:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v168 = sub_100F1A024;
        v169 = sub_100F1A034;
        v170 = 0;
        if ([v144 hasSearchString])
        {
          v57 = objc_alloc_init(SearchFieldItem);
          v58 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v57;

          searchString = [v144 searchString];
          [*(*&buf[8] + 40) setSearchString:searchString];
        }

        if ([v144 hasSearchCategoryStorage])
        {
          v60 = [GEOSearchCategory alloc];
          searchCategoryStorage = [v144 searchCategoryStorage];
          v62 = [v60 initWithStorage:searchCategoryStorage];

          if (v62)
          {
            v63 = *(*&buf[8] + 40);
            if (!v63)
            {
              v64 = objc_alloc_init(SearchFieldItem);
              v65 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v64;

              v63 = *(*&buf[8] + 40);
            }

            [v63 setSearchCategory:v62];
          }
        }

        v66 = [NSMutableArray alloc];
        searchPlaces = [v144 searchPlaces];
        v146 = [v66 initWithCapacity:{objc_msgSend(searchPlaces, "count")}];

        searchPlaces2 = [v144 searchPlaces];

        if (searchPlaces2)
        {
          v69 = sub_100005610();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            LOWORD(v149) = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Restoring search places", &v149, 2u);
          }

          searchPlaces3 = [v144 searchPlaces];
          v145 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [searchPlaces3 count]);

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          searchPlaces4 = [v144 searchPlaces];
          v72 = [searchPlaces4 countByEnumeratingWithState:&v157 objects:v166 count:16];
          if (v72)
          {
            v73 = *v158;
            v74 = MKCoordinateInvalid[0];
            v75 = MKCoordinateInvalid[1];
            do
            {
              for (i = 0; i != v72; i = i + 1)
              {
                if (*v158 != v73)
                {
                  objc_enumerationMutation(searchPlaces4);
                }

                data = [*(*(&v157 + 1) + 8 * i) data];
                v78 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:data];

                if ([v78 _hasMUID])
                {
                  if (![v78 _muid])
                  {
                    goto LABEL_64;
                  }

                  v79 = [[MKMapItemIdentifier alloc] initWithMUID:objc_msgSend(v78 resultProviderID:"_muid") coordinate:{0, v74, v75}];
                  if (v79)
                  {
                    [v145 addObject:v79];
                  }
                }

                else
                {
                  v79 = [[MKMapItem alloc] initWithGeoMapItem:v78 isPlaceHolderPlace:0];
                  v80 = [[SearchResult alloc] initWithMapItem:v79];
                  if (v80)
                  {
                    [v146 addObject:v80];
                  }
                }

LABEL_64:
              }

              v72 = [searchPlaces4 countByEnumeratingWithState:&v157 objects:v166 count:16];
            }

            while (v72);
          }

          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_100F1A03C;
          v153[3] = &unk_10165D048;
          v81 = v144;
          v156 = buf;
          v154 = v81;
          selfCopy = self;
          v82 = objc_retainBlock(v153);
          if ([v145 count] && ((objc_msgSend(v81, "directionsPlan"), (v83 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v81, "directionsPlan"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "isPlayingTrace"), v84, v83, v85)))
          {
            v86 = +[MKMapService sharedService];
            v87 = [v86 ticketForIdentifiers:v145 traits:0];

            v150[0] = _NSConcreteStackBlock;
            v150[1] = 3221225472;
            v150[2] = sub_100F1A1A8;
            v150[3] = &unk_1016601F0;
            v151 = v146;
            v152 = v82;
            [v87 submitWithHandler:v150 networkActivity:&stru_10165D068];
          }

          else if ([v146 count])
          {
            (v82[2])(v82, v146);
          }
        }

        if ([v144 hasLineItem])
        {
          v88 = sub_100005610();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            LOWORD(v149) = 0;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Restoring transit line item", &v149, 2u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
          baseActionCoordinator = [WeakRetained baseActionCoordinator];
          lineItem = [v144 lineItem];
          if (source == 3)
          {
            v92 = 3;
          }

          else
          {
            v92 = 0;
          }

          [(IncompleteTransitLineItem *)baseActionCoordinator setCurrentTransitLineItem:lineItem zoomToMapRegion:(v136 & 1) == 0 preferredLayout:v92];
        }

        else
        {
          if (![v144 hasSelectedTransitFeatureID])
          {
LABEL_87:
            droppedPin = [v144 droppedPin];

            if (droppedPin)
            {
              v100 = sub_100005610();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Restoring dropped pin", &v149, 2u);
              }

              droppedPin2 = [v144 droppedPin];
              if ([droppedPin2 hasFloorOrdinal])
              {
                droppedPin3 = [v144 droppedPin];
                floorOrdinal = [droppedPin3 floorOrdinal];
              }

              else
              {
                floorOrdinal = 0x7FFFFFFFLL;
              }

              droppedPin4 = [v144 droppedPin];
              latLng = [droppedPin4 latLng];
              [latLng lat];
              v107 = v106;
              droppedPin5 = [v144 droppedPin];
              latLng2 = [droppedPin5 latLng];
              [latLng2 lng];
              v111 = CLLocationCoordinate2DMake(v107, v110);
              v112 = [SearchResult customSearchResultWithCoordinate:floorOrdinal floorOrdinal:v111.latitude, v111.longitude];

              v113 = +[CustomSearchManager sharedManager];
              [v113 setCustomSearchResult:v112 animated:0 shouldSelectOnMap:0];

              if ([v144 isDroppedPinSelected])
              {
                iosChrome5 = [(AppStateManager *)self iosChrome];
                searchPinsManager = [iosChrome5 searchPinsManager];

                [searchPinsManager selectDroppedPinIsAnimated:0];
              }
            }

            directionsPlan = [v144 directionsPlan];
            if (directionsPlan && ([v144 directionsPlan], v117 = objc_claimAutoreleasedReturnValue(), v118 = objc_msgSend(v117, "isPlayingTrace"), v117, directionsPlan, (v118 & 1) == 0))
            {
              v129 = sub_100005610();
              if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_INFO, "Restoring directions", &v149, 2u);
              }

              directionsPlan2 = [v144 directionsPlan];
              [(AppStateManager *)self setDirectionsPlan:directionsPlan2 source:source];
            }

            else
            {
              presentedMapItem = [v144 presentedMapItem];

              if (presentedMapItem)
              {
                v120 = sub_100005610();
                if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v149) = 0;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "Restoring placecard", &v149, 2u);
                }

                objc_initWeak(&v149, self);
                presentedMapItem2 = [v144 presentedMapItem];
                v147[0] = _NSConcreteStackBlock;
                v147[1] = 3221225472;
                v147[2] = sub_100F1A2D4;
                v147[3] = &unk_10165D090;
                objc_copyWeak(&v148, &v149);
                v122 = [presentedMapItem2 searchResultForFidelity:fidelityCopy refinedHandler:v147];

                if (v122)
                {
                  v123 = objc_alloc_init(SearchFieldItem);
                  title = [v122 title];
                  [(SearchFieldItem *)v123 setSearchString:title];

                  v125 = objc_loadWeakRetained(&self->_appCoordinator);
                  baseActionCoordinator2 = [v125 baseActionCoordinator];
                  v165 = v122;
                  v127 = [NSArray arrayWithObjects:&v165 count:1];
                  v128 = [SearchInfo searchInfoWithResults:v127];
                  [baseActionCoordinator2 restoreSearchForItem:v123 withResults:v128];
                }

                objc_destroyWeak(&v148);
                objc_destroyWeak(&v149);
              }
            }

            userCreatedCollectionID = [v144 userCreatedCollectionID];

            if (userCreatedCollectionID)
            {
              v132 = sub_100005610();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "Restoring user created guide", &v149, 2u);
              }

              v133 = objc_loadWeakRetained(&self->_appCoordinator);
              baseActionCoordinator3 = [v133 baseActionCoordinator];
              userCreatedCollectionID2 = [v144 userCreatedCollectionID];
              [baseActionCoordinator3 viewController:0 showCollectionWithID:userCreatedCollectionID2];
            }

            _Block_object_dispose(buf, 8);
LABEL_112:

            activityCopy = v139;
            goto LABEL_113;
          }

          v93 = sub_100005610();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            LOWORD(v149) = 0;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Restoring transit line item from handoff", &v149, 2u);
          }

          v94 = [MKMapItemIdentifier alloc];
          selectedTransitFeatureID = [v144 selectedTransitFeatureID];
          WeakRetained = [v94 initWithMUID:selectedTransitFeatureID resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
          if (!WeakRetained)
          {
LABEL_86:

            goto LABEL_87;
          }

          v96 = [IncompleteTransitLineItem alloc];
          selectedTransitLineName = [v144 selectedTransitLineName];
          baseActionCoordinator = [(IncompleteTransitLineItem *)v96 initWithIdentifier:WeakRetained name:selectedTransitLineName];

          lineItem = objc_loadWeakRetained(&self->_appCoordinator);
          baseActionCoordinator4 = [lineItem baseActionCoordinator];
          [baseActionCoordinator4 setCurrentTransitLineItem:baseActionCoordinator zoomToMapRegion:(v136 & 1) == 0];
        }

        goto LABEL_86;
      }

LABEL_39:
      [mapView setUserTrackingMode:1];
      goto LABEL_40;
    }

    camera = [v142 camera];
    mapCamera = [camera mapCamera];

    [mapCamera centerCoordinate];
    v17 = fabs(v16) > 180.0;
    v19 = v17 || v18 < -90.0 || v18 > 90.0;
    if (!v17 && v18 >= -90.0 && v18 <= 90.0)
    {
      [mapCamera centerCoordinate];
      v21 = v20;
      v23 = v22;
      camera2 = [mapView camera];
      [camera2 setCenterCoordinate:{v21, v23}];

      [mapCamera heading];
      v26 = v25;
      camera3 = [mapView camera];
      [camera3 setHeading:v26];

      [mapCamera pitch];
      v29 = v28;
      camera4 = [mapView camera];
      [camera4 setPitch:v29];

      [mapCamera centerCoordinateDistance];
      if (v31 > 0.0)
      {
        [mapCamera centerCoordinateDistance];
        v33 = v32;
        camera5 = [mapView camera];
        [camera5 setCenterCoordinateDistance:v33];
LABEL_16:

        goto LABEL_17;
      }

      [mapCamera altitude];
      if (v35 > 0.0)
      {
        [mapCamera altitude];
        v37 = v36;
        camera5 = [mapView camera];
        [camera5 setAltitude:v37];
        goto LABEL_16;
      }
    }

LABEL_17:

    v136 = v19 ^ 1;
    goto LABEL_18;
  }

LABEL_113:
}

- (id)directionsPlanWithFidelity:(unint64_t)fidelity
{
  platformController = [(AppStateManager *)self platformController];
  sessionStack = [platformController sessionStack];

  if ([sessionStack count])
  {
    v6 = sub_10072E1A4(sessionStack, fidelity);
    buildDirectionsPlan = [v6 buildDirectionsPlan];
  }

  else
  {
    buildDirectionsPlan = 0;
  }

  return buildDirectionsPlan;
}

- (id)mapsActivityWithFidelity:(unint64_t)fidelity
{
  if ((fidelity & 0xFFFFFFF) != 0)
  {
    fidelityCopy = fidelity;
    v5 = objc_alloc_init(MapsActivity);
    iosChrome = [(AppStateManager *)self iosChrome];
    mapView = [iosChrome mapView];

    if ((fidelityCopy & 2) != 0)
    {
      v8 = objc_alloc_init(GEOURLOptions);
      camera = [mapView camera];
      [camera centerCoordinate];
      if (fabs(v11) <= 180.0 && v10 >= -90.0 && v10 <= 90.0)
      {
        geoCamera = [camera geoCamera];
        [v8 setCamera:geoCamera];
      }

      iosChrome2 = [(AppStateManager *)self iosChrome];
      v14 = [iosChrome2 displayedViewMode] - 1;
      if (v14 > 6)
      {
        v15 = 0;
      }

      else
      {
        v15 = dword_101216080[v14];
      }

      [v8 setMapType:v15];

      userTrackingMode = [mapView userTrackingMode];
      if (userTrackingMode == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * (userTrackingMode == 2);
      }

      [v8 setUserTrackingMode:v17];
      [(MapsActivity *)v5 setDisplayOptions:v8];
      WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
      baseActionCoordinator = [WeakRetained baseActionCoordinator];
      currentTransitLineItem = [baseActionCoordinator currentTransitLineItem];

      if (currentTransitLineItem)
      {
        -[MapsActivity setSelectedTransitFeatureID:](v5, "setSelectedTransitFeatureID:", [currentTransitLineItem muid]);
        name = [currentTransitLineItem name];
        [(MapsActivity *)v5 setSelectedTransitLineName:name];

        v22 = [[MSPTransitStorageLineItem alloc] initWithLineItem:currentTransitLineItem];
        [(MapsActivity *)v5 setLineItem:v22];
      }
    }

    if (fidelityCopy)
    {
      v23 = objc_loadWeakRetained(&self->_appCoordinator);
      baseActionCoordinator2 = [v23 baseActionCoordinator];
      currentSearchSession = [baseActionCoordinator2 currentSearchSession];

      v26 = objc_loadWeakRetained(&self->_appCoordinator);
      baseActionCoordinator3 = [v26 baseActionCoordinator];
      currentMapItem = [baseActionCoordinator3 currentMapItem];

      currentResultsSearchInfo = [currentSearchSession currentResultsSearchInfo];
      LODWORD(baseActionCoordinator3) = [currentResultsSearchInfo isSearchAlongRoute];

      v89 = mapView;
      selfCopy = self;
      if (baseActionCoordinator3)
      {

        currentSearchSession = 0;
      }

      v30 = [GEOSearchCategoryStorage alloc];
      searchFieldItem = [currentSearchSession searchFieldItem];
      searchCategory = [searchFieldItem searchCategory];
      v33 = [v30 initWithSearchCategory:searchCategory];
      [(MapsActivity *)v5 setSearchCategoryStorage:v33];

      searchFieldItem2 = [currentSearchSession searchFieldItem];
      searchString = [searchFieldItem2 searchString];
      [(MapsActivity *)v5 setSearchString:searchString];

      v88 = currentSearchSession;
      searchInfo = [currentSearchSession searchInfo];
      results = [searchInfo results];

      v92 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(results, "count")}];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      obj = results;
      v38 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
      if (v38)
      {
        v39 = v38;
        name2 = 0;
        v41 = 0;
        v42 = *v106;
        do
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v106 != v42)
            {
              objc_enumerationMutation(obj);
            }

            mapItem = [*(*(&v105 + 1) + 8 * i) mapItem];
            v45 = mapItem;
            if (!name2)
            {
              name2 = [mapItem name];
            }

            if (v45 == currentMapItem || [v45 _muid] && (v46 = objc_msgSend(v45, "_muid"), v46 == objc_msgSend(currentMapItem, "_muid")))
            {
              [(MapsActivity *)v5 setSelectedPlaceIndex:v41];
            }

            _geoMapItem = [v45 _geoMapItem];

            if (_geoMapItem)
            {
              [v92 addObject:v45];
            }

            ++v41;
          }

          v39 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
        }

        while (v39);
      }

      else
      {
        name2 = 0;
      }

      v48 = objc_alloc_init(NSMutableArray);
      if ((fidelityCopy & 0x10) != 0)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v57 = v92;
        v63 = [v57 countByEnumeratingWithState:&v93 objects:v109 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v94;
          do
          {
            for (j = 0; j != v64; j = j + 1)
            {
              if (*v94 != v65)
              {
                objc_enumerationMutation(v57);
              }

              _geoMapItemStorageForPersistence = [*(*(&v93 + 1) + 8 * j) _geoMapItemStorageForPersistence];
              if (_geoMapItemStorageForPersistence)
              {
                [v48 addObject:_geoMapItemStorageForPersistence];
              }
            }

            v64 = [v57 countByEnumeratingWithState:&v93 objects:v109 count:16];
          }

          while (v64);
        }
      }

      else
      {
        v86 = fidelityCopy;
        v87 = v5;
        v49 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v92, "count")}];
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v50 = v92;
        v51 = [v50 countByEnumeratingWithState:&v101 objects:v111 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v102;
          do
          {
            for (k = 0; k != v52; k = k + 1)
            {
              if (*v102 != v53)
              {
                objc_enumerationMutation(v50);
              }

              _geoMapItem2 = [*(*(&v101 + 1) + 8 * k) _geoMapItem];
              _mapItemByStrippingOptionalData = [_geoMapItem2 _mapItemByStrippingOptionalData];

              if (_mapItemByStrippingOptionalData)
              {
                [v49 addObject:_mapItemByStrippingOptionalData];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v101 objects:v111 count:16];
          }

          while (v52);
        }

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v57 = v49;
        v58 = [v57 countByEnumeratingWithState:&v97 objects:v110 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v98;
          do
          {
            for (m = 0; m != v59; m = m + 1)
            {
              if (*v98 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = [GEOMapItemStorage mapItemStorageForGEOMapItem:*(*(&v97 + 1) + 8 * m)];
              if (v62)
              {
                [v48 addObject:v62];
              }
            }

            v59 = [v57 countByEnumeratingWithState:&v97 objects:v110 count:16];
          }

          while (v59);
        }

        fidelityCopy = v86;
        v5 = v87;
      }

      [(MapsActivity *)v5 setSearchPlaces:v48];
      searchString2 = [(MapsActivity *)v5 searchString];

      if (!searchString2)
      {
        [(MapsActivity *)v5 setSearchString:name2];
      }

      if (currentMapItem)
      {
        [(MapsActivity *)v5 setIsPresentingSelectedPlace:1];
      }

      v69 = +[MapsPinsController sharedController];
      droppedPin = [v69 droppedPin];

      if (droppedPin)
      {
        [(MapsActivity *)v5 setDroppedPin:droppedPin];
        [(MapsActivity *)v5 setIsDroppedPinPresented:0];
        [(MapsActivity *)v5 setIsDroppedPinSelected:0];
        if (currentMapItem)
        {
          [currentMapItem _coordinate];
          v72 = v71;
          v74 = v73;
          latLng = [droppedPin latLng];
          [latLng lat];
          v77 = v76;
          latLng2 = [droppedPin latLng];
          [latLng2 lng];
          if (vabdd_f64(v72, v77) >= 0.00000000999999994)
          {
          }

          else
          {
            v80 = vabdd_f64(v74, v79);

            if (v80 < 0.00000000999999994)
            {
              [(MapsActivity *)v5 setIsDroppedPinSelected:1];
              if ([(MapsActivity *)v5 isPresentingSelectedPlace])
              {
                [(MapsActivity *)v5 setIsDroppedPinPresented:1];
              }
            }
          }
        }
      }

      if ([(MapsActivity *)v5 isPresentingSelectedPlace]&& ![(MapsActivity *)v5 isDroppedPinPresented]&& ![(MapsActivity *)v5 hasSelectedPlaceIndex])
      {
        if ((fidelityCopy & 0x10) != 0)
        {
          _geoMapItemStorageForPersistence2 = [currentMapItem _geoMapItemStorageForPersistence];
          [(MapsActivity *)v5 setPresentedMapItem:_geoMapItemStorageForPersistence2];
        }

        else
        {
          _geoMapItem3 = [currentMapItem _geoMapItem];
          _geoMapItemStorageForPersistence2 = [_geoMapItem3 _mapItemByStrippingOptionalData];

          v83 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItemStorageForPersistence2];
          [(MapsActivity *)v5 setPresentedMapItem:v83];
        }
      }

      mapView = v89;
      self = selfCopy;
    }

    if ((fidelityCopy & 0xC) != 0)
    {
      v84 = [(AppStateManager *)self directionsPlanWithFidelity:fidelityCopy];
      [(MapsActivity *)v5 setDirectionsPlan:v84];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)openCommuteEntry:(id)entry
{
  entryCopy = entry;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = entryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening commute entry: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  baseActionCoordinator = [WeakRetained baseActionCoordinator];
  [baseActionCoordinator viewController:0 openCommuteEntry:entryCopy];
}

- (void)openTransitIncidents:(id)incidents
{
  incidentsCopy = incidents;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = incidentsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening transit incident: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  baseActionCoordinator = [WeakRetained baseActionCoordinator];
  [baseActionCoordinator viewController:0 openTransitIncidents:incidentsCopy fromView:0 withUserInfo:0];
}

- (void)openMapsSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = suggestionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening suggestion: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  baseActionCoordinator = [WeakRetained baseActionCoordinator];
  [baseActionCoordinator viewController:0 openMapsSuggestionEntry:suggestionCopy withUserInfo:0];
}

- (void)openSearchWithQuery:(id)query
{
  queryCopy = query;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = queryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening search with query: %@", &v9, 0xCu);
  }

  v6 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v6 setSearchString:queryCopy];
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  baseActionCoordinator = [WeakRetained baseActionCoordinator];
  [baseActionCoordinator viewController:0 doSearchItem:v6 withUserInfo:0];
}

- (AppStateManager)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AppStateManager;
  v6 = [(AppStateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
    v7->_defaultZoomLevel = GEOConfigGetUInteger();
  }

  return v7;
}

@end