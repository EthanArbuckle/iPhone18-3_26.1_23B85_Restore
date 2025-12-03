@interface GuidanceObserver
- (GuidanceObserver)init;
- (NSMutableDictionary)classicSignIDs;
- (id)_orderedUpdateKinds;
- (id)_signRepeatableUpdateKeys;
- (void)_clearAllGuidance;
- (void)_eachGuidanceOutput:(id)output ignorePaused:(BOOL)paused;
- (void)_performRepeatableUpdateForKey:(id)key onEachGuidanceOutput:(id)output;
- (void)_prepareForActiveNavigationIfNeeded;
- (void)_processARInfosUpdate:(id)update;
- (void)_processHideJunctionViewInfo;
- (void)_processHideLaneInfo;
- (void)_processPendingUpdates;
- (void)_processShowJunctionViewInfo:(id)info;
- (void)_processShowLaneInfo:(id)info;
- (void)_processSignInfo:(id)info;
- (void)_processUsePersistentDisplay;
- (void)_repeatAllUpdates;
- (void)_repeatAllUpdatesWithTarget:(id)target selector:(SEL)selector;
- (void)_tearDownNavigationIfNeeded;
- (void)_updateArrivalStateWithService:(id)service;
- (void)_updateDestinationDisplayName;
- (void)_updateDisplayETA;
- (void)addOutlet:(id)outlet;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0;
- (void)navigationService:(id)service displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side;
- (void)navigationService:(id)service failedRerouteWithErrorCode:(int64_t)code;
- (void)navigationService:(id)service hideJunctionViewForId:(id)id;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showJunctionView:(id)view;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithARInfo:(id)info;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceDidCancelReroute:(id)reroute;
- (void)navigationServiceDidHideSecondaryStep:(id)step;
- (void)navigationServiceWillReroute:(id)reroute;
- (void)pauseUpdates;
- (void)removeOutlet:(id)outlet;
- (void)repeatAllUpdatesForOutlet:(id)outlet;
- (void)resumeUpdates;
- (void)setCurrentArrivalState:(unint64_t)state;
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
    currentMode = [v3 currentMode];
    [currentMode size];
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
  isInNavigatingState = [v3 isInNavigatingState];

  if ((isInNavigatingState & 1) == 0)
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
    selfCopy = self;
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
    displayEtaInfo = [v3 displayEtaInfo];
    remainingDistanceInfo = [v3 remainingDistanceInfo];
    batteryChargeInfo = [v3 batteryChargeInfo];
    upcomingStop = [v3 upcomingStop];
    timezone = [upcomingStop timezone];
    v4 = -[GuidanceETA initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:](v5, "initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:", displayEtaInfo, remainingDistanceInfo, batteryChargeInfo, timezone, [v3 navigationTransportType]);
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_processPendingUpdates (%@)", &v9, 0xCu);
  }

  if (self->_needsUpdate)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentSignInfo = self->_currentSignInfo;
      v9 = 138412290;
      selfCopy = currentSignInfo;
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
        selfCopy = currentLaneInfo;
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

- (void)navigationServiceDidHideSecondaryStep:(id)step
{
  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_1016570E0];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"secondaryManeuver"];
}

- (void)navigationService:(id)service displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side
{
  v8 = *&side;
  v10 = *&type;
  stepCopy = step;
  textCopy = text;
  instructionsCopy = instructions;
  classicSignIDs = [(GuidanceObserver *)self classicSignIDs];
  v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [stepCopy stepID]);
  v18 = [classicSignIDs objectForKeyedSubscript:v17];

  if (!v18)
  {
    v19 = +[NSUUID UUID];
    classicSignIDs2 = [(GuidanceObserver *)self classicSignIDs];
    v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [stepCopy stepID]);
    [classicSignIDs2 setObject:v19 forKeyedSubscript:v21];
  }

  if ([stepCopy junctionElements])
  {
    v22 = [[MKJunction alloc] initWithType:objc_msgSend(stepCopy maneuver:"junctionType") drivingSide:objc_msgSend(stepCopy elements:"maneuverType") count:{v8, objc_msgSend(stepCopy, "junctionElements"), objc_msgSend(stepCopy, "junctionElementsCount")}];
  }

  else
  {
    v22 = 0;
  }

  v23 = [GuidanceManeuverArtwork alloc];
  maneuverType = [stepCopy maneuverType];
  artworkOverride = [stepCopy artworkOverride];
  v26 = [(GuidanceManeuverArtwork *)v23 initWithManeuver:maneuverType junction:v22 drivingSide:v8 artworkDataSource:artworkOverride];

  v27 = sub_100021DB0(instructionsCopy, &stru_1016570C0);

  v28 = [NavSignShieldInfo shieldWithID:v10 stringID:0 text:textCopy];

  v29 = [NavSignManeuverGuidanceInfo alloc];
  classicSignIDs3 = [(GuidanceObserver *)self classicSignIDs];
  v31 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [stepCopy stepID]);
  v32 = [classicSignIDs3 objectForKeyedSubscript:v31];
  v33 = [(NavSignManeuverGuidanceInfo *)v29 initWithSignID:v32 maneuverArtwork:v26 majorTextAlternatives:0 minorTextAlternatives:v27 shieldInfo:v28];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100E88D38;
  v35[3] = &unk_101656E80;
  v36 = v33;
  v34 = v33;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"secondaryManeuver" onEachGuidanceOutput:v35];
}

- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E88DC0;
  v4[3] = &unk_101656D90;
  v4[4] = stage;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"announcementStage" onEachGuidanceOutput:v4];
}

- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0
{
  v10 = *&side;
  stepCopy = step;
  self->_usingSignInfo = 0;
  textCopy = text;
  instructionsCopy = instructions;
  classicSignIDs = [(GuidanceObserver *)self classicSignIDs];
  v18 = [NSNumber numberWithUnsignedInteger:index];
  v19 = [classicSignIDs objectForKeyedSubscript:v18];

  if (!v19)
  {
    v20 = +[NSUUID UUID];
    classicSignIDs2 = [(GuidanceObserver *)self classicSignIDs];
    v22 = [NSNumber numberWithUnsignedInteger:index];
    [classicSignIDs2 setObject:v20 forKeyedSubscript:v22];
  }

  if ([stepCopy junctionElements])
  {
    v23 = [[MKJunction alloc] initWithType:objc_msgSend(stepCopy maneuver:"junctionType") drivingSide:objc_msgSend(stepCopy elements:"maneuverType") count:{v10, objc_msgSend(stepCopy, "junctionElements"), objc_msgSend(stepCopy, "junctionElementsCount")}];
  }

  else
  {
    v23 = 0;
  }

  v24 = [GuidanceManeuverArtwork alloc];
  maneuverType = [stepCopy maneuverType];
  artworkOverride = [stepCopy artworkOverride];
  v27 = [(GuidanceManeuverArtwork *)v24 initWithManeuver:maneuverType junction:v23 drivingSide:v10 artworkDataSource:artworkOverride];

  v28 = sub_100021DB0(instructionsCopy, &stru_101657078);

  _signRepeatableUpdateKeys = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:_signRepeatableUpdateKeys];

  v30 = [NavSignShieldInfo shieldWithID:type stringID:0 text:textCopy];

  v31 = [NavSignManeuverGuidanceInfo alloc];
  classicSignIDs3 = [(GuidanceObserver *)self classicSignIDs];
  v33 = [NSNumber numberWithUnsignedInteger:index];
  v34 = [classicSignIDs3 objectForKeyedSubscript:v33];
  v35 = [(NavSignManeuverGuidanceInfo *)v31 initWithSignID:v34 maneuverArtwork:v27 majorTextAlternatives:0 minorTextAlternatives:v28 shieldInfo:v30];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100E8910C;
  v38[3] = &unk_1016570A0;
  v39 = v35;
  indexCopy = index;
  v36 = v35;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v38];
}

- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index
{
  serviceCopy = service;
  route = [serviceCopy route];
  steps = [route steps];
  v13 = [steps count];

  if (v13 > index)
  {
    route2 = [serviceCopy route];
    steps2 = [route2 steps];
    v16 = [steps2 objectAtIndexedSubscript:index];

    v17 = [v16 contentsForContext:1];
    v18 = [v17 stringForDistance:sign];
    mkServerFormattedString = [v18 mkServerFormattedString];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100E892A8;
    v22[3] = &unk_101657058;
    untilSignCopy = untilSign;
    signCopy = sign;
    v23 = mkServerFormattedString;
    v24 = v16;
    indexCopy = index;
    v20 = v16;
    v21 = mkServerFormattedString;
    [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"remainingManeuverTimeAndDistance" onEachGuidanceOutput:v22];
  }
}

- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  serviceCopy = service;
  stringCopy = string;
  v12 = +[MNNavigationService sharedService];
  navigationState = [v12 navigationState];

  if (navigationState != 5)
  {
    [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"recalculating"];
    [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"remainingManeuverTimeAndDistance"];
    route = [serviceCopy route];
    steps = [route steps];
    v16 = [steps count];

    if (v16 > index)
    {
      route2 = [serviceCopy route];
      steps2 = [route2 steps];
      v19 = [steps2 objectAtIndexedSubscript:index];

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E89458;
      v21[3] = &unk_101657030;
      distanceCopy = distance;
      v22 = stringCopy;
      v23 = v19;
      v20 = v19;
      [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v21];
    }
  }
}

- (void)navigationService:(id)service hideJunctionViewForId:(id)id
{
  if (id)
  {
    currentJunctionViewInfo = self->_currentJunctionViewInfo;
    self->_currentJunctionViewInfo = 0;

    self->_shouldHideJunctionViewThisUpdate = 1;
    *&self->_needsUpdate = 257;
  }
}

- (void)navigationService:(id)service showJunctionView:(id)view
{
  serviceCopy = service;
  viewCopy = view;
  if (viewCopy)
  {
    currentJunctionViewInfo = self->_currentJunctionViewInfo;
    if (currentJunctionViewInfo != viewCopy)
    {
      uniqueID = [(MNGuidanceJunctionViewInfo *)currentJunctionViewInfo uniqueID];
      uniqueID2 = [(MNGuidanceJunctionViewInfo *)viewCopy uniqueID];
      v11 = [uniqueID isEqual:uniqueID2];

      if ((v11 & 1) == 0)
      {
        objc_storeStrong(&self->_currentJunctionViewInfo, view);
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

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  if (id)
  {
    currentLaneInfo = self->_currentLaneInfo;
    self->_currentLaneInfo = 0;

    self->_shouldHideLaneGuidanceThisUpdate = 1;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  if (directionsCopy && self->_currentLaneInfo != directionsCopy)
  {
    v7 = directionsCopy;
    objc_storeStrong(&self->_currentLaneInfo, directions);
    directionsCopy = v7;
    self->_shouldHideLaneGuidanceThisUpdate = 0;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  [(GuidanceObserver *)self _updateArrivalStateWithService:service, waypoint, index, reason];
  [(GuidanceObserver *)self _updateDisplayETA];

  [(GuidanceObserver *)self _removeAllRepeatableUpdates];
}

- (void)_updateArrivalStateWithService:(id)service
{
  arrivalState = [service arrivalState];

  [(GuidanceObserver *)self setCurrentArrivalState:arrivalState];
}

- (void)navigationService:(id)service updateSignsWithARInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_100021DB0(infoCopy, &stru_101657008);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got AR guidance infos: %@", &v10, 0xCu);
    }

    v8 = [infoCopy copy];
    currentARInfos = self->_currentARInfos;
    self->_currentARInfos = v8;

    self->_needsARInfosUpdate = 1;
    self->_needsUpdate = 1;
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    self->_usingSignInfo = 1;
    v7 = infoCopy;
    objc_storeStrong(&self->_currentSignInfo, info);
    infoCopy = v7;
    self->_needsUpdate = 1;
  }
}

- (void)navigationServiceDidCancelReroute:(id)reroute
{
  _signRepeatableUpdateKeys = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:_signRepeatableUpdateKeys];

  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656FC8];
}

- (void)navigationService:(id)service failedRerouteWithErrorCode:(int64_t)code
{
  v5 = [(GuidanceObserver *)self _signRepeatableUpdateKeys:service];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:v5];

  [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656FA8];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  serviceCopy = service;
  rerouteCopy = reroute;
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

- (void)navigationServiceWillReroute:(id)reroute
{
  _signRepeatableUpdateKeys = [(GuidanceObserver *)self _signRepeatableUpdateKeys];
  [(GuidanceObserver *)self _removeAllRepeatableUpdatesForKeys:_signRepeatableUpdateKeys];

  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"recalculating" onEachGuidanceOutput:&stru_101656F88];
}

- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E89CEC;
  v4[3] = &unk_101656F68;
  promptsCopy = prompts;
  [(GuidanceObserver *)self _eachGuidanceOutput:v4];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {
    [(GuidanceObserver *)self _eachGuidanceOutput:&stru_101656F48];
    [(GuidanceObserver *)self _removeAllRepeatableUpdates];
    [(GuidanceObserver *)self _tearDownNavigationIfNeeded];
    [(NSHashTable *)self->_outlets removeAllObjects];
  }

  [(GuidanceObserver *)self _updateArrivalStateWithService:serviceCopy];
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(GuidanceObserver *)self _prepareForActiveNavigationIfNeeded];
  }
}

- (void)_updateDestinationDisplayName
{
  v3 = +[MNNavigationService sharedService];
  route = [v3 route];
  v5 = [route legIndexForStepIndex:{objc_msgSend(v3, "stepIndex")}];
  legs = [route legs];
  v7 = [legs count];
  legs2 = [route legs];
  v9 = legs2;
  if (v5 >= v7)
  {
    [legs2 lastObject];
  }

  else
  {
    [legs2 objectAtIndexedSubscript:v5];
  }
  v10 = ;

  destination = [v10 destination];
  navDisplayName = [destination navDisplayName];

  p_destinationDisplayName = &self->_destinationDisplayName;
  v14 = self->_destinationDisplayName;
  v15 = navDisplayName;
  if (v15 | v14)
  {
    v17 = [v14 isEqual:v15];

    objc_storeStrong(&self->_destinationDisplayName, navDisplayName);
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

- (void)_processARInfosUpdate:(id)update
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A148;
  v5[3] = &unk_101656E80;
  updateCopy = update;
  v4 = updateCopy;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"ARSignInfos" onEachGuidanceOutput:v5];
}

- (void)_processHideJunctionViewInfo
{
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"hideJunctionViewInfo" onEachGuidanceOutput:&stru_101656F00];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"showJunctionViewInfo"];
}

- (void)_processShowJunctionViewInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A2F4;
  v5[3] = &unk_101656E80;
  infoCopy = info;
  v4 = infoCopy;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"showJunctionViewInfo" onEachGuidanceOutput:v5];
  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"hideJunctionViewInfo"];
}

- (void)_processHideLaneInfo
{
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"hideLaneGuidanceInfo" onEachGuidanceOutput:&stru_101656EE0];

  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"showLaneGuidanceInfo"];
}

- (void)_processShowLaneInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E8A4BC;
  v5[3] = &unk_101656E80;
  infoCopy = info;
  v4 = infoCopy;
  [(GuidanceObserver *)self _performRepeatableUpdateForKey:@"showLaneGuidanceInfo" onEachGuidanceOutput:v5];
  [(GuidanceObserver *)self _removeRepeatableUpdateForKey:@"hideLaneGuidanceInfo"];
}

- (void)_processSignInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    primarySign = [infoCopy primarySign];
    if (primarySign)
    {
    }

    else
    {
      secondarySign = [v5 secondarySign];

      if (!secondarySign)
      {
        goto LABEL_22;
      }
    }

    v110 = +[MNNavigationService sharedService];
    primarySign2 = [v5 primarySign];
    junction = [primarySign2 junction];
    selfCopy = self;
    if ([junction numElements])
    {
      v10 = [MKJunction alloc];
      primarySign3 = [v5 primarySign];
      junction2 = [primarySign3 junction];
      v13 = [v10 initWithJunction:junction2];
    }

    else
    {
      v13 = 0;
    }

    v117 = [GuidanceManeuverArtwork alloc];
    primarySign4 = [v5 primarySign];
    junction3 = [primarySign4 junction];
    maneuverType = [junction3 maneuverType];
    primarySign5 = [v5 primarySign];
    junction4 = [primarySign5 junction];
    drivingSide = [junction4 drivingSide];
    primarySign6 = [v5 primarySign];
    artworkOverride = [primarySign6 artworkOverride];
    v113 = v13;
    v118 = [(GuidanceManeuverArtwork *)v117 initWithManeuver:maneuverType junction:v13 drivingSide:drivingSide artworkDataSource:artworkOverride];

    primarySign7 = [v5 primarySign];
    primaryStrings = [primarySign7 primaryStrings];
    v24 = [primaryStrings count];

    if (v24)
    {
      primarySign8 = [v5 primarySign];
      primaryStrings2 = [primarySign8 primaryStrings];
      v115 = sub_100021DB0(primaryStrings2, &stru_101656DD0);

      primarySign9 = [v5 primarySign];
      secondaryStrings = [primarySign9 secondaryStrings];
      v114 = sub_100021DB0(secondaryStrings, &stru_101656DF0);
    }

    else
    {
      v29 = [MKServerFormattedStringParameters alloc];
      primarySign10 = [v5 primarySign];
      distanceDetailLevel = [primarySign10 distanceDetailLevel];
      primarySign11 = [v5 primarySign];
      variableOverrides = [primarySign11 variableOverrides];
      v34 = [v29 initWithInstructionsDistanceDetailLevel:distanceDetailLevel variableOverrides:variableOverrides];

      primarySign12 = [v5 primarySign];
      titles = [primarySign12 titles];
      v130[0] = _NSConcreteStackBlock;
      v130[1] = 3221225472;
      v130[2] = sub_100E8B06C;
      v130[3] = &unk_10165CBB8;
      v37 = v34;
      v131 = v37;
      v115 = sub_100021DB0(titles, v130);

      primarySign13 = [v5 primarySign];
      details = [primarySign13 details];
      v128[0] = _NSConcreteStackBlock;
      v128[1] = 3221225472;
      v128[2] = sub_100E8B0D4;
      v128[3] = &unk_10165CBB8;
      v129 = v37;
      primarySign9 = v37;
      v114 = sub_100021DB0(details, v128);
    }

    _signRepeatableUpdateKeys = [(GuidanceObserver *)selfCopy _signRepeatableUpdateKeys];
    [(GuidanceObserver *)selfCopy _removeAllRepeatableUpdatesForKeys:_signRepeatableUpdateKeys];

    primarySign14 = [v5 primarySign];
    shieldID = [primarySign14 shieldID];
    primarySign15 = [v5 primarySign];
    shieldStringID = [primarySign15 shieldStringID];
    primarySign16 = [v5 primarySign];
    shieldText = [primarySign16 shieldText];
    v47 = [NavSignShieldInfo shieldWithID:shieldID stringID:shieldStringID text:shieldText];

    v48 = [NavSignManeuverGuidanceInfo alloc];
    primarySign17 = [v5 primarySign];
    uniqueID = [primarySign17 uniqueID];
    v51 = v114;
    v112 = v47;
    v52 = [(NavSignManeuverGuidanceInfo *)v48 initWithSignID:uniqueID maneuverArtwork:v118 majorTextAlternatives:v115 minorTextAlternatives:v114 shieldInfo:v47];

    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_100E8B13C;
    v125[3] = &unk_101656E18;
    v53 = v52;
    v126 = v53;
    v54 = v110;
    v127 = v54;
    [(GuidanceObserver *)selfCopy _performRepeatableUpdateForKey:@"primaryOrProceedToRouteManeuver" onEachGuidanceOutput:v125];
    secondarySign2 = [v5 secondarySign];

    if (secondarySign2)
    {
      v109 = v53;
      v111 = v54;
      secondarySign3 = [v5 secondarySign];
      junction5 = [secondarySign3 junction];
      if ([junction5 numElements])
      {
        v58 = [MKJunction alloc];
        secondarySign4 = [v5 secondarySign];
        junction6 = [secondarySign4 junction];
        v61 = [v58 initWithJunction:junction6];
      }

      else
      {
        v61 = 0;
      }

      v107 = [GuidanceManeuverArtwork alloc];
      secondarySign5 = [v5 secondarySign];
      junction7 = [secondarySign5 junction];
      maneuverType2 = [junction7 maneuverType];
      secondarySign6 = [v5 secondarySign];
      junction8 = [secondarySign6 junction];
      drivingSide2 = [junction8 drivingSide];
      secondarySign7 = [v5 secondarySign];
      artworkOverride2 = [secondarySign7 artworkOverride];
      v73 = v107;
      v108 = v61;
      v106 = [(GuidanceManeuverArtwork *)v73 initWithManeuver:maneuverType2 junction:v61 drivingSide:drivingSide2 artworkDataSource:artworkOverride2];

      secondarySign8 = [v5 secondarySign];
      primaryStrings3 = [secondarySign8 primaryStrings];
      v76 = [primaryStrings3 count];

      if (v76)
      {
        secondarySign9 = [v5 secondarySign];
        primaryStrings4 = [secondarySign9 primaryStrings];
        v105 = sub_100021DB0(primaryStrings4, &stru_101656E38);

        secondarySign10 = [v5 secondarySign];
        secondaryStrings2 = [secondarySign10 secondaryStrings];
        v81 = sub_100021DB0(secondaryStrings2, &stru_101656E58);
      }

      else
      {
        v82 = [MKServerFormattedStringParameters alloc];
        secondarySign11 = [v5 secondarySign];
        distanceDetailLevel2 = [secondarySign11 distanceDetailLevel];
        secondarySign12 = [v5 secondarySign];
        variableOverrides2 = [secondarySign12 variableOverrides];
        v87 = [v82 initWithInstructionsDistanceDetailLevel:distanceDetailLevel2 variableOverrides:variableOverrides2];

        secondarySign13 = [v5 secondarySign];
        titles2 = [secondarySign13 titles];
        v123[0] = _NSConcreteStackBlock;
        v123[1] = 3221225472;
        v123[2] = sub_100E8B198;
        v123[3] = &unk_10165CBB8;
        v90 = v87;
        v124 = v90;
        v105 = sub_100021DB0(titles2, v123);

        secondarySign14 = [v5 secondarySign];
        details2 = [secondarySign14 details];
        v121[0] = _NSConcreteStackBlock;
        v121[1] = 3221225472;
        v121[2] = sub_100E8B200;
        v121[3] = &unk_10165CBB8;
        v122 = v90;
        secondarySign10 = v90;
        v81 = sub_100021DB0(details2, v121);

        secondaryStrings2 = v124;
      }

      secondarySign15 = [v5 secondarySign];
      shieldID2 = [secondarySign15 shieldID];
      secondarySign16 = [v5 secondarySign];
      shieldStringID2 = [secondarySign16 shieldStringID];
      secondarySign17 = [v5 secondarySign];
      shieldText2 = [secondarySign17 shieldText];
      v99 = [NavSignShieldInfo shieldWithID:shieldID2 stringID:shieldStringID2 text:shieldText2];

      v100 = [NavSignManeuverGuidanceInfo alloc];
      v63 = v5;
      secondarySign18 = [v5 secondarySign];
      uniqueID2 = [secondarySign18 uniqueID];
      v103 = [(NavSignManeuverGuidanceInfo *)v100 initWithSignID:uniqueID2 maneuverArtwork:v106 majorTextAlternatives:v105 minorTextAlternatives:v81 shieldInfo:v99];

      selfCopy->_secondarySignVisible = 1;
      v119[0] = _NSConcreteStackBlock;
      v119[1] = 3221225472;
      v119[2] = sub_100E8B268;
      v119[3] = &unk_101656E80;
      v120 = v103;
      v104 = v103;
      [(GuidanceObserver *)selfCopy _performRepeatableUpdateForKey:@"secondaryManeuver" onEachGuidanceOutput:v119];

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
      if (selfCopy->_secondarySignVisible)
      {
        selfCopy->_secondarySignVisible = 0;
        [(GuidanceObserver *)selfCopy _eachGuidanceOutput:&stru_101656EC0];
        [(GuidanceObserver *)selfCopy _removeRepeatableUpdateForKey:@"secondaryManeuver"];
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
      selfCopy = self;
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
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%@) _repeatAllUpdates", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _orderedUpdateKinds = [(GuidanceObserver *)self _orderedUpdateKinds];
  v5 = [_orderedUpdateKinds countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_orderedUpdateKinds);
        }

        v9 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [(GuidanceObserver *)self _eachGuidanceOutput:v9 ignorePaused:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [_orderedUpdateKinds countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_repeatAllUpdatesWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _orderedUpdateKinds = [(GuidanceObserver *)self _orderedUpdateKinds];
  v8 = [_orderedUpdateKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_orderedUpdateKinds);
        }

        v12 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        v13 = v12;
        if (v12)
        {
          v14 = objc_retainBlock(v12);
          [targetCopy performSelector:selector withObject:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [_orderedUpdateKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)repeatAllUpdatesForOutlet:(id)outlet
{
  outletCopy = outlet;
  if (outletCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _orderedUpdateKinds = [(GuidanceObserver *)self _orderedUpdateKinds];
    v6 = [_orderedUpdateKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(_orderedUpdateKinds);
          }

          v10 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
          v11 = v10;
          if (v10)
          {
            (*(v10 + 16))(v10, outletCopy);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [_orderedUpdateKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12 = [(NSMutableDictionary *)self->_guidanceUpdates objectForKeyedSubscript:@"secondaryManeuver"];

    if (!v12)
    {
      [outletCopy hideSecondaryManeuver];
    }
  }
}

- (void)_eachGuidanceOutput:(id)output ignorePaused:(BOOL)paused
{
  pausedCopy = paused;
  outputCopy = output;
  if (!self->_paused || pausedCopy)
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

          outputCopy[2](outputCopy, *(*(&v14 + 1) + 8 * v13));
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_performRepeatableUpdateForKey:(id)key onEachGuidanceOutput:(id)output
{
  outputCopy = output;
  keyCopy = key;
  [(GuidanceObserver *)self _eachGuidanceOutput:outputCopy];
  v8 = [outputCopy copy];

  [(NSMutableDictionary *)self->_guidanceUpdates setObject:v8 forKeyedSubscript:keyCopy];
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

- (void)removeOutlet:(id)outlet
{
  outletCopy = outlet;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = outletCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) removing outlet: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_outlets removeObject:outletCopy];
}

- (void)addOutlet:(id)outlet
{
  outletCopy = outlet;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = outletCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) adding outlet: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_outlets addObject:outletCopy];
}

- (void)setCurrentArrivalState:(unint64_t)state
{
  if (self->_currentArrivalState != state)
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
      if (state - 1 > 4)
      {
        v9 = @"Unavailable";
      }

      else
      {
        v9 = *(&off_101631088 + state - 1);
      }

      v10 = v9;
      *buf = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "(%@) will update arrival state from: %@ to: %@", buf, 0x20u);
    }

    self->_currentArrivalState = state;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E8C050;
    v11[3] = &unk_101656D90;
    v11[4] = state;
    [(GuidanceObserver *)self _eachGuidanceOutput:v11];
    if (state - 4 >= 2)
    {
      if (state == 1)
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
    selfCopy = self;
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