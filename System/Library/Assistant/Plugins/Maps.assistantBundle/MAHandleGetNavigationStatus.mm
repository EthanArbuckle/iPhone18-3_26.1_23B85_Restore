@interface MAHandleGetNavigationStatus
- (id)_maneuverETAForGuidanceState:(id)state;
- (id)_metersToMiles:(id)miles;
- (id)_navigationVolumeForGuidanceState:(id)state;
- (id)_overallETAForGuidanceState:(id)state;
- (id)_routeForGuidanceState:(id)state;
- (id)_secondsToMinutes:(id)minutes;
- (id)_trafficIncidentAlertTypeForGuidanceState:(id)state;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleGetNavigationStatus

- (id)_routeForGuidanceState:(id)state
{
  stateCopy = state;
  originalWaypointRouteData = [stateCopy originalWaypointRouteData];
  legacyRouteData = [stateCopy legacyRouteData];
  navSessionData = [stateCopy navSessionData];
  v7 = navSessionData;
  if (originalWaypointRouteData || legacyRouteData || navSessionData)
  {
    v9 = objc_alloc_init(SALocalSearchRoute);
    [v9 setRouteAsZilchBinary:legacyRouteData];
    [v9 setSessionState:v7];
    etaFilterData = [stateCopy etaFilterData];
    [v9 setEtaFilter:etaFilterData];

    incidentsOnRouteData = [stateCopy incidentsOnRouteData];
    [v9 setRouteIncidents:incidentsOnRouteData];

    incidentsOnRouteOffsets = [stateCopy incidentsOnRouteOffsets];
    [v9 setRouteIncidentOffsets:incidentsOnRouteOffsets];

    evChargingMetadata = [stateCopy evChargingMetadata];
    [v9 setEvChargingMetadata:evChargingMetadata];

    [v9 setOriginalWaypointRoute:originalWaypointRouteData];
  }

  else
  {
    v8 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15[0] = 67109376;
      v15[1] = 0;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MAPS SIRI: Requested route but couldn't create one, originalWaypointRouteData: %d sessionState: %d", v15, 0xEu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_maneuverETAForGuidanceState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(SALocalSearchAceNavigationEta);
  v6 = objc_alloc_init(SADuration);
  timeToNextManeuver = [stateCopy timeToNextManeuver];
  v8 = [(MAHandleGetNavigationStatus *)self _secondsToMinutes:timeToNextManeuver];
  [v6 setValue:v8];

  [v6 setUnit:SADurationUnitMinutesValue];
  [v5 setTimeEta:v6];
  v9 = objc_alloc_init(SADistance);
  distance = [stateCopy distance];

  v11 = [(MAHandleGetNavigationStatus *)self _metersToMiles:distance];
  [v9 setValue:v11];

  [v9 setUnit:SADistanceUnitMilesValue];
  [v5 setDistanceEta:v9];

  return v5;
}

- (id)_overallETAForGuidanceState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(SALocalSearchAceNavigationEta);
  v6 = objc_alloc_init(SADuration);
  remainingMinutesOnRoute = [stateCopy remainingMinutesOnRoute];
  [v6 setValue:remainingMinutesOnRoute];

  [v6 setUnit:SADurationUnitMinutesValue];
  [v5 setTimeEta:v6];
  v8 = objc_alloc_init(SADistance);
  remainingDistanceOnRoute = [stateCopy remainingDistanceOnRoute];

  v10 = [(MAHandleGetNavigationStatus *)self _metersToMiles:remainingDistanceOnRoute];
  [v8 setValue:v10];

  [v8 setUnit:SADistanceUnitMilesValue];
  [v5 setDistanceEta:v8];

  return v5;
}

- (id)_trafficIncidentAlertTypeForGuidanceState:(id)state
{
  trafficIncidentAlert = [state trafficIncidentAlert];
  v4 = trafficIncidentAlert;
  if (trafficIncidentAlert && (v5 = [trafficIncidentAlert type], (v5 - 1) <= 5))
  {
    v6 = **(&off_4AB90 + (v5 - 1));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_navigationVolumeForGuidanceState:(id)state
{
  navVolumeSetting = [state navVolumeSetting];
  if ([navVolumeSetting isEqualToString:@"Loud Volume"])
  {
    v4 = &SALocalSearchNavigationVoiceVolumeLoudValue;
LABEL_8:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([navVolumeSetting isEqualToString:@"Normal Volume"])
  {
    v4 = &SALocalSearchNavigationVoiceVolumeNormalValue;
    goto LABEL_8;
  }

  if (([navVolumeSetting isEqualToString:@"Low Volume"] & 1) != 0 || objc_msgSend(navVolumeSetting, "isEqualToString:", @"Off Volume"))
  {
    v4 = &SALocalSearchNavigationVoiceVolumeLowValue;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_metersToMiles:(id)miles
{
  [miles doubleValue];
  v4 = v3 * 0.000621371192;

  return [NSNumber numberWithDouble:v4];
}

- (id)_secondsToMinutes:(id)minutes
{
  [minutes doubleValue];
  v4 = v3 / 60.0;

  return [NSNumber numberWithDouble:v4];
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:8006 onTarget:802 eventValue:0];

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if ([v9 canReceiveMessages] && !objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    dictionary = objc_alloc_init(IPCGuidanceStateMessage);
    getRoute = [(MAHandleGetNavigationStatus *)self getRoute];
    -[IPCGuidanceStateMessage setIncludeRoute:](dictionary, "setIncludeRoute:", [getRoute BOOLValue]);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1A5B8;
    v13[3] = &unk_4AB70;
    v13[4] = self;
    v15 = completionCopy;
    v14 = v7;
    [v9 getGuidanceState:dictionary completion:v13];
  }

  else
  {
    v10 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      canReceiveMessages = [v9 canReceiveMessages];
      v18 = 1024;
      isMapsBackgroundTaskSuspended = [v9 isMapsBackgroundTaskSuspended];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed as IPC can't receive messages. canReceiveMessages: %d isMapsBackgroundTaskSuspended: %d", buf, 0xEu);
    }

    dictionary = [v7 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
  }
}

@end