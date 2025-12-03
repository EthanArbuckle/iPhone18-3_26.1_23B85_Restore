@interface CLLocationInternalClient
+ (id)sharedServiceClient;
- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error;
- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error;
- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power;
- (__CFArray)copyActivityAlarms;
- (__CFArray)copyGnssBandsInUse;
- (__CFArray)copyRecentLocationsBufferStatus;
- (__CFArray)copyTechnologiesInUse;
- (__CFDictionary)copyActiveClientsUsingLocation;
- (__CFDictionary)copyAppsUsingLocation;
- (__CFDictionary)copyInternalState;
- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)identifier orBundlePath:(__CFString *)path;
- (__CFDictionary)copyNearbyAssetSettings;
- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)file;
- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)version contentVersion:(int *)contentVersion;
- (__CFDictionary)copyZaxisStats;
- (double)modifyOrSetAuthorizationTime:(double)time forBundleID:(id)d orBundlePath:(id)path;
- (id)applyArchivedAuthorizationDecisions:(id)decisions;
- (id)asynchronousRemoteObject;
- (id)connection;
- (id)fetchRecentLocationAtCfAbsoluteTime:(double)time;
- (id)fetchRecentLocationAtMachContinuousTime:(double)time;
- (id)getAccessoryMotionSensorLogs;
- (id)getArchivedAuthorizationDecisionsWithError:(id *)error;
- (id)getEEDCloakingKey:(id *)key;
- (id)getEEDEmergencyContactNames:(id *)names;
- (id)getMotionSensorLogs;
- (id)getOdometryBatchedLocations;
- (id)getPipelinedCache;
- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error;
- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)enabled;
- (id)setTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path statusData:(id)data;
- (id)synchronousRemoteObject;
- (id)timeZoneAtLocation:(id)location;
- (id)triggerExpiredAuthorizationPurgeOnClientManager;
- (int)getAccessoryPASCDTransmissionState;
- (int)getAccessoryTypeBitSet;
- (int)getStatusBarIconState;
- (unsigned)clearLocationAuthorizations;
- (unsigned)configure:(id)configure;
- (unsigned)copyLastLog;
- (unsigned)deleteCurrentEmergencyLocationAsset;
- (unsigned)displayStatistics;
- (unsigned)dumpLogs:(__CFString *)logs;
- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)enabled;
- (unsigned)getAuthorizationStatus:(int *)status forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getAuthorizationStatusForApp:(int *)app withAuditToken:(id *)token;
- (unsigned)getControlPlaneStatusReportClear:(int)clear startTime:(double *)time endTime:(double *)endTime latitude:(double *)latitude longitude:(double *)longitude altitude:(double *)altitude accuracy:(double *)accuracy status:(unsigned int *)self0;
- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)version andContentVersion:(int *)contentVersion;
- (unsigned)getGestureServiceEnabled:(char *)enabled;
- (unsigned)getGroundAltitudeForBundleID:(__CFString *)d orBundlePath:(__CFString *)path location:(id)location groundAltitude:(id *)altitude;
- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)fit atTemperature:(float)temperature;
- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)temperatures;
- (unsigned)getIncidentalUseMode:(int *)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getLocationForBundleID:(__CFString *)d orBundlePath:(__CFString *)path dynamicAccuracyReductionEnabled:(unsigned __int8)enabled allowsAlteredAccessoryLocations:(unsigned __int8)locations location:(id *)location;
- (unsigned)getLocationServicesEnabled:(char *)enabled;
- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)state;
- (unsigned)getPrecisionPermission:(char *)permission forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getPrivateMode;
- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)calibration;
- (unsigned)gyroCalibrationDatabaseWipe;
- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)valid temperature:(float)temperature variance:(id)variance timestamp:(double)timestamp;
- (unsigned)performMigration;
- (unsigned)pingDaemon;
- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)d orBundlePath:(__CFString *)path enabled:(unsigned __int8)enabled;
- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path orAuditToken:(id *)token byLocationButton:(unsigned __int8)button voiceInteractionEnabled:(unsigned __int8)enabled;
- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)shouldDisplayEEDUI;
- (unsigned)shutdownDaemon;
- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)timeSyncMachTimeStamp:(unint64_t *)stamp oscarTimeStamp:(unint64_t *)timeStamp;
- (unsigned)updatePromptedLatitude:(double)latitude longitude:(double)longitude;
- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block;
- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)d replyBlock:(id)block;
- (void)clearLocationAuthorizationForBundleId:(__CFString *)id orBundlePath:(__CFString *)path;
- (void)getLocationDefaultForKey:(__CFString *)key;
- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block;
- (void)notifyPassKitPayment:(id)payment transaction:(id)transaction info:(id)info;
- (void)notifyWeatherForecast:(id)forecast airQualityConditions:(id)conditions hourlyForecasts:(id)forecasts dailyForecasts:(id)dailyForecasts latitude:(double)latitude longitude:(double)longitude;
- (void)requestRouteReconstructionForPedestrian;
- (void)setGestureServiceEnabled:(unsigned __int8)enabled;
- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value;
- (void)setLocationServicesEnabled:(unsigned __int8)enabled;
- (void)setPrivateMode:(unsigned __int8)mode;
- (void)setTrackRunHint:(id *)hint;
- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime;
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B87F9C0;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [synchronousRemoteObject getTechnologiesInUseWithReplyBlock:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B8846AC;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [synchronousRemoteObject getGnssBandsInUseWithReplyBlock:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B887888;
  v11[3] = &unk_1E753E518;
  v11[4] = &v12;
  [synchronousRemoteObject getAccessoryTypeBitSetWithReplyBlock:v11];
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

- (unsigned)getIncidentalUseMode:(int *)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B1B70;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = mode;
  [synchronousRemoteObject getIncidentalUseModeForBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return path;
}

- (void)clearLocationAuthorizationForBundleId:(__CFString *)id orBundlePath:(__CFString *)path
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B1D50;
  v7[3] = &unk_1E753DC90;
  v7[4] = v8;
  [synchronousRemoteObject resetClientForBundleId:id orBundlePath:path withReplyBlock:v7];
  _Block_object_dispose(v8, 8);
}

- (unsigned)clearLocationAuthorizations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B1E28;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [synchronousRemoteObject resetAllClientsWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getArchivedAuthorizationDecisionsWithError:(id *)error
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B1FFC;
  v10[3] = &unk_1E753E310;
  v10[4] = &v11;
  v10[5] = &v17;
  [synchronousRemoteObject getArchivedAuthorizationDecisionsWithReplyBlock:v10];
  v5 = v18[5];
  v6 = v12[5];
  if (!v18[5] && !v12[5])
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.locationd.internalservice.errorDomain" code:1 userInfo:0];
    v12[5] = v7;
  }

  if (error)
  {
    *error = v12[5];
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

- (id)applyArchivedAuthorizationDecisions:(id)decisions
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
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
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B9B21FC;
    v11[3] = &unk_1E753E338;
    v11[4] = &v16;
    v11[5] = &v12;
    [synchronousRemoteObject applyArchivedAuthorizationDecisions:decisions withConfirmationToken:uUID replyBlock:v11];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2320;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [synchronousRemoteObject getAppsUsingLocationWithReplyBlock:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2428;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [synchronousRemoteObject getActiveClientsUsingLocationWithReplyBlock:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2530;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [synchronousRemoteObject getClientManagerInternalStateWithReplyBlock:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B2618;
  v5[3] = &unk_1E753E360;
  v5[4] = &v6;
  [synchronousRemoteObject getZaxisStatsWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value
{
  v12 = *MEMORY[0x1E69E9840];
  if (key)
  {
    if (value)
    {
      [MEMORY[0x1E696AE40] dataWithPropertyList:value format:200 options:0 error:0];
    }

    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v10 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](synchronousRemoteObject, sel_setLocationDefaultForKey_andValue_replyBlock_);
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

- (void)getLocationDefaultForKey:(__CFString *)key
{
  keyCopy = key;
  if (key)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = sub_19B9B1FE0;
    v12 = sub_19B9B1FF0;
    v13 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B2B30;
    v7[3] = &unk_1E753E3B0;
    v7[4] = &v8;
    [synchronousRemoteObject getLocationDefaultForKey:keyCopy replyBlock:v7];
    v5 = v9[5];
    if (v5)
    {
      keyCopy = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    }

    else
    {
      keyCopy = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  return keyCopy;
}

- (id)timeZoneAtLocation:(id)location
{
  if (!location)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[CLLocationInternalClient timeZoneAtLocation:]") description:{@"LocationInternal.m", 665, @"Invalid parameter not satisfying: %@", @"nil != location"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  if (location)
  {
    [location clientLocation];
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
  [synchronousRemoteObject timeZoneForLocation:v10 replyBlock:v9];
  v6 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)setPrivateMode:(unsigned __int8)mode
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](synchronousRemoteObject, sel_setPrivateMode_replyBlock_);
}

- (unsigned)getPrivateMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B30C8;
  v5[3] = &unk_1E753E400;
  v5[4] = &v6;
  [synchronousRemoteObject getPrivateMode:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B31A0;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [synchronousRemoteObject pingDaemonWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLocationServicesEnabled:(unsigned __int8)enabled
{
  [-[CLLocationInternalClient synchronousRemoteObject](self "synchronousRemoteObject")];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.locationd", v3, v4);
}

- (unsigned)getLocationServicesEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B3488;
    v6[3] = &unk_1E753E2E8;
    v6[4] = &v7;
    v6[5] = enabledCopy;
    [synchronousRemoteObject getLocationServicesEnabledWithReplyBlock:v6];
    LOBYTE(enabledCopy) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return enabledCopy;
}

- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B35AC;
  v7[3] = &unk_1E753DC90;
  v7[4] = &v8;
  [synchronousRemoteObject setAuthorizationPromptMapDisplayEnabled:enabledCopy != 0 replyBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B3834;
    v6[3] = &unk_1E753E428;
    v6[4] = &v7;
    v6[5] = enabledCopy;
    [synchronousRemoteObject getAuthorizationPromptMapDisplayEnabledWithReplyBlock:v6];
    LOBYTE(enabledCopy) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return enabledCopy;
}

- (id)setTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path statusData:(id)data
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_19B9B1FE0;
  v18 = sub_19B9B1FF0;
  v19 = 0;
  if (!data)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"-[CLLocationInternalClient setTemporaryAuthorizationStatusForBundleId:orBundlePath:statusData:]") description:{@"LocationInternal.m", 788, @"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B39D0;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  [synchronousRemoteObject setTemporaryAuthorizationStatusForBundleId:id orBundlePath:path statusData:data replyBlock:v13];
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B3C84;
  v11[3] = &unk_1E753E450;
  v11[4] = &v12;
  v11[5] = error;
  [synchronousRemoteObject getTemporaryAuthorizationStatusForBundleId:id orBundlePath:path replyBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (double)modifyOrSetAuthorizationTime:(double)time forBundleID:(id)d orBundlePath:(id)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0xBFF0000000000000;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B3F38;
  v11[3] = &unk_1E753E478;
  v11[4] = &v12;
  [synchronousRemoteObject modifyOrSetAuthorizationTime:d forBundleID:path orBundlePath:v11 replyBlock:time];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B41CC;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [synchronousRemoteObject triggerExpiredAuthorizationPurgeWithReplyBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setGestureServiceEnabled:(unsigned __int8)enabled
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](synchronousRemoteObject, sel_setGestureServiceEnabled_replyBlock_);
}

- (unsigned)getGestureServiceEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9B4620;
    v6[3] = &unk_1E753E428;
    v6[4] = &v7;
    v6[5] = enabledCopy;
    [synchronousRemoteObject getGestureServiceEnabledWithReplyBlock:v6];
    LOBYTE(enabledCopy) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return enabledCopy;
}

- (unsigned)getAuthorizationStatusForApp:(int *)app withAuditToken:(id *)token
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B4720;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = app;
  v7 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v7;
  [synchronousRemoteObject getAuthorizationStatusForAppWithAuditToken:v9 replyBlock:v10];
  LOBYTE(token) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return token;
}

- (unsigned)getAuthorizationStatus:(int *)status forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B4820;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = status;
  [synchronousRemoteObject getAuthorizationStatusForBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return path;
}

- (unsigned)getPrecisionPermission:(char *)permission forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B4AFC;
  v18[3] = &unk_1E753E4A0;
  v18[5] = &v19;
  v18[6] = permission;
  v18[4] = &v25;
  [synchronousRemoteObject getPrecisionPermissionForBundleID:d orBundlePath:path replyBlock:v18];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B4D94;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [synchronousRemoteObject performMigrationWithReplyBlock:v9];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B4FF4;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [synchronousRemoteObject shutdownDaemonWithReplyBlock:v9];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B5250;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [synchronousRemoteObject displayStatisticsWithReplyBlock:v9];
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

- (unsigned)dumpLogs:(__CFString *)logs
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B54B8;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  [synchronousRemoteObject dumpLogsWithDescription:logs replyBlock:v11];
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

- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)identifier orBundlePath:(__CFString *)path
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B55A8;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  [synchronousRemoteObject getMonitoredRegionsForBundleID:identifier orBundlePath:path replyBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9B5794;
  v15[3] = &unk_1E753E4C8;
  v15[4] = &v20;
  v15[5] = &v26;
  v15[6] = &v16;
  [synchronousRemoteObject checkAndExerciseAuthorizationForBundleID:d orBundlePath:path services:services replyBlock:v15];
  v11 = v21[5];
  if ((v17[3] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
    v21[5] = v12;
  }

  if (error)
  {
    *error = v21[5];
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v13;
}

- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B9B5EBC;
  v14[3] = &unk_1E753E338;
  v14[4] = &v15;
  v14[5] = &v21;
  [synchronousRemoteObject deleteInterestZoneWithId:id registeredForBundleId:bundleId orBundlePath:path replyBlock:v14];
  v11 = v16[5];
  if (error)
  {
    *error = v16[5];
  }

  v12 = *(v22 + 24) != 0;
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

- (unsigned)getLocationForBundleID:(__CFString *)d orBundlePath:(__CFString *)path dynamicAccuracyReductionEnabled:(unsigned __int8)enabled allowsAlteredAccessoryLocations:(unsigned __int8)locations location:(id *)location
{
  if (!location)
  {
    return 0;
  }

  locationsCopy = locations;
  enabledCopy = enabled;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9B600C;
  v15[3] = &unk_1E753E450;
  v15[4] = &v16;
  v15[5] = location;
  [synchronousRemoteObject getLocationForBundleID:d orBundlePath:path dynamicAccuracyReductionEnabled:enabledCopy != 0 allowsAlteredAccessoryLocations:locationsCopy != 0 replyBlock:v15];
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v13;
}

- (unsigned)getGroundAltitudeForBundleID:(__CFString *)d orBundlePath:(__CFString *)path location:(id)location groundAltitude:(id *)altitude
{
  v6 = 0;
  if (location && altitude)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B9B6154;
    v13[3] = &unk_1E753E4F0;
    v13[4] = &v14;
    v13[5] = altitude;
    [synchronousRemoteObject getGroundAltitudeForBundleID:d orBundlePath:path location:location replyBlock:v13];
    v6 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return v6;
}

- (void)setTrackRunHint:(id *)hint
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B6CD8;
  v11[3] = &unk_1E753E518;
  v11[4] = &v12;
  [synchronousRemoteObject getAccessoryPASCDTransmissionStateWithReplyBlock:v11];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B7150;
  v11[3] = &unk_1E753E360;
  v11[4] = &v12;
  [synchronousRemoteObject getOdometryBatchedLocationsWithReplyBlock:v11];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B76D0;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [synchronousRemoteObject copyLastLogWithReplyBlock:v9];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B7C8C;
  v5[3] = &unk_1E753E518;
  v5[4] = &v6;
  [synchronousRemoteObject getStatusBarIconState:v5];
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
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B7DC8;
    v9[3] = &unk_1E753E388;
    v9[4] = &v10;
    [synchronousRemoteObject getPipelinedCacheWithReply:v9];
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

- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)fit atTemperature:(float)temperature
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B7EE0;
  v8[3] = &unk_1E753E450;
  v8[4] = &v9;
  v8[5] = fit;
  [synchronousRemoteObject getGyroCalibrationDatabaseBiasFitAtTemperature:v8 withReply:COERCE_DOUBLE(LODWORD(temperature))];
  LOBYTE(fit) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return fit;
}

- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power
{
  if (power)
  {
    intValue = [power intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B802C;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [synchronousRemoteObject startStopAdvertisingBeacon:beacon atPower:intValue replyBlock:v10];
  v8 = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)valid temperature:(float)temperature variance:(id)variance timestamp:(double)timestamp
{
  var2 = variance.var2;
  var1 = variance.var1;
  var0 = variance.var0;
  v11 = valid.var2;
  v12 = valid.var1;
  v13 = valid.var0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_19B9B8164;
  v23[3] = &unk_1E753DC90;
  v23[4] = &v24;
  *&v15 = v12;
  *&v16 = v11;
  *&v17 = temperature;
  *&v18 = var0;
  *&v19 = var1;
  *&v20 = var2;
  [synchronousRemoteObject insertGyroCalibrationDatabaseBiasEstimateIfValid:v23 temperature:COERCE_DOUBLE(LODWORD(v13)) variance:v15 timestamp:v16 replyBlock:{v17, v18, v19, v20, timestamp}];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B823C;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [synchronousRemoteObject gyroCalibrationDatabaseWipeWithReplyBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)temperatures
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9B8318;
  v6[3] = &unk_1E753E2E8;
  v6[4] = &v7;
  v6[5] = temperatures;
  [synchronousRemoteObject gyroCalibrationDatabaseGetNumTemperaturesWithReplyBlock:v6];
  LOBYTE(temperatures) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return temperatures;
}

- (unsigned)configure:(id)configure
{
  v3 = *&configure.var7;
  v4 = *&configure.var0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B8414;
  v7[3] = &unk_1E753DC90;
  v7[4] = &v8;
  [synchronousRemoteObject configure:v4 replyBlock:{v3, v7}];
  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (unsigned)getControlPlaneStatusReportClear:(int)clear startTime:(double *)time endTime:(double *)endTime latitude:(double *)latitude longitude:(double *)longitude altitude:(double *)altitude accuracy:(double *)accuracy status:(unsigned int *)self0
{
  v10 = 0;
  v36 = *MEMORY[0x1E69E9840];
  if (longitude && latitude && time && endTime && status)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = sub_19B9B1FE0;
    v33 = sub_19B9B1FF0;
    v34 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B9B87A8;
    v28[3] = &unk_1E753E568;
    v28[6] = endTime;
    v28[7] = latitude;
    v28[8] = longitude;
    v28[9] = altitude;
    v28[10] = accuracy;
    v28[11] = status;
    v28[4] = &v29;
    v28[5] = time;
    [synchronousRemoteObject getControlPlaneStatusReportClear:clear replyBlock:v28];
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
      synchronousRemoteObject2 = [(CLLocationInternalClient *)self synchronousRemoteObject];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B9B87E4;
      v26[3] = &unk_1E753E568;
      v26[6] = endTime;
      v26[7] = latitude;
      v26[8] = longitude;
      v26[9] = altitude;
      v26[10] = accuracy;
      v26[11] = status;
      v26[4] = &v29;
      v26[5] = time;
      [synchronousRemoteObject2 getControlPlaneStatusReportClear:clear replyBlock:v26];
    }

    v10 = v30[5] == 0;
LABEL_24:
    _Block_object_dispose(&v29, 8);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)version andContentVersion:(int *)contentVersion
{
  v4 = 0;
  if (version && contentVersion)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B8900;
    v9[3] = &unk_1E753E590;
    v9[5] = version;
    v9[6] = contentVersion;
    v9[4] = &v10;
    [synchronousRemoteObject getEmergencyLocationSettingsVersion:v9];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B89E4;
  v5[3] = &unk_1E753DC90;
  v5[4] = &v6;
  [synchronousRemoteObject deleteCurrentEmergencyLocationAsset:v5];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B8AE0;
  v5[3] = &unk_1E753E5B8;
  v5[4] = &v6;
  [synchronousRemoteObject copyNearbyAssetSettings:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)file
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9B1FE0;
  v12 = sub_19B9B1FF0;
  v13 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9B8C04;
  v7[3] = &unk_1E753E5B8;
  v7[4] = &v8;
  [synchronousRemoteObject copyNearbyAssetSettingsOfAccessoryFile:file withReply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)version contentVersion:(int *)contentVersion
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8D34;
  v9[3] = &unk_1E753E5E0;
  v9[4] = &v10;
  v9[5] = version;
  v9[6] = contentVersion;
  [synchronousRemoteObject copyRoutineAssetSettings:v9];
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
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B8E50;
  v5[3] = &unk_1E753E608;
  v5[4] = &v6;
  [synchronousRemoteObject shouldDisplayEEDUI:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getEEDCloakingKey:(id *)key
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B9B1FE0;
  v13 = sub_19B9B1FF0;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B8F58;
  v8[3] = &unk_1E753E450;
  v8[4] = &v9;
  v8[5] = key;
  [synchronousRemoteObject getEEDCloakingKeyWithReply:v8];
  v5 = *key;
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)getEEDEmergencyContactNames:(id *)names
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B9B1FE0;
  v13 = sub_19B9B1FF0;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9094;
  v8[3] = &unk_1E753E630;
  v8[4] = &v9;
  v8[5] = names;
  [synchronousRemoteObject getEEDEmergencyContactNamesWithReply:v8];
  v5 = *names;
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

    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B91F0;
    v7[3] = &unk_1E753E658;
    v7[4] = &v8;
    [synchronousRemoteObject getMotionSensorLogsWithReply:v7];
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

    synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9B9338;
    v7[3] = &unk_1E753E658;
    v7[4] = &v8;
    [synchronousRemoteObject getAccessoryMotionSensorLogsWithReply:v7];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path orAuditToken:(id *)token byLocationButton:(unsigned __int8)button voiceInteractionEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  buttonCopy = button;
  grantedCopy = granted;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B9484;
  v18[3] = &unk_1E753DC90;
  v18[4] = &v19;
  v15 = *&token->var0[4];
  v17[0] = *token->var0;
  v17[1] = v15;
  [synchronousRemoteObject setTemporaryAuthorizationGranted:grantedCopy != 0 forBundleID:d orBundlePath:path orAuditToken:v17 byLocationButton:buttonCopy != 0 voiceInteractionEnabled:enabledCopy != 0 replyBlock:v18];
  LOBYTE(path) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return path;
}

- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  grantedCopy = granted;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B9580;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [synchronousRemoteObject setTemporaryPreciseAuthorizationGranted:grantedCopy != 0 forBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return path;
}

- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9670;
  v8[3] = &unk_1E753DC90;
  v8[4] = &v9;
  [synchronousRemoteObject tearDownLocationAuthPromptForBundleID:d orBundlePath:path replyBlock:v8];
  LOBYTE(path) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return path;
}

- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9B982C;
  v6[3] = &unk_1E753E680;
  v6[4] = &v7;
  v6[5] = state;
  [synchronousRemoteObject getPinnedLocationAuthorizationStateWithReplyBlock:v6];
  LOBYTE(state) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return state;
}

- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  asynchronousRemoteObject = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](asynchronousRemoteObject, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_);
}

- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)d replyBlock:(id)block
{
  asynchronousRemoteObject = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](asynchronousRemoteObject, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_);
}

- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  asynchronousRemoteObject = [(CLLocationInternalClient *)self asynchronousRemoteObject];

  MEMORY[0x1EEE66B58](asynchronousRemoteObject, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_);
}

- (__CFArray)copyActivityAlarms
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9B99E4;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [synchronousRemoteObject getActivitiesWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)updatePromptedLatitude:(double)latitude longitude:(double)longitude
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B9CE0;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  [synchronousRemoteObject updatePromptedLatitude:v9 longitude:latitude replyBlock:longitude];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)d orBundlePath:(__CFString *)path enabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B9FCC;
  v10[3] = &unk_1E753DC90;
  v10[4] = &v11;
  [synchronousRemoteObject setBackgroundIndicatorEnabled:enabledCopy != 0 forBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return path;
}

- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)calibration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9BA0A8;
  v6[3] = &unk_1E753E2E8;
  v6[4] = &v7;
  v6[5] = calibration;
  [synchronousRemoteObject gyroCalibrationDatabaseSupportsMiniCalibrationWithReplyBlock:v6];
  LOBYTE(calibration) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return calibration;
}

- (unsigned)timeSyncMachTimeStamp:(unint64_t *)stamp oscarTimeStamp:(unint64_t *)timeStamp
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9BA1A0;
  v8[3] = &unk_1E753E6A8;
  v8[5] = stamp;
  v8[6] = timeStamp;
  v8[4] = &v9;
  [synchronousRemoteObject getOscarTimeSyncWithReplyBlock:v8];
  LOBYTE(stamp) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return stamp;
}

- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA638;
  v10[3] = &unk_1E753E6D0;
  v10[4] = &v11;
  v10[5] = time;
  [synchronousRemoteObject getVisitHistoryAccessAllowedTimeForBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return path;
}

- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA740;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = access;
  [synchronousRemoteObject getVisitHistoryAccessForBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 24) != 0;
  _Block_object_dispose(&v11, 8);
  return path;
}

- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA848;
  v10[3] = &unk_1E753E2E8;
  v10[4] = &v11;
  v10[5] = access;
  [synchronousRemoteObject getLearnedRoutesAccessForBundleID:d orBundlePath:path replyBlock:v10];
  LOBYTE(path) = *(v12 + 6) != 0;
  _Block_object_dispose(&v11, 8);
  return path;
}

- (__CFArray)copyRecentLocationsBufferStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9BA92C;
  v5[3] = &unk_1E753E388;
  v5[4] = &v6;
  [synchronousRemoteObject getRecentLocationsBufferStatusWithReplyBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](synchronousRemoteObject, sel_triggerRecentLocationsRevisedFromMachContinuousTime_toMachContinuousTime_replyBlock_);
}

- (id)fetchRecentLocationAtCfAbsoluteTime:(double)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = -[CLRecentLocationsFetchOptions initWithDate:](v5, "initWithDate:", [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:time]);
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BAE88;
  v10[3] = &unk_1E753E6F8;
  v10[4] = &v11;
  [synchronousRemoteObject fetchRecentLocationsWithOptions:v6 replyBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)fetchRecentLocationAtMachContinuousTime:(double)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B9B1FE0;
  v15 = sub_19B9B1FF0;
  v16 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = -[CLRecentLocationsFetchOptions initWithMachContinuousTimeSeconds:](v5, "initWithMachContinuousTimeSeconds:", [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:time]);
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BB408;
  v10[3] = &unk_1E753E6F8;
  v10[4] = &v11;
  [synchronousRemoteObject fetchRecentLocationsWithOptions:v6 replyBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)requestRouteReconstructionForPedestrian
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  MEMORY[0x1EEE66B58](synchronousRemoteObject, sel_requestRouteReconstructionForPedestrianWithReplyBlock_);
}

- (void)notifyPassKitPayment:(id)payment transaction:(id)transaction info:(id)info
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  [synchronousRemoteObject notifyPassKitPayment:payment transaction:transaction info:info];
}

- (void)notifyWeatherForecast:(id)forecast airQualityConditions:(id)conditions hourlyForecasts:(id)forecasts dailyForecasts:(id)dailyForecasts latitude:(double)latitude longitude:(double)longitude
{
  synchronousRemoteObject = [(CLLocationInternalClient *)self synchronousRemoteObject];

  [synchronousRemoteObject notifyWeatherForecast:forecast airQualityConditions:conditions hourlyForecasts:forecasts dailyForecasts:dailyForecasts latitude:latitude longitude:longitude];
}

@end