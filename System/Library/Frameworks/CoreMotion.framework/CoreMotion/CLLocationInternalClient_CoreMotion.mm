@interface CLLocationInternalClient_CoreMotion
+ (id)sharedServiceClient;
- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error;
- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error;
- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power;
- (__CFArray)copyActivityAlarms;
- (__CFArray)copyGnssBandsInUse;
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
- (id)getAccessoryMotionSensorLogs;
- (id)getArchivedAuthorizationDecisionsWithError:(id *)error;
- (id)getEEDCloakingKey:(id *)key;
- (id)getEEDEmergencyContactNames:(id *)names;
- (id)getMotionSensorLogs;
- (id)getOdometryBatchedLocations;
- (id)getPipelinedCache;
- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error;
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
- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value;
- (void)setTrackRunHint:(id *)hint;
@end

@implementation CLLocationInternalClient_CoreMotion

+ (id)sharedServiceClient
{
  if (qword_1ED71D590 != -1)
  {
    dispatch_once(&qword_1ED71D590, &unk_1F0E29D80);
  }

  return qword_1ED71D598;
}

- (id)synchronousRemoteObject
{
  objc_sync_enter(self);
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69AD378], v3, v4);
  objc_msgSend_intendToSyncServiceWithName_(v5, v6, @"CLInternalService");
  v9 = objc_msgSend_connection(self, v7, v8);
  v11 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v9, v10, &unk_1F0E3B1A0);
  objc_sync_exit(self);
  return v11;
}

- (id)connection
{
  objc_sync_enter(self);
  connection = self->_connection;
  if (!connection)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = objc_msgSend_initWithMachServiceName_options_(v4, v5, @"com.apple.locationd.synchronous", 4096);
    self->_connection = v6;
    v8 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v7, &unk_1F0E856C0);
    objc_msgSend_setRemoteObjectInterface_(v6, v9, v8);
    objc_msgSend_setInterruptionHandler_(self->_connection, v10, &unk_1F0E3B180);
    v11 = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B6FA58C;
    v16[3] = &unk_1E7532988;
    v16[4] = self;
    objc_msgSend_setInvalidationHandler_(v11, v12, v16);
    objc_msgSend_resume(self->_connection, v13, v14);
    connection = self->_connection;
  }

  objc_sync_exit(self);
  return connection;
}

- (id)asynchronousRemoteObject
{
  objc_sync_enter(self);
  v5 = objc_msgSend_connection(self, v3, v4);
  v7 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v5, v6, &unk_1F0E3B1C0);
  objc_sync_exit(self);
  return v7;
}

- (unsigned)getIncidentalUseMode:(int *)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, mode);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FAD34;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = mode;
  objc_msgSend_getIncidentalUseModeForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (void)clearLocationAuthorizationForBundleId:(__CFString *)id orBundlePath:(__CFString *)path
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, id);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6FAF14;
  v8[3] = &unk_1E75351C8;
  v8[4] = v9;
  objc_msgSend_resetClientForBundleId_orBundlePath_withReplyBlock_(v6, v7, id, path, v8);
  _Block_object_dispose(v9, 8);
}

- (unsigned)clearLocationAuthorizations
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FAFEC;
  v7[3] = &unk_1E75351C8;
  v7[4] = &v8;
  objc_msgSend_resetAllClientsWithReplyBlock_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)getArchivedAuthorizationDecisionsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_19B428ADC;
  v23 = sub_19B429064;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_19B428ADC;
  v17 = sub_19B429064;
  v18 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, error);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FB1A4;
  v12[3] = &unk_1E7535218;
  v12[4] = &v13;
  v12[5] = &v19;
  objc_msgSend_getArchivedAuthorizationDecisionsWithReplyBlock_(v4, v5, v12);
  v6 = v20[5];
  v7 = v14[5];
  if (!v20[5] && !v14[5])
  {
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"com.apple.locationd.internalservice.errorDomain", 1, 0);
    v14[5] = v9;
  }

  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (id)applyArchivedAuthorizationDecisions:(id)decisions
{
  v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, decisions);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_19B428ADC;
  v25 = sub_19B429064;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = 3;
  do
  {
    v9 = objc_msgSend_synchronousRemoteObject(self, v5, v6);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B6FB3A4;
    v16[3] = &unk_1E7535240;
    v16[4] = &v21;
    v16[5] = &v17;
    objc_msgSend_applyArchivedAuthorizationDecisions_withConfirmationToken_replyBlock_(v9, v10, decisions, v7, v16);
    if (v18[3])
    {
      v11 = v22[5];
      goto LABEL_7;
    }

    --v8;
  }

  while (v8);
  v11 = v22[5];
  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = objc_msgSend_initWithDomain_code_userInfo_(v12, v13, @"com.apple.locationd.internalservice.errorDomain", 1, 0);
    v22[5] = v11;
  }

LABEL_7:
  v14 = v11;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v14;
}

- (__CFDictionary)copyAppsUsingLocation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B428ADC;
  v12 = sub_19B429064;
  v13 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB4C8;
  v7[3] = &unk_1E7535268;
  v7[4] = &v8;
  objc_msgSend_getAppsUsingLocationWithReplyBlock_(v3, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyActiveClientsUsingLocation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B428ADC;
  v12 = sub_19B429064;
  v13 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB5D0;
  v7[3] = &unk_1E7535268;
  v7[4] = &v8;
  objc_msgSend_getActiveClientsUsingLocationWithReplyBlock_(v3, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFArray)copyTechnologiesInUse
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB6B4;
  v7[3] = &unk_1E7535290;
  v7[4] = &v8;
  objc_msgSend_getTechnologiesInUseWithReplyBlock_(v3, v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyInternalState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B428ADC;
  v12 = sub_19B429064;
  v13 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB7C0;
  v7[3] = &unk_1E7535268;
  v7[4] = &v8;
  objc_msgSend_getClientManagerInternalStateWithReplyBlock_(v3, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyZaxisStats
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB8A8;
  v7[3] = &unk_1E7535268;
  v7[4] = &v8;
  objc_msgSend_getZaxisStatsWithReplyBlock_(v3, v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFArray)copyGnssBandsInUse
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FB990;
  v7[3] = &unk_1E7535290;
  v7[4] = &v8;
  objc_msgSend_getGnssBandsInUseWithReplyBlock_(v3, v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value
{
  v13 = *MEMORY[0x1E69E9840];
  if (key)
  {
    if (value)
    {
      objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], a2, value, 200, 0, 0);
    }

    v10 = objc_msgSend_synchronousRemoteObject(self, a2, key);
    v11 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v10, sel_setLocationDefaultForKey_andValue_replyBlock_, key);
  }

  else
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "#Spi, Key is NULL!", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion setLocationDefaultForKey:value:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)getLocationDefaultForKey:(__CFString *)key
{
  keyCopy = key;
  if (key)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = sub_19B428ADC;
    v14 = sub_19B429064;
    v15 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, key);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B6FBEA8;
    v9[3] = &unk_1E75352B8;
    v9[4] = &v10;
    objc_msgSend_getLocationDefaultForKey_replyBlock_(v4, v5, keyCopy, v9);
    v7 = v11[5];
    if (v7)
    {
      keyCopy = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v6, v7, 0, 0, 0);
    }

    else
    {
      keyCopy = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return keyCopy;
}

- (id)timeZoneAtLocation:(id)location
{
  if (!location)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v11, "[CLLocationInternalClient_CoreMotion timeZoneAtLocation:]");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v13, v12, @"LocationInternal.m", 665, @"Invalid parameter not satisfying: %@", @"nil != location");
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_19B428ADC;
  v20 = sub_19B429064;
  v21 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, location);
  if (location)
  {
    objc_msgSend_clientLocation(location, v5, v6);
  }

  else
  {
    memset(v15, 0, 156);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B6FC14C;
  v14[3] = &unk_1E75352E0;
  v14[4] = &v16;
  objc_msgSend_timeZoneForLocation_replyBlock_(v7, v5, v15, v14);
  v8 = v17[5];
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (unsigned)getPrivateMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FC440;
  v7[3] = &unk_1E7535308;
  v7[4] = &v8;
  objc_msgSend_getPrivateMode_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)pingDaemon
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FC518;
  v7[3] = &unk_1E75351C8;
  v7[4] = &v8;
  objc_msgSend_pingDaemonWithReplyBlock_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)getLocationServicesEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, enabled);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FC800;
    v7[3] = &unk_1E75351F0;
    v7[4] = &v8;
    v7[5] = enabledCopy;
    objc_msgSend_getLocationServicesEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(enabledCopy) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return enabledCopy;
}

- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, enabled);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FCBAC;
    v7[3] = &unk_1E7535330;
    v7[4] = &v8;
    v7[5] = enabledCopy;
    objc_msgSend_getAuthorizationPromptMapDisplayEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(enabledCopy) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return enabledCopy;
}

- (id)setTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path statusData:(id)data
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_19B428ADC;
  v22 = sub_19B429064;
  v23 = 0;
  if (!data)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, "[CLLocationInternalClient_CoreMotion setTemporaryAuthorizationStatusForBundleId:orBundlePath:statusData:]");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v16, v15, @"LocationInternal.m", 788, @"Invalid parameter not satisfying: %@", @"data != nil");
  }

  v9 = objc_msgSend_synchronousRemoteObject(self, a2, id);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B6FCD48;
  v17[3] = &unk_1E75351C8;
  v17[4] = &v18;
  objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_replyBlock_(v9, v10, id, path, data, v17);
  v11 = v19[5];
  _Block_object_dispose(&v18, 8);
  return v11;
}

- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_19B428ADC;
  v17 = sub_19B429064;
  v18 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, id);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FCFFC;
  v12[3] = &unk_1E7535358;
  v12[4] = &v13;
  v12[5] = error;
  objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_replyBlock_(v8, v9, id, path, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (double)modifyOrSetAuthorizationTime:(double)time forBundleID:(id)d orBundlePath:(id)path
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xBFF0000000000000;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, d);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FD2B0;
  v12[3] = &unk_1E7535380;
  v12[4] = &v13;
  objc_msgSend_modifyOrSetAuthorizationTime_forBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v12, time);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)triggerExpiredAuthorizationPurgeOnClientManager
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B428ADC;
  v12 = sub_19B429064;
  v13 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6FD544;
  v7[3] = &unk_1E75351C8;
  v7[4] = &v8;
  objc_msgSend_triggerExpiredAuthorizationPurgeWithReplyBlock_(v3, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)getGestureServiceEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, enabled);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FD998;
    v7[3] = &unk_1E7535330;
    v7[4] = &v8;
    v7[5] = enabledCopy;
    objc_msgSend_getGestureServiceEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(enabledCopy) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return enabledCopy;
}

- (unsigned)getAuthorizationStatusForApp:(int *)app withAuditToken:(id *)token
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, app);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FDA98;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = app;
  v7 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v7;
  objc_msgSend_getAuthorizationStatusForAppWithAuditToken_replyBlock_(v6, v8, v10, v11);
  LOBYTE(token) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return token;
}

- (unsigned)getAuthorizationStatus:(int *)status forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, status);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FDB98;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = status;
  objc_msgSend_getAuthorizationStatusForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)getPrecisionPermission:(char *)permission forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_19B428ADC;
  v24 = sub_19B429064;
  v25 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, permission);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_19B6FDE74;
  v19[3] = &unk_1E75353A8;
  v19[5] = &v20;
  v19[6] = permission;
  v19[4] = &v26;
  objc_msgSend_getPrecisionPermissionForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v19);
  v10 = v21;
  if (v21[5])
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v11 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      v12 = v21[5];
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }
    }

    v13 = qword_1ED71C7E0;
    v14 = os_signpost_enabled(qword_1ED71C7E0);
    v10 = v21;
    if (v14)
    {
      v15 = v21[5];
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v15;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalGetPrecisionPermission failed", "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      v10 = v21;
    }
  }

  v16 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unsigned)performMigration
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FE10C;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_performMigrationWithReplyBlock_(v3, v4, v11);
  if (!*(v13 + 24))
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "#Spi, _CLInternalPerformMigration failed", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion performMigration]", "CoreLocation: %s\n", v7);
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

- (unsigned)shutdownDaemon
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FE36C;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_shutdownDaemonWithReplyBlock_(v3, v4, v11);
  if (!*(v13 + 24))
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "#Spi, _CLShutdownDaemon failed", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion shutdownDaemon]", "CoreLocation: %s\n", v7);
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

- (unsigned)displayStatistics
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FE5C8;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_displayStatisticsWithReplyBlock_(v3, v4, v11);
  if (!*(v13 + 24))
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "#Spi, _CLDisplayStatistics failed", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion displayStatistics]", "CoreLocation: %s\n", v7);
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

- (unsigned)dumpLogs:(__CFString *)logs
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, logs);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FE830;
  v12[3] = &unk_1E75351C8;
  v12[4] = &v13;
  objc_msgSend_dumpLogsWithDescription_replyBlock_(v4, v5, logs, v12);
  if (!*(v14 + 24))
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v6 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "#Spi, _CLDumpLogs failed", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion dumpLogs:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)identifier orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, identifier);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B6FE920;
  v10[3] = &unk_1E7535268;
  v10[4] = &v11;
  objc_msgSend_getMonitoredRegionsForBundleID_orBundlePath_replyBlock_(v6, v7, identifier, path, v10);
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B428ADC;
  v26 = sub_19B429064;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, d);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B6FEB0C;
  v17[3] = &unk_1E75353D0;
  v17[4] = &v22;
  v17[5] = &v28;
  v17[6] = &v18;
  objc_msgSend_checkAndExerciseAuthorizationForBundleID_orBundlePath_services_replyBlock_(v10, v11, d, path, services, v17);
  v12 = v23[5];
  if ((v19[3] & 1) == 0)
  {
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, *MEMORY[0x1E696A250], 4097, 0);
    v23[5] = v14;
  }

  if (error)
  {
    *error = v23[5];
  }

  v15 = *(v29 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v15;
}

- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_19B428ADC;
  v20 = sub_19B429064;
  v21 = 0;
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, id);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B6FF234;
  v15[3] = &unk_1E7535240;
  v15[4] = &v16;
  v15[5] = &v22;
  objc_msgSend_deleteInterestZoneWithId_registeredForBundleId_orBundlePath_replyBlock_(v10, v11, id, bundleId, path, v15);
  v12 = v17[5];
  if (error)
  {
    *error = v17[5];
  }

  v13 = *(v23 + 24) != 0;
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

- (unsigned)getLocationForBundleID:(__CFString *)d orBundlePath:(__CFString *)path dynamicAccuracyReductionEnabled:(unsigned __int8)enabled allowsAlteredAccessoryLocations:(unsigned __int8)locations location:(id *)location
{
  if (!location)
  {
    return 0;
  }

  locationsCopy = locations;
  enabledCopy = enabled;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12 = objc_msgSend_synchronousRemoteObject(self, a2, d);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B6FF384;
  v16[3] = &unk_1E7535358;
  v16[4] = &v17;
  v16[5] = location;
  objc_msgSend_getLocationForBundleID_orBundlePath_dynamicAccuracyReductionEnabled_allowsAlteredAccessoryLocations_replyBlock_(v12, v13, d, path, enabledCopy != 0, locationsCopy != 0, v16);
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (unsigned)getGroundAltitudeForBundleID:(__CFString *)d orBundlePath:(__CFString *)path location:(id)location groundAltitude:(id *)altitude
{
  v6 = 0;
  if (location && altitude)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = objc_msgSend_synchronousRemoteObject(self, a2, d);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B6FF4CC;
    v14[3] = &unk_1E75353F8;
    v14[4] = &v15;
    v14[5] = altitude;
    objc_msgSend_getGroundAltitudeForBundleID_orBundlePath_location_replyBlock_(v11, v12, d, path, location, v14);
    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v6;
}

- (void)setTrackRunHint:(id *)hint
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "#Spi,CLTR,CLTrackRunHint received,framework side", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion setTrackRunHint:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, hint, 16);
  v12 = objc_msgSend_synchronousRemoteObject(self, v10, v11);
  objc_msgSend_setTrackRunHint_replyBlock_(v12, v13, v9, &unk_1F0E3B280);
  v14 = *MEMORY[0x1E69E9840];
}

- (int)getAccessoryTypeBitSet
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B70004C;
  v13[3] = &unk_1E7535420;
  v13[4] = &v14;
  objc_msgSend_getAccessoryTypeBitSetWithReplyBlock_(v3, v4, v13);
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(v15 + 6);
    *buf = 67109120;
    v21 = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,%d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v8 = *(v15 + 6);
    v18 = 67109120;
    v19 = v8;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryTypeBitSet]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)getAccessoryPASCDTransmissionState
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 4;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B700484;
  v13[3] = &unk_1E7535420;
  v13[4] = &v14;
  objc_msgSend_getAccessoryPASCDTransmissionStateWithReplyBlock_(v3, v4, v13);
  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
  }

  v5 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(v15 + 6);
    *buf = 67109120;
    v21 = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,%d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v8 = *(v15 + 6);
    v18 = 67109120;
    v19 = v8;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getAccessoryPASCDTransmissionState]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)getOdometryBatchedLocations
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_19B428ADC;
  v22 = sub_19B429064;
  v23 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B7008FC;
  v17[3] = &unk_1E7535268;
  v17[4] = &v18;
  objc_msgSend_getOdometryBatchedLocationsWithReplyBlock_(v3, v4, v17);
  if (v19[5])
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_msgSend_count(v19[5], v6, v7);
      *buf = 134349056;
      v27 = v8;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,returned with count,%{public}lu", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v12 = objc_msgSend_count(v19[5], v10, v11);
      v24 = 134349056;
      v25 = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLLocationInternalClient_CoreMotion getOdometryBatchedLocations]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unsigned)copyLastLog
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B700E7C;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_copyLastLogWithReplyBlock_(v3, v4, v11);
  if (!*(v13 + 24))
  {
    if (qword_1ED71C7D0 != -1)
    {
      dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
    }

    v5 = qword_1ED71C7E0;
    if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "#Spi, _CLCopyLastLog failed", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D0 != -1)
      {
        dispatch_once(&qword_1ED71C7D0, &unk_1F0E28020);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLLocationInternalClient_CoreMotion copyLastLog]", "CoreLocation: %s\n", v7);
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

- (int)getStatusBarIconState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B701438;
  v7[3] = &unk_1E7535420;
  v7[4] = &v8;
  objc_msgSend_getStatusBarIconState_(v3, v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)getPipelinedCache
{
  v4 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B428ADC;
  v16 = sub_19B429064;
  v17 = 0;
  do
  {
    v5 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B701574;
    v11[3] = &unk_1E7535290;
    v11[4] = &v12;
    objc_msgSend_getPipelinedCacheWithReply_(v5, v6, v11);
    v7 = v13[5];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 >= 9;
    }

    ++v4;
  }

  while (!v8);
  v9 = v7;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)fit atTemperature:(float)temperature
{
  fitCopy = fit;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, fit);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B70168C;
  v9[3] = &unk_1E7535358;
  v9[4] = &v10;
  v9[5] = fitCopy;
  objc_msgSend_getGyroCalibrationDatabaseBiasFitAtTemperature_withReply_(v6, v7, v9, COERCE_DOUBLE(LODWORD(temperature)));
  LOBYTE(fitCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return fitCopy;
}

- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power
{
  if (power)
  {
    v6 = objc_msgSend_intValue(power, a2, beacon);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, beacon);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B7017D8;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_startStopAdvertisingBeacon_atPower_replyBlock_(v7, v8, beacon, v6, v11);
  v9 = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)valid temperature:(float)temperature variance:(id)variance timestamp:(double)timestamp
{
  var2 = variance.var2;
  var1 = variance.var1;
  var0 = variance.var0;
  v12 = valid.var2;
  v13 = valid.var1;
  v14 = valid.var0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v15 = objc_msgSend_synchronousRemoteObject(self, a2, v6);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_19B701910;
  v25[3] = &unk_1E75351C8;
  v25[4] = &v26;
  *&v16 = v13;
  *&v17 = v12;
  *&v18 = temperature;
  *&v19 = var0;
  *&v20 = var1;
  *&v21 = var2;
  objc_msgSend_insertGyroCalibrationDatabaseBiasEstimateIfValid_temperature_variance_timestamp_replyBlock_(v15, v22, v25, COERCE_DOUBLE(LODWORD(v14)), v16, v17, v18, v19, v20, v21, timestamp);
  v23 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v23;
}

- (unsigned)gyroCalibrationDatabaseWipe
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B7019E8;
  v7[3] = &unk_1E75351C8;
  v7[4] = &v8;
  objc_msgSend_gyroCalibrationDatabaseWipeWithReplyBlock_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)temperatures
{
  temperaturesCopy = temperatures;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, temperatures);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B701AC4;
  v7[3] = &unk_1E75351F0;
  v7[4] = &v8;
  v7[5] = temperaturesCopy;
  objc_msgSend_gyroCalibrationDatabaseGetNumTemperaturesWithReplyBlock_(v4, v5, v7);
  LOBYTE(temperaturesCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return temperaturesCopy;
}

- (unsigned)configure:(id)configure
{
  v3 = *&configure.var7;
  v4 = *&configure.var0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, *&configure.var0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B701BC0;
  v8[3] = &unk_1E75351C8;
  v8[4] = &v9;
  objc_msgSend_configure_replyBlock_(v5, v6, v4, v3, v8);
  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)version andContentVersion:(int *)contentVersion
{
  v4 = 0;
  if (version && contentVersion)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = objc_msgSend_synchronousRemoteObject(self, a2, version);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B7020AC;
    v10[3] = &unk_1E7535498;
    v10[5] = version;
    v10[6] = contentVersion;
    v10[4] = &v11;
    objc_msgSend_getEmergencyLocationSettingsVersion_(v7, v8, v10);
    v4 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v4;
}

- (unsigned)deleteCurrentEmergencyLocationAsset
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B702190;
  v7[3] = &unk_1E75351C8;
  v7[4] = &v8;
  objc_msgSend_deleteCurrentEmergencyLocationAsset_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyNearbyAssetSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B428ADC;
  v12 = sub_19B429064;
  v13 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B70228C;
  v7[3] = &unk_1E75354C0;
  v7[4] = &v8;
  objc_msgSend_copyNearbyAssetSettings_(v3, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)file
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B428ADC;
  v13 = sub_19B429064;
  v14 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, file);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B7023B0;
  v8[3] = &unk_1E75354C0;
  v8[4] = &v9;
  objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_withReply_(v4, v5, file, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)version contentVersion:(int *)contentVersion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B428ADC;
  v15 = sub_19B429064;
  v16 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, version);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B7024E0;
  v10[3] = &unk_1E75354E8;
  v10[4] = &v11;
  v10[5] = version;
  v10[6] = contentVersion;
  objc_msgSend_copyRoutineAssetSettings_(v6, v7, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (unsigned)shouldDisplayEEDUI
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B7025FC;
  v7[3] = &unk_1E7535510;
  v7[4] = &v8;
  objc_msgSend_shouldDisplayEEDUI_(v3, v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)getEEDCloakingKey:(id *)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, key);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702704;
  v9[3] = &unk_1E7535358;
  v9[4] = &v10;
  v9[5] = key;
  objc_msgSend_getEEDCloakingKeyWithReply_(v4, v5, v9);
  v6 = *key;
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getEEDEmergencyContactNames:(id *)names
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, names);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702840;
  v9[3] = &unk_1E7535538;
  v9[4] = &v10;
  v9[5] = names;
  objc_msgSend_getEEDEmergencyContactNamesWithReply_(v4, v5, v9);
  v6 = *names;
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getMotionSensorLogs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  while (1)
  {
    v4 = v11[5];
    if (v4)
    {
      break;
    }

    v5 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B70299C;
    v9[3] = &unk_1E7535560;
    v9[4] = &v10;
    objc_msgSend_getMotionSensorLogsWithReply_(v5, v6, v9);
  }

  v7 = v4;
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getAccessoryMotionSensorLogs
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  while (1)
  {
    v4 = v11[5];
    if (v4)
    {
      break;
    }

    v5 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B702AE4;
    v9[3] = &unk_1E7535560;
    v9[4] = &v10;
    objc_msgSend_getAccessoryMotionSensorLogsWithReply_(v5, v6, v9);
  }

  v7 = v4;
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, d);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702E1C;
  v9[3] = &unk_1E75351C8;
  v9[4] = &v10;
  objc_msgSend_tearDownLocationAuthPromptForBundleID_orBundlePath_replyBlock_(v6, v7, d, path, v9);
  LOBYTE(path) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return path;
}

- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)state
{
  stateCopy = state;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, state);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B702FD8;
  v7[3] = &unk_1E7535588;
  v7[4] = &v8;
  v7[5] = stateCopy;
  objc_msgSend_getPinnedLocationAuthorizationStateWithReplyBlock_(v4, v5, v7);
  LOBYTE(stateCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return stateCopy;
}

- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  v6 = objc_msgSend_asynchronousRemoteObject(self, a2, d);

  MEMORY[0x1EEE66B58](v6, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_, d);
}

- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)d replyBlock:(id)block
{
  v5 = objc_msgSend_asynchronousRemoteObject(self, a2, d);

  MEMORY[0x1EEE66B58](v5, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_, d);
}

- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  v6 = objc_msgSend_asynchronousRemoteObject(self, a2, d);

  MEMORY[0x1EEE66B58](v6, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_, d);
}

- (__CFArray)copyActivityAlarms
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousRemoteObject(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B703190;
  v7[3] = &unk_1E7535290;
  v7[4] = &v8;
  objc_msgSend_getActivitiesWithReplyBlock_(v3, v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)updatePromptedLatitude:(double)latitude longitude:(double)longitude
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B70348C;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_updatePromptedLatitude_longitude_replyBlock_(v7, v8, v11, latitude, longitude);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)d orBundlePath:(__CFString *)path enabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703778;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_setBackgroundIndicatorEnabled_forBundleID_orBundlePath_replyBlock_(v8, v9, enabledCopy != 0, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)calibration
{
  calibrationCopy = calibration;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, calibration);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B703854;
  v7[3] = &unk_1E75351F0;
  v7[4] = &v8;
  v7[5] = calibrationCopy;
  objc_msgSend_gyroCalibrationDatabaseSupportsMiniCalibrationWithReplyBlock_(v4, v5, v7);
  LOBYTE(calibrationCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return calibrationCopy;
}

- (unsigned)timeSyncMachTimeStamp:(unint64_t *)stamp oscarTimeStamp:(unint64_t *)timeStamp
{
  stampCopy = stamp;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, stamp);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B70394C;
  v9[3] = &unk_1E75355B0;
  v9[5] = stampCopy;
  v9[6] = timeStamp;
  v9[4] = &v10;
  objc_msgSend_getOscarTimeSyncWithReplyBlock_(v6, v7, v9);
  LOBYTE(stampCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return stampCopy;
}

- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, time);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703DE4;
  v11[3] = &unk_1E75355D8;
  v11[4] = &v12;
  v11[5] = time;
  objc_msgSend_getVisitHistoryAccessAllowedTimeForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, access);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703EEC;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = access;
  objc_msgSend_getVisitHistoryAccessForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, access);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703FF4;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = access;
  objc_msgSend_getLearnedRoutesAccessForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 6) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (void)notifyPassKitPayment:(id)payment transaction:(id)transaction info:(id)info
{
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, payment);

  objc_msgSend_notifyPassKitPayment_transaction_info_(v8, v9, payment, transaction, info);
}

- (void)notifyWeatherForecast:(id)forecast airQualityConditions:(id)conditions hourlyForecasts:(id)forecasts dailyForecasts:(id)dailyForecasts latitude:(double)latitude longitude:(double)longitude
{
  v14 = objc_msgSend_synchronousRemoteObject(self, a2, forecast);

  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v14, v15, forecast, conditions, forecasts, dailyForecasts, latitude, longitude);
}

@end