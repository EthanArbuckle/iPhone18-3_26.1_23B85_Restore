@interface CLLocationInternalClient_CoreMotion
+ (id)sharedServiceClient;
- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 services:(unint64_t)a5 error:(id *)a6;
- (BOOL)deleteInterestZoneWithId:(id)a3 registeredForBundleId:(id)a4 orBundlePath:(id)a5 error:(id *)a6;
- (BOOL)getLearnedRoutesAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)getVisitHistoryAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)getVisitHistoryAccessAllowedTime:(double *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5;
- (BOOL)startStopAdvertisingBeacon:(id)a3 power:(id)a4;
- (__CFArray)copyActivityAlarms;
- (__CFArray)copyGnssBandsInUse;
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
- (id)getAccessoryMotionSensorLogs;
- (id)getArchivedAuthorizationDecisionsWithError:(id *)a3;
- (id)getEEDCloakingKey:(id *)a3;
- (id)getEEDEmergencyContactNames:(id *)a3;
- (id)getMotionSensorLogs;
- (id)getOdometryBatchedLocations;
- (id)getPipelinedCache;
- (id)getTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 error:(id *)a5;
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
- (void)setLocationDefaultForKey:(__CFString *)a3 value:(void *)a4;
- (void)setTrackRunHint:(id *)a3;
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

- (unsigned)getIncidentalUseMode:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FAD34;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = a3;
  objc_msgSend_getIncidentalUseModeForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v11);
  LOBYTE(a5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return a5;
}

- (void)clearLocationAuthorizationForBundleId:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6FAF14;
  v8[3] = &unk_1E75351C8;
  v8[4] = v9;
  objc_msgSend_resetClientForBundleId_orBundlePath_withReplyBlock_(v6, v7, a3, a4, v8);
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

- (id)getArchivedAuthorizationDecisionsWithError:(id *)a3
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
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
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

  if (a3)
  {
    *a3 = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (id)applyArchivedAuthorizationDecisions:(id)a3
{
  v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3);
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
    objc_msgSend_applyArchivedAuthorizationDecisions_withConfirmationToken_replyBlock_(v9, v10, a3, v7, v16);
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

- (void)setLocationDefaultForKey:(__CFString *)a3 value:(void *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], a2, a4, 200, 0, 0);
    }

    v10 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v11 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v10, sel_setLocationDefaultForKey_andValue_replyBlock_, a3);
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

- (void)getLocationDefaultForKey:(__CFString *)a3
{
  v3 = a3;
  if (a3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = sub_19B428ADC;
    v14 = sub_19B429064;
    v15 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B6FBEA8;
    v9[3] = &unk_1E75352B8;
    v9[4] = &v10;
    objc_msgSend_getLocationDefaultForKey_replyBlock_(v4, v5, v3, v9);
    v7 = v11[5];
    if (v7)
    {
      v3 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v6, v7, 0, 0, 0);
    }

    else
    {
      v3 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

- (id)timeZoneAtLocation:(id)a3
{
  if (!a3)
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
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  if (a3)
  {
    objc_msgSend_clientLocation(a3, v5, v6);
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

- (unsigned)getLocationServicesEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FC800;
    v7[3] = &unk_1E75351F0;
    v7[4] = &v8;
    v7[5] = v3;
    objc_msgSend_getLocationServicesEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(v3) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FCBAC;
    v7[3] = &unk_1E7535330;
    v7[4] = &v8;
    v7[5] = v3;
    objc_msgSend_getAuthorizationPromptMapDisplayEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(v3) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (id)setTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 statusData:(id)a5
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_19B428ADC;
  v22 = sub_19B429064;
  v23 = 0;
  if (!a5)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, "[CLLocationInternalClient_CoreMotion setTemporaryAuthorizationStatusForBundleId:orBundlePath:statusData:]");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v16, v15, @"LocationInternal.m", 788, @"Invalid parameter not satisfying: %@", @"data != nil");
  }

  v9 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B6FCD48;
  v17[3] = &unk_1E75351C8;
  v17[4] = &v18;
  objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_replyBlock_(v9, v10, a3, a4, a5, v17);
  v11 = v19[5];
  _Block_object_dispose(&v18, 8);
  return v11;
}

- (id)getTemporaryAuthorizationStatusForBundleId:(id)a3 orBundlePath:(id)a4 error:(id *)a5
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_19B428ADC;
  v17 = sub_19B429064;
  v18 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FCFFC;
  v12[3] = &unk_1E7535358;
  v12[4] = &v13;
  v12[5] = a5;
  objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_replyBlock_(v8, v9, a3, a4, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (double)modifyOrSetAuthorizationTime:(double)a3 forBundleID:(id)a4 orBundlePath:(id)a5
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xBFF0000000000000;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a4);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FD2B0;
  v12[3] = &unk_1E7535380;
  v12[4] = &v13;
  objc_msgSend_modifyOrSetAuthorizationTime_forBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v12, a3);
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

- (unsigned)getGestureServiceEnabled:(char *)a3
{
  v3 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B6FD998;
    v7[3] = &unk_1E7535330;
    v7[4] = &v8;
    v7[5] = v3;
    objc_msgSend_getGestureServiceEnabledWithReplyBlock_(v4, v5, v7);
    LOBYTE(v3) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (unsigned)getAuthorizationStatusForApp:(int *)a3 withAuditToken:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FDA98;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = a3;
  v7 = *&a4->var0[4];
  v10[0] = *a4->var0;
  v10[1] = v7;
  objc_msgSend_getAuthorizationStatusForAppWithAuditToken_replyBlock_(v6, v8, v10, v11);
  LOBYTE(a4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return a4;
}

- (unsigned)getAuthorizationStatus:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B6FDB98;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = a3;
  objc_msgSend_getAuthorizationStatusForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v11);
  LOBYTE(a5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return a5;
}

- (unsigned)getPrecisionPermission:(char *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
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
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_19B6FDE74;
  v19[3] = &unk_1E75353A8;
  v19[5] = &v20;
  v19[6] = a3;
  v19[4] = &v26;
  objc_msgSend_getPrecisionPermissionForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v19);
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

- (unsigned)dumpLogs:(__CFString *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6FE830;
  v12[3] = &unk_1E75351C8;
  v12[4] = &v13;
  objc_msgSend_dumpLogsWithDescription_replyBlock_(v4, v5, a3, v12);
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

- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B6FE920;
  v10[3] = &unk_1E7535268;
  v10[4] = &v11;
  objc_msgSend_getMonitoredRegionsForBundleID_orBundlePath_replyBlock_(v6, v7, a3, a4, v10);
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 services:(unint64_t)a5 error:(id *)a6
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
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B6FEB0C;
  v17[3] = &unk_1E75353D0;
  v17[4] = &v22;
  v17[5] = &v28;
  v17[6] = &v18;
  objc_msgSend_checkAndExerciseAuthorizationForBundleID_orBundlePath_services_replyBlock_(v10, v11, a3, a4, a5, v17);
  v12 = v23[5];
  if ((v19[3] & 1) == 0)
  {
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, *MEMORY[0x1E696A250], 4097, 0);
    v23[5] = v14;
  }

  if (a6)
  {
    *a6 = v23[5];
  }

  v15 = *(v29 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v15;
}

- (BOOL)deleteInterestZoneWithId:(id)a3 registeredForBundleId:(id)a4 orBundlePath:(id)a5 error:(id *)a6
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
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B6FF234;
  v15[3] = &unk_1E7535240;
  v15[4] = &v16;
  v15[5] = &v22;
  objc_msgSend_deleteInterestZoneWithId_registeredForBundleId_orBundlePath_replyBlock_(v10, v11, a3, a4, a5, v15);
  v12 = v17[5];
  if (a6)
  {
    *a6 = v17[5];
  }

  v13 = *(v23 + 24) != 0;
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

- (unsigned)getLocationForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 dynamicAccuracyReductionEnabled:(unsigned __int8)a5 allowsAlteredAccessoryLocations:(unsigned __int8)a6 location:(id *)a7
{
  if (!a7)
  {
    return 0;
  }

  v8 = a6;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B6FF384;
  v16[3] = &unk_1E7535358;
  v16[4] = &v17;
  v16[5] = a7;
  objc_msgSend_getLocationForBundleID_orBundlePath_dynamicAccuracyReductionEnabled_allowsAlteredAccessoryLocations_replyBlock_(v12, v13, a3, a4, v9 != 0, v8 != 0, v16);
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (unsigned)getGroundAltitudeForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 location:(id)a5 groundAltitude:(id *)a6
{
  v6 = 0;
  if (a5 && a6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B6FF4CC;
    v14[3] = &unk_1E75353F8;
    v14[4] = &v15;
    v14[5] = a6;
    objc_msgSend_getGroundAltitudeForBundleID_orBundlePath_location_replyBlock_(v11, v12, a3, a4, a5, v14);
    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v6;
}

- (void)setTrackRunHint:(id *)a3
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

  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, a3, 16);
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

- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)a3 atTemperature:(float)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B70168C;
  v9[3] = &unk_1E7535358;
  v9[4] = &v10;
  v9[5] = v5;
  objc_msgSend_getGyroCalibrationDatabaseBiasFitAtTemperature_withReply_(v6, v7, v9, COERCE_DOUBLE(LODWORD(a4)));
  LOBYTE(v5) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)startStopAdvertisingBeacon:(id)a3 power:(id)a4
{
  if (a4)
  {
    v6 = objc_msgSend_intValue(a4, a2, a3);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B7017D8;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_startStopAdvertisingBeacon_atPower_replyBlock_(v7, v8, a3, v6, v11);
  v9 = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)a3 temperature:(float)a4 variance:(id)a5 timestamp:(double)a6
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v12 = a3.var2;
  v13 = a3.var1;
  v14 = a3.var0;
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
  *&v18 = a4;
  *&v19 = var0;
  *&v20 = var1;
  *&v21 = var2;
  objc_msgSend_insertGyroCalibrationDatabaseBiasEstimateIfValid_temperature_variance_timestamp_replyBlock_(v15, v22, v25, COERCE_DOUBLE(LODWORD(v14)), v16, v17, v18, v19, v20, v21, a6);
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

- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B701AC4;
  v7[3] = &unk_1E75351F0;
  v7[4] = &v8;
  v7[5] = v3;
  objc_msgSend_gyroCalibrationDatabaseGetNumTemperaturesWithReplyBlock_(v4, v5, v7);
  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (unsigned)configure:(id)a3
{
  v3 = *&a3.var7;
  v4 = *&a3.var0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, *&a3.var0);
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

- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)a3 andContentVersion:(int *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B7020AC;
    v10[3] = &unk_1E7535498;
    v10[5] = a3;
    v10[6] = a4;
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

- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B428ADC;
  v13 = sub_19B429064;
  v14 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B7023B0;
  v8[3] = &unk_1E75354C0;
  v8[4] = &v9;
  objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_withReply_(v4, v5, a3, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)a3 contentVersion:(int *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_19B428ADC;
  v15 = sub_19B429064;
  v16 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B7024E0;
  v10[3] = &unk_1E75354E8;
  v10[4] = &v11;
  v10[5] = a3;
  v10[6] = a4;
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

- (id)getEEDCloakingKey:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702704;
  v9[3] = &unk_1E7535358;
  v9[4] = &v10;
  v9[5] = a3;
  objc_msgSend_getEEDCloakingKeyWithReply_(v4, v5, v9);
  v6 = *a3;
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getEEDEmergencyContactNames:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B428ADC;
  v14 = sub_19B429064;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702840;
  v9[3] = &unk_1E7535538;
  v9[4] = &v10;
  v9[5] = a3;
  objc_msgSend_getEEDEmergencyContactNamesWithReply_(v4, v5, v9);
  v6 = *a3;
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

- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B702E1C;
  v9[3] = &unk_1E75351C8;
  v9[4] = &v10;
  objc_msgSend_tearDownLocationAuthPromptForBundleID_orBundlePath_replyBlock_(v6, v7, a3, a4, v9);
  LOBYTE(a4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return a4;
}

- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B702FD8;
  v7[3] = &unk_1E7535588;
  v7[4] = &v8;
  v7[5] = v3;
  objc_msgSend_getPinnedLocationAuthorizationStateWithReplyBlock_(v4, v5, v7);
  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5
{
  v6 = objc_msgSend_asynchronousRemoteObject(self, a2, a3);

  MEMORY[0x1EEE66B58](v6, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_, a3);
}

- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)a3 replyBlock:(id)a4
{
  v5 = objc_msgSend_asynchronousRemoteObject(self, a2, a3);

  MEMORY[0x1EEE66B58](v5, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_, a3);
}

- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)a3 orBundlePath:(id)a4 replyBlock:(id)a5
{
  v6 = objc_msgSend_asynchronousRemoteObject(self, a2, a3);

  MEMORY[0x1EEE66B58](v6, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_, a3);
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

- (unsigned)updatePromptedLatitude:(double)a3 longitude:(double)a4
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
  objc_msgSend_updatePromptedLatitude_longitude_replyBlock_(v7, v8, v11, a3, a4);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)a3 orBundlePath:(__CFString *)a4 enabled:(unsigned __int8)a5
{
  v5 = a5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703778;
  v11[3] = &unk_1E75351C8;
  v11[4] = &v12;
  objc_msgSend_setBackgroundIndicatorEnabled_forBundleID_orBundlePath_replyBlock_(v8, v9, v5 != 0, a3, a4, v11);
  LOBYTE(a4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return a4;
}

- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B703854;
  v7[3] = &unk_1E75351F0;
  v7[4] = &v8;
  v7[5] = v3;
  objc_msgSend_gyroCalibrationDatabaseSupportsMiniCalibrationWithReplyBlock_(v4, v5, v7);
  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (unsigned)timeSyncMachTimeStamp:(unint64_t *)a3 oscarTimeStamp:(unint64_t *)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B70394C;
  v9[3] = &unk_1E75355B0;
  v9[5] = v5;
  v9[6] = a4;
  v9[4] = &v10;
  objc_msgSend_getOscarTimeSyncWithReplyBlock_(v6, v7, v9);
  LOBYTE(v5) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)getVisitHistoryAccessAllowedTime:(double *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703DE4;
  v11[3] = &unk_1E75355D8;
  v11[4] = &v12;
  v11[5] = a3;
  objc_msgSend_getVisitHistoryAccessAllowedTimeForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v11);
  LOBYTE(a5) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return a5;
}

- (BOOL)getVisitHistoryAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703EEC;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = a3;
  objc_msgSend_getVisitHistoryAccessForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v11);
  LOBYTE(a5) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return a5;
}

- (BOOL)getLearnedRoutesAccess:(int *)a3 forBundleID:(__CFString *)a4 orBundlePath:(__CFString *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B703FF4;
  v11[3] = &unk_1E75351F0;
  v11[4] = &v12;
  v11[5] = a3;
  objc_msgSend_getLearnedRoutesAccessForBundleID_orBundlePath_replyBlock_(v8, v9, a4, a5, v11);
  LOBYTE(a5) = *(v13 + 6) != 0;
  _Block_object_dispose(&v12, 8);
  return a5;
}

- (void)notifyPassKitPayment:(id)a3 transaction:(id)a4 info:(id)a5
{
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, a3);

  objc_msgSend_notifyPassKitPayment_transaction_info_(v8, v9, a3, a4, a5);
}

- (void)notifyWeatherForecast:(id)a3 airQualityConditions:(id)a4 hourlyForecasts:(id)a5 dailyForecasts:(id)a6 latitude:(double)a7 longitude:(double)a8
{
  v14 = objc_msgSend_synchronousRemoteObject(self, a2, a3);

  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v14, v15, a3, a4, a5, a6, a7, a8);
}

@end