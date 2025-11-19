@interface GuidanceObserver
- (GuidanceObserver)init;
- (NSMutableDictionary)classicSignIDs;
- (id)_orderedUpdateKinds;
- (id)_signRepeatableUpdateKeys;
- (void)_clearAllGuidance;
- (void)_eachGuidanceOutput:(id)a3 ignorePaused:(BOOL)a4;
- (void)_performRepeatableUpdateForKey:(id)a3 onEachGuidanceOutput:(id)a4;
- (void)_prepareForActiveNavigationIfNeeded;
- (void)_processARInfosUpdate:(id)a3;
- (void)_processHideJunctionViewInfo;
- (void)_processHideLaneInfo;
- (void)_processPendingUpdates;
- (void)_processShowJunctionViewInfo:(id)a3;
- (void)_processShowLaneInfo:(id)a3;
- (void)_processSignInfo:(id)a3;
- (void)_processUsePersistentDisplay;
- (void)_repeatAllUpdates;
- (void)_repeatAllUpdatesWithTarget:(id)a3 selector:(SEL)a4;
- (void)_tearDownNavigationIfNeeded;
- (void)_updateArrivalStateWithService:(id)a3;
- (void)_updateDestinationDisplayName;
- (void)_updateDisplayETA;
- (void)addOutlet:(id)a3;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10;
- (void)navigationService:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8;
- (void)navigationService:(id)a3 failedRerouteWithErrorCode:(int64_t)a4;
- (void)navigationService:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showJunctionView:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceDidCancelReroute:(id)a3;
- (void)navigationServiceDidHideSecondaryStep:(id)a3;
- (void)navigationServiceWillReroute:(id)a3;
- (void)pauseUpdates;
- (void)removeOutlet:(id)a3;
- (void)repeatAllUpdatesForOutlet:(id)a3;
- (void)resumeUpdates;
- (void)setCurrentArrivalState:(unint64_t)a3;
@end

@implementation GuidanceObserver

- (GuidanceObserver)init
{
  v11.receiver = self;
  v11.super_class = GuidanceObserver;
  v2 = [(GuidanceObserver *)&v11 init];
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) init", buf, 0xCu);
    }

    v4 = +[NSHashTable weakObjectsHashTable];
    outlets = v2->_outlets;
    v2->_outlets = v4;

    v6 = +[NSMutableDictionary dictionary];
    guidanceUpdates = v2->_guidanceUpdates;
    v2->_guidanceUpdates = v6;

    [(GuidanceObserver *)v2 _prepareForActiveNavigationIfNeeded];
    v8 = +[MNNavigationService sharedService];
    [v8 registerObserver:v2];

    v9 = +[MNNavigationService sharedService];
    v2->_currentArrivalState = [v9 arrivalState];
  }

  return v2;
}

- (void)_prepareForActiveNavigationIfNeeded
{
  v5 = +[MNNavigationService sharedService];
  if ([v5 isInNavigatingState])
  {
    if (!self->_destinationDisplayName)
    {
      [(GuidanceObserver *)self _updateDestinationDisplayName];
    }

    v3 = +[UIScreen mainScreen];
    v4 = [v3 currentMode];
    [v4 size];
    [NavJunctionViewController updateJunctionImageSizeForScreenSize:?];
  }

  else
  {
    [(GuidanceObserver *)self _tearDownNavigationIfNeeded];
  }
}

- (void)_tearDownNavigationIfNeeded
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 isInNavigatingState];

  if ((v4 & 1) == 0)
  {
    destinationDisplayName = self->_destinationDisplayName;
    self->_destinationDisplayName = 0;

    [(GuidanceObserver *)self _clearAllGuidance];
  }
}

- (void)_clearAllGuidance
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) _clearAllGuidance", &v8, 0xCu);
  }

  [(NSMutableDictionary *)self->_guidanceUpdates removeAllObjects];
  currentLaneInfo = self->_currentLaneInfo;
  self->_currentLaneInfo = 0;

  currentJunctionViewInfo = self->_currentJunctionViewInfo;
  self->_currentJunctionViewInfo = 0;

  currentSignInfo = self->_currentSignInfo;
  self->_currentSignInfo = 0;

  currentARInfos = self->_currentARInfos;
  self->_currentARInfos = 0;

  self->_needsUpdate = 0;
  *&self->_secondarySignVisible = 0;
}

- (void)_updateDisplayETA
{
  v3 = +[MNNavigationService sharedService];
  if ([v3 navigationState] == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = [GuidanceETA alloc];
    v6 = [v3 displayEtaInfo];
    v7 = [v3 remainingDistanceInfo];
    v8 = [v3 batteryChargeInfo];
    v9 = [v3 upcomingStop];
    v10 = [v9 timezone];
    v4 = -[GuidanceETA initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:](v5, "initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:", v6, v7, v8, v10, [v3 navigationTransportType]);
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "(%@) _updateDisplayETA to: %@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D6F4;
  v13[3] = &unk_101656E80;
  v14 = v4;
  v12 = v4;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"remainingTotalTimeAndDistance" onEachGuidanceOutput:v13];
}

- (void)_processPendingUpdates
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_processPendingUpdates (%@)", &v9, 0xCu);
  }

  if (self->_needsUpdate)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentSignInfo = self->_currentSignInfo;
      v9 = 138412290;
      v10 = currentSignInfo;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_processSignInfo: %@", &v9, 0xCu);
    }

    [(GuidanceObserver *)self _processSignInfo:self->_currentSignInfo];
    if (self->_currentLaneInfo)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        currentLaneInfo = self->_currentLaneInfo;
        v9 = 138412290;
        v10 = currentLaneInfo;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_processShowLaneInfo: %@", &v9, 0xCu);
      }

      [(GuidanceObserver *)self _processShowLaneInfo:self->_currentLaneInfo];
    }

    else if (self->_shouldHideLaneGuidanceThisUpdate)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_processHideLaneInfo", &v9, 2u);
      }

      [(GuidanceObserver *)self _processHideLaneInfo];
      self->_shouldHideLaneGuidanceThisUpdate = 0;
    }

    if (self->_needsJunctionViewUpdate)
    {
      if (self->_currentJunctionViewInfo)
      {
        [(GuidanceObserver *)self _processShowJunctionViewInfo:?];
      }

      else if (self->_shouldHideJunctionViewThisUpdate)
      {
        [(GuidanceObserver *)self _processHideJunctionViewInfo];
        self->_shouldHideJunctionViewThisUpdate = 0;
      }
    }

    [(GuidanceObserver *)self _processUsePersistentDisplay];
    if (self->_needsARInfosUpdate)
    {
      [(GuidanceObserver *)self _processARInfosUpdate:self->_currentARInfos];
    }

    *&self->_needsUpdate = 0;
    self->_needsARInfosUpdate = 0;
  }
}

- (id)_signRepeatableUpdateKeys
{
  v4[0] = @"recalculating";
  v4[1] = @"primaryOrProceedToRouteManeuver";
  v4[2] = @"secondaryManeuver";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_processUsePersistentDisplay
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007C508;
  v3[3] = &unk_101656F28;
  objc_copyWeak(&v4, &location);
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"usePersistentDisplay" onEachGuidanceOutput:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)navigationServiceDidHideSecondaryStep:(id)a3
{
  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_1016570E0];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"secondaryManeuver"];
}

- (void)navigationService:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8
{
  v8 = *&a8;
  v10 = *&a6;
  v13 = a4;
  v14 = a7;
  v15 = a5;
  v16 = [(GuidanceObserver *)self classicSignIDs];
  v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 stepID]);
  v18 = [v16 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v19 = +[NSUUID UUID];
    v20 = [(GuidanceObserver *)self classicSignIDs];
    v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 stepID]);
    [v20 setObject:v19 forKeyedSubscript:v21];
  }

  if ([v13 junctionElements])
  {
    v22 = [[MKJunction alloc] initWithType:objc_msgSend(v13 maneuver:"junctionType") drivingSide:objc_msgSend(v13 elements:"maneuverType") count:{v8, objc_msgSend(v13, "junctionElements"), objc_msgSend(v13, "junctionElementsCount")}];
  }

  else
  {
    v22 = 0;
  }

  v23 = [GuidanceManeuverArtwork alloc];
  v24 = [v13 maneuverType];
  v25 = [v13 artworkOverride];
  v26 = [(GuidanceManeuverArtwork *)v23 initWithManeuver:v24 junction:v22 drivingSide:v8 artworkDataSource:v25];

  v27 = sub_100021DB0(v15, &stru_1016570C0);

  v28 = [NavSignShieldInfo shieldWithID:v10 stringID:0 text:v14];

  v29 = [NavSignManeuverGuidanceInfo alloc];
  v30 = [(GuidanceObserver *)self classicSignIDs];
  v31 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 stepID]);
  v32 = [v30 objectForKeyedSubscript:v31];
  v33 = [(NavSignManeuverGuidanceInfo *)v29 initWithSignID:v32 maneuverArtwork:v26 majorTextAlternatives:0 minorTextAlternatives:v27 shieldInfo:v28];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100E88D38;
  v35[3] = &unk_101656E80;
  v36 = v33;
  v34 = v33;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"secondaryManeuver" onEachGuidanceOutput:v35];
}

- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E88DC0;
  v4[3] = &unk_101656D90;
  v4[4] = a4;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"announcementStage" onEachGuidanceOutput:v4];
}

- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10
{
  v10 = *&a8;
  v14 = a4;
  self->_usingSignInfo = 0;
  v15 = a7;
  v16 = a5;
  v17 = [(GuidanceObserver *)self classicSignIDs];
  v18 = [NSNumber numberWithUnsignedInteger:a9];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (!v19)
  {
    v20 = +[NSUUID UUID];
    v21 = [(GuidanceObserver *)self classicSignIDs];
    v22 = [NSNumber numberWithUnsignedInteger:a9];
    [v21 setObject:v20 forKeyedSubscript:v22];
  }

  if ([v14 junctionElements])
  {
    v23 = [[MKJunction alloc] initWithType:objc_msgSend(v14 maneuver:"junctionType") drivingSide:objc_msgSend(v14 elements:"maneuverType") count:{v10, objc_msgSend(v14, "junctionElements"), objc_msgSend(v14, "junctionElementsCount")}];
  }

  else
  {
    v23 = 0;
  }

  v24 = [GuidanceManeuverArtwork alloc];
  v25 = [v14 maneuverType];
  v26 = [v14 artworkOverride];
  v27 = [(GuidanceManeuverArtwork *)v24 initWithManeuver:v25 junction:v23 drivingSide:v10 artworkDataSource:v26];

  v28 = sub_100021DB0(v16, &stru_101657078);

  v29 = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:v29];

  v30 = [NavSignShieldInfo shieldWithID:a6 stringID:0 text:v15];

  v31 = [NavSignManeuverGuidanceInfo alloc];
  v32 = [(GuidanceObserver *)self classicSignIDs];
  v33 = [NSNumber numberWithUnsignedInteger:a9];
  v34 = [v32 objectForKeyedSubscript:v33];
  v35 = [(NavSignManeuverGuidanceInfo *)v31 initWithSignID:v34 maneuverArtwork:v27 majorTextAlternatives:0 minorTextAlternatives:v28 shieldInfo:v30];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100E8910C;
  v38[3] = &unk_1016570A0;
  v39 = v35;
  v40 = a9;
  v36 = v35;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v38];
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = [v10 route];
  v12 = [v11 steps];
  v13 = [v12 count];

  if (v13 > a6)
  {
    v14 = [v10 route];
    v15 = [v14 steps];
    v16 = [v15 objectAtIndexedSubscript:a6];

    v17 = [v16 contentsForContext:1];
    v18 = [v17 stringForDistance:a4];
    v19 = [v18 mkServerFormattedString];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100E892A8;
    v22[3] = &unk_101657058;
    v25 = a5;
    v26 = a4;
    v23 = v19;
    v24 = v16;
    v27 = a6;
    v20 = v16;
    v21 = v19;
    [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"remainingManeuverTimeAndDistance" onEachGuidanceOutput:v22];
  }
}

- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = +[MNNavigationService sharedService];
  v13 = [v12 navigationState];

  if (v13 != 5)
  {
    [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"recalculating"];
    [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"remainingManeuverTimeAndDistance"];
    v14 = [v10 route];
    v15 = [v14 steps];
    v16 = [v15 count];

    if (v16 > a6)
    {
      v17 = [v10 route];
      v18 = [v17 steps];
      v19 = [v18 objectAtIndexedSubscript:a6];

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E89458;
      v21[3] = &unk_101657030;
      v24 = a4;
      v22 = v11;
      v23 = v19;
      v20 = v19;
      [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v21];
    }
  }
}

- (void)navigationService:(id)a3 hideJunctionViewForId:(id)a4
{
  if (a4)
  {
    currentJunctionViewInfo = self->_currentJunctionViewInfo;
    self->_currentJunctionViewInfo = 0;

    self->_shouldHideJunctionViewThisUpdate = 1;
    *&self->_needsUpdate = 257;
  }
}

- (void)navigationService:(id)a3 showJunctionView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    currentJunctionViewInfo = self->_currentJunctionViewInfo;
    if (currentJunctionViewInfo != v7)
    {
      v9 = [(MNGuidanceJunctionViewInfo *)currentJunctionViewInfo uniqueID];
      v10 = [(MNGuidanceJunctionViewInfo *)v7 uniqueID];
      v11 = [v9 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        objc_storeStrong(&self->_currentJunctionViewInfo, a4);
        self->_shouldHideJunctionViewThisUpdate = 0;
        *&self->_needsUpdate = 257;
      }
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No junction view info received from nav service.", v13, 2u);
    }
  }
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  if (a4)
  {
    currentLaneInfo = self->_currentLaneInfo;
    self->_currentLaneInfo = 0;

    self->_shouldHideLaneGuidanceThisUpdate = 1;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v6 = a4;
  if (v6 && self->_currentLaneInfo != v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_currentLaneInfo, a4);
    v6 = v7;
    self->_shouldHideLaneGuidanceThisUpdate = 0;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  [(GuidanceObserver *)self _updateArrivalStateWithService:a3, a4, a5, a6];
  [(GuidanceObserver *)self _updateDisplayETA];

  [(GuidanceObserver *)self _removeAllRepeatableUpdates];
}

- (void)_updateArrivalStateWithService:(id)a3
{
  v4 = [a3 arrivalState];

  [(GuidanceObserver *)self setCurrentArrivalState:v4];
}

- (void)navigationService:(id)a3 updateSignsWithARInfo:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_100021DB0(v5, &stru_101657008);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got AR guidance infos: %@", &v10, 0xCu);
    }

    v8 = [v5 copy];
    currentARInfos = self->_currentARInfos;
    self->_currentARInfos = v8;

    self->_needsARInfosUpdate = 1;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v6 = a4;
  if (v6)
  {
    self->_usingSignInfo = 1;
    v7 = v6;
    objc_storeStrong(&self->_currentSignInfo, a4);
    v6 = v7;
    self->_needsUpdate = 1;
  }
}

- (void)navigationServiceDidCancelReroute:(id)a3
{
  v4 = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:v4];

  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656FC8];
}

- (void)navigationService:(id)a3 failedRerouteWithErrorCode:(int64_t)a4
{
  v5 = [(GuidanceObserver *)self _signRepeatableUpdateKeys:a3];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:v5];

  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656FA8];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  [(GuidanceObserver *)self setClassicSignIDs:v9];

  [(GuidanceObserver *)self _updateDestinationDisplayName];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E89B68;
  v10[3] = &unk_101656F28;
  objc_copyWeak(&v11, &location);
  [(GuidanceObserver *)self _eachGuidanceOutput:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)navigationServiceWillReroute:(id)a3
{
  v4 = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:v4];

  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"recalculating" onEachGuidanceOutput:&stru_101656F88];
}

- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E89CEC;
  v4[3] = &unk_101656F68;
  v5 = a4;
  [(GuidanceObserver *)self _eachGuidanceOutput:v4];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = a3;
  if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {
    [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656F48];
    [(GuidanceObserver *)self _removeAllRepeatableUpdates];
    [(GuidanceObserver *)self _tearDownNavigationIfNeeded];
    [(NSHashTable *)self->_outlets removeAllObjects];
  }

  [(GuidanceObserver *)self _updateArrivalStateWithService:v6];
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(GuidanceObserver *)self _prepareForActiveNavigationIfNeeded];
  }
}

- (void)_updateDestinationDisplayName
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 route];
  v5 = [v4 legIndexForStepIndex:{objc_msgSend(v3, "stepIndex")}];
  v6 = [v4 legs];
  v7 = [v6 count];
  v8 = [v4 legs];
  v9 = v8;
  if (v5 >= v7)
  {
    [v8 lastObject];
  }

  else
  {
    [v8 objectAtIndexedSubscript:v5];
  }
  v10 = ;

  v11 = [v10 destination];
  v12 = [v11 navDisplayName];

  p_destinationDisplayName = &self->_destinationDisplayName;
  v14 = self->_destinationDisplayName;
  v15 = v12;
  if (v15 | v14)
  {
    v17 = [v14 isEqual:v15];

    objc_storeStrong(&self->_destinationDisplayName, v12);
    if ((v17 & 1) == 0)
    {
      [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"destinationDisplayName"];
      objc_initWeak(&location, self);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E8A048;
      v18[3] = &unk_101656F28;
      objc_copyWeak(&v19, &location);
      [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"destinationDisplayName" onEachGuidanceOutput:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v16 = *p_destinationDisplayName;
    *p_destinationDisplayName = 0;
  }
}

- (void)_processARInfosUpdate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A148;
  v5[3] = &unk_101656E80;
  v6 = a3;
  v4 = v6;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"ARSignInfos" onEachGuidanceOutput:v5];
}

- (void)_processHideJunctionViewInfo
{
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"hideJunctionViewInfo" onEachGuidanceOutput:&stru_101656F00];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"showJunctionViewInfo"];
}

- (void)_processShowJunctionViewInfo:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A2F4;
  v5[3] = &unk_101656E80;
  v6 = a3;
  v4 = v6;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"showJunctionViewInfo" onEachGuidanceOutput:v5];
  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"hideJunctionViewInfo"];
}

- (void)_processHideLaneInfo
{
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"hideLaneGuidanceInfo" onEachGuidanceOutput:&stru_101656EE0];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"showLaneGuidanceInfo"];
}

- (void)_processShowLaneInfo:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A4BC;
  v5[3] = &unk_101656E80;
  v6 = a3;
  v4 = v6;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"showLaneGuidanceInfo" onEachGuidanceOutput:v5];
  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"hideLaneGuidanceInfo"];
}

- (void)_processSignInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 primarySign];
    if (v6)
    {
    }

    else
    {
      v7 = [v5 secondarySign];

      if (!v7)
      {
        goto LABEL_22;
      }
    }

    v110 = +[MNNavigationService sharedService];
    v8 = [v5 primarySign];
    v9 = [v8 junction];
    v116 = self;
    if ([v9 numElements])
    {
      v10 = [MKJunction alloc];
      v11 = [v5 primarySign];
      v12 = [v11 junction];
      v13 = [v10 initWithJunction:v12];
    }

    else
    {
      v13 = 0;
    }

    v117 = [GuidanceManeuverArtwork alloc];
    v14 = [v5 primarySign];
    v15 = [v14 junction];
    v16 = [v15 maneuverType];
    v17 = [v5 primarySign];
    v18 = [v17 junction];
    v19 = [v18 drivingSide];
    v20 = [v5 primarySign];
    v21 = [v20 artworkOverride];
    v113 = v13;
    v118 = [(GuidanceManeuverArtwork *)v117 initWithManeuver:v16 junction:v13 drivingSide:v19 artworkDataSource:v21];

    v22 = [v5 primarySign];
    v23 = [v22 primaryStrings];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [v5 primarySign];
      v26 = [v25 primaryStrings];
      v115 = sub_100021DB0(v26, &stru_101656DD0);

      v27 = [v5 primarySign];
      v28 = [v27 secondaryStrings];
      v114 = sub_100021DB0(v28, &stru_101656DF0);
    }

    else
    {
      v29 = [MKServerFormattedStringParameters alloc];
      v30 = [v5 primarySign];
      v31 = [v30 distanceDetailLevel];
      v32 = [v5 primarySign];
      v33 = [v32 variableOverrides];
      v34 = [v29 initWithInstructionsDistanceDetailLevel:v31 variableOverrides:v33];

      v35 = [v5 primarySign];
      v36 = [v35 titles];
      v130[0] = _NSConcreteStackBlock;
      v130[1] = 3221225472;
      v130[2] = sub_100E8B06C;
      v130[3] = &unk_10165CBB8;
      v37 = v34;
      v131 = v37;
      v115 = sub_100021DB0(v36, v130);

      v38 = [v5 primarySign];
      v39 = [v38 details];
      v128[0] = _NSConcreteStackBlock;
      v128[1] = 3221225472;
      v128[2] = sub_100E8B0D4;
      v128[3] = &unk_10165CBB8;
      v129 = v37;
      v27 = v37;
      v114 = sub_100021DB0(v39, v128);
    }

    v40 = [(GuidanceObserver *)v116 _signRepeatableUpdateKeys];
    [(GuidanceObserver *)v116 _removeAllRepeatableUpdatesForKeys:v40];

    v41 = [v5 primarySign];
    v42 = [v41 shieldID];
    v43 = [v5 primarySign];
    v44 = [v43 shieldStringID];
    v45 = [v5 primarySign];
    v46 = [v45 shieldText];
    v47 = [NavSignShieldInfo shieldWithID:v42 stringID:v44 text:v46];

    v48 = [NavSignManeuverGuidanceInfo alloc];
    v49 = [v5 primarySign];
    v50 = [v49 uniqueID];
    v51 = v114;
    v112 = v47;
    v52 = [(NavSignManeuverGuidanceInfo *)v48 initWithSignID:v50 maneuverArtwork:v118 majorTextAlternatives:v115 minorTextAlternatives:v114 shieldInfo:v47];

    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_100E8B13C;
    v125[3] = &unk_101656E18;
    v53 = v52;
    v126 = v53;
    v54 = v110;
    v127 = v54;
    [(GuidanceObserver *)v116 _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v125];
    v55 = [v5 secondarySign];

    if (v55)
    {
      v109 = v53;
      v111 = v54;
      v56 = [v5 secondarySign];
      v57 = [v56 junction];
      if ([v57 numElements])
      {
        v58 = [MKJunction alloc];
        v59 = [v5 secondarySign];
        v60 = [v59 junction];
        v61 = [v58 initWithJunction:v60];
      }

      else
      {
        v61 = 0;
      }

      v107 = [GuidanceManeuverArtwork alloc];
      v65 = [v5 secondarySign];
      v66 = [v65 junction];
      v67 = [v66 maneuverType];
      v68 = [v5 secondarySign];
      v69 = [v68 junction];
      v70 = [v69 drivingSide];
      v71 = [v5 secondarySign];
      v72 = [v71 artworkOverride];
      v73 = v107;
      v108 = v61;
      v106 = [(GuidanceManeuverArtwork *)v73 initWithManeuver:v67 junction:v61 drivingSide:v70 artworkDataSource:v72];

      v74 = [v5 secondarySign];
      v75 = [v74 primaryStrings];
      v76 = [v75 count];

      if (v76)
      {
        v77 = [v5 secondarySign];
        v78 = [v77 primaryStrings];
        v105 = sub_100021DB0(v78, &stru_101656E38);

        v79 = [v5 secondarySign];
        v80 = [v79 secondaryStrings];
        v81 = sub_100021DB0(v80, &stru_101656E58);
      }

      else
      {
        v82 = [MKServerFormattedStringParameters alloc];
        v83 = [v5 secondarySign];
        v84 = [v83 distanceDetailLevel];
        v85 = [v5 secondarySign];
        v86 = [v85 variableOverrides];
        v87 = [v82 initWithInstructionsDistanceDetailLevel:v84 variableOverrides:v86];

        v88 = [v5 secondarySign];
        v89 = [v88 titles];
        v123[0] = _NSConcreteStackBlock;
        v123[1] = 3221225472;
        v123[2] = sub_100E8B198;
        v123[3] = &unk_10165CBB8;
        v90 = v87;
        v124 = v90;
        v105 = sub_100021DB0(v89, v123);

        v91 = [v5 secondarySign];
        v92 = [v91 details];
        v121[0] = _NSConcreteStackBlock;
        v121[1] = 3221225472;
        v121[2] = sub_100E8B200;
        v121[3] = &unk_10165CBB8;
        v122 = v90;
        v79 = v90;
        v81 = sub_100021DB0(v92, v121);

        v80 = v124;
      }

      v93 = [v5 secondarySign];
      v94 = [v93 shieldID];
      v95 = [v5 secondarySign];
      v96 = [v95 shieldStringID];
      v97 = [v5 secondarySign];
      v98 = [v97 shieldText];
      v99 = [NavSignShieldInfo shieldWithID:v94 stringID:v96 text:v98];

      v100 = [NavSignManeuverGuidanceInfo alloc];
      v63 = v5;
      v101 = [v5 secondarySign];
      v102 = [v101 uniqueID];
      v103 = [(NavSignManeuverGuidanceInfo *)v100 initWithSignID:v102 maneuverArtwork:v106 majorTextAlternatives:v105 minorTextAlternatives:v81 shieldInfo:v99];

      v116->_secondarySignVisible = 1;
      v119[0] = _NSConcreteStackBlock;
      v119[1] = 3221225472;
      v119[2] = sub_100E8B268;
      v119[3] = &unk_101656E80;
      v120 = v103;
      v104 = v103;
      [(GuidanceObserver *)v116 _performRepeatableUpdateForKey:@"secondaryManeuver" onEachGuidanceOutput:v119];

      v64 = v113;
      v51 = v114;
      v62 = v115;
      v53 = v109;
      v54 = v111;
    }

    else
    {
      v62 = v115;
      v63 = v5;
      v64 = v113;
      if (v116->_secondarySignVisible)
      {
        v116->_secondarySignVisible = 0;
        [(GuidanceObserver *)v116 _eachGuidanceOutput:&stru_101656EC0];
        [(GuidanceObserver *)v116 _removeRepeatableUpdateForKey:@"secondaryManeuver"];
      }
    }

    v5 = v63;
  }

LABEL_22:
}

- (void)resumeUpdates
{
  if (self->_paused)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) resumeUpdates", &v4, 0xCu);
    }

    self->_paused = 0;
    [(GuidanceObserver *)self _repeatAllUpdates];
  }
}

- (void)pauseUpdates
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) pauseUpdates", &v4, 0xCu);
  }

  self->_paused = 1;
}

- (void)_repeatAllUpdates
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) _repeatAllUpdates", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(GuidanceObserver *)self _orderedUpdateKinds];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [(GuidanceObserver *)self _eachGuidanceOutput:v9 ignorePaused:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_repeatAllUpdatesWithTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(GuidanceObserver *)self _orderedUpdateKinds];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        v13 = v12;
        if (v12)
        {
          v14 = objc_retainBlock(v12);
          [v6 performSelector:a4 withObject:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)repeatAllUpdatesForOutlet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(GuidanceObserver *)self _orderedUpdateKinds];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
          v11 = v10;
          if (v10)
          {
            (*(v10 + 16))(v10, v4);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:@"secondaryManeuver"];

    if (!v12)
    {
      [v4 hideSecondaryManeuver];
    }
  }
}

- (void)_eachGuidanceOutput:(id)a3 ignorePaused:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_paused || v4)
  {
    v8 = [(NSHashTable *)self->_outlets copy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v6[2](v6, *(*(&v14 + 1) + 8 * v13));
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_performRepeatableUpdateForKey:(id)a3 onEachGuidanceOutput:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GuidanceObserver *)self _eachGuidanceOutput:v6];
  v8 = [v6 copy];

  [(NSMutableDictionary *)self->_guidanceUpdates setObject:v8 forKeyedSubscript:v7];
}

- (id)_orderedUpdateKinds
{
  if (qword_10195F450 != -1)
  {
    dispatch_once(&qword_10195F450, &stru_101656DB0);
  }

  v3 = qword_10195F448;

  return v3;
}

- (void)removeOutlet:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) removing outlet: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_outlets removeObject:v4];
}

- (void)addOutlet:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) adding outlet: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_outlets addObject:v4];
}

- (void)setCurrentArrivalState:(unint64_t)a3
{
  if (self->_currentArrivalState != a3)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = self->_currentArrivalState - 1;
      if (v6 > 4)
      {
        v7 = @"Unavailable";
      }

      else
      {
        v7 = *(&off_101631088 + v6);
      }

      v8 = v7;
      if (a3 - 1 > 4)
      {
        v9 = @"Unavailable";
      }

      else
      {
        v9 = *(&off_101631088 + a3 - 1);
      }

      v10 = v9;
      *buf = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) will update arrival state from: %@ to: %@", buf, 0x20u);
    }

    self->_currentArrivalState = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E8C050;
    v11[3] = &unk_101656D90;
    v11[4] = a3;
    [(GuidanceObserver *)self _eachGuidanceOutput:v11];
    if (a3 - 4 >= 2)
    {
      if (a3 == 1)
      {
        [(GuidanceObserver *)self _updateDestinationDisplayName];
        [(GuidanceObserver *)self _updateDisplayETA];
      }
    }

    else
    {
      [(GuidanceObserver *)self _removeAllRepeatableUpdates];
    }
  }
}

- (NSMutableDictionary)classicSignIDs
{
  classicSignIDs = self->_classicSignIDs;
  if (!classicSignIDs)
  {
    v4 = objc_opt_new();
    v5 = self->_classicSignIDs;
    self->_classicSignIDs = v4;

    classicSignIDs = self->_classicSignIDs;
  }

  return classicSignIDs;
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) dealloc", buf, 0xCu);
  }

  [(GuidanceObserver *)self _tearDownNavigationIfNeeded];
  v4 = +[MNNavigationService sharedService];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = GuidanceObserver;
  [(GuidanceObserver *)&v5 dealloc];
}

@end