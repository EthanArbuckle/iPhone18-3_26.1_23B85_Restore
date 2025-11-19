@interface AppStateManager
- (AppCoordinator)appCoordinator;
- (AppStateManager)initWithPlatformController:(id)a3;
- (BOOL)_shouldSkipStateRestorationForDirectionPlan:(id)a3 source:(int64_t)a4;
- (BOOL)tryMovingStepModeToStepAtIndex:(unint64_t)a3 forRouteWithHandle:(id)a4;
- (id)directionsPlanWithFidelity:(unint64_t)a3;
- (id)iosChrome;
- (id)mapsActivityWithFidelity:(unint64_t)a3;
- (void)openCommuteEntry:(id)a3;
- (void)openMapsSuggestion:(id)a3;
- (void)openSearchWithQuery:(id)a3;
- (void)openTransitIncidents:(id)a3;
- (void)setDirectionsPlan:(id)a3 source:(int64_t)a4;
- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5;
@end

@implementation AppStateManager

- (id)iosChrome
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v3 = [WeakRetained chromeViewController];

  return v3;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (BOOL)tryMovingStepModeToStepAtIndex:(unint64_t)a3 forRouteWithHandle:(id)a4
{
  v6 = a4;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v29 = 134218242;
    v30 = a3;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "try moving stepping mode to stepIndex: %ld – routeHandle: %@", &v29, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v9 = [WeakRetained chromeViewController];
  v10 = [v9 currentIOSBasedContext];
  v11 = objc_loadWeakRetained(&self->_appCoordinator);
  v12 = [v11 stepModeController];

  if (v10 == v12)
  {
    v18 = objc_loadWeakRetained(&self->_appCoordinator);
    v13 = [v18 stepModeController];

    v19 = [v13 route];
    if ([v19 transportType] == 1)
    {
      v20 = [v19 suggestedRoute];
      v21 = [v20 routeHandle];
      v22 = [v6 transitData];
      v23 = [v21 isEqualToData:v22];

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
      v25 = [v19 serverRouteID];
      v26 = [v6 routeID];
      v27 = [v25 isEqualToData:v26];

      if ((v27 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v24 = [v19 stepAtIndex:a3];
    [v13 updateWithDisplayedStep:v24];
    v17 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_loadWeakRetained(&self->_appCoordinator);
    v15 = [v14 chromeViewController];
    v16 = [v15 currentIOSBasedContext];
    v29 = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "current mode %@ is not stepModeController, aborting.", &v29, 0xCu);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)setDirectionsPlan:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];

  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v167 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting directions plan (tag %@)", buf, 0xCu);
  }

  v10 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F186B8;
  block[3] = &unk_10165E668;
  v11 = v8;
  v157 = v11;
  v159 = a4;
  v12 = v6;
  v158 = v12;
  dispatch_async(v10, block);

  if (v12 && ![(AppStateManager *)self _shouldSkipStateRestorationForDirectionPlan:v12 source:a4])
  {
    v13 = sub_100F1877C();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetDirectionsPlan", "", buf, 2u);
    }

    v134 = self;
    v14 = [(AppStateManager *)self iosChrome];
    v15 = [v14 mapView];

    v137 = v15;
    obj = [v15 userTrackingMode];
    v142 = [v12 routeRequestStorage];
    v16 = [v142 waypoints];
    v17 = [v16 count];
    v18 = objc_alloc_init(NSMutableArray);
    v144 = objc_alloc_init(NSMutableDictionary);
    v145 = a4;
    v19 = (a4 > 5) | (0xAu >> a4);
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_100F187D0;
    v154[3] = &unk_10165D0B0;
    v155 = (a4 > 5) | (0xAu >> a4) & 1;
    v20 = objc_retainBlock(v154);
    v21 = [v12 originString];
    v143 = [v12 destinationString];
    v22 = [v12 planningWaypoints];
    v23 = [v22 count];

    v138 = v21;
    v139 = v16;
    if (v23)
    {
      v135 = v11;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v24 = [v12 planningWaypoints];
      v25 = [v24 countByEnumeratingWithState:&v150 objects:v165 count:16];
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
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v150 + 1) + 8 * i);
            if ([v29 hasWaypoint])
            {
              v30 = [v29 waypoint];
              (v20[2])(v20, v30);
            }

            else
            {
              v30 = [v29 searchString];
              sub_100F18994(v30);
            }
            v31 = ;
            [v18 addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v150 objects:v165 count:16];
        }

        while (v26);
        v11 = v135;
LABEL_29:
        v38 = v142;
        v37 = v143;
        v16 = v139;
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
          v38 = v142;
          if (v21)
          {
            v42 = sub_100F18994(v21);
            [v18 addObject:v42];

            v24 = [v16 firstObject];
            v43 = (v20[2])(v20, v24);
            [v18 addObject:v43];

            v37 = v143;
            goto LABEL_31;
          }

          if (!v143)
          {
            v121 = +[SearchResult currentLocationSearchResult];
            v122 = [SearchFieldItem searchFieldItemWithObject:v121];
            [v18 addObject:v122];

            v24 = [v16 firstObject];
            v123 = (v20[2])(v20, v24);
            [v18 addObject:v123];

            v37 = 0;
            goto LABEL_31;
          }

          v91 = [v16 firstObject];
          v92 = (v20[2])(v20, v91);
          [v18 addObject:v92];

          v90 = sub_100F18994(v143);
          v37 = v143;
        }

        else
        {
          v38 = v142;
          v37 = v143;
          if (!v21 || !v143)
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

            v46 = [v38 destinationRouteData];
            [v39 setPersistentData:v46];

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
              v49 = [v38 routeHandle];
              [v144 setObject:v49 forKeyedSubscript:@"DirectionsRouteHandle"];
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

            v38 = v142;
            v133 = v39;
            if ([v142 hasAutomobileOptions])
            {
              v52 = [DrivePreferences alloc];
              [v142 automobileOptions];
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
                if ([v142 hasTransitOptions])
                {
                  v63 = [TransitPreferences alloc];
                  v64 = [v142 transitOptions];
                  v65 = +[NSUserDefaults standardUserDefaults];
                  v66 = [(TransitPreferences *)v63 initWithTransitOptions:v64 defaults:v65];
                  [v133 setTransitPreferences:v66];
                }

                else
                {
                  if ([v12 hasTransitPreferences])
                  {
                    v67 = [v12 transitPreferences];
                    v68 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v67 avoidedTransitModes]);
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
                    if ([v142 hasWalkingOptions])
                    {
                      v70 = [WalkPreferences alloc];
                      v71 = [v142 walkingOptions];
                      v72 = +[NSUserDefaults standardUserDefaults];
                      v73 = [(WalkPreferences *)v70 initWithWalkingOptions:v71 defaults:v72];
                      [v133 setWalkPreferences:v73];
                    }

                    if ([v142 hasCyclingOptions])
                    {
                      v74 = [CyclePreferences alloc];
                      v75 = [v142 cyclingOptions];
                      v76 = +[NSUserDefaults standardUserDefaults];
                      v77 = [(CyclePreferences *)v74 initWithCyclingOptions:v75 defaults:v76];
                      [v133 setCyclePreferences:v77];
                    }

                    if ([v12 hasShouldRestoreLowGuidance])
                    {
                      v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 shouldRestoreLowGuidance]);
                      [v144 setObject:v78 forKeyedSubscript:@"DirectionsShouldRestoreLowGuidance"];
                    }

                    v79 = [NSNumber numberWithInteger:obj];
                    [v144 setObject:v79 forKeyedSubscript:@"DirectionsTrackingModeKey"];

                    v80 = [NSNumber numberWithInteger:v145];
                    [v144 setObject:v80 forKeyedSubscript:@"DirectionsSourceKey"];

                    if ([v12 hasCompanionRouteContextData])
                    {
                      v81 = [v12 companionRouteContextData];
                      v82 = [[GEOCompanionRouteContext alloc] initWithData:v81];
                      [v144 setObject:v82 forKeyedSubscript:@"DirectionsCompanionRouteContextKey"];
                    }

                    v83 = [v12 displayMethod];
                    if (v83 < 2)
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
                    if (v83 == 2)
                    {
                      v85 = sub_100005610();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "Performing direction plan for active navigation...", buf, 2u);
                      }

                      v136 = v11;

                      v86 = [v133 items];
                      v87 = [v86 firstObject];
                      v88 = [v87 searchResult];
                      if ([v88 isDynamicCurrentLocation])
                      {
                      }

                      else
                      {
                        v93 = [v133 persistentData];

                        if (!v93)
                        {
                          goto LABEL_104;
                        }
                      }

                      if (v145 == 5)
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
                        WeakRetained = objc_loadWeakRetained(&v134->_appCoordinator);
                        v127 = [WeakRetained baseActionCoordinator];
                        [v127 setCurrentDirectionItem:v133 withOptions:v144];

                        v39 = v133;
                        goto LABEL_134;
                      }

                      v102 = sub_100005610();
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                      {
                        v103 = [v12 handlesForSharingETAsCount];
                        v104 = [v12 handlesForSharingETAs];
                        v105 = v104;
                        if (v104)
                        {
                          if ([v104 count])
                          {
                            v129 = v103;
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
                                    v117 = [NSString stringWithFormat:@"%@<%p, %@>", v113, v111, v116];

                                    v106 = v114;
                                  }

                                  else
                                  {

                                    v106 = v114;
LABEL_118:
                                    v117 = [NSString stringWithFormat:@"%@<%p>", v113, v111];
                                  }

                                  goto LABEL_121;
                                }

                                v117 = @"<nil>";
LABEL_121:

                                [v106 addObject:v117];
                                v110 = v110 + 1;
                              }

                              while (v108 != v110);
                              v118 = [obja countByEnumeratingWithState:&v160 objects:buf count:16];
                              v108 = v118;
                              if (!v118)
                              {
LABEL_125:

                                v119 = [obja componentsJoinedByString:{@", "}];
                                v120 = [NSString stringWithFormat:@"<%p> [%@]", obja, v119];

                                v11 = v136;
                                v102 = v131;
                                v12 = v132;
                                v38 = v142;
                                v103 = v129;
                                v105 = v130;
                                goto LABEL_129;
                              }
                            }
                          }

                          v120 = [NSString stringWithFormat:@"<%p> (empty)", v105];
                        }

                        else
                        {
                          v120 = @"<nil>";
                        }

LABEL_129:

                        v124 = v120;
                        *buf = 134218242;
                        v167 = v103;
                        v168 = 2112;
                        v169 = v124;
                        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "Found %lu handles in directions plan for trip sharing: %@", buf, 0x16u);
                      }

                      v125 = [v12 handlesForSharingETAs];
                      v84 = [MSPSharedTripContact contactsFromHandles:v125];

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

                    v21 = v138;
                    v16 = v139;
                    v37 = v143;
                    goto LABEL_137;
                  }

                  v64 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 transitSurchargeOption]);
                  [v144 setObject:v64 forKeyedSubscript:@"DirectionsTransitSurchargeOptionKey"];
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

          v89 = sub_100F18994(v21);
          [v18 addObject:v89];

          v37 = v143;
          v90 = sub_100F18994(v143);
        }

        v24 = v90;
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
      v24 = v16;
      v32 = [v24 countByEnumeratingWithState:&v146 objects:v164 count:16];
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
              objc_enumerationMutation(v24);
            }

            v36 = (v20[2])(v20, *(*(&v146 + 1) + 8 * j));
            [v18 addObject:v36];
          }

          v33 = [v24 countByEnumeratingWithState:&v146 objects:v164 count:16];
        }

        while (v33);
        goto LABEL_29;
      }
    }

    v38 = v142;
    v37 = v143;
    goto LABEL_31;
  }

LABEL_138:
}

- (BOOL)_shouldSkipStateRestorationForDirectionPlan:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 routeRequestStorage];
  v8 = [v7 transportType];

  v9 = 0;
  if (a4 == 6 && v8 - 7 <= 0xFFFFFFFC)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    v11 = [v10 currentLocation];
    v12 = [v11 latLng];
    [v12 coordinate];
    v14 = v13;
    v16 = v15;

    v17 = [v6 routeRequestStorage];
    v18 = [v17 waypoints];
    v19 = [v18 lastObject];
    v20 = [v19 latLng];
    [v20 coordinate];
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

    v32 = [(PlatformController *)self->_platformController currentSession];
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
      v36 = [(PlatformController *)self->_platformController currentSession];
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

- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5
{
  v6 = a3;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v137 = a4;
    v139 = v6;
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting Maps activity (tag %@)", buf, 0xCu);
    }

    v10 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F19F60;
    block[3] = &unk_10165E668;
    v138 = v8;
    v162 = v138;
    v164 = a5;
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
      *&buf[4] = a5;
      *&buf[12] = 2112;
      *&buf[14] = v144;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "setting Maps activity from source: %ld : state: %@", buf, 0x16u);
    }

    v12 = [(AppStateManager *)self iosChrome];
    v140 = [v12 mapView];

    [(AppStateManager *)self resetNonActivityStateForMapView:v140];
    v13 = [v144 displayOptions];
    v142 = v13;
    if (!v13)
    {
      v136 = 0;
      goto LABEL_39;
    }

    if (![v13 hasCamera])
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

        v40 = [(AppStateManager *)self iosChrome];
        v41 = [v40 settingsController];
        v42 = [v41 bestMapViewModeForViewMode:v39 ignoringLabelPreference:{objc_msgSend(v142, "ignoreLabelPreference")}];

        v43 = [(AppStateManager *)self iosChrome];
        [v43 updateViewMode:v42 animated:0];
      }

      if ([v142 hasEnableTraffic])
      {
        v44 = [v142 enableTraffic];
        v45 = [(AppStateManager *)self iosChrome];
        v46 = [v45 settingsController];
        [v46 setUserDesiresTraffic:v44];
      }

      if ([v142 hasUserTrackingMode])
      {
        v47 = [v142 userTrackingMode];
        if (v47 == 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2 * (v47 == 2);
        }

        [v140 setUserTrackingMode:v48];
        v19 = 0;
      }

      if ([v142 hasCenterSpan])
      {
        v49 = [v142 centerSpan];
        [v49 latitude];
        v51 = v50;
        [v49 longitude];
        v53 = CLLocationCoordinate2DMake(v51, v52);
        [v49 latitudeDelta];
        v55 = v54;
        [v49 longitudeDelta];
        [v140 setRegion:0 animated:{v53.latitude, v53.longitude, v55, v56}];

        v19 = 0;
      }

      if ([v142 hasUserTrackingMode] && objc_msgSend(v142, "hasUserTrackingMode") && objc_msgSend(v142, "hasPitchedWhileTracking") && objc_msgSend(v142, "pitchedWhileTracking"))
      {
        [v140 _enter3DMode];
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

          v59 = [v144 searchString];
          [*(*&buf[8] + 40) setSearchString:v59];
        }

        if ([v144 hasSearchCategoryStorage])
        {
          v60 = [GEOSearchCategory alloc];
          v61 = [v144 searchCategoryStorage];
          v62 = [v60 initWithStorage:v61];

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
        v67 = [v144 searchPlaces];
        v146 = [v66 initWithCapacity:{objc_msgSend(v67, "count")}];

        v68 = [v144 searchPlaces];

        if (v68)
        {
          v69 = sub_100005610();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            LOWORD(v149) = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Restoring search places", &v149, 2u);
          }

          v70 = [v144 searchPlaces];
          v145 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v70 count]);

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v71 = [v144 searchPlaces];
          v72 = [v71 countByEnumeratingWithState:&v157 objects:v166 count:16];
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
                  objc_enumerationMutation(v71);
                }

                v77 = [*(*(&v157 + 1) + 8 * i) data];
                v78 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:v77];

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

              v72 = [v71 countByEnumeratingWithState:&v157 objects:v166 count:16];
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
          v155 = self;
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
          v90 = [WeakRetained baseActionCoordinator];
          v91 = [v144 lineItem];
          if (a5 == 3)
          {
            v92 = 3;
          }

          else
          {
            v92 = 0;
          }

          [(IncompleteTransitLineItem *)v90 setCurrentTransitLineItem:v91 zoomToMapRegion:(v136 & 1) == 0 preferredLayout:v92];
        }

        else
        {
          if (![v144 hasSelectedTransitFeatureID])
          {
LABEL_87:
            v99 = [v144 droppedPin];

            if (v99)
            {
              v100 = sub_100005610();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Restoring dropped pin", &v149, 2u);
              }

              v101 = [v144 droppedPin];
              if ([v101 hasFloorOrdinal])
              {
                v102 = [v144 droppedPin];
                v103 = [v102 floorOrdinal];
              }

              else
              {
                v103 = 0x7FFFFFFFLL;
              }

              v104 = [v144 droppedPin];
              v105 = [v104 latLng];
              [v105 lat];
              v107 = v106;
              v108 = [v144 droppedPin];
              v109 = [v108 latLng];
              [v109 lng];
              v111 = CLLocationCoordinate2DMake(v107, v110);
              v112 = [SearchResult customSearchResultWithCoordinate:v103 floorOrdinal:v111.latitude, v111.longitude];

              v113 = +[CustomSearchManager sharedManager];
              [v113 setCustomSearchResult:v112 animated:0 shouldSelectOnMap:0];

              if ([v144 isDroppedPinSelected])
              {
                v114 = [(AppStateManager *)self iosChrome];
                v115 = [v114 searchPinsManager];

                [v115 selectDroppedPinIsAnimated:0];
              }
            }

            v116 = [v144 directionsPlan];
            if (v116 && ([v144 directionsPlan], v117 = objc_claimAutoreleasedReturnValue(), v118 = objc_msgSend(v117, "isPlayingTrace"), v117, v116, (v118 & 1) == 0))
            {
              v129 = sub_100005610();
              if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_INFO, "Restoring directions", &v149, 2u);
              }

              v130 = [v144 directionsPlan];
              [(AppStateManager *)self setDirectionsPlan:v130 source:a5];
            }

            else
            {
              v119 = [v144 presentedMapItem];

              if (v119)
              {
                v120 = sub_100005610();
                if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v149) = 0;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "Restoring placecard", &v149, 2u);
                }

                objc_initWeak(&v149, self);
                v121 = [v144 presentedMapItem];
                v147[0] = _NSConcreteStackBlock;
                v147[1] = 3221225472;
                v147[2] = sub_100F1A2D4;
                v147[3] = &unk_10165D090;
                objc_copyWeak(&v148, &v149);
                v122 = [v121 searchResultForFidelity:v137 refinedHandler:v147];

                if (v122)
                {
                  v123 = objc_alloc_init(SearchFieldItem);
                  v124 = [v122 title];
                  [(SearchFieldItem *)v123 setSearchString:v124];

                  v125 = objc_loadWeakRetained(&self->_appCoordinator);
                  v126 = [v125 baseActionCoordinator];
                  v165 = v122;
                  v127 = [NSArray arrayWithObjects:&v165 count:1];
                  v128 = [SearchInfo searchInfoWithResults:v127];
                  [v126 restoreSearchForItem:v123 withResults:v128];
                }

                objc_destroyWeak(&v148);
                objc_destroyWeak(&v149);
              }
            }

            v131 = [v144 userCreatedCollectionID];

            if (v131)
            {
              v132 = sub_100005610();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
              {
                LOWORD(v149) = 0;
                _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "Restoring user created guide", &v149, 2u);
              }

              v133 = objc_loadWeakRetained(&self->_appCoordinator);
              v134 = [v133 baseActionCoordinator];
              v135 = [v144 userCreatedCollectionID];
              [v134 viewController:0 showCollectionWithID:v135];
            }

            _Block_object_dispose(buf, 8);
LABEL_112:

            v6 = v139;
            goto LABEL_113;
          }

          v93 = sub_100005610();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            LOWORD(v149) = 0;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Restoring transit line item from handoff", &v149, 2u);
          }

          v94 = [MKMapItemIdentifier alloc];
          v95 = [v144 selectedTransitFeatureID];
          WeakRetained = [v94 initWithMUID:v95 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
          if (!WeakRetained)
          {
LABEL_86:

            goto LABEL_87;
          }

          v96 = [IncompleteTransitLineItem alloc];
          v97 = [v144 selectedTransitLineName];
          v90 = [(IncompleteTransitLineItem *)v96 initWithIdentifier:WeakRetained name:v97];

          v91 = objc_loadWeakRetained(&self->_appCoordinator);
          v98 = [v91 baseActionCoordinator];
          [v98 setCurrentTransitLineItem:v90 zoomToMapRegion:(v136 & 1) == 0];
        }

        goto LABEL_86;
      }

LABEL_39:
      [v140 setUserTrackingMode:1];
      goto LABEL_40;
    }

    v14 = [v142 camera];
    v15 = [v14 mapCamera];

    [v15 centerCoordinate];
    v17 = fabs(v16) > 180.0;
    v19 = v17 || v18 < -90.0 || v18 > 90.0;
    if (!v17 && v18 >= -90.0 && v18 <= 90.0)
    {
      [v15 centerCoordinate];
      v21 = v20;
      v23 = v22;
      v24 = [v140 camera];
      [v24 setCenterCoordinate:{v21, v23}];

      [v15 heading];
      v26 = v25;
      v27 = [v140 camera];
      [v27 setHeading:v26];

      [v15 pitch];
      v29 = v28;
      v30 = [v140 camera];
      [v30 setPitch:v29];

      [v15 centerCoordinateDistance];
      if (v31 > 0.0)
      {
        [v15 centerCoordinateDistance];
        v33 = v32;
        v34 = [v140 camera];
        [v34 setCenterCoordinateDistance:v33];
LABEL_16:

        goto LABEL_17;
      }

      [v15 altitude];
      if (v35 > 0.0)
      {
        [v15 altitude];
        v37 = v36;
        v34 = [v140 camera];
        [v34 setAltitude:v37];
        goto LABEL_16;
      }
    }

LABEL_17:

    v136 = v19 ^ 1;
    goto LABEL_18;
  }

LABEL_113:
}

- (id)directionsPlanWithFidelity:(unint64_t)a3
{
  v4 = [(AppStateManager *)self platformController];
  v5 = [v4 sessionStack];

  if ([v5 count])
  {
    v6 = sub_10072E1A4(v5, a3);
    v7 = [v6 buildDirectionsPlan];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mapsActivityWithFidelity:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFF) != 0)
  {
    v3 = a3;
    v5 = objc_alloc_init(MapsActivity);
    v6 = [(AppStateManager *)self iosChrome];
    v7 = [v6 mapView];

    if ((v3 & 2) != 0)
    {
      v8 = objc_alloc_init(GEOURLOptions);
      v9 = [v7 camera];
      [v9 centerCoordinate];
      if (fabs(v11) <= 180.0 && v10 >= -90.0 && v10 <= 90.0)
      {
        v12 = [v9 geoCamera];
        [v8 setCamera:v12];
      }

      v13 = [(AppStateManager *)self iosChrome];
      v14 = [v13 displayedViewMode] - 1;
      if (v14 > 6)
      {
        v15 = 0;
      }

      else
      {
        v15 = dword_101216080[v14];
      }

      [v8 setMapType:v15];

      v16 = [v7 userTrackingMode];
      if (v16 == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * (v16 == 2);
      }

      [v8 setUserTrackingMode:v17];
      [(MapsActivity *)v5 setDisplayOptions:v8];
      WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
      v19 = [WeakRetained baseActionCoordinator];
      v20 = [v19 currentTransitLineItem];

      if (v20)
      {
        -[MapsActivity setSelectedTransitFeatureID:](v5, "setSelectedTransitFeatureID:", [v20 muid]);
        v21 = [v20 name];
        [(MapsActivity *)v5 setSelectedTransitLineName:v21];

        v22 = [[MSPTransitStorageLineItem alloc] initWithLineItem:v20];
        [(MapsActivity *)v5 setLineItem:v22];
      }
    }

    if (v3)
    {
      v23 = objc_loadWeakRetained(&self->_appCoordinator);
      v24 = [v23 baseActionCoordinator];
      v25 = [v24 currentSearchSession];

      v26 = objc_loadWeakRetained(&self->_appCoordinator);
      v27 = [v26 baseActionCoordinator];
      v28 = [v27 currentMapItem];

      v29 = [v25 currentResultsSearchInfo];
      LODWORD(v27) = [v29 isSearchAlongRoute];

      v89 = v7;
      v90 = self;
      if (v27)
      {

        v25 = 0;
      }

      v30 = [GEOSearchCategoryStorage alloc];
      v31 = [v25 searchFieldItem];
      v32 = [v31 searchCategory];
      v33 = [v30 initWithSearchCategory:v32];
      [(MapsActivity *)v5 setSearchCategoryStorage:v33];

      v34 = [v25 searchFieldItem];
      v35 = [v34 searchString];
      [(MapsActivity *)v5 setSearchString:v35];

      v88 = v25;
      v36 = [v25 searchInfo];
      v37 = [v36 results];

      v92 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v37, "count")}];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      obj = v37;
      v38 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = 0;
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

            v44 = [*(*(&v105 + 1) + 8 * i) mapItem];
            v45 = v44;
            if (!v40)
            {
              v40 = [v44 name];
            }

            if (v45 == v28 || [v45 _muid] && (v46 = objc_msgSend(v45, "_muid"), v46 == objc_msgSend(v28, "_muid")))
            {
              [(MapsActivity *)v5 setSelectedPlaceIndex:v41];
            }

            v47 = [v45 _geoMapItem];

            if (v47)
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
        v40 = 0;
      }

      v48 = objc_alloc_init(NSMutableArray);
      if ((v3 & 0x10) != 0)
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

              v67 = [*(*(&v93 + 1) + 8 * j) _geoMapItemStorageForPersistence];
              if (v67)
              {
                [v48 addObject:v67];
              }
            }

            v64 = [v57 countByEnumeratingWithState:&v93 objects:v109 count:16];
          }

          while (v64);
        }
      }

      else
      {
        v86 = v3;
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

              v55 = [*(*(&v101 + 1) + 8 * k) _geoMapItem];
              v56 = [v55 _mapItemByStrippingOptionalData];

              if (v56)
              {
                [v49 addObject:v56];
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

        v3 = v86;
        v5 = v87;
      }

      [(MapsActivity *)v5 setSearchPlaces:v48];
      v68 = [(MapsActivity *)v5 searchString];

      if (!v68)
      {
        [(MapsActivity *)v5 setSearchString:v40];
      }

      if (v28)
      {
        [(MapsActivity *)v5 setIsPresentingSelectedPlace:1];
      }

      v69 = +[MapsPinsController sharedController];
      v70 = [v69 droppedPin];

      if (v70)
      {
        [(MapsActivity *)v5 setDroppedPin:v70];
        [(MapsActivity *)v5 setIsDroppedPinPresented:0];
        [(MapsActivity *)v5 setIsDroppedPinSelected:0];
        if (v28)
        {
          [v28 _coordinate];
          v72 = v71;
          v74 = v73;
          v75 = [v70 latLng];
          [v75 lat];
          v77 = v76;
          v78 = [v70 latLng];
          [v78 lng];
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
        if ((v3 & 0x10) != 0)
        {
          v82 = [v28 _geoMapItemStorageForPersistence];
          [(MapsActivity *)v5 setPresentedMapItem:v82];
        }

        else
        {
          v81 = [v28 _geoMapItem];
          v82 = [v81 _mapItemByStrippingOptionalData];

          v83 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v82];
          [(MapsActivity *)v5 setPresentedMapItem:v83];
        }
      }

      v7 = v89;
      self = v90;
    }

    if ((v3 & 0xC) != 0)
    {
      v84 = [(AppStateManager *)self directionsPlanWithFidelity:v3];
      [(MapsActivity *)v5 setDirectionsPlan:v84];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)openCommuteEntry:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening commute entry: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v7 = [WeakRetained baseActionCoordinator];
  [v7 viewController:0 openCommuteEntry:v4];
}

- (void)openTransitIncidents:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening transit incident: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v7 = [WeakRetained baseActionCoordinator];
  [v7 viewController:0 openTransitIncidents:v4 fromView:0 withUserInfo:0];
}

- (void)openMapsSuggestion:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening suggestion: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v7 = [WeakRetained baseActionCoordinator];
  [v7 viewController:0 openMapsSuggestionEntry:v4 withUserInfo:0];
}

- (void)openSearchWithQuery:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "opening search with query: %@", &v9, 0xCu);
  }

  v6 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v6 setSearchString:v4];
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v8 = [WeakRetained baseActionCoordinator];
  [v8 viewController:0 doSearchItem:v6 withUserInfo:0];
}

- (AppStateManager)initWithPlatformController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AppStateManager;
  v6 = [(AppStateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, a3);
    v7->_defaultZoomLevel = GEOConfigGetUInteger();
  }

  return v7;
}

@end