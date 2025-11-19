@interface CLLocationInternalClient
+ (id)sharedServiceClient;
- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 services:(unint64_t)a5 error:(id *)a6;
- (BOOL)deleteInterestZoneWithId:(id)a3 registeredForBundleId:(id)a4 orBundlePath:(id)a5 error:(id *)a6;
- (BOOL)getLearnedRoutesAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)getVisitHistoryAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)getVisitHistoryAccessAllowedTime:(double *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)startStopAdvertisingBeacon:(id)a3 power:(id)a4;
- (__CFArray)copyActivityAlarms;
- (__CFArray)copyGnssBandsInUse;
- (__CFArray)copyRecentLocationsBufferStatus;
- (__CFArray)copyTechnologiesInUse;
- (__CFDictionary)copyActiveClientsUsingLocation;
- (__CFDictionary)copyAppsUsingLocation;
- (__CFDictionary)copyInternalState;
- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)a3 orBundlePath:(__CFString *)a4;
- (__CFDictionary)copyNearbyAssetSettings;
- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)a3;
- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)a3 contentVersion:(int *)a4;
- (__CFDictionary)copyZaxisStats;
- (double)modifyOrSetAuthorizationTime:(double)a3 forBundleID:(id)a4 orBundlePath:(id)a5;
- (id)applyArchivedAuthorizationDecisions:(id)a3;
- (id)asynchronousRemoteObject;
- (id)connection;
- (id)fetchRecentLocationAtCfAbsoluteTime:(double)a3;
- (id)fetchRecentLocationAtMachContinuousTime:(double)a3;
- (id)getAccessoryMotionSensorLogs;
- (id)getArchivedAuthorizationDecisionsWithError:(id *)a3;
- (id)getEEDCloakingKey:(id *)a3;
- (id)getEEDEmergencyContactNames:(id *)a3;
- (id)getMotionSensorLogs;
- (id)getOdometryBatchedLocations;
- (id)getPipelinedCache;
- (id)getTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 error:(id *)a5;
- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)a3;
- (id)setTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 statusData:(id)a5;
- (id)synchronousRemoteObject;
- (id)timeZoneAtLocation:(id)a3;
- (id)triggerExpiredAuthorizationPurgeOnClientManager;
- (int)getAccessoryPASCDTransmissionState;
- (int)getAccessoryTypeBitSet;
- (int)getStatusBarIconState;
- (unsigned)clearLocationAuthorizations;
- (unsigned)configure:(id)a3;
- (unsigned)copyLastLog;
- (unsigned)deleteCurrentEmergencyLocationAsset;
- (unsigned)displayStatistics;
- (unsigned)dumpLogs:(__CFString *)a3;
- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)a3;
- (unsigned)getAuthorizationStatus:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (unsigned)getAuthorizationStatusForApp:(int *)a3 withAuditToken:(id *)a4;
- (unsigned)getControlPlaneStatusReportClear:(int)a3 startTime:(double *)a4 endTime:(double *)a5 latitude:(double *)a6 longitude:(double *)a7 altitude:(double *)a8 accuracy:(double *)a9 status:(unsigned int *)a10;
- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)a3 andContentVersion:(int *)a4;
- (unsigned)getGestureServiceEnabled:(char *)a3;
- (unsigned)getGroundAltitudeForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 location:(id)a5 groundAltitude:(id *)a6;
- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)a3 atTemperature:(float)a4;
- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)a3;
- (unsigned)getIncidentalUseMode:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (unsigned)getLocationForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 dynamicAccuracyReductionEnabled:(unsigned __int8)a5 allowsAlteredAccessoryLocations:(unsigned __int8)a6 location:(id *)a7;
- (unsigned)getLocationServicesEnabled:(char *)a3;
- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)a3;
- (unsigned)getPrecisionPermission:(char *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (unsigned)getPrivateMode;
- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)a3;
- (unsigned)gyroCalibrationDatabaseWipe;
- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)a3 temperature:(float)a4 variance:(id)a5 timestamp:(double)a6;
- (unsigned)performMigration;
- (unsigned)pingDaemon;
- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 enabled:(unsigned __int8)a5;
- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5 orAuditToken:(id *)a6 byLocationButton:(unsigned __int8)a7 voiceInteractionEnabled:(unsigned __int8)a8;
- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (unsigned)shouldDisplayEEDUI;
- (unsigned)shutdownDaemon;
- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4;
- (unsigned)timeSyncMachTimeStamp:(unint64_t *)a3 oscarTimeStamp:(unint64_t *)a4;
- (unsigned)updatePromptedLatitude:(double)a3 longitude:(double)a4;
- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5;
- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)a3 replyBlock:(id)a4;
- (void)clearLocationAuthorizationForBundleId:(__CFString *)a3 orBundlePath:(__CFString *)a4;
- (void)getLocationDefaultForKey:(__CFString *)a3;
- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5;
- (void)notifyPassKitPayment:(id)a3 transaction:(id)a4 info:(id)a5;
- (void)notifyWeatherForecast:(id)a3 airQualityConditions:(id)a4 hourlyForecasts:(id)a5 dailyForecasts:(id)a6 latitude:(double)a7 longitude:(double)a8;
- (void)requestRouteReconstructionForPedestrian;
- (void)setGestureServiceEnabled:(unsigned __int8)a3;
- (void)setLocationDefaultForKey:(__CFString *)a3 value:(void *)a4;
- (void)setLocationServicesEnabled:(unsigned __int8)a3;
- (void)setPrivateMode:(unsigned __int8)a3;
- (void)setTrackRunHint:(id *)a3;
- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)a3 toMachContinuousTime:(double)a4;
@end

@implementation CLLocationInternalClient

+ (id)sharedServiceClient
{
  if (qword_1ED5192F0 != -1)
  {
    dispatch_once(&qword_1ED5192F0, &unk_1F0E6E358);
  }

  return qword_1ED5192F8;
}

- (id)connection
{
  objc_sync_enter(self);
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.synchronous" options:4096];
    self->_connection = v4;
    -[NSXPCConnection setRemoteObjectInterface:](v4, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAD1E0]);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F0E6E378];
    v5 = self->_connection;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B885738;
    v7[3] = &unk_1E753CC90;
    v7[4] = self;
    [(NSXPCConnection *)v5 setInvalidationHandler:v7];
    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  objc_sync_exit(self);
  return connection;
}

- (id)synchronousRemoteObject
{
  objc_sync_enter(self);
  [objc_msgSend(MEMORY[0x1E69AD378] "sharedInstance")];
  v3 = [-[CLLocationInternalClient connection](self "connection")];
  objc_sync_exit(self);
  return v3;
}

- (__CFArray)copyTechnologiesInUse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B87F9C0;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [v2 getTechnologiesInUseWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFArray)copyGnssBandsInUse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B8846AC;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [v2 getGnssBandsInUseWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)getAccessoryTypeBitSet
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B887888;
  v11[3] = &unk_1E753E518;
  v11[4] = &v12;
  [v2 getAccessoryTypeBitSetWithReplyBlock:v11];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(v13 + 6);
    *buf = 67109120;
    v19 = v4;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,%d", buf, 8u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = *(v13 + 6);
    v16 = 67109120;
    v17 = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryTypeBitSet]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)asynchronousRemoteObject
{
  objc_sync_enter(self);
  v3 = [-[CLLocationInternalClient connection](self "connection")];
  objc_sync_exit(self);
  return v3;
}

- (unsigned)getIncidentalUseMode:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B1B70;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 getIncidentalUseModeForBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (void)clearLocationAuthorizationForBundleId:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B1D50;
  v7[3] = &unk_1E753DC90;
  v7[4] = v8;
  [v6 resetClientForBundleId:a3 orBundlePath:a4 withReplyBlock:v7];
  _Block_object_dispose(v8, 8);
}

- (unsigned)clearLocationAuthorizations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B1E28;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [v2 resetAllClientsWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getArchivedAuthorizationDecisionsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_19B9B1FE0;
  v21 = sub_19B9B1FF0;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B1FFC;
  v10[3] = &unk_1E753E310;
  v10[4] = &v11;
  v10[5] = &v17;
  [v4 getArchivedAuthorizationDecisionsWithReplyBlock:v10];
  v5 = v18[5];
  v6 = v12[5];
  if (!v18[5] && !v12[5])
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.locationd.internalservice.errorDomain" code:1 userInfo:0];
    v12[5] = v7;
  }

  if (a3)
  {
    *a3 = v12[5];
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

- (id)applyArchivedAuthorizationDecisions:(id)a3
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_19B9B1FE0;
  v20 = sub_19B9B1FF0;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 3;
  do
  {
    v7 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B9B21FC;
    v11[3] = &unk_1E753E338;
    v11[4] = &v16;
    v11[5] = &v12;
    [v7 applyArchivedAuthorizationDecisions:a3 withConfirmationToken:v5 replyBlock:v11];
    if (v13[3])
    {
      v8 = v17[5];
      goto LABEL_7;
    }

    --v6;
  }

  while (v6);
  v8 = v17[5];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.locationd.internalservice.errorDomain" code:1 userInfo:0];
    v17[5] = v8;
  }

LABEL_7:
  v9 = v8;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

- (__CFDictionary)copyAppsUsingLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_19B9B1FE0;
  v10 = sub_19B9B1FF0;
  v11 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2320;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [v2 getAppsUsingLocationWithReplyBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyActiveClientsUsingLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_19B9B1FE0;
  v10 = sub_19B9B1FF0;
  v11 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2428;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [v2 getActiveClientsUsingLocationWithReplyBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyInternalState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_19B9B1FE0;
  v10 = sub_19B9B1FF0;
  v11 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2530;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [v2 getClientManagerInternalStateWithReplyBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyZaxisStats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2618;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [v2 getZaxisStatsWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLocationDefaultForKey:(__CFString *)a3 value:(void *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      [MEMORY[0x1E696AE40] dataWithPropertyList:a4 format:200 options:0 error:0];
    }

    v9 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v10 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v9, sel_setLocationDefaultForKey_andValue_replyBlock_);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "#Spi, Key is NULL!", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationDefaultForKey:value:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)getLocationDefaultForKey:(__CFString *)a3
{
  v3 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = sub_19B9B1FE0;
    v12 = sub_19B9B1FF0;
    v13 = 0;
    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B2B30;
    v7[3] = &unk_1E753E3B0;
    v7[4] = &v8;
    [v4 getLocationDefaultForKey:v3 replyBlock:v7];
    v5 = v9[5];
    if (v5)
    {
      v3 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    }

    else
    {
      v3 = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (id)timeZoneAtLocation:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[CLLocationInternalClient timeZoneAtLocation:]") description:{@"LocationInternal.m", 665, @"Invalid parameter not satisfying: %@", @"nil != location"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v5 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  if (a3)
  {
    [a3 clientLocation];
  }

  else
  {
    memset(v10, 0, 156);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B2DD4;
  v9[3] = &unk_1E753E3D8;
  v9[4] = &v11;
  [v5 timeZoneForLocation:v10 replyBlock:v9];
  v6 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)setPrivateMode:(unsigned __int8)a3
{
  v3 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](v3, sel_setPrivateMode_replyBlock_);
}

- (unsigned)getPrivateMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B30C8;
  v5[3] = &unk_1E753E400;
  v5[4] = &v6;
  [v2 getPrivateMode:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)pingDaemon
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B31A0;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [v2 pingDaemonWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLocationServicesEnabled:(unsigned __int8)a3
{
  [-[CLLocationInternalClient synchronousRemoteObject](self "synchronousRemoteObject")];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.locationd", v3, v4);
}

- (unsigned)getLocationServicesEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B3488;
    v6[3] = &unk_1E753E2E8;
    v6[4] = &v7;
    v6[5] = v3;
    [v4 getLocationServicesEnabledWithReplyBlock:v6];
    LOBYTE(v3) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B35AC;
  v7[3] = &unk_1E753DC90;
  v7[4] = &v8;
  [v4 setAuthorizationPromptMapDisplayEnabled:v3 != 0 replyBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B3834;
    v6[3] = &unk_1E753E428;
    v6[4] = &v7;
    v6[5] = v3;
    [v4 getAuthorizationPromptMapDisplayEnabledWithReplyBlock:v6];
    LOBYTE(v3) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (id)setTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 statusData:(id)a5
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_19B9B1FE0;
  v18 = sub_19B9B1FF0;
  v19 = 0;
  if (!a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[CLLocationInternalClient setTemporaryAuthorizationStatusForBundleId:orBundlePath:statusData:]") description:{@"LocationInternal.m", 788, @"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  v9 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B39D0;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  [v9 setTemporaryAuthorizationStatusForBundleId:a3 orBundlePath:a4 statusData:a5 replyBlock:v13];
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (id)getTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 error:(id *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B3C84;
  v11[3] = &unk_1E753E450;
  v11[4] = &v12;
  v11[5] = a5;
  [v8 getTemporaryAuthorizationStatusForBundleId:a3 orBundlePath:a4 replyBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (double)modifyOrSetAuthorizationTime:(double)a3 forBundleID:(id)a4 orBundlePath:(id)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0xBFF0000000000000;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B3F38;
  v11[3] = &unk_1E753E478;
  v11[4] = &v12;
  [v8 modifyOrSetAuthorizationTime:a4 forBundleID:a5 orBundlePath:v11 replyBlock:a3];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)triggerExpiredAuthorizationPurgeOnClientManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_19B9B1FE0;
  v10 = sub_19B9B1FF0;
  v11 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B41CC;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [v2 triggerExpiredAuthorizationPurgeWithReplyBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setGestureServiceEnabled:(unsigned __int8)a3
{
  v3 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](v3, sel_setGestureServiceEnabled_replyBlock_);
}

- (unsigned)getGestureServiceEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B4620;
    v6[3] = &unk_1E753E428;
    v6[4] = &v7;
    v6[5] = v3;
    [v4 getGestureServiceEnabledWithReplyBlock:v6];
    LOBYTE(v3) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (unsigned)getAuthorizationStatusForApp:(int *)a3 withAuditToken:(id *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B4720;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = a3;
  v7 = *&a4->var0[4];
  v9[0] = *a4->var0;
  v9[1] = v7;
  [v6 getAuthorizationStatusForAppWithAuditToken:v9 replyBlock:v10];
  LOBYTE(a4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a4;
}

- (unsigned)getAuthorizationStatus:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B4820;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 getAuthorizationStatusForBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (unsigned)getPrecisionPermission:(char *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_19B9B1FE0;
  v23 = sub_19B9B1FF0;
  v24 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B4AFC;
  v18[3] = &unk_1E753E4A0;
  v18[5] = &v19;
  v18[6] = a3;
  v18[4] = &v25;
  [v8 getPrecisionPermissionForBundleID:a4 orBundlePath:a5 replyBlock:v18];
  v9 = v20;
  if (v20[5])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v11 = v20[5];
      buf = 68289282;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v12 = qword_1ED519090;
    v13 = os_signpost_enabled(qword_1ED519090);
    v9 = v20;
    if (v13)
    {
      v14 = v20[5];
      buf = 68289282;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = v14;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalGetPrecisionPermission failed", "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      v9 = v20;
    }
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unsigned)performMigration
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B4D94;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [v2 performMigrationWithReplyBlock:v9];
  if (!*(v11 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "#Spi, _CLInternalPerformMigration failed", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient performMigration]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)shutdownDaemon
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B4FF4;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [v2 shutdownDaemonWithReplyBlock:v9];
  if (!*(v11 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "#Spi, _CLShutdownDaemon failed", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient shutdownDaemon]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)displayStatistics
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B5250;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [v2 displayStatisticsWithReplyBlock:v9];
  if (!*(v11 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "#Spi, _CLDisplayStatistics failed", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient displayStatistics]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)dumpLogs:(__CFString *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B54B8;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  [v4 dumpLogsWithDescription:a3 replyBlock:v11];
  if (!*(v13 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "#Spi, _CLDumpLogs failed", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient dumpLogs:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B55A8;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  [v6 getMonitoredRegionsForBundleID:a3 orBundlePath:a4 replyBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 services:(unint64_t)a5 error:(id *)a6
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_19B9B1FE0;
  v24 = sub_19B9B1FF0;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9B5794;
  v15[3] = &unk_1E753E4C8;
  v15[4] = &v20;
  v15[5] = &v26;
  v15[6] = &v16;
  [v10 checkAndExerciseAuthorizationForBundleID:a3 orBundlePath:a4 services:a5 replyBlock:v15];
  v11 = v21[5];
  if ((v17[3] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
    v21[5] = v12;
  }

  if (a6)
  {
    *a6 = v21[5];
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v13;
}

- (BOOL)deleteInterestZoneWithId:(id)a3 registeredForBundleId:(id)a4 orBundlePath:(id)a5 error:(id *)a6
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_19B9B1FE0;
  v19 = sub_19B9B1FF0;
  v20 = 0;
  v10 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B9B5EBC;
  v14[3] = &unk_1E753E338;
  v14[4] = &v15;
  v14[5] = &v21;
  [v10 deleteInterestZoneWithId:a3 registeredForBundleId:a4 orBundlePath:a5 replyBlock:v14];
  v11 = v16[5];
  if (a6)
  {
    *a6 = v16[5];
  }

  v12 = *(v22 + 24) != 0;
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

- (unsigned)getLocationForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 dynamicAccuracyReductionEnabled:(unsigned __int8)a5 allowsAlteredAccessoryLocations:(unsigned __int8)a6 location:(id *)a7
{
  if (!a7)
  {
    return 0;
  }

  v8 = a6;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9B600C;
  v15[3] = &unk_1E753E450;
  v15[4] = &v16;
  v15[5] = a7;
  [v12 getLocationForBundleID:a3 orBundlePath:a4 dynamicAccuracyReductionEnabled:v9 != 0 allowsAlteredAccessoryLocations:v8 != 0 replyBlock:v15];
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v13;
}

- (unsigned)getGroundAltitudeForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 location:(id)a5 groundAltitude:(id *)a6
{
  v6 = 0;
  if (a5 && a6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v11 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B9B6154;
    v13[3] = &unk_1E753E4F0;
    v13[4] = &v14;
    v13[5] = a6;
    [v11 getGroundAltitudeForBundleID:a3 orBundlePath:a4 location:a5 replyBlock:v13];
    v6 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return v6;
}

- (void)setTrackRunHint:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "#Spi,CLTR,CLTrackRunHint received,framework side", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient setTrackRunHint:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  [-[CLLocationInternalClient synchronousRemoteObject](self "synchronousRemoteObject")];
  v8 = *MEMORY[0x1E69E9840];
}

- (int)getAccessoryPASCDTransmissionState
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 4;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B6CD8;
  v11[3] = &unk_1E753E518;
  v11[4] = &v12;
  [v2 getAccessoryPASCDTransmissionStateWithReplyBlock:v11];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(v13 + 6);
    *buf = 67109120;
    v19 = v4;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,%d", buf, 8u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = *(v13 + 6);
    v16 = 67109120;
    v17 = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryPASCDTransmissionState]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)getOdometryBatchedLocations
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B7150;
  v11[3] = &unk_1E753E360;
  v11[4] = &v12;
  [v2 getOdometryBatchedLocationsWithReplyBlock:v11];
  if (v13[5])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v13[5] count];
      *buf = 134349056;
      v21 = v4;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,returned with count,%{public}lu", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = [v13[5] count];
      v18 = 134349056;
      v19 = v6;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getOdometryBatchedLocations]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)copyLastLog
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B76D0;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [v2 copyLastLogWithReplyBlock:v9];
  if (!*(v11 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "#Spi, _CLCopyLastLog failed", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient copyLastLog]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)getStatusBarIconState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B7C8C;
  v5[3] = &unk_1E753E518;
  v5[4] = &v6;
  [v2 getStatusBarIconState:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getPipelinedCache
{
  v3 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  do
  {
    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B7DC8;
    v9[3] = &unk_1E753E388;
    v9[4] = &v10;
    [v4 getPipelinedCacheWithReply:v9];
    v5 = v11[5];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 >= 9;
    }

    ++v3;
  }

  while (!v6);
  v7 = v5;
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)a3 atTemperature:(float)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B7EE0;
  v8[3] = &unk_1E753E450;
  v8[4] = &v9;
  v8[5] = a3;
  [v6 getGyroCalibrationDatabaseBiasFitAtTemperature:v8 withReply:COERCE_DOUBLE(LODWORD(a4))];
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return a3;
}

- (BOOL)startStopAdvertisingBeacon:(id)a3 power:(id)a4
{
  if (a4)
  {
    v6 = [a4 intValue];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B802C;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [v7 startStopAdvertisingBeacon:a3 atPower:v6 replyBlock:v10];
  v8 = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)a3 temperature:(float)a4 variance:(id)a5 timestamp:(double)a6
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a3.var2;
  v12 = a3.var1;
  v13 = a3.var0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_19B9B8164;
  v23[3] = &unk_1E753DC90;
  v23[4] = &v24;
  *&v15 = v12;
  *&v16 = v11;
  *&v17 = a4;
  *&v18 = var0;
  *&v19 = var1;
  *&v20 = var2;
  [v14 insertGyroCalibrationDatabaseBiasEstimateIfValid:v23 temperature:COERCE_DOUBLE(LODWORD(v13)) variance:v15 timestamp:v16 replyBlock:{v17, v18, v19, v20, a6}];
  v21 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v21;
}

- (unsigned)gyroCalibrationDatabaseWipe
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B823C;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [v2 gyroCalibrationDatabaseWipeWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9B8318;
  v6[3] = &unk_1E753E2E8;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 gyroCalibrationDatabaseGetNumTemperaturesWithReplyBlock:v6];
  LOBYTE(a3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return a3;
}

- (unsigned)configure:(id)a3
{
  v3 = *&a3.var7;
  v4 = *&a3.var0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B8414;
  v7[3] = &unk_1E753DC90;
  v7[4] = &v8;
  [v5 configure:v4 replyBlock:{v3, v7}];
  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (unsigned)getControlPlaneStatusReportClear:(int)a3 startTime:(double *)a4 endTime:(double *)a5 latitude:(double *)a6 longitude:(double *)a7 altitude:(double *)a8 accuracy:(double *)a9 status:(unsigned int *)a10
{
  v10 = 0;
  v36 = *MEMORY[0x1E69E9840];
  if (a7 && a6 && a4 && a5 && a10)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = sub_19B9B1FE0;
    v33 = sub_19B9B1FF0;
    v34 = 0;
    v15 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B9B87A8;
    v28[3] = &unk_1E753E568;
    v28[6] = a5;
    v28[7] = a6;
    v28[8] = a7;
    v28[9] = a8;
    v28[10] = a9;
    v28[11] = a10;
    v28[4] = &v29;
    v28[5] = a4;
    [v15 getControlPlaneStatusReportClear:a3 replyBlock:v28];
    while (1)
    {
      v16 = v30[5];
      if (!v16)
      {
        v10 = 1;
        goto LABEL_24;
      }

      if ([v16 code] != 1)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "#Spi, Blocking Mig routine deferred on Daemon side... waiting and retrying", buf, 2u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
        }

        v27 = 0;
        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getControlPlaneStatusReportClear:startTime:endTime:latitude:longitude:altitude:accuracy:status:]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      sleep(1u);
      v20 = [(CLLocationInternalClient *)self synchronousRemoteObject];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B9B87E4;
      v26[3] = &unk_1E753E568;
      v26[6] = a5;
      v26[7] = a6;
      v26[8] = a7;
      v26[9] = a8;
      v26[10] = a9;
      v26[11] = a10;
      v26[4] = &v29;
      v26[5] = a4;
      [v20 getControlPlaneStatusReportClear:a3 replyBlock:v26];
    }

    v10 = v30[5] == 0;
LABEL_24:
    _Block_object_dispose(&v29, 8);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)a3 andContentVersion:(int *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B8900;
    v9[3] = &unk_1E753E590;
    v9[5] = a3;
    v9[6] = a4;
    v9[4] = &v10;
    [v7 getEmergencyLocationSettingsVersion:v9];
    v4 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v4;
}

- (unsigned)deleteCurrentEmergencyLocationAsset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B89E4;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [v2 deleteCurrentEmergencyLocationAsset:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyNearbyAssetSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_19B9B1FE0;
  v10 = sub_19B9B1FF0;
  v11 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B8AE0;
  v5[3] = &unk_1E753E5B8;
  v5[4] = &v6;
  [v2 copyNearbyAssetSettings:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B8C04;
  v7[3] = &unk_1E753E5B8;
  v7[4] = &v8;
  [v4 copyNearbyAssetSettingsOfAccessoryFile:a3 withReply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)a3 contentVersion:(int *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8D34;
  v9[3] = &unk_1E753E5E0;
  v9[4] = &v10;
  v9[5] = a3;
  v9[6] = a4;
  [v6 copyRoutineAssetSettings:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)shouldDisplayEEDUI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B8E50;
  v5[3] = &unk_1E753E608;
  v5[4] = &v6;
  [v2 shouldDisplayEEDUI:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getEEDCloakingKey:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B9B1FE0;
  v13 = sub_19B9B1FF0;
  v14 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B8F58;
  v8[3] = &unk_1E753E450;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 getEEDCloakingKeyWithReply:v8];
  v5 = *a3;
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)getEEDEmergencyContactNames:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B9B1FE0;
  v13 = sub_19B9B1FF0;
  v14 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9094;
  v8[3] = &unk_1E753E630;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 getEEDEmergencyContactNamesWithReply:v8];
  v5 = *a3;
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)getMotionSensorLogs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  while (1)
  {
    v3 = v9[5];
    if (v3)
    {
      break;
    }

    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B91F0;
    v7[3] = &unk_1E753E658;
    v7[4] = &v8;
    [v4 getMotionSensorLogsWithReply:v7];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)getAccessoryMotionSensorLogs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  while (1)
  {
    v3 = v9[5];
    if (v3)
    {
      break;
    }

    v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B9338;
    v7[3] = &unk_1E753E658;
    v7[4] = &v8;
    [v4 getAccessoryMotionSensorLogsWithReply:v7];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5 orAuditToken:(id *)a6 byLocationButton:(unsigned __int8)a7 voiceInteractionEnabled:(unsigned __int8)a8
{
  v8 = a8;
  v9 = a7;
  v13 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B9484;
  v18[3] = &unk_1E753DC90;
  v18[4] = &v19;
  v15 = *&a6->var0[4];
  v17[0] = *a6->var0;
  v17[1] = v15;
  [v14 setTemporaryAuthorizationGranted:v13 != 0 forBundleID:a4 orBundlePath:a5 orAuditToken:v17 byLocationButton:v9 != 0 voiceInteractionEnabled:v8 != 0 replyBlock:v18];
  LOBYTE(a5) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return a5;
}

- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v7 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B9580;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [v8 setTemporaryPreciseAuthorizationGranted:v7 != 0 forBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9670;
  v8[3] = &unk_1E753DC90;
  v8[4] = &v9;
  [v6 tearDownLocationAuthPromptForBundleID:a3 orBundlePath:a4 replyBlock:v8];
  LOBYTE(a4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return a4;
}

- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9B982C;
  v6[3] = &unk_1E753E680;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 getPinnedLocationAuthorizationStateWithReplyBlock:v6];
  LOBYTE(a3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return a3;
}

- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5
{
  v5 = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](v5, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_);
}

- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)a3 replyBlock:(id)a4
{
  v4 = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](v4, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_);
}

- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5
{
  v5 = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](v5, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_);
}

- (__CFArray)copyActivityAlarms
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B99E4;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [v2 getActivitiesWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)updatePromptedLatitude:(double)a3 longitude:(double)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B9CE0;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [v6 updatePromptedLatitude:v9 longitude:a3 replyBlock:a4];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 enabled:(unsigned __int8)a5
{
  v5 = a5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B9FCC;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [v8 setBackgroundIndicatorEnabled:v5 != 0 forBundleID:a3 orBundlePath:a4 replyBlock:v10];
  LOBYTE(a4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a4;
}

- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9BA0A8;
  v6[3] = &unk_1E753E2E8;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 gyroCalibrationDatabaseSupportsMiniCalibrationWithReplyBlock:v6];
  LOBYTE(a3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return a3;
}

- (unsigned)timeSyncMachTimeStamp:(unint64_t *)a3 oscarTimeStamp:(unint64_t *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9BA1A0;
  v8[3] = &unk_1E753E6A8;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = &v9;
  [v6 getOscarTimeSyncWithReplyBlock:v8];
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return a3;
}

- (BOOL)getVisitHistoryAccessAllowedTime:(double *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA638;
  v10[3] = &unk_1E753E6D0;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 getVisitHistoryAccessAllowedTimeForBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (BOOL)getVisitHistoryAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA740;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 getVisitHistoryAccessForBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (BOOL)getLearnedRoutesAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA848;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 getLearnedRoutesAccessForBundleID:a4 orBundlePath:a5 replyBlock:v10];
  LOBYTE(a5) = *(v12 + 6) != 0;
  _Block_object_dispose(&v11, 8);
  return a5;
}

- (__CFArray)copyRecentLocationsBufferStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9BA92C;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [v2 getRecentLocationsBufferStatusWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)a3 toMachContinuousTime:(double)a4
{
  v4 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](v4, sel_triggerRecentLocationsRevisedFromMachContinuousTime_toMachContinuousTime_replyBlock_);
}

- (id)fetchRecentLocationAtCfAbsoluteTime:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = -[CLRecentLocationsFetchOptions initWithDate:](v5, "initWithDate:", [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a3]);
  v7 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BAE88;
  v10[3] = &unk_1E753E6F8;
  v10[4] = &v11;
  [v7 fetchRecentLocationsWithOptions:v6 replyBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)fetchRecentLocationAtMachContinuousTime:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = -[CLRecentLocationsFetchOptions initWithMachContinuousTimeSeconds:](v5, "initWithMachContinuousTimeSeconds:", [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3]);
  v7 = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BB408;
  v10[3] = &unk_1E753E6F8;
  v10[4] = &v11;
  [v7 fetchRecentLocationsWithOptions:v6 replyBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)requestRouteReconstructionForPedestrian
{
  v2 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](v2, sel_requestRouteReconstructionForPedestrianWithReplyBlock_);
}

- (void)notifyPassKitPayment:(id)a3 transaction:(id)a4 info:(id)a5
{
  v8 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  [v8 notifyPassKitPayment:a3 transaction:a4 info:a5];
}

- (void)notifyWeatherForecast:(id)a3 airQualityConditions:(id)a4 hourlyForecasts:(id)a5 dailyForecasts:(id)a6 latitude:(double)a7 longitude:(double)a8
{
  v14 = [(CLLocationInternalClient *)self synchronousRemoteObject];

  [v14 notifyWeatherForecast:a3 airQualityConditions:a4 hourlyForecasts:a5 dailyForecasts:a6 latitude:a7 longitude:a8];
}

@end