@interface MAHandleGetNavigationStatus
- (id)_maneuverETAForGuidanceState:(id)a3;
- (id)_metersToMiles:(id)a3;
- (id)_navigationVolumeForGuidanceState:(id)a3;
- (id)_overallETAForGuidanceState:(id)a3;
- (id)_routeForGuidanceState:(id)a3;
- (id)_secondsToMinutes:(id)a3;
- (id)_trafficIncidentAlertTypeForGuidanceState:(id)a3;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleGetNavigationStatus

- (id)_routeForGuidanceState:(id)a3
{
  v3 = a3;
  v4 = [v3 originalWaypointRouteData];
  v5 = [v3 legacyRouteData];
  v6 = [v3 navSessionData];
  v7 = v6;
  if (v4 || v5 || v6)
  {
    v9 = objc_alloc_init(SALocalSearchRoute);
    [v9 setRouteAsZilchBinary:v5];
    [v9 setSessionState:v7];
    v10 = [v3 etaFilterData];
    [v9 setEtaFilter:v10];

    v11 = [v3 incidentsOnRouteData];
    [v9 setRouteIncidents:v11];

    v12 = [v3 incidentsOnRouteOffsets];
    [v9 setRouteIncidentOffsets:v12];

    v13 = [v3 evChargingMetadata];
    [v9 setEvChargingMetadata:v13];

    [v9 setOriginalWaypointRoute:v4];
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

- (id)_maneuverETAForGuidanceState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SALocalSearchAceNavigationEta);
  v6 = objc_alloc_init(SADuration);
  v7 = [v4 timeToNextManeuver];
  v8 = [(MAHandleGetNavigationStatus *)self _secondsToMinutes:v7];
  [v6 setValue:v8];

  [v6 setUnit:SADurationUnitMinutesValue];
  [v5 setTimeEta:v6];
  v9 = objc_alloc_init(SADistance);
  v10 = [v4 distance];

  v11 = [(MAHandleGetNavigationStatus *)self _metersToMiles:v10];
  [v9 setValue:v11];

  [v9 setUnit:SADistanceUnitMilesValue];
  [v5 setDistanceEta:v9];

  return v5;
}

- (id)_overallETAForGuidanceState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SALocalSearchAceNavigationEta);
  v6 = objc_alloc_init(SADuration);
  v7 = [v4 remainingMinutesOnRoute];
  [v6 setValue:v7];

  [v6 setUnit:SADurationUnitMinutesValue];
  [v5 setTimeEta:v6];
  v8 = objc_alloc_init(SADistance);
  v9 = [v4 remainingDistanceOnRoute];

  v10 = [(MAHandleGetNavigationStatus *)self _metersToMiles:v9];
  [v8 setValue:v10];

  [v8 setUnit:SADistanceUnitMilesValue];
  [v5 setDistanceEta:v8];

  return v5;
}

- (id)_trafficIncidentAlertTypeForGuidanceState:(id)a3
{
  v3 = [a3 trafficIncidentAlert];
  v4 = v3;
  if (v3 && (v5 = [v3 type], (v5 - 1) <= 5))
  {
    v6 = **(&off_4AB90 + (v5 - 1));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_navigationVolumeForGuidanceState:(id)a3
{
  v3 = [a3 navVolumeSetting];
  if ([v3 isEqualToString:@"Loud Volume"])
  {
    v4 = &SALocalSearchNavigationVoiceVolumeLoudValue;
LABEL_8:
    v5 = *v4;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"Normal Volume"])
  {
    v4 = &SALocalSearchNavigationVoiceVolumeNormalValue;
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"Low Volume"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Off Volume"))
  {
    v4 = &SALocalSearchNavigationVoiceVolumeLowValue;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_metersToMiles:(id)a3
{
  [a3 doubleValue];
  v4 = v3 * 0.000621371192;

  return [NSNumber numberWithDouble:v4];
}

- (id)_secondsToMinutes:(id)a3
{
  [a3 doubleValue];
  v4 = v3 / 60.0;

  return [NSNumber numberWithDouble:v4];
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:8006 onTarget:802 eventValue:0];

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if ([v9 canReceiveMessages] && !objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    v11 = objc_alloc_init(IPCGuidanceStateMessage);
    v12 = [(MAHandleGetNavigationStatus *)self getRoute];
    -[IPCGuidanceStateMessage setIncludeRoute:](v11, "setIncludeRoute:", [v12 BOOLValue]);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1A5B8;
    v13[3] = &unk_4AB70;
    v13[4] = self;
    v15 = v5;
    v14 = v7;
    [v9 getGuidanceState:v11 completion:v13];
  }

  else
  {
    v10 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v17 = [v9 canReceiveMessages];
      v18 = 1024;
      v19 = [v9 isMapsBackgroundTaskSuspended];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed as IPC can't receive messages. canReceiveMessages: %d isMapsBackgroundTaskSuspended: %d", buf, 0xEu);
    }

    v11 = [v7 dictionary];
    (*(v5 + 2))(v5, v11);
  }
}

@end