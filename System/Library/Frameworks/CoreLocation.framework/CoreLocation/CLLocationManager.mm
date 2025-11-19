@interface CLLocationManager
+ (BOOL)_checkAndExerciseAuthorizationForBundle:(id)a3 error:(id *)a4;
+ (BOOL)_checkAndExerciseAuthorizationForBundleID:(id)a3 error:(id *)a4;
+ (BOOL)bundleSupported:(id)a3;
+ (BOOL)deferredLocationUpdatesAvailable;
+ (BOOL)headingAvailable;
+ (BOOL)isMonitoringAvailableForClass:(Class)regionClass;
+ (BOOL)isRangingAvailable;
+ (BOOL)mapCorrectionAvailable;
+ (BOOL)regionMonitoringAvailable;
+ (CLAuthorizationStatus)authorizationStatus;
+ (id)activeLocationClientsWithInfo;
+ (id)interestZoneDictionaryIdentifiedById:(id)a3 forLocationDictionary:(id)a4;
+ (id)interestZonesIdentifierListForLocationDictionary:(id)a3;
+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)a3 stateString:(id)a4 serviceUUID:(id)a5 serviceType:(id)a6 characteristicType:(id)a7 serviceGroupUUID:(id)a8 source:(id)a9 roomUUID:(id)a10;
+ (id)metadataForHomekitActionSetEventWithUUID:(id)a3 name:(id)a4 type:(id)a5 clientName:(id)a6 source:(id)a7 homeName:(id)a8;
+ (id)metadataForMicroLocationTruthTagEventWithTagUUID:(id)a3;
+ (id)sharedManager;
+ (id)sharedQueue;
+ (id)userLocationClientsWithInfo;
+ (id)weakSharedInstance;
+ (int)_authorizationStatusForBundleIdentifier:(id)a3 bundlePath:(id)a4;
+ (int)authorizationStatusForBundle:(id)a3;
+ (uint64_t)updatePromptedLatitude:longitude:;
+ (unint64_t)activeLocationServiceTypesForLocationDictionary:(id)a3;
+ (unint64_t)entityClassesForLocationDictionary:(id)a3;
+ (void)_checkAndExerciseForPushClientWithBundleID:(id)a3 completionHandler:(id)a4;
+ (void)_checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 completionHandler:(id)a5;
+ (void)deleteInterestZoneWithId:(id)a3 registeredForBundle:(id)a4 error:(id *)a5;
+ (void)dumpDiagnosticFilesWithHandler:(id)a3;
+ (void)getIncidentalUseMode:(int *)a3 forBundle:(id)a4;
+ (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)a3 orBundlePath:(id)a4 completionHandler:(id)a5;
+ (void)setAuthorizationStatus:(BOOL)a3 forBundle:(id)a4;
+ (void)setAuthorizationStatusByType:(int)a3 forBundle:(id)a4;
+ (void)setBackgroundIndicatorEnabled:(BOOL)a3 forBundle:(id)a4;
+ (void)setBackgroundIndicatorEnabled:(BOOL)a3 forLocationDictionary:(id)a4;
+ (void)setDefaultEffectiveBundle:(id)a3;
+ (void)setEntityAuthorization:(unint64_t)a3 withCorrectiveCompensationType:(int)a4 forLocationDictionary:(id)a5;
+ (void)setEntityAuthorized:(BOOL)a3 forLocationDictionary:(id)a4;
+ (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForBundle:(id)a5 error:(id *)a6;
- (BOOL)_isFusionInfoEnabled;
- (BOOL)_isGroundAltitudeEnabled;
- (BOOL)_limitsPrecision;
- (BOOL)allowsAlteredAccessoryLocations;
- (BOOL)allowsBackgroundLocationUpdates;
- (BOOL)headingAvailable;
- (BOOL)isAuthorizedForPreciseLocation;
- (BOOL)isAuthorizedForWidgetUpdates;
- (BOOL)isDynamicAccuracyReductionEnabled;
- (BOOL)isLocationServicesPreferencesDialogEnabled;
- (BOOL)isMatchInfoEnabled;
- (BOOL)isTrackRunInfoEnabled;
- (BOOL)locationServicesApproved;
- (BOOL)locationServicesAvailable;
- (BOOL)locationServicesEnabled;
- (BOOL)pausesLocationUpdatesAutomatically;
- (BOOL)privateMode;
- (BOOL)showsBackgroundLocationIndicator;
- (BOOL)supportInfo;
- (CLAccuracyAuthorization)accuracyAuthorization;
- (CLActivityType)activityType;
- (CLAuthorizationStatus)authorizationStatus;
- (CLDeviceOrientation)headingOrientation;
- (CLHeading)heading;
- (CLLocation)location;
- (CLLocationAccuracy)desiredAccuracy;
- (CLLocationDegrees)headingFilter;
- (CLLocationDistance)distanceFilter;
- (CLLocationDistance)maximumRegionMonitoringDistance;
- (CLLocationManager)initWithEffectiveBundle:(id)a3;
- (CLLocationManager)initWithEffectiveBundle:(id)a3 delegate:(id)a4 onQueue:(id)a5;
- (CLLocationManager)initWithEffectiveBundle:(id)a3 limitingBundleIdentifier:(id)a4 delegate:(id)a5 onQueue:(id)a6;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 bundlePath:(id)a4 websiteIdentifier:(id)a5 delegate:(id)a6 silo:(id)a7;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 delegate:(id)a4 onQueue:(id)a5;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 websiteIdentifier:(id)a4;
- (CLLocationManager)initWithEffectiveBundlePath:(id)a3;
- (CLLocationManager)initWithEffectiveBundlePath:(id)a3 delegate:(id)a4 onQueue:(id)a5;
- (CLLocationManager)initWithEffectiveBundlePath:(id)a3 limitingBundleIdentifier:(id)a4 delegate:(id)a5 onQueue:(id)a6;
- (CLLocationManager)initWithWebsiteIdentifier:(id)a3;
- (CLLocationManager)initWithWebsiteIdentifier:(id)a3 delegate:(id)a4 onQueue:(id)a5;
- (NSSet)monitoredRegions;
- (NSSet)rangedBeaconConstraints;
- (NSSet)rangedRegions;
- (NSString)processName;
- (NSString)purpose;
- (__CLClient)internalClient;
- (double)expectedGpsUpdateInterval;
- (id)_groundAltitudeAtLocation:(id)a3;
- (id)_initWithDelegate:(id)a3 onQueue:(id)a4;
- (id)_startPlaceInferencesCommonLogic:(unint64_t)a3 handler:(id)a4;
- (id)_zAxisStatistics;
- (id)appsUsingLocationWithDetails;
- (id)backgroundActivitySession;
- (id)delegate;
- (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4 handler:(id)a5;
- (id)initOnQueue:(id)a3;
- (id)privilegedServiceSession;
- (id)serviceSession;
- (id)technologiesInUse;
- (void)_fetchContinuousPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4;
- (void)_fetchEstimatedLocationAtDate:(id)a3 handler:(id)a4;
- (void)_fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4;
- (void)_requestTemporaryFullAccuracyWithUsageDescription:(id)a3 completion:(id)a4;
- (void)_requestVisitState;
- (void)_startLeechingVisits;
- (void)_startMonitoringSignificantLocationChangesOfDistance:(double)a3 withPowerBudget:(int)a4;
- (void)_stopFetchingContinuousPlaceInferences;
- (void)_updateARSessionState:(unint64_t)a3;
- (void)_updateVIOEstimation:(id)a3;
- (void)_updateVLLocalizationResult:(id)a3;
- (void)addIdentifiableClient:(id)a3;
- (void)allowDeferredLocationUpdatesUntilTraveled:(CLLocationDistance)distance timeout:(NSTimeInterval)timeout;
- (void)callPlaceInferenceHandlerWithResult:(id)a3 error:(id)a4;
- (void)changeFencesStateMatchingHandoffTags:(id)a3 forDeviceID:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)disallowDeferredLocationUpdates;
- (void)dismissHeadingCalibrationDisplay;
- (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 correspondingToTriggerUUID:(id)a4 handler:(id)a5;
- (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 forRecordingEventsBetweenDate:(id)a4 andDate:(id)a5 handler:(id)a6;
- (void)endTranscriptSessionWithCompletion:(id)a3;
- (void)exportMicroLocationDataForMigrationWithCompletion:(id)a3;
- (void)exportMicroLocationDatabaseTablesWithCompletion:(id)a3;
- (void)isConsideredInRemoteAreaWithCompletion:(id)a3;
- (void)markAsHavingReceivedLocation;
- (void)onClientEvent:(int)a3 supportInfo:(id)a4;
- (void)onClientEventAuthStatus:(id)a3;
- (void)onClientEventAutopauseStatus:(id)a3;
- (void)onClientEventBatch:(id)a3;
- (void)onClientEventError:(id)a3;
- (void)onClientEventHeading:(id)a3;
- (void)onClientEventHeadingCalibration:(id)a3;
- (void)onClientEventInterrupted:(id)a3;
- (void)onClientEventLocation:(id)a3 forceMapMatching:(BOOL)a4 type:(id)a5;
- (void)onClientEventLocationUnavailable:(id)a3;
- (void)onClientEventNoLocationWatchdog:(id)a3;
- (void)onClientEventPlaceInferenceError:(id)a3;
- (void)onClientEventPlaceInferenceResult:(id)a3;
- (void)onClientEventRanging:(id)a3;
- (void)onClientEventRangingError:(id)a3;
- (void)onClientEventRegion:(id)a3;
- (void)onClientEventRegionError:(id)a3;
- (void)onClientEventRegionResponseDelayed:(id)a3;
- (void)onClientEventRegionSetupCompleted:(id)a3;
- (void)onClientEventRegionState:(id)a3;
- (void)onClientEventRegistration:(id)a3;
- (void)onClientEventSignificantLocationVisit:(id)a3;
- (void)onClientEventSignificantLocationVisitStateRequest:(id)a3;
- (void)onClientEventVehicleHeading:(id)a3;
- (void)onClientEventVehicleSpeed:(id)a3;
- (void)onDidBecomeActive:(id)a3;
- (void)onDidEnterBackground:(id)a3;
- (void)onLocationRequestTimeout;
- (void)onWillEnterForeground:(id)a3;
- (void)pauseLocationUpdates:(BOOL)a3;
- (void)purgeMicroLocationData;
- (void)purgeMicroLocationSemiSupervisedData;
- (void)registerAsLocationClient;
- (void)removeIdentifiableClient:(id)a3;
- (void)requestAlwaysAuthorization;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 withCompletion:(id)a4;
- (void)requestHistoricalLocationsWithPurposeKey:(NSString *)purposeKey sampleCount:(NSInteger)sampleCount completionHandler:(void *)handler;
- (void)requestLocation;
- (void)requestMicroLocationLearningWithCompletion:(id)a3;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4;
- (void)requestMicroLocationStaticSourcesStatisticsWithCompletion:(id)a3;
- (void)requestStateForRegion:(CLRegion *)region;
- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey;
- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey completion:(void *)completion;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3 completion:(id)a4;
- (void)requestWhenInUseAuthorization;
- (void)requestWhenInUseAuthorizationWithPrompt;
- (void)requestWhenInUseAuthorizationWithPurposeKey:(id)a3;
- (void)resetApps;
- (void)resumeLocationUpdates;
- (void)setActivityType:(CLActivityType)activityType;
- (void)setDelegate:(id)delegate;
- (void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy;
- (void)setDistanceFilter:(CLLocationDistance)distanceFilter;
- (void)setHeadingFilter:(CLLocationDegrees)headingFilter;
- (void)setHeadingOrientation:(CLDeviceOrientation)headingOrientation;
- (void)setIsActuallyAWatchKitExtension:(BOOL)a3;
- (void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically;
- (void)setPrivateMode:(BOOL)a3;
- (void)setPurpose:(NSString *)purpose;
- (void)setSupportInfo:(BOOL)a3;
- (void)startMonitoringForRegion:(CLRegion *)region;
- (void)startMonitoringLocationPushesWithCompletion:(void *)completion;
- (void)startMonitoringSignificantLocationChanges;
- (void)startMonitoringVisits;
- (void)startRangingBeaconsInRegion:(CLBeaconRegion *)region;
- (void)startRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint;
- (void)startTranscriptSessionInstantlyWithCompletion:(id)a3;
- (void)startTranscriptSessionWithCompletion:(id)a3;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingLocationWithPrompt;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopMonitoringForRegion:(CLRegion *)region;
- (void)stopMonitoringLocationPushes;
- (void)stopMonitoringSignificantLocationChanges;
- (void)stopMonitoringVisits;
- (void)stopRangingBeaconsInRegion:(CLBeaconRegion *)region;
- (void)stopRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
- (void)willPromptForTranscriptSessionWithCompletion:(id)a3;
@end

@implementation CLLocationManager

- (CLAuthorizationStatus)authorizationStatus
{
  objc_sync_enter(self);
  internal = self->_internal;
  if ([internal[4] previousAuthorizationStatusValid])
  {
    v4 = [internal[4] previousAuthorizationStatus];
  }

  else
  {
    [(CLLocationManager *)self collectMetricForFunction:0x80000];
    v8 = kCLAuthorizationStatusNotDetermined;
    v5 = sub_19B87DBA8(*(internal[1] + 45), *(internal[1] + 46), &v8);
    v6 = v8;
    if ((v8 - 1) >= 4)
    {
      v6 = kCLAuthorizationStatusNotDetermined;
    }

    if (v5)
    {
      v4 = v6;
    }

    else
    {
      v4 = kCLAuthorizationStatusNotDetermined;
    }
  }

  objc_sync_exit(self);
  return v4;
}

- (CLLocationAccuracy)desiredAccuracy
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [*(self->_internal + 4) desiredAccuracy];
  v8 = v7;
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CLActivityType)activityType
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) activityType];
  if (v7 <= 1)
  {
    v8 = CLActivityTypeOther;
  }

  else
  {
    v8 = v7;
  }

  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)startUpdatingLocation
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    *&v23[10] = 2082;
    *&v23[12] = "activity";
    *&v23[20] = 2114;
    *&v23[22] = v6;
    *&v23[30] = 2050;
    v24 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:4];
  internal = self->_internal;
  v8 = [internal delegate];
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  if ([*(internal + 4) requestingLocation])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "Canceling requestLocation", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20 = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startUpdatingLocation]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    [internal cancelLocationRequest];
  }

  if (([*(internal + 4) updatingLocation] & 1) == 0)
  {
    [*(internal + 4) setUpdatingLocation:1];
    *(internal + 60) = 0xBFF0000000000000;
  }

  if ([*(internal + 4) paused])
  {
    [*(internal + 4) setPaused:0];
    v12 = *(internal + 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_19B89E544;
    v19[3] = &unk_1E753D098;
    v19[4] = self;
    v19[5] = v8;
    v19[6] = internal;
    if (v12)
    {
      v13 = *(v12 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v23 = 3221225472;
      *&v23[8] = sub_19B88071C;
      *&v23[16] = &unk_1E753CCE0;
      *&v23[24] = v19;
      [v13 async:buf];
    }
  }

  v14 = *(internal + 1);
  [*(internal + 4) distanceFilter];
  v16 = v15;
  [*(internal + 4) desiredAccuracy];
  CLClientStartLocationUpdatesWithDynamicAccuracyReductionAndAlteredAccessoryLocations_0(v14, v17, [*(internal + 4) dynamicAccuracyReductionEnabled], objc_msgSend(*(internal + 4), "allowsAlteredAccessoryLocations"), v16);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)requestLocation
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2082;
    *&v21[12] = "activity";
    *&v21[20] = 2114;
    *&v21[22] = v6;
    *&v21[30] = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:16];
  internal = self->_internal;
  [internal delegate];
  objc_sync_enter(self);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (([*(internal + 4) requestingLocation] & 1) != 0 || (objc_msgSend(*(internal + 4), "updatingLocation") & 1) != 0 || objc_msgSend(*(internal + 4), "batchingLocation"))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring requestLocation due to ongoing location.", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v18 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager requestLocation]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    [*(internal + 4) setRequestingLocation:1];
    *(internal + 60) = 0xBFF0000000000000;
    v11 = *(internal + 1);
    v12 = *(internal + 27);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B884D98;
    v17[3] = &unk_1E753CC90;
    v17[4] = self;
    v13 = [*(v11 + 232) newTimer];
    *buf = MEMORY[0x1E69E9820];
    *v21 = 3221225472;
    *&v21[8] = sub_19B884DA0;
    *&v21[16] = &unk_1E753CCE0;
    *&v21[24] = v17;
    [v13 setHandler:buf];
    [v13 setNextFireDelay:v12];
    *(internal + 26) = v13;
    v14 = *(internal + 1);
    [*(internal + 4) desiredAccuracy];
    CLClientStartLocationUpdatesWithDynamicAccuracyReductionAndAlteredAccessoryLocations_0(v14, v15, 0, 0, *MEMORY[0x1E6985C70]);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)requestWhenInUseAuthorization
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x400000];
  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v8 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting when in use authorization}", buf, 0x12u);
  }

  CLClientRequestAuthorization(internal[1], 4);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (CLAccuracyAuthorization)accuracyAuthorization
{
  objc_sync_enter(self);
  internal = self->_internal;
  if ([internal[4] previousAuthorizationStatusValid])
  {
    v4 = [internal[4] limitsPrecision];
  }

  else
  {
    [(CLLocationManager *)self collectMetricForFunction:0x100000];
    v7 = 0;
    sub_19B9BE048(*(internal[1] + 45), *(internal[1] + 46), &v7);
    v4 = v7 == 0;
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

- (void)stopUpdatingLocation
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:8];
  internal = self->_internal;
  objc_sync_enter(self);
  if ([*(internal + 4) requestingLocation])
  {
    [internal cancelLocationRequest];
  }

  [*(internal + 4) setUpdatingLocation:0];
  if ([*(internal + 4) paused])
  {
    [*(internal + 4) setPaused:0];
  }

  CLClientStopLocationUpdates_0(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resumeLocationUpdates
{
  internal = self->_internal;
  objc_sync_enter(self);
  if ([internal[4] paused])
  {
    [(CLLocationManager *)self startUpdatingLocation];
  }

  objc_sync_exit(self);
}

- (BOOL)_limitsPrecision
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) limitsPrecision];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)startMonitoringSignificantLocationChanges
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:256];
  internal = self->_internal;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  sub_19B880EA0(internal[1], 0, 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)headingAvailable
{
  [a1 collectMetricForFunction:2];
  v2 = sub_19B87AB28();
  if (v2)
  {
    sub_19B87BBB4();
  }

  return v2 & 1;
}

- (void)startUpdatingHeading
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *v20 = 0;
    *&v20[4] = 2082;
    *&v20[6] = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v6;
    v25 = 2050;
    v26 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:64];
  internal = self->_internal;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  [*(internal + 4) setUpdatingHeading:1];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    [*(internal + 4) headingFilter];
    *buf = 134349056;
    *v20 = v9;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Start updating heading. HeadingFilter, %{public}.2f", buf, 0xCu);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    [*(internal + 4) headingFilter];
    v17 = 134349056;
    v18 = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startUpdatingHeading]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = *(internal + 1);
  [*(internal + 4) headingFilter];
  CLClientStartHeadingUpdates(v13, *(internal + 56), v14);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

- (CLLocation)location
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v4, &v22);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v6;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v8 = *(internal + 44);
  v9 = *(internal + 52);
  v10 = v9 != 0.0 && v8 != 0.0;
  if (*(internal + 60) >= 0.0 && !v10)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v8 != 0.0;
      *&buf[24] = 1026;
      *&buf[26] = v9 != 0.0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NullIsland Either the latitude or longitude was exactly 0! That's highly unlikely: refreshing property, latIsNonzero:%{public}hhd, lonIsNonzero:%{public}hhd}", buf, 0x1Eu);
    }
  }

  if (![*(internal + 4) updatingLocation] || *(internal + 60) < 0.0 || v8 == 0.0 || v9 == 0.0)
  {
    if (!CLClientRetrieveLocationWithDynamicAccuracyReductionAndAlteredAccessoryLocations(*(internal + 1), [*(internal + 4) dynamicAccuracyReductionEnabled], objc_msgSend(*(internal + 4), "allowsAlteredAccessoryLocations"), (internal + 40)))
    {
      v19 = 0;
      goto LABEL_30;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = 156;
      *&buf[24] = 2101;
      *&buf[26] = internal + 40;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No valid, cached location. Fetched from daemon, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x22u);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = 156;
      *&buf[24] = 2101;
      *&buf[26] = internal + 40;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:We have a valid, cached location. Fetching from internal state, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x22u);
    }
  }

  v14 = objc_alloc(MEMORY[0x1E6985C40]);
  v15 = *(internal + 152);
  v27 = *(internal + 136);
  v28 = v15;
  v29[0] = *(internal + 168);
  *(v29 + 12) = *(internal + 180);
  v16 = *(internal + 88);
  *&buf[32] = *(internal + 72);
  v24 = v16;
  v17 = *(internal + 120);
  v25 = *(internal + 104);
  v26 = v17;
  v18 = *(internal + 56);
  *buf = *(internal + 40);
  *&buf[16] = v18;
  v19 = [v14 initWithClientLocation:buf];
LABEL_30:
  objc_sync_exit(self);
  os_activity_scope_leave(&v22);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [internal cancelLocationRequest];
  [internal invalidate];

  v9.receiver = self;
  v9.super_class = CLLocationManager;
  [(CLLocationManager *)&v9 dealloc];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringVisits
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  sub_19B884C9C(internal[1], 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)onLocationRequestTimeout
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v4, &v23);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v6;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  v8 = [internal delegate];
  objc_sync_enter(self);
  if ([*(internal + 4) requestingLocation])
  {
    [internal cancelLocationRequest];
    CLClientStopLocationUpdates_0(*(internal + 1));
    if (*(internal + 60) >= 0.0)
    {
      v11 = objc_alloc(MEMORY[0x1E6985C40]);
      v12 = internal + 40;
      v13 = *(internal + 152);
      v28 = *(internal + 136);
      v29 = v13;
      v30[0] = *(internal + 168);
      *(v30 + 12) = *(internal + 180);
      v14 = *(internal + 88);
      *&buf[32] = *(internal + 72);
      v25 = v14;
      v15 = *(internal + 120);
      v26 = *(internal + 104);
      v27 = v15;
      v16 = *(internal + 56);
      *buf = *(internal + 40);
      *&buf[16] = v16;
      v17 = [v11 initWithClientLocation:buf];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObject:v17];
      v19 = *(internal + 1);
      entr_act_modify();
      v20 = NSStringFromSelector(sel_locationManager_didUpdateLocations_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v21 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290307;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v8;
        *&buf[38] = 2114;
        *&buf[40] = v20;
        LOWORD(v25) = 1040;
        *(&v25 + 2) = 156;
        WORD3(v25) = 2101;
        *(&v25 + 1) = v12;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - request timeout, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x40u);
      }

      [v8 locationManager:self didUpdateLocations:v18];
    }

    else
    {
      v9 = NSStringFromSelector(sel_locationManager_didFailWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v8;
        *&buf[38] = 2114;
        *&buf[40] = v9;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - request timeout, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
      }

      [v8 locationManager:self didFailWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomain", 0, 0)}];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v23);
  v22 = *MEMORY[0x1E69E9840];
}

- (NSSet)monitoredRegions
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v4, &v14);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v6;
    v23 = 2050;
    v24 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x10000];
  internal = self->_internal;
  objc_sync_enter(self);
  v8 = internal[1];
  objc_sync_exit(self);
  v9 = sub_19B88540C(v8);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
  if (v10)
  {
LABEL_9:
    v11 = v10;
  }

LABEL_10:
  os_activity_scope_leave(&v14);
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 bundlePath:(id)a4 websiteIdentifier:(id)a5 delegate:(id)a6 silo:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CLLocationManager;
  v13 = [(CLLocationManager *)&v32 init];
  if (v13)
  {
    v14 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v17 = [a4 UTF8String];
      *buf = 68290306;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "activity";
      v40 = 2114;
      v41 = v16;
      v42 = 2050;
      v43 = v13;
      v44 = 2114;
      v45 = a3;
      v46 = 2082;
      v47 = v17;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
    }

    if (!a7)
    {
      a7 = [objc_alloc(MEMORY[0x1E69AD370]) initWithCurrentRunLoopAndIdentifier:@"CLLocationManager-runloop" bePermissive:1];
    }

    v18 = [[CLLocationManagerInternal alloc] initWithInfo:v13 bundleIdentifier:a3 bundlePath:a4 websiteIdentifier:a5 delegate:a6 silo:a7];
    v13->_internal = v18;
    if ([objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
    {
      if (sub_19B8B87AC([MEMORY[0x1E696AAE8] mainBundle]))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v19 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "Widget has NSWidgetWantsLocation key in its Info.plist", buf, 2u);
        }

        v20 = sub_19B87DD40();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v33 = 0;
          v21 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void verifyWidgetKitExtension()", "CoreLocation: %s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }
      }

      else
      {
        NSLog(&cfstr_ThisWidgetHasA.isa, @"NSWidgetWantsLocation");
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v22 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning widget is missing NSWidgetWantsLocation key in its Info.plist}", buf, 0x12u);
        }
      }
    }

    sub_19B87BBB4();
    v23 = sub_19B87BBFC();
    v24 = _CFExecutableLinkedOnOrAfter();
    if (v23)
    {
      v25 = 5;
    }

    else
    {
      v25 = 1;
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 2;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      fClient = v18->fClient;
      if (fClient)
      {
        if (*(fClient + 16))
        {
          [(CLLocationManager *)v13 setAllowsBackgroundLocationUpdates:1];
        }
      }
    }

    sub_19B87BDD0(v18->fClient);
    if (sub_19B87BF68())
    {
      v28 = v26;
    }

    else
    {
      v28 = 3;
    }

    [(CLLocationManagerInternal *)v18 setPausesLocationUpdatesAutomatically:v28];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    os_activity_scope_leave(&state);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

- (CLLocationManager)initWithWebsiteIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil websiteIdentifier", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithWebsiteIdentifier:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  result = [(CLLocationManager *)self initWithEffectiveBundleIdentifier:0 bundlePath:0 websiteIdentifier:a3 delegate:0 silo:0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithWebsiteIdentifier:(id)a3 delegate:(id)a4 onQueue:(id)a5
{
  v8 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil websiteIdentifier", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      p_info = buf;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithWebsiteIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (a4 && a5)
    {
      break;
    }

    v8 = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    a4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, a4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  result = -[CLLocationManager initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:](self, "initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:", 0, 0, v8, a4, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a5 bePermissive:1]);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 websiteIdentifier:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:websiteIdentifier:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  result = [(CLLocationManager *)self initWithEffectiveBundleIdentifier:a3 bundlePath:0 websiteIdentifier:a4 delegate:0 silo:0];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  result = [(CLLocationManager *)self initWithEffectiveBundleIdentifier:a3 bundlePath:0 websiteIdentifier:0 delegate:0 silo:0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)a3 delegate:(id)a4 onQueue:(id)a5
{
  v8 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      p_info = buf;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (a4 && a5)
    {
      break;
    }

    v8 = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    a4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, a4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  result = -[CLLocationManager initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:](self, "initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:", v8, 0, 0, a4, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a5 bePermissive:1]);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  result = [(CLLocationManager *)self initWithEffectiveBundleIdentifier:0 bundlePath:a3 websiteIdentifier:0 delegate:0 silo:0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundle:(id)a3
{
  [a3 bundlePath];

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_);
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)a3 delegate:(id)a4 onQueue:(id)a5
{
  v8 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      p_info = buf;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (a4 && a5)
    {
      break;
    }

    v8 = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    a4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "delegate && queue";
      _os_log_impl(&dword_19B873000, a4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  result = -[CLLocationManager initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:](self, "initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:", 0, v8, 0, a4, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a5 bePermissive:1]);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundle:(id)a3 delegate:(id)a4 onQueue:(id)a5
{
  [a3 bundlePath];

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_delegate_onQueue_);
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)a3 limitingBundleIdentifier:(id)a4 delegate:(id)a5 onQueue:(id)a6
{
  v10 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

  if ([&unk_1F0E8CC88 containsObject:a3])
  {
    while (1)
    {
      if (a4)
      {
        if (([&unk_1F0E8CC88 containsObject:a4] & 1) == 0)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v20 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2114;
            v34 = a4;
            _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:initializing CLLocationManager with unsupported limiting identifier, identifier:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }
          }

          v21 = qword_1ED519090;
          if (os_signpost_enabled(qword_1ED519090))
          {
            *buf = 68289282;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2114;
            v34 = a4;
            v14 = "initializing CLLocationManager with unsupported limiting identifier";
            v15 = "{msg%{public}.0s:initializing CLLocationManager with unsupported limiting identifier, identifier:%{public, location:escape_only}@}";
            v16 = v21;
            goto LABEL_29;
          }

          goto LABEL_30;
        }
      }

      else
      {
        p_info = CLLocationManagerInternal.info;
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v23 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil limiting identifier", buf, 2u);
        }

        v24 = sub_19B87DD40();
        if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          p_info = buf;
          v25 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      if (a5 && a6)
      {
        result = -[CLLocationManager initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:](self, "initWithEffectiveBundleIdentifier:bundlePath:websiteIdentifier:delegate:silo:", a4, v10, 0, a5, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a6 bePermissive:1]);
        goto LABEL_45;
      }

      a6 = CLLocationManagerInternal.info;
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v27 = qword_1ED519090;
      self = &off_19BA89000;
      a5 = "assert";
      v10 = "delegate && queue";
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "delegate && queue";
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v28 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "delegate && queue";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      a4 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "delegate && queue";
        _os_log_impl(&dword_19B873000, a4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_61:
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
LABEL_11:
      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
      }

      v18 = sub_19B87DD40();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_info[17] != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        p_info = buf;
        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:initializing CLLocationManager with unsupported bundle path, bundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v13 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2114;
    v34 = v10;
    v14 = "initializing CLLocationManager with unsupported bundle path";
    v15 = "{msg%{public}.0s:initializing CLLocationManager with unsupported bundle path, bundlePath:%{public, location:escape_only}@}";
    v16 = v13;
LABEL_29:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, 0x1Cu);
  }

LABEL_30:
  result = 0;
LABEL_45:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLLocationManager)initWithEffectiveBundle:(id)a3 limitingBundleIdentifier:(id)a4 delegate:(id)a5 onQueue:(id)a6
{
  [a3 bundlePath];

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_limitingBundleIdentifier_delegate_onQueue_);
}

- (id)_initWithDelegate:(id)a3 onQueue:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v10 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v6 = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a4 bePermissive:1];
  v7 = *MEMORY[0x1E69E9840];

  return [(CLLocationManager *)self initWithEffectiveBundleIdentifier:0 bundlePath:0 websiteIdentifier:0 delegate:a3 silo:v6];
}

- (id)initOnQueue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "queue";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "queue must not be nil", "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "queue";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v4 = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a3 bePermissive:1];
  v5 = *MEMORY[0x1E69E9840];

  return [(CLLocationManager *)self initWithEffectiveBundleIdentifier:0 bundlePath:0 websiteIdentifier:0 delegate:0 silo:v4];
}

+ (id)sharedManager
{
  result = qword_1EAFE5080;
  if (!qword_1EAFE5080)
  {
    result = objc_alloc_init(CLLocationManager);
    qword_1EAFE5080 = result;
  }

  return result;
}

+ (id)sharedQueue
{
  if (qword_1EAFE50F8 != -1)
  {
    dispatch_once(&qword_1EAFE50F8, &unk_1F0E6B6A0);
  }

  return qword_1EAFE50F0;
}

+ (id)weakSharedInstance
{
  objc_sync_enter(a1);
  Weak = objc_loadWeak(&qword_1EAFE50E0);
  if (!Weak)
  {
    Weak = [[CLLocationManager alloc] initOnQueue:+[CLLocationManager sharedQueue]];
    objc_storeWeak(&qword_1EAFE50E0, Weak);
  }

  objc_sync_exit(a1);
  return Weak;
}

+ (BOOL)isMonitoringAvailableForClass:(Class)regionClass
{
  [a1 collectMetricForFunction:2];
  if (objc_opt_class() == regionClass)
  {
    v5 = 3;
  }

  else if (objc_opt_class() == regionClass)
  {
    v5 = 0;
  }

  else if (objc_opt_class() == regionClass)
  {
    v5 = 2;
  }

  else
  {
    if (objc_opt_class() != regionClass && objc_opt_class() != regionClass)
    {
      return 0;
    }

    v5 = 1;
  }

  return sub_19B889DD4(0, v5) != 0;
}

+ (BOOL)regionMonitoringAvailable
{
  [a1 collectMetricForFunction:2];
  sub_19B87BBB4();
  return (sub_19B93BE2C() >> 8) & 1;
}

+ (BOOL)isRangingAvailable
{
  [a1 collectMetricForFunction:2];
  sub_19B87BBB4();
  return (sub_19B93BE2C() >> 22) & 1;
}

- (void)setDelegate:(id)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    v21 = 2050;
    v22 = delegate;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, delegate:%{public}p}", buf, 0x3Au);
  }

  [self->_internal setDelegate:delegate];
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)delegate
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [self->_internal delegate];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setDistanceFilter:(CLLocationDistance)distanceFilter
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    v22 = 2050;
    v23 = distanceFilter;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, distance:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [internal[4] setDistanceFilter:distanceFilter];
  if ([internal[4] updatingLocation])
  {
    [(CLLocationManager *)self startUpdatingLocation];
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (CLLocationDistance)distanceFilter
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [*(self->_internal + 4) distanceFilter];
  v8 = v7;
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    v22 = 2050;
    v23 = desiredAccuracy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, accuracy:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [internal[4] setDesiredAccuracy:desiredAccuracy];
  if ([internal[4] updatingLocation])
  {
    [(CLLocationManager *)self startUpdatingLocation];
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically
{
  v3 = pausesLocationUpdatesAutomatically;
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    v22 = self;
    v23 = 1026;
    v24 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, pausesLocationUpdatesAutomatically:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (!sub_19B87BF68())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  sub_19B87BBB4();
  if (sub_19B87BBFC())
  {
    if (v3)
    {
      v10 = 6;
    }

    else
    {
      v10 = 4;
    }

    [internal setPausesLocationUpdatesAutomatically:v10];
    if ([internal[4] paused] && objc_msgSend(internal[4], "pausesLocationUpdatesAutomatically") <= 4)
    {
      [(CLLocationManager *)self startUpdatingLocation];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)pausesLocationUpdatesAutomatically
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [self->_internal PausesLocationUpdatesAutomatically] > 4;
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)allowsBackgroundLocationUpdates
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [self->_internal allowsBackgroundLocationUpdates];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)showsBackgroundLocationIndicator
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [self->_internal showsBackgroundLocationIndicator];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)mapCorrectionAvailable
{
  sub_19B87BBB4();

  return sub_19B93C23C();
}

- (BOOL)locationServicesAvailable
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)locationServicesEnabled
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = *(self->_internal + 1);
  v8 = CLClientIsLocationServicesEnabled() != 0;
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)locationServicesApproved
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = +[CLLocationManager _authorizationStatus]== 3;
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (double)expectedGpsUpdateInterval
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return 1.0;
}

- (void)setSupportInfo:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    v23 = self;
    v24 = 1026;
    v25 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, supportInfo:%{public}hhd}", buf, 0x36u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "Obsolete", buf, 2u);
  }

  v10 = sub_19B87DD40();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager setSupportInfo:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (__CLClient)internalClient
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = *(self->_internal + 1);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setPrivateMode:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    v21 = 1026;
    v22 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, privateMode:%{public}hhd}", buf, 0x36u);
  }

  sub_19B9BD5D8();
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)privateMode
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = sub_19B9BD618() != 0;
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setPurpose:(NSString *)purpose
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    v22 = 2113;
    v23 = purpose;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, purpose:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889078(internal[1], purpose);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)purpose
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v8 = sub_19B88915C(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setActivityType:(CLActivityType)activityType
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    *v27 = 0;
    *&v27[4] = 2082;
    *&v27[6] = "";
    *&v27[14] = 2082;
    *&v27[16] = "activity";
    v28 = 2114;
    v29 = v8;
    v30 = 2050;
    v31 = self;
    v32 = 2050;
    v33 = activityType;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, activityType:%{public, location:CLActivityType}lld}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v11 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    *buf = 136315394;
    *v27 = v11;
    *&v27[8] = 2048;
    *&v27[10] = activityType;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "Client,%s,setActivityType,%ld", buf, 0x16u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v13 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v22 = 136315394;
    v23 = v13;
    v24 = 2048;
    v25 = activityType;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager setActivityType:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  [*(internal + 4) setActivityType:activityType];
  switch(activityType)
  {
    case CLActivityTypeFitness:
      [*(internal + 4) setAllowsMapCorrection:1];
      CLClientSetAllowsMapCorrection(*(internal + 1), 1);
      LODWORD(activityType) = 3;
      break;
    case CLActivityTypeAirborne:
      [*(internal + 4) setAllowsMapCorrection:0];
      LODWORD(activityType) = 5;
      break;
    case CLActivityTypeOtherNavigation:
      if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier"), "isEqualToString:", @"com.apple.NanoMaps"))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v15 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          v16 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
          *buf = 136315138;
          *v27 = v16;
          _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "Client,%s,setActivityType,allowing map correction", buf, 0xCu);
        }

        v17 = sub_19B87DD40();
        if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v18 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
          v22 = 136315138;
          v23 = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager setActivityType:]", "CoreLocation: %s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        [*(internal + 4) setAllowsMapCorrection:0];
      }

      LODWORD(activityType) = 2;
      break;
  }

  sub_19B880390(*(internal + 1), activityType);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)markAsHavingReceivedLocation
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientMarkAsHavingReceivedLocation(*(self->_internal + 1));
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)a3 orBundlePath:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v9, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = [a3 UTF8String];
    v13 = [a4 UTF8String];
    *buf = 68290306;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    v22 = 2114;
    v23 = v11;
    v24 = 2050;
    v25 = a1;
    v26 = 2082;
    v27 = v12;
    v28 = 2082;
    v29 = v13;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
  }

  sub_19B9C09F4();
  os_activity_scope_leave(&v15);
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)_checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)a3 orBundlePath:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v9, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = [a3 UTF8String];
    v13 = [a4 UTF8String];
    *buf = 68290306;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    v22 = 2114;
    v23 = v11;
    v24 = 2050;
    v25 = a1;
    v26 = 2082;
    v27 = v12;
    v28 = 2082;
    v29 = v13;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
  }

  sub_19B9C0954();
  os_activity_scope_leave(&v15);
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)_checkAndExerciseForPushClientWithBundleID:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [a3 UTF8String];
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    v22 = a1;
    v23 = 2082;
    v24 = v10;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  sub_19B9C09AC();
  os_activity_scope_leave(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_checkAndExerciseAuthorizationForBundleID:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [a3 UTF8String];
    *buf = 68290050;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v9;
    v23 = 2050;
    v24 = a1;
    v25 = 2082;
    v26 = v10;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v11 = sub_19B9BF3F0();
  os_activity_scope_leave(&v14);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)_checkAndExerciseAuthorizationForBundle:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [objc_msgSend(a3 "bundlePath")];
    *buf = 68290050;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v9;
    v23 = 2050;
    v24 = a1;
    v25 = 2082;
    v26 = v10;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundlePath:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  [a3 bundlePath];
  v11 = sub_19B9BF3F0();
  os_activity_scope_leave(&v14);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)startUpdatingLocationWithPrompt
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientSetShowLocationPrompt(*(self->_internal + 1), 1);
  [(CLLocationManager *)self startUpdatingLocation];
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)allowDeferredLocationUpdatesUntilTraveled:(CLLocationDistance)distance timeout:(NSTimeInterval)timeout
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290306;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v10;
    v26 = 2050;
    v27 = self;
    v28 = 2050;
    v29 = distance;
    v30 = 2050;
    v31 = timeout;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, distance:%{public}f, timeout_s:%{public}.09f}", buf, 0x44u);
  }

  [(CLLocationManager *)self collectMetricForFunction:32];
  internal = self->_internal;
  [internal delegate];
  objc_sync_enter(self);
  if ([*(internal + 4) requestingLocation])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "Canceling requestLocation.", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager allowDeferredLocationUpdatesUntilTraveled:timeout:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    [internal cancelLocationRequest];
  }

  [*(internal + 4) setBatchingLocation:1];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v15 = *(internal + 1);
  if (!v15 || !*(v15 + 16))
  {
    objc_msgSend(objc_msgSend(MEMORY[0x1E696AAA8], "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"CLLocationManager.m", 1384, @"Application must support the location background mode (in app's Info.plist, {UIBackgroundModes=(location);}");
    v15 = *(internal + 1);
  }

  sub_19B88ECC0(v15, distance, timeout);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)disallowDeferredLocationUpdates
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:32];
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88EE08(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)deferredLocationUpdatesAvailable
{
  [a1 collectMetricForFunction:32];
  sub_19B87BBB4();
  return 0;
}

- (BOOL)headingAvailable
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = sub_19B87AB28();
  if (v7)
  {
    sub_19B87BBB4();
  }

  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)setHeadingFilter:(CLLocationDegrees)headingFilter
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v6, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    v23 = self;
    v24 = 2050;
    v25 = headingFilter;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, filter:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v10 = *MEMORY[0x1E6985C68];
  v11 = 360.0;
  if (headingFilter <= 360.0)
  {
    v11 = headingFilter;
  }

  if (headingFilter > 0.0)
  {
    v10 = v11;
  }

  [internal[4] setHeadingFilter:v10];
  if ([internal[4] updatingHeading])
  {
    [(CLLocationManager *)self startUpdatingHeading];
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (CLLocationDegrees)headingFilter
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [*(self->_internal + 4) headingFilter];
  v8 = v7;
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setHeadingOrientation:(CLDeviceOrientation)headingOrientation
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    v22 = 2050;
    v23 = headingOrientation;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, orientation:%{public, location:CLDeviceOrientation}lld}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if ((headingOrientation - 1) <= 3)
  {
    *(internal + 56) = headingOrientation;
    if ([*(internal + 4) updatingHeading])
    {
      [(CLLocationManager *)self startUpdatingHeading];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (CLDeviceOrientation)headingOrientation
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = *(self->_internal + 56);
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CLHeading)heading
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v6;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  LODWORD(internal) = CLClientGetHeading(internal[1], &v17);
  objc_sync_exit(self);
  v8 = 0;
  if (internal && *&v20 > 0.0)
  {
    v9 = [CLHeading alloc];
    *&buf[32] = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    *buf = v17;
    *&buf[16] = v18;
    v8 = [(CLHeading *)v9 initWithClientHeading:buf];
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v11 = [-[CLHeading description](v8 "description")];
      *buf = 136380675;
      *&buf[4] = v11;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "heading, %{private}s", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v13 = [-[CLHeading description](v8 "description")];
      v24 = 136380675;
      v25 = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager heading]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)stopUpdatingHeading
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:128];
  internal = self->_internal;
  objc_sync_enter(self);
  [*(internal + 4) setUpdatingHeading:0];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Stop updating heading", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager stopUpdatingHeading]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientStopHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)dismissHeadingCalibrationDisplay
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing Compass Calibration HUD", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager dismissHeadingCalibrationDisplay]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientShowHeadingCalibration(internal[1], 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringSignificantLocationChangesOfDistance:(double)a3 withPowerBudget:(int)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v12 = a4;
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  *(internal + 60) = 0xBFF0000000000000;
  sub_19B880EA0(internal[1], &v13, &v12);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringSignificantLocationChanges
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:512];
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88A6C0(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringLocationPushesWithCompletion:(void *)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v7;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:1024];
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889788(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringLocationPushes
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:2048];
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889A1C(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringForRegion:(CLRegion *)region
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(CLRegion *)region identifier];
    [(CLRegion *)region center];
    v11 = v10;
    [(CLRegion *)region center];
    v13 = v12;
    [(CLRegion *)region radius];
    *buf = 68290819;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v8;
    *&buf[38] = 2050;
    v37 = self;
    v38 = 2113;
    v39 = v9;
    v40 = 2053;
    v41 = v11;
    v42 = 2053;
    v43 = v13;
    v44 = 2050;
    v45 = v14;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  [(CLLocationManager *)self collectMetricForFunction:4096];
  v15 = region == 0;
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v17 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = region;
  }

  else
  {
    v18 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = region;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = [(CLRegion *)v18 UUID];
    if (region)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    v15 = v21;
  }

  else if (v19)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v28 = [-[CLRegion vertices](v19 "vertices")];
      *buf = 134349056;
      *&buf[4] = v28;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEBUG, "Number of vertices %{public}lu", buf, 0xCu);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v30 = [-[CLRegion vertices](v19 "vertices")];
      v34 = 134349056;
      v35 = v30;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startMonitoringForRegion:]", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  internal = self->_internal;
  v23 = [internal delegate];
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  if (v15 || !sub_19B88A994(internal[1], region))
  {
    v24 = internal[1];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_19B8A0AE8;
    v32[3] = &unk_1E753D098;
    v32[4] = self;
    v32[5] = v23;
    v32[6] = region;
    if (v24)
    {
      v25 = *(v24 + 232);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B88071C;
      *&buf[24] = &unk_1E753CCE0;
      *&buf[32] = v32;
      [v25 async:buf];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringForRegion:(CLRegion *)region
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v6, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(CLRegion *)region identifier];
    [(CLRegion *)region center];
    v11 = v10;
    [(CLRegion *)region center];
    v13 = v12;
    [(CLRegion *)region radius];
    *buf = 68290819;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    v29 = self;
    v30 = 2113;
    v31 = v9;
    v32 = 2053;
    v33 = v11;
    v34 = 2053;
    v35 = v13;
    v36 = 2050;
    v37 = v14;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x2000];
  if (region)
  {
    internal = self->_internal;
    objc_sync_enter(self);
    sub_19B88B04C(internal[1], region);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v17 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  os_activity_scope_leave(&v19);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)requestStateForRegion:(CLRegion *)region
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v6, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(CLRegion *)region identifier];
    [(CLRegion *)region center];
    v11 = v10;
    [(CLRegion *)region center];
    v13 = v12;
    [(CLRegion *)region radius];
    *buf = 68290819;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    v29 = self;
    v30 = 2113;
    v31 = v9;
    v32 = 2053;
    v33 = v11;
    v34 = 2053;
    v35 = v13;
    v36 = 2050;
    v37 = v14;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x4000];
  if (region)
  {
    internal = self->_internal;
    objc_sync_enter(self);
    [internal performCourtesyPromptIfNeeded];
    sub_19B88C368(internal[1], region);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v17 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  os_activity_scope_leave(&v19);
  v18 = *MEMORY[0x1E69E9840];
}

- (CLLocationDistance)maximumRegionMonitoringDistance
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x8000];
  objc_sync_enter(self);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return 2128000.0;
}

- (void)startRangingBeaconsInRegion:(CLBeaconRegion *)region
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    *&buf[4] = 0;
    *v26 = 2082;
    *&v26[2] = "";
    *&v26[10] = 2082;
    *&v26[12] = "activity";
    *&v26[20] = 2114;
    *&v26[22] = v8;
    *&v26[30] = 2050;
    v27 = self;
    v28 = 2113;
    v29 = region;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  v9 = region == 0;
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v11 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  if ([(NSString *)[(CLRegion *)region onBehalfOfBundleId] length])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v13 = [(NSString *)[(CLRegion *)region onBehalfOfBundleId] UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      *&v26[10] = 2082;
      *&v26[12] = v13;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Cannot start ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v14 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v15 = [(NSString *)[(CLRegion *)region onBehalfOfBundleId] UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      *&v26[10] = 2082;
      *&v26[12] = v15;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot start ranging beacons on behalf of another app", "{msg%{public}.0s:Cannot start ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v9 = 1;
  }

  if ([(CLRegion *)region type])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v17 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is not an instance of CLBeaconRegion", "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
    }

    v9 = 1;
  }

  internal = self->_internal;
  v19 = [internal delegate];
  objc_sync_enter(self);
  if (v9 || ([internal performCourtesyPromptIfNeeded], objc_msgSend(objc_msgSend(internal, "rangedRegions"), "removeObject:", region), objc_msgSend(objc_msgSend(internal, "rangedRegions"), "addObject:", region), !sub_19B88D920(internal[1], objc_msgSend(objc_alloc(MEMORY[0x1E695DFA8]), "initWithSet:copyItems:", objc_msgSend(internal, "rangedRegions"), 1), 1)))
  {
    v20 = internal[1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_19B8A1B60;
    v23[3] = &unk_1E753D098;
    v23[4] = self;
    v23[5] = v19;
    v23[6] = region;
    if (v20)
    {
      v21 = *(v20 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v26 = 3221225472;
      *&v26[8] = sub_19B88071C;
      *&v26[16] = &unk_1E753CCE0;
      *&v26[24] = v23;
      [v21 async:buf];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)stopRangingBeaconsInRegion:(CLBeaconRegion *)region
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v6, &v22);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2114;
    v30 = v8;
    v31 = 2050;
    v32 = self;
    v33 = 2113;
    v34 = region;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v18 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_31;
    }

    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v13 = "Region is nil";
    v14 = "{msg%{public}.0s:Region is nil}";
    goto LABEL_29;
  }

  if (![(NSString *)[(CLRegion *)region onBehalfOfBundleId] length])
  {
    if (![(CLRegion *)region type])
    {
      internal = self->_internal;
      objc_sync_enter(self);
      [objc_msgSend(internal "rangedRegions")];
      sub_19B88D920(internal[1], [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:objc_msgSend(internal copyItems:{"rangedRegions"), 1}], 0);
      objc_sync_exit(self);
      goto LABEL_31;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v19 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v18 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_31;
    }

    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v13 = "Region is not an instance of CLBeaconRegion";
    v14 = "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}";
LABEL_29:
    v15 = v18;
    v16 = 18;
    goto LABEL_30;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v10 = [(NSString *)[(CLRegion *)region onBehalfOfBundleId] UTF8String];
    *buf = 68289282;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = v10;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Cannot stop ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v11 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v12 = [(NSString *)[(CLRegion *)region onBehalfOfBundleId] UTF8String];
    *buf = 68289282;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = v12;
    v13 = "Cannot stop ranging beacons on behalf of another app";
    v14 = "{msg%{public}.0s:Cannot stop ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}";
    v15 = v11;
    v16 = 28;
LABEL_30:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, v16);
  }

LABEL_31:
  os_activity_scope_leave(&v22);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)startRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    *v28 = 2082;
    *&v28[2] = "";
    *&v28[10] = 2082;
    *&v28[12] = "activity";
    *&v28[20] = 2114;
    *&v28[22] = v8;
    *&v28[30] = 2050;
    v29 = self;
    v30 = 2113;
    v31 = constraint;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, constraint:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  if (!constraint)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  v18 = [internal delegate];
  objc_sync_enter(self);
  [objc_msgSend(internal "rangedConstraints")];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = constraint;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [internal rangedConstraints];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v10 addObject:{-[CLBeaconRegion initWithBeaconIdentityConstraint:identifier:]([CLBeaconRegion alloc], "initWithBeaconIdentityConstraint:identifier:", *(*(&v21 + 1) + 8 * i), &stru_1F0E6F140)}];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  if (!sub_19B88D920(internal[1], v10, 1))
  {
    v15 = internal[1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B8A2644;
    v20[3] = &unk_1E753D098;
    v20[4] = self;
    v20[5] = v18;
    v20[6] = v19;
    if (v15)
    {
      v16 = *(v15 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v28 = 3221225472;
      *&v28[8] = sub_19B88071C;
      *&v28[16] = &unk_1E753CCE0;
      *&v28[24] = v20;
      [v16 async:buf];
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)stopRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    buf = 68290051;
    v23 = 2082;
    v24 = "";
    v25 = 2082;
    v26 = "activity";
    v27 = 2114;
    v28 = v8;
    v29 = 2050;
    v30 = self;
    v31 = 2113;
    v32 = constraint;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, constraint:%{private, location:escape_only}@}", &buf, 0x3Au);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  if (!constraint)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [objc_msgSend(internal "rangedConstraints")];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [internal rangedConstraints];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v10 addObject:{-[CLBeaconRegion initWithBeaconIdentityConstraint:identifier:]([CLBeaconRegion alloc], "initWithBeaconIdentityConstraint:identifier:", *(*(&v16 + 1) + 8 * i), &stru_1F0E6F140)}];
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  sub_19B88D920(internal[1], v10, 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

- (NSSet)rangedBeaconConstraints
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  internal = self->_internal;
  objc_sync_enter(self);
  v8 = [objc_msgSend(internal "rangedConstraints")];
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSSet)rangedRegions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x20000];
  internal = self->_internal;
  objc_sync_enter(self);
  v8 = [objc_msgSend(internal "rangedRegions")];
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)a3 stateString:(id)a4 serviceUUID:(id)a5 serviceType:(id)a6 characteristicType:(id)a7 serviceGroupUUID:(id)a8 source:(id)a9 roomUUID:(id)a10
{
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setValue:a3 forKey:0x1F0E71780];
  [v16 setValue:a4 forKey:0x1F0E71800];
  [v16 setValue:a5 forKey:0x1F0E71820];
  [v16 setValue:a6 forKey:0x1F0E717A0];
  [v16 setValue:a7 forKey:0x1F0E717C0];
  [v16 setValue:a8 forKey:0x1F0E71840];
  [v16 setValue:a9 forKey:0x1F0E717E0];
  [v16 setValue:a10 forKey:0x1F0E71860];
  return v16;
}

- (void)exportMicroLocationDatabaseTablesWithCompletion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v8;
    v23 = 2050;
    v24 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to export copy of MiLo DB tables}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8A31E0;
  v13[3] = &unk_1E753D0C0;
  v13[4] = a3;
  sub_19B88FA04(v11, v13);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)exportMicroLocationDataForMigrationWithCompletion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v8;
    v23 = 2050;
    v24 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to export copy of MiLo DB tables for migration}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8A360C;
  v13[3] = &unk_1E753D0C0;
  v13[4] = a3;
  sub_19B88FC24(v11, v13);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)requestMicroLocationStaticSourcesStatisticsWithCompletion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v8;
    v23 = 2050;
    v24 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to get per anchor per cluster measured value statistics}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8A3A38;
  v13[3] = &unk_1E753D0C0;
  v13[4] = a3;
  sub_19B88FE44(v11, v13);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)requestMicroLocationLearningWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received learning request}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B890064(internal[1], a3);
  objc_sync_exit(self);
  os_activity_scope_leave(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 withCompletion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    buf = 68289794;
    v43 = 2082;
    v44 = "";
    v45 = 2082;
    v46 = "activity";
    v47 = 2114;
    v48 = v10;
    v49 = 2050;
    v50 = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v11 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289026;
    v43 = 2082;
    v44 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received localization scan request}", &buf, 0x12u);
  }

  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v27 = a4;
  v28 = self;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3 copyItems:1];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a3;
  v14 = [a3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v18)
        {
          v19 = *v31;
LABEL_16:
          v20 = 0;
          while (1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v30 + 1) + 8 * v20);
            [v13 objectForKeyedSubscript:v17];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
              if (v18)
              {
                goto LABEL_16;
              }

              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          [v13 removeObjectForKey:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v14);
  }

  v22 = objc_sync_enter(v28);
  sub_19B88F3B8(v22, v23, v24, v27);
  objc_sync_exit(v28);
  v25 = v13;
  os_activity_scope_leave(&state);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4
{
  v4 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    buf = 68289794;
    v42 = 2082;
    v43 = "";
    v44 = 2082;
    v45 = "activity";
    v46 = 2114;
    v47 = v9;
    v48 = 2050;
    v49 = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v10 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289282;
    v42 = 2082;
    v43 = "";
    v44 = 1026;
    LODWORD(v45) = v4;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received recording scan request, forced::%{public}hhd}", &buf, 0x18u);
  }

  if (!a3)
  {
    a3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3 copyItems:1];
  v12 = v11;
  if (v4)
  {
    v13 = MEMORY[0x1E695E118];
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  [v11 setValue:v13 forKey:0x1F0E71960];
  if (![v12 objectForKey:0x1F0E71980])
  {
    [v12 setValue:objc_msgSend(MEMORY[0x1E696AFB0] forKey:{"UUID"), 0x1F0E71980}];
  }

  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v27 = self;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v19 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v19)
        {
          v20 = *v30;
LABEL_23:
          v21 = 0;
          while (1)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v29 + 1) + 8 * v21);
            [v12 objectForKeyedSubscript:v18];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
              if (v19)
              {
                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          [v12 removeObjectForKey:v18];
        }
      }

      v15 = [a3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v15);
  }

  v23 = objc_sync_enter(v27);
  sub_19B88F3B8(v23, v24, v25, 0);
  objc_sync_exit(v27);
  os_activity_scope_leave(&state);
  v26 = *MEMORY[0x1E69E9840];
}

- (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    buf = 68289794;
    v46 = 2082;
    v47 = "";
    v48 = 2082;
    v49 = "activity";
    v50 = 2114;
    v51 = v11;
    v52 = 2050;
    v53 = self;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v12 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289282;
    v46 = 2082;
    v47 = "";
    v48 = 1026;
    LODWORD(v49) = v6;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received recording scan request, forced::%{public}hhd}", &buf, 0x18u);
  }

  v31 = [MEMORY[0x1E696AFB0] UUID];
  if (!a3)
  {
    a3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3 copyItems:1];
  [v13 setValue:v31 forKey:0x1F0E71980];
  if (v6)
  {
    v14 = MEMORY[0x1E695E118];
  }

  else
  {
    v14 = MEMORY[0x1E695E110];
  }

  [v13 setValue:v14 forKey:0x1F0E71960];
  v29 = a5;
  v30 = self;
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v44[2] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [a3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v16)
  {
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v20 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:{16, v29}];
        if (v20)
        {
          v21 = *v34;
LABEL_21:
          v22 = 0;
          while (1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v15);
            }

            v23 = *(*(&v33 + 1) + 8 * v22);
            [v13 objectForKeyedSubscript:v19];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
              if (v20)
              {
                goto LABEL_21;
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          [v13 removeObjectForKey:v19];
        }
      }

      v16 = [a3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v16);
  }

  v24 = objc_sync_enter(v30);
  sub_19B88F3B8(v24, v25, v26, v29);
  objc_sync_exit(v30);
  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 correspondingToTriggerUUID:(id)a4 handler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v10, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v12;
    v25 = 2050;
    v26 = self;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v13 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received truth label donation request for a recording trigger}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88F5D4(internal[1], [a3 UUIDString], objc_msgSend(a4, "UUIDString"), a5);
  objc_sync_exit(self);
  os_activity_scope_leave(&v16);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 forRecordingEventsBetweenDate:(id)a4 andDate:(id)a5 handler:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v12, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v14;
    v30 = 2050;
    v31 = self;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if ([a4 compare:a5] == 1)
  {
    if (a6)
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E696A578];
      v21 = @"donateTruthTagLabelForClient failed because startDate is later than endDate";
      (*(a6 + 2))(a6, [v15 initWithDomain:@"kCLErrorDomainPrivate" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}]);
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received truth label donation request between Dates}", buf, 0x12u);
    }

    internal = self->_internal;
    objc_sync_enter(self);
    sub_19B88F7EC(internal[1], [a3 UUIDString], a4, a5, a6);
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&v19);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)startTranscriptSessionInstantlyWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 1, 0, a3);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)startTranscriptSessionWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 1, 1, a3);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)endTranscriptSessionWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 0, 0, a3);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestHistoricalLocationsWithPurposeKey:(NSString *)purposeKey sampleCount:(NSInteger)sampleCount completionHandler:(void *)handler
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v8, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v10;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x40000];
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B83C(internal[1], purposeKey);
  objc_sync_exit(self);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)willPromptForTranscriptSessionWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v7;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88BCA4(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)isConsideredInRemoteAreaWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v7;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88C01C(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

+ (id)metadataForHomekitActionSetEventWithUUID:(id)a3 name:(id)a4 type:(id)a5 clientName:(id)a6 source:(id)a7 homeName:(id)a8
{
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setValue:a3 forKey:0x1F0E71880];
  [v14 setValue:a4 forKey:0x1F0E718A0];
  [v14 setValue:a5 forKey:0x1F0E718C0];
  [v14 setValue:a6 forKey:0x1F0E718E0];
  [v14 setValue:a7 forKey:0x1F0E71900];
  [v14 setValue:a8 forKey:0x1F0E71920];
  return v14;
}

+ (id)metadataForMicroLocationTruthTagEventWithTagUUID:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setValue:a3 forKey:0x1F0E71940];
  return v4;
}

- (void)purgeMicroLocationSemiSupervisedData
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to purge semi-supervised models}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v9 = internal[1];
  sub_19B890280();
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)purgeMicroLocationData
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to purge MicroLocation data}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v9 = internal[1];
  sub_19B89041C();
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)resetApps
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_sync_enter(self);
  sub_19B9BC420();
  objc_sync_exit(self);
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)activeLocationClientsWithInfo
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = a1;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyActiveClientsUsingLocation();
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)appsUsingLocationWithDetails
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyAppsUsingLocation();
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)userLocationClientsWithInfo
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = a1;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyAppsUsingLocation();
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)technologiesInUse
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:CLCopyTechnologiesInUse()];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_zAxisStatistics
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyZaxisStats();
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)addIdentifiableClient:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    *&buf[4] = 0;
    *v15 = 2082;
    *&v15[2] = "";
    *&v15[10] = 2082;
    *&v15[12] = "activity";
    *&v15[20] = 2114;
    *&v15[22] = v8;
    v16 = 2050;
    v17 = self;
    v18 = 2050;
    v19 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, client:%{public}p}", buf, 0x3Au);
  }

  if (a3)
  {
    internal = self->_internal;
    objc_initWeak(&location, a3);
    *buf = MEMORY[0x1E69E9820];
    *v15 = 3221225472;
    *&v15[8] = sub_19B898110;
    *&v15[16] = &unk_1E753D050;
    objc_copyWeak(&v15[24], &location);
    v10 = _Block_copy(buf);
    objc_destroyWeak(&v15[24]);
    objc_destroyWeak(&location);
    objc_sync_enter(self);
    [internal[35] addObject:v10];
    objc_sync_exit(self);
    [a3 setWeakClient:v10];
    [a3 updateIdentityToken:objc_msgSend(internal withStorageToken:{"clientKeyForIdentityValidation"), objc_msgSend(internal, "monitorLedgerAccessKey")}];
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeIdentifiableClient:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [a3 weakClient];
    *buf = 68290306;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    v22 = self;
    v23 = 2050;
    v24 = a3;
    v25 = 2050;
    v26 = v9;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, client:%{public}p, weakClient:%{public}p}", buf, 0x44u);
  }

  if (a3 && [a3 weakClient])
  {
    internal = self->_internal;
    objc_sync_enter(self);
    [internal[35] removeObject:{objc_msgSend(a3, "weakClient")}];
    [a3 setWeakClient:0];
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (NSString)processName
{
  v2 = [MEMORY[0x1E696AE30] processInfo];

  return [v2 processName];
}

- (void)onClientEvent:(int)a3 supportInfo:(id)a4
{
  if (self->_internal)
  {
    switch(a3)
    {
      case 0:
        v6 = copyLocationsFromLocationMessagePayload();
        -[CLLocationManager onClientEventLocation:forceMapMatching:type:](self, "onClientEventLocation:forceMapMatching:type:", v6, [objc_msgSend(a4 objectForKeyedSubscript:{@"ForceMapMatching", "BOOLValue"}], objc_msgSend(a4, "objectForKeyedSubscript:", @"kCLClientEventKey"));

        break;
      case 1:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegistration_);
        break;
      case 3:

        MEMORY[0x1EEE66B58](self, sel_onClientEventLocationUnavailable_);
        break;
      case 12:

        MEMORY[0x1EEE66B58](self, sel_onClientEventHeading_);
        break;
      case 13:

        MEMORY[0x1EEE66B58](self, sel_onClientEventHeadingCalibration_);
        break;
      case 20:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegion_);
        break;
      case 21:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionState_);
        break;
      case 22:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionError_);
        break;
      case 23:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRanging_);
        break;
      case 24:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRangingError_);
        break;
      case 25:

        MEMORY[0x1EEE66B58](self, sel_onClientEventError_);
        break;
      case 27:

        MEMORY[0x1EEE66B58](self, sel_onClientEventAuthStatus_);
        break;
      case 28:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionResponseDelayed_);
        break;
      case 29:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionSetupCompleted_);
        break;
      case 30:

        MEMORY[0x1EEE66B58](self, sel_onClientEventAutopauseStatus_);
        break;
      case 31:

        MEMORY[0x1EEE66B58](self, sel_onClientEventBatch_);
        break;
      case 32:

        MEMORY[0x1EEE66B58](self, sel_onClientEventInterrupted_);
        break;
      case 33:

        MEMORY[0x1EEE66B58](self, sel_onClientEventVehicleSpeed_);
        break;
      case 34:

        MEMORY[0x1EEE66B58](self, sel_onClientEventVehicleHeading_);
        break;
      case 35:

        MEMORY[0x1EEE66B58](self, sel_onClientEventSignificantLocationVisit_);
        break;
      case 36:

        MEMORY[0x1EEE66B58](self, sel_onClientEventSignificantLocationVisitStateRequest_);
        break;
      case 40:

        MEMORY[0x1EEE66B58](self, sel_onClientEventPlaceInferenceResult_);
        break;
      case 41:

        MEMORY[0x1EEE66B58](self, sel_onClientEventPlaceInferenceError_);
        break;
      case 42:

        MEMORY[0x1EEE66B58](self, sel_onClientEventNoLocationWatchdog_);
        break;
      default:
        return;
    }
  }
}

- (void)onClientEventRegistration:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  internal = self->_internal;
  v7 = [a3 objectForKey:@"kCLConnectionMessageClientKeyForIdentityValidation"];
  v8 = [a3 objectForKey:@"kCLConnectionMessageMonitorLedgerAccessKey"];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    buf = 68290050;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "activity";
    v30 = 2114;
    v31 = v11;
    v32 = 2050;
    v33 = self;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, clientKey:%{public, location:escape_only}@}", &buf, 0x3Au);
  }

  if (([v7 isEqualToString:@"icom.apple.Home.HomeControlService:"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"icom.apple.Spotlight:"))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      buf = 68289026;
      v26 = 2082;
      v27 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:This CLLocationManager resolved to an invalid location client.}", &buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v13 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      buf = 68289026;
      v26 = 2082;
      v27 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "This CLLocationManager resolved to an invalid location client.", "{msg%{public}.0s:This CLLocationManager resolved to an invalid location client.}", &buf, 0x12u);
    }
  }

  [internal setClientKeyForIdentityValidation:v7];
  [internal setMonitorLedgerAccessKey:v8];
  v14 = [internal[35] copy];
  os_activity_scope_leave(&state);
  objc_sync_exit(self);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [(*(*(*(&v19 + 1) + 8 * i) + 16))() updateIdentityToken:v7 withStorageToken:v8];
      }

      v15 = [v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventAuthStatus:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v25 = 0;
  v24 = 0;
  if (!CLClientGetAuthorizationStatusAndCorrectiveCompensation(a3, &v25, &v24, &v24 + 1))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "could not get updated authorization status", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventAuthStatus:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    goto LABEL_40;
  }

  v7 = v25;
  if (v25 != 3)
  {
    *(internal + 60) = 0xBFF0000000000000;
  }

  objc_sync_enter(self);
  if (![*(internal + 4) previousAuthorizationStatusValid] || objc_msgSend(*(internal + 4), "previousAuthorizationStatus") != v7 || (v8 = objc_msgSend(*(internal + 4), "limitsPrecision"), v24 != v8) || (v9 = objc_msgSend(*(internal + 4), "isAuthorizedForWidgetUpdates"), HIBYTE(v24) != v9))
  {
    v11 = v24;
    [*(internal + 4) setLimitsPrecision:v24 != 0];
    [*(internal + 4) setPreviousAuthorizationStatus:v7];
    [*(internal + 4) setPreviousAuthorizationStatusValid:1];
    v12 = HIBYTE(v24);
    [*(internal + 4) setIsAuthorizedForWidgetUpdates:HIBYTE(v24) != 0];
    objc_sync_exit(self);
    v13 = self;
    if (objc_opt_respondsToSelector())
    {
      v14 = NSStringFromSelector(sel_locationManagerDidChangeAuthorization_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290562;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2050;
        v31 = self;
        v32 = 2050;
        v33 = v6;
        v34 = 2114;
        v35 = v14;
        v36 = 2050;
        v37 = v7;
        v38 = 1026;
        v39 = v11 != 0;
        v40 = 1026;
        v41 = v12 != 0;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, authorizationStatus:%{public, location:CLClientAuthorizationStatus}lld, limitsPrecision:%{public}hhd, isAuthorizedForWidgetUpdates:%{public}hhd}", buf, 0x46u);
      }

      [v6 locationManagerDidChangeAuthorization:self];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = NSStringFromSelector(sel_locationManager_didReceiveApproval_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v20 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290050;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2050;
          v31 = self;
          v32 = 2050;
          v33 = v6;
          v34 = 2114;
          v35 = v19;
          v36 = 1026;
          LODWORD(v37) = v7 == 3;
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, approved:%{public}hhd}", buf, 0x36u);
        }

        [v6 locationManager:self didReceiveApproval:v7 == 3];
      }

      if (objc_opt_respondsToSelector())
      {
        v21 = NSStringFromSelector(sel_locationManager_didChangeAuthorizationStatus_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v22 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290562;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2050;
          v31 = self;
          v32 = 2050;
          v33 = v6;
          v34 = 2114;
          v35 = v21;
          v36 = 2050;
          v37 = v7;
          v38 = 1026;
          v39 = v11 != 0;
          v40 = 1026;
          v41 = v12 != 0;
          _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, authorizationStatus:%{public, location:CLClientAuthorizationStatus}lld, limitsPrecision:%{public}hhd, isAuthorizedForWidgetUpdates:%{public}hhd}", buf, 0x46u);
        }

        [v6 locationManager:self didChangeAuthorizationStatus:v7];
      }
    }

LABEL_40:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = *MEMORY[0x1E69E9840];

  objc_sync_exit(self);
}

- (void)onClientEventLocation:(id)a3 forceMapMatching:(BOOL)a4 type:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v10 = [internal delegate];
  if (![a3 count])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "Location event received with empty payload", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      LOWORD(v58[0]) = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v14);
      goto LABEL_17;
    }

    goto LABEL_82;
  }

  if (([*(internal + 4) allowsMapCorrection] & 1) == 0 && !a4)
  {
    [a3 makeObjectsPerformSelector:sel_unmatch];
  }

  v63 = 0u;
  memset(v64, 0, 28);
  v62 = 0u;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  v11 = [a3 lastObject];
  if (v11)
  {
    [v11 clientLocation];
  }

  else
  {
    v63 = 0u;
    memset(v64, 0, 28);
    v62 = 0u;
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v59 = 0u;
    memset(v58, 0, sizeof(v58));
  }

  if ([a3 count] != 1)
  {
    goto LABEL_50;
  }

  if (*(internal + 60) < 0.0 || !sub_19B87F61C((internal + 40), v58, 0))
  {
    if (*(internal + 116) > *(v61 + 12))
    {
      if (a5)
      {
        v17 = *(internal + 25);
        if (v17)
        {
          if (([v17 isEqualToString:a5] & 1) == 0)
          {
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v46 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "New location predates old location, and the event types differ; discarding", buf, 2u);
            }

            v47 = sub_19B87DD40();
            if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
            {
              goto LABEL_82;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED519088 == -1)
            {
LABEL_92:
              v14 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v14);
LABEL_17:
              if (v14 != buf)
              {
                free(v14);
              }

              goto LABEL_82;
            }

LABEL_95:
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            goto LABEL_92;
          }
        }
      }
    }

    if (*(&v58[1] + 4) < 0.0)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v18 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "Invalid location passed to client", buf, 2u);
      }

      v19 = sub_19B87DD40();
      if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
      {
        goto LABEL_82;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 == -1)
      {
        goto LABEL_92;
      }

      goto LABEL_95;
    }

LABEL_50:
    v20 = *(internal + 25);
    if (v20)
    {
    }

    v21 = a5;
    v22 = *(internal + 14);
    v23 = *(internal + 60);
    v52 = *(internal + 132);
    v53 = *(internal + 148);
    v54 = *(internal + 164);
    v55 = *(internal + 180);
    v56 = *(internal + 40);
    v48 = *(internal + 68);
    v49 = *(internal + 84);
    v50 = *(internal + 100);
    v51 = *(internal + 116);
    v24 = v58[1];
    *(internal + 40) = v58[0];
    v25 = v61[0];
    *(internal + 120) = v61[1];
    *(internal + 104) = v25;
    v26 = v59;
    *(internal + 88) = v60;
    *(internal + 72) = v26;
    *(internal + 180) = *(v64 + 12);
    v27 = v63;
    *(internal + 168) = v64[0];
    v28 = v62;
    *(internal + 152) = v27;
    *(internal + 136) = v28;
    v29 = *(v58 + 4);
    v30 = *(v58 + 4) != 0.0;
    v31 = *(v58 + 12);
    v32 = *(&v58[1] + 4);
    if (*(v58 + 12) == 0.0)
    {
      v30 = 0;
    }

    *(internal + 25) = v21;
    v57 = v22;
    *(internal + 56) = v24;
    if (v32 >= 0.0 && !v30)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v33 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290051;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *v66 = v29 != 0.0;
        *&v66[4] = 1026;
        *&v66[6] = v31 != 0.0;
        *&v66[10] = 1040;
        *&v66[12] = 156;
        *&v66[16] = 2101;
        *&v66[18] = v58;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NullIsland onClientEventLocation:forceMapMatching: got a latitude or longitude that was exactly zero, latIsNonzero:%{public}hhd, lonIsNonzero:%{public}hhd, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x2Eu);
      }
    }

    v34 = self;
    objc_sync_enter(self);
    if ([*(internal + 4) requestingLocation])
    {
      [*(internal + 4) desiredAccuracy];
      if ((*(&v58[1] + 4) > fmax(v35, 10.0) || CFAbsoluteTimeGetCurrent() - *(v61 + 12) >= 60.0) && ([*(internal + 4) limitsPrecision] & 1) == 0)
      {
LABEL_81:
        objc_sync_exit(self);
        goto LABEL_82;
      }

      [internal cancelLocationRequest];
      CLClientStopLocationUpdates_0(*(internal + 1));
    }

    if (objc_opt_respondsToSelector())
    {
      v36 = *(internal + 1);
      entr_act_modify();
      v37 = NSStringFromSelector(sel_locationManager_didUpdateLocations_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v38 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290563;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *v66 = self;
        *&v66[8] = 2050;
        *&v66[10] = v10;
        *&v66[18] = 2114;
        *&v66[20] = v37;
        *&v66[28] = 1040;
        *&v66[30] = 156;
        *&v66[34] = 2101;
        *&v66[36] = v58;
        *&v66[44] = 2114;
        *&v66[46] = a5;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, location:%{sensitive, location:CLClientLocation}.*P, eventType:%{public, location:escape_only}@}", buf, 0x4Au);
      }

      [v10 locationManager:self didUpdateLocations:a3];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (v23 >= 0.0)
      {
        v41 = objc_alloc(MEMORY[0x1E6985C40]);
        *buf = v56;
        *&buf[16] = v57;
        *v66 = v23;
        v68 = v52;
        v69 = v53;
        v70 = v54;
        v71 = v55;
        *&v66[8] = v48;
        *&v66[24] = v49;
        *&v66[40] = v50;
        v67 = v51;
        v39 = [v41 initWithClientLocation:buf];
      }

      else
      {
        v39 = 0;
      }

      v42 = *(internal + 1);
      entr_act_modify();
      v43 = NSStringFromSelector(sel_locationManager_didUpdateToLocation_fromLocation_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v44 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *v66 = self;
        *&v66[8] = 2050;
        *&v66[10] = v10;
        *&v66[18] = 2114;
        *&v66[20] = v43;
        _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
      }

      [v10 locationManager:self didUpdateToLocation:objc_msgSend(a3 fromLocation:{"lastObject"), v39}];
    }

    else
    {
      v40 = *(internal + 1);
      entr_act_modify();
    }

    goto LABEL_81;
  }

  if (!*(internal + 43))
  {
    *(internal + 43) = DWORD1(v64[0]);
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v15 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "New location is identical to old location; discarding", buf, 2u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_92;
    }

    goto LABEL_95;
  }

LABEL_82:
  v45 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventLocationUnavailable:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = [internal delegate];
  if ([internal[4] requestingLocation] & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v6 = NSStringFromSelector(sel_locationManager_didFailWithError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 68289794;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = self;
      v14 = 2050;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - location unavailable, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v9, 0x30u);
    }

    [v5 locationManager:self didFailWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomain", 0, 0)}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventHeading:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = [internal delegate];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if (CLClientGetHeading(internal[1], &v16))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v6 = [CLHeading alloc];
      *&buf[32] = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      *buf = v16;
      *&buf[16] = v17;
      v7 = [(CLHeading *)v6 initWithClientHeading:buf];
      v8 = internal[1];
      entr_act_modify();
      v9 = NSStringFromSelector(sel_locationManager_didUpdateHeading_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        *&buf[8] = 2082;
        *&buf[4] = 0;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v5;
        *&buf[38] = 2114;
        *&buf[40] = v9;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = v7;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, heading:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v5 locationManager:self didUpdateHeading:v7];
    }

    else
    {
      v14 = internal[1];
      entr_act_modify();
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "could not get updated heading", buf, 2u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventHeading:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventHeadingCalibration:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = [internal delegate];
  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v6 = NSStringFromSelector(sel_locationManagerShouldDisplayHeadingCalibration_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289794;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      v20 = self;
      v21 = 2050;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
    }

    if ([v5 locationManagerShouldDisplayHeadingCalibration:self])
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v8 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CL: Invoking Compass Calibration HUD", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v10 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventHeadingCalibration:]", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      if (!CLClientShowHeadingCalibration(internal[1], 1))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v11 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "Could not show heading calibration", buf, 2u);
        }

        v12 = sub_19B87DD40();
        if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v13 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventHeadingCalibration:]", "CoreLocation: %s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }
    }
  }

  objc_sync_exit(self);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventPlaceInferenceResult:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "in onClientEventPlaceInferenceResult for CLPlaceInferenceSubscription", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v20 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventPlaceInferenceResult:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  internal = self->_internal;
  v9 = [a3 objectForKey:@"kCLConnectionMessagePlaceInferencePlaceInferenceKey"];
  if (v9)
  {
    v10 = v9;
    v11 = self;
    v12 = 0;
  }

  else
  {
    v13 = [a3 objectForKey:@"kCLConnectionMessagePlaceInferencePlaceInferenceFallbackLocationKey"];
    if (v13)
    {
      v14 = v13;
      v15 = objc_alloc_init(CLGeocoder);
      [(CLGeocoder *)v15 _setResponseSilo:internal[36]];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B8A978C;
      v19[3] = &unk_1E753D0E8;
      v19[4] = v15;
      v19[5] = self;
      v19[6] = v14;
      [(CLGeocoder *)v15 reverseGeocodeLocation:v14 completionHandler:v19];
      goto LABEL_18;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got a place inference result without a result!?}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v18 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got a place inference result without a result!?", "{msg%{public}.0s:Got a place inference result without a result!?}", buf, 0x12u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:5 userInfo:0];
    v11 = self;
    v10 = 0;
  }

  [(CLLocationManager *)v11 callPlaceInferenceHandlerWithResult:v10 error:v12];
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventPlaceInferenceError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "in onClientEventPlaceInferenceError for CLPlaceInferenceSubscription", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventPlaceInferenceError:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = [a3 objectForKey:@"kCLConnectionMessageError"];
  if (!v8)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got a place inference error without an error!?}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v10 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got a place inference error without an error!?", "{msg%{public}.0s:Got a place inference error without an error!?}", buf, 0x12u);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:5 userInfo:0];
  }

  [(CLLocationManager *)self callPlaceInferenceHandlerWithResult:0 error:v8];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)callPlaceInferenceHandlerWithResult:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  objc_sync_enter(self);
  v8 = internal[31];
  internal[31] = 0;
  objc_sync_exit(self);
  if (v8)
  {
    v9 = v8[2];
    v10 = *MEMORY[0x1E69E9840];

    v9(v8, a3, a4);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 68289026;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Got place inference result without a handler block}", v13, 0x12u);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)onClientEventError:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v17 = 0;
  v16 = 0;
  if (CLClientGetError(a3, &v16))
  {
    if (v16 == 1)
    {
      if (dyld_program_sdk_at_least() && [*(internal + 4) requestingLocation])
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v7 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location access was denied; bailing early cancelling requestLocation}", buf, 0x12u);
        }

        [internal cancelLocationRequest];
        CLClientStopLocationUpdates_0(*(internal + 1));
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v11 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Location access was denied; but not bailing early}", buf, 0x12u);
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:v16 userInfo:0];
      v13 = NSStringFromSelector(sel_locationManager_didFailWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        v20 = 2082;
        v19 = 0;
        v21 = "";
        v22 = 2050;
        v23 = self;
        v24 = 2050;
        v25 = v6;
        v26 = 2114;
        v27 = v13;
        v28 = 2114;
        v29 = v12;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v6 locationManager:self didFailWithError:v12];
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get error", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventError:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRegion:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v71 = 0;
  v70 = 0;
  if (sub_19B88D5D0(a3, &v71, &v70))
  {
    v7 = v71;
    if (v71)
    {
      v8 = v71;
      if (v70 == 1)
      {
        if (objc_opt_respondsToSelector())
        {
          sub_19B890864(internal[1], 4, 720896, 1, [objc_msgSend(v7 "identifier")], objc_msgSend(objc_msgSend(v7, "onBehalfOfBundleId"), "UTF8String"));
          v22 = NSStringFromSelector(sel_locationManager_didExit_completion_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v23 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v7 identifier];
            [v7 center];
            v26 = v25;
            [v7 center];
            v28 = v27;
            [v7 radius];
            *buf = 68290819;
            v73 = 0;
            v74 = 2082;
            v75 = "";
            v76 = 2050;
            v77 = self;
            v78 = 2050;
            v79 = v6;
            v80 = 2114;
            v81 = v22;
            v82 = 2113;
            v83 = v24;
            v84 = 2053;
            v85 = v26;
            v86 = 2053;
            v87 = v28;
            v88 = 2050;
            v89 = v29;
            _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
          }

          [v6 locationManager:self didExit:v7 completion:&unk_1F0E6B6C0];
        }

        else
        {
          v43 = objc_opt_respondsToSelector();
          v44 = internal[1];
          v45 = [objc_msgSend(v7 "identifier")];
          v46 = [objc_msgSend(v7 "onBehalfOfBundleId")];
          if (v43)
          {
            sub_19B890864(v44, 4, 720896, 1, v45, v46);
            v47 = NSStringFromSelector(sel_locationManager_didExitRegion_);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v48 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [v7 identifier];
              [v7 center];
              v51 = v50;
              [v7 center];
              v53 = v52;
              [v7 radius];
              *buf = 68290819;
              v73 = 0;
              v74 = 2082;
              v75 = "";
              v76 = 2050;
              v77 = self;
              v78 = 2050;
              v79 = v6;
              v80 = 2114;
              v81 = v47;
              v82 = 2113;
              v83 = v49;
              v84 = 2053;
              v85 = v51;
              v86 = 2053;
              v87 = v53;
              v88 = 2050;
              v89 = v54;
              _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
            }

            [v6 locationManager:self didExitRegion:v7];
          }

          else
          {
            sub_19B890864(v44, 4, 720896, 0, v45, v46);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v56 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              v73 = 0;
              v74 = 2082;
              v75 = "";
              v76 = 2050;
              v77 = self;
              _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring event, no delegate, self:%{public}p}", buf, 0x1Cu);
            }
          }
        }

        v30 = 2;
      }

      else if (v70)
      {
        v30 = 0;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          sub_19B890864(internal[1], 4, 655360, 1, [objc_msgSend(v7 "identifier")], objc_msgSend(objc_msgSend(v7, "onBehalfOfBundleId"), "UTF8String"));
          v9 = NSStringFromSelector(sel_locationManager_didEnter_completion_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v10 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v7 identifier];
            [v7 center];
            v13 = v12;
            [v7 center];
            v15 = v14;
            [v7 radius];
            *buf = 68290819;
            v73 = 0;
            v74 = 2082;
            v75 = "";
            v76 = 2050;
            v77 = self;
            v78 = 2050;
            v79 = v6;
            v80 = 2114;
            v81 = v9;
            v82 = 2113;
            v83 = v11;
            v84 = 2053;
            v85 = v13;
            v86 = 2053;
            v87 = v15;
            v88 = 2050;
            v89 = v16;
            _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
          }

          [v6 locationManager:self didEnter:v7 completion:&unk_1F0E6B6C0];
        }

        else
        {
          v31 = objc_opt_respondsToSelector();
          v32 = internal[1];
          v33 = [objc_msgSend(v7 "identifier")];
          v34 = [objc_msgSend(v7 "onBehalfOfBundleId")];
          if (v31)
          {
            sub_19B890864(v32, 4, 655360, 1, v33, v34);
            v35 = NSStringFromSelector(sel_locationManager_didEnterRegion_);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v36 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v7 identifier];
              [v7 center];
              v39 = v38;
              [v7 center];
              v41 = v40;
              [v7 radius];
              *buf = 68290819;
              v73 = 0;
              v74 = 2082;
              v75 = "";
              v76 = 2050;
              v77 = self;
              v78 = 2050;
              v79 = v6;
              v80 = 2114;
              v81 = v35;
              v82 = 2113;
              v83 = v37;
              v84 = 2053;
              v85 = v39;
              v86 = 2053;
              v87 = v41;
              v88 = 2050;
              v89 = v42;
              _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
            }

            [v6 locationManager:self didEnterRegion:v7];
          }

          else
          {
            sub_19B890864(v32, 4, 655360, 0, v33, v34);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v55 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              v73 = 0;
              v74 = 2082;
              v75 = "";
              v76 = 2050;
              v77 = self;
              _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring event, no delegate, self:%{public}p}", buf, 0x1Cu);
            }
          }
        }

        v30 = 1;
      }

      v57 = objc_opt_respondsToSelector();
      v58 = internal[1];
      v59 = [objc_msgSend(v7 "identifier")];
      v60 = [objc_msgSend(v7 "onBehalfOfBundleId")];
      if (v57)
      {
        sub_19B890864(v58, 4, 720896, 1, v59, v60);
        v61 = NSStringFromSelector(sel_locationManager_didDetermineState_forRegion_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v62 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [v7 identifier];
          [v7 center];
          v65 = v64;
          [v7 center];
          v67 = v66;
          [v7 radius];
          *buf = 68291075;
          v73 = 0;
          v74 = 2082;
          v75 = "";
          v76 = 2050;
          v77 = self;
          v78 = 2050;
          v79 = v6;
          v80 = 2114;
          v81 = v61;
          v82 = 2050;
          v83 = v30;
          v84 = 2113;
          v85 = v63;
          v86 = 2053;
          v87 = v65;
          v88 = 2053;
          v89 = v67;
          v90 = 2050;
          v91 = v68;
          _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, state:%{public, location:CLRegionState}lld, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
        }

        [v6 locationManager:self didDetermineState:v30 forRegion:v7];
      }

      else
      {
        sub_19B890864(v58, 4, 720896, 0, v59, v60);
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v73 = 0;
        v74 = 2082;
        v75 = "";
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegion, unable to fetch region}", buf, 0x12u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v21 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289026;
        v73 = 0;
        v74 = 2082;
        v75 = "";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegion, unable to fetch region", "{msg%{public}.0s:Fence: onClientEventRegion, unable to fetch region}", buf, 0x12u);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegion:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRegionState:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v30 = 0;
  v29 = 0;
  if (sub_19B88D668(a3, &v30, &v29))
  {
    v7 = v30;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = internal[1];
      v13 = [objc_msgSend(v30 "identifier")];
      sub_19B890864(v12, 4, 720896, 0, v13, [objc_msgSend(v30 "onBehalfOfBundleId")]);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v32 = 0;
        v33 = 2082;
        v34 = "";
        v35 = 2050;
        v36 = self;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring state request, no delegate, self:%{public}p}", buf, 0x1Cu);
      }

      goto LABEL_39;
    }

    if (sub_19B8AB46C() < 4)
    {
      v8 = v29;
      if (v29 != 1)
      {
        if (v29 == 2)
        {
          v8 = 2;
        }

        else
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v17 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v32 = 0;
            v33 = 2082;
            v34 = "";
            v35 = 2050;
            v36 = v29;
            _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Fence: onClientEventRegionState, unknown state, regionState:%{public, location:CLClientRegionState}lld}", buf, 0x1Cu);
          }

          v8 = 0;
        }
      }

      v18 = internal[1];
      v19 = [objc_msgSend(v30 "identifier")];
      sub_19B890864(v18, 4, 720896, 1, v19, [objc_msgSend(v30 "onBehalfOfBundleId")]);
      v20 = NSStringFromSelector(sel_locationManager_didDetermineState_forRegion_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v21 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v30 identifier];
        [v30 center];
        v24 = v23;
        [v30 center];
        v26 = v25;
        [v30 radius];
        *buf = 68291075;
        v32 = 0;
        v33 = 2082;
        v34 = "";
        v35 = 2050;
        v36 = self;
        v37 = 2050;
        v38 = v6;
        v39 = 2114;
        v40 = v20;
        v41 = 2050;
        v42 = v8;
        v43 = 2113;
        v44 = v22;
        v45 = 2053;
        v46 = v24;
        v47 = 2053;
        v48 = v26;
        v49 = 2050;
        v50 = v27;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, state:%{public, location:CLRegionState}lld, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      [v6 locationManager:self didDetermineState:v8 forRegion:v30];
LABEL_39:

      goto LABEL_40;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2050;
      v36 = 4;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegionState, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2050;
      v36 = 4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegionState, unknown region type", "{msg%{public}.0s:Fence: onClientEventRegionState, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not get the region state", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionState:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

LABEL_40:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRegionError:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (sub_19B88D70C(a3, &v26, &v24))
  {
    v6 = v26;
    if (sub_19B8AB46C() >= 4)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = 4;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegionError, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v8 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = 4;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegionError, unknown region type", "{msg%{public}.0s:Fence: onClientEventRegionError, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      }
    }

    v9 = self;
    if (objc_opt_respondsToSelector())
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:v24 userInfo:0];
      v11 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v26 identifier];
        [v26 center];
        v15 = v14;
        [v26 center];
        v17 = v16;
        [v26 radius];
        *buf = 68291075;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = self;
        v33 = 2050;
        v34 = v5;
        v35 = 2114;
        v36 = v11;
        v37 = 2114;
        v38 = v10;
        v39 = 2113;
        v40 = v13;
        v41 = 2053;
        v42 = v15;
        v43 = 2053;
        v44 = v17;
        v45 = 2050;
        v46 = v18;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      [v5 locationManager:self monitoringDidFailForRegion:v26 withError:v10];
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v22 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = self;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring failure, no delegate, self:%{public}p}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v19 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionError:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRanging:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = v8;
  if (v7 & 1) != 0 || (v8)
  {
    v32 = 0;
    v33 = 0;
    if (sub_19B88DD54(a3, &v33, &v32))
    {
      v27 = v33;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      cf = v32;
      v29 = [v12 initWithCapacity:{objc_msgSend(v32, "count")}];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B8ABFD0;
      v30[3] = &unk_1E753D110;
      v30[4] = v29;
      [cf enumerateObjectsUsingBlock:v30];
      v13 = MEMORY[0x1E695DEC8];
      v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"proximity" ascending:1];
      [v29 sortUsingDescriptors:{objc_msgSend(v13, "arrayWithObjects:", v14, objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"accuracy", 1), 0)}];
      v15 = internal[1];
      entr_act_modify();
      v16 = [v27 beaconIdentityConstraint];
      objc_sync_enter(self);
      LODWORD(v14) = [objc_msgSend(internal "rangedConstraints")];
      objc_sync_exit(self);
      if (v9 & v14)
      {
        v17 = NSStringFromSelector(sel_locationManager_didRangeBeacons_satisfyingConstraint_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v18 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68290051;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2050;
          v39 = self;
          v40 = 2050;
          v41 = v6;
          v42 = 2114;
          v43 = v17;
          v44 = 2113;
          v45 = v16;
          _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@}", buf, 0x3Au);
        }

        [v6 locationManager:self didRangeBeacons:v29 satisfyingConstraint:v16];
      }

      else if (v7)
      {
        v22 = NSStringFromSelector(sel_locationManager_didRangeBeacons_inRegion_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v23 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68290051;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2050;
          v39 = self;
          v40 = 2050;
          v41 = v6;
          v42 = 2114;
          v43 = v22;
          v44 = 2113;
          v45 = v27;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@}", buf, 0x3Au);
        }

        [v6 locationManager:self didRangeBeacons:v29 inRegion:v27];
      }

      v24 = v33;
      v25 = v29;
      CFRelease(cf);
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "could not get ranged beacons", buf, 2u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v31 = 0;
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRanging:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = internal[1];
    v11 = *MEMORY[0x1E69E9840];

    entr_act_modify();
  }
}

- (void)onClientEventRangingError:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v6 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v8 = v7;
  if (v6 & 1) != 0 || (v7)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    if (sub_19B88DE40(a3, &v26, &v24))
    {
      v9 = v26;
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:v24 userInfo:0];
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = self;
        v33 = 2050;
        v34 = v5;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering range error to client's delegate, self:%{public}p, delegate:%{public}p}", buf, 0x26u);
      }

      v12 = v26;
      v13 = v26;
      if (v8)
      {
        v14 = [v12 beaconIdentityConstraint];
        v15 = NSStringFromSelector(sel_locationManager_didFailRangingBeaconsForConstraint_error_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v16 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290307;
          v28 = 0;
          v29 = 2082;
          v30 = "";
          v31 = 2050;
          v32 = self;
          v33 = 2050;
          v34 = v5;
          v35 = 2114;
          v36 = v15;
          v37 = 2113;
          v38 = v14;
          v39 = 2114;
          v40 = v10;
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x44u);
        }

        [v5 locationManager:self didFailRangingBeaconsForConstraint:v14 error:v10];
      }

      else
      {
        v20 = NSStringFromSelector(sel_locationManager_rangingBeaconsDidFailForRegion_withError_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v21 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290307;
          v28 = 0;
          v29 = 2082;
          v30 = "";
          v31 = 2050;
          v32 = self;
          v33 = 2050;
          v34 = v5;
          v35 = 2114;
          v36 = v20;
          v37 = 2113;
          v38 = v12;
          v39 = 2114;
          v40 = v10;
          _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x44u);
        }

        [v5 locationManager:self rangingBeaconsDidFailForRegion:v12 withError:v10];
      }

      v22 = v26;
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "could not get ranging error", buf, 2u);
      }

      v18 = sub_19B87DD40();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRangingError:]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRegionResponseDelayed:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (sub_19B88D7B4(a3, &v25, &v23, &v24))
  {
    v6 = v25;
    v7 = v24;
    v8 = self;
    if (objc_opt_respondsToSelector())
    {
      if (v23)
      {
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:@"kCLErrorUserInfoAlternateRegionKey"];
      }

      else
      {
        v9 = 0;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:7 userInfo:v9];
      v14 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v25 identifier];
        [v25 center];
        v18 = v17;
        [v25 center];
        v20 = v19;
        [v25 radius];
        *buf = 68291075;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2050;
        v31 = self;
        v32 = 2050;
        v33 = v5;
        v34 = 2114;
        v35 = v14;
        v36 = 2114;
        v37 = v13;
        v38 = 2113;
        v39 = v16;
        v40 = 2053;
        v41 = v18;
        v42 = 2053;
        v43 = v20;
        v44 = 2050;
        v45 = v21;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      [v5 locationManager:self monitoringDidFailForRegion:v25 withError:v13];
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionResponseDelayed:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventNoLocationWatchdog:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v14 = 0.0;
  if (sub_19B88D8AC(a3, &v14))
  {
    v6 = v14;
    if (objc_opt_respondsToSelector())
    {
      v7 = NSStringFromSelector(sel_locationManager_didNotReceiveLocationUpdatesForRegionMonitoringInInterval_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v8 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2050;
        v20 = self;
        v21 = 2050;
        v22 = v5;
        v23 = 2114;
        v24 = v7;
        v25 = 2050;
        v26 = v6;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, duration_s:%{public}.09f}", buf, 0x3Au);
      }

      [v5 locationManager:self didNotReceiveLocationUpdatesForRegionMonitoringInInterval:v6];
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2050;
        v20 = self;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring watchdog, no delegate, self:%{public}p}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not get updated paused state", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventNoLocationWatchdog:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventRegionSetupCompleted:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v24 = 0;
  if (CLClientPopulateRegionFromInfo(&v24, a3))
  {
    v6 = v24;
    v7 = v24;
    v8 = sub_19B8AB46C();
    if (v8 >= 4)
    {
      v20 = v8;
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v21 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2050;
        v30 = v20;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client region type is not supported.\n, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v22 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2050;
        v30 = v20;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client region type is not supported.\n", "{msg%{public}.0s:Client region type is not supported.\n, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      }
    }

    else if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = NSStringFromSelector(sel_locationManager_didStartMonitoringForRegion_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 identifier];
        [v6 center];
        v13 = v12;
        [v6 center];
        v15 = v14;
        [v6 radius];
        *buf = 68290819;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2050;
        v30 = self;
        v31 = 2050;
        v32 = v5;
        v33 = 2114;
        v34 = v9;
        v35 = 2113;
        v36 = v11;
        v37 = 2053;
        v38 = v13;
        v39 = 2053;
        v40 = v15;
        v41 = 2050;
        v42 = v16;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
      }

      [v5 locationManager:self didStartMonitoringForRegion:v6];
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionSetupCompleted:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)pauseLocationUpdates:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  objc_sync_enter(self);
  if ([internal[4] updatingLocation])
  {
    if ([internal[4] pausesLocationUpdatesAutomatically] > 4 || v3)
    {
      [internal stopUpdatingLocationAutoPaused];
      v8 = objc_opt_respondsToSelector();
      v9 = internal[1];
      if (v8)
      {
        entr_act_modify();
        v10 = NSStringFromSelector(sel_locationManagerDidPauseLocationUpdates_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v11 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v13[0] = 68289794;
          v13[1] = 0;
          v14 = 2082;
          v15 = "";
          v16 = 2050;
          v17 = self;
          v18 = 2050;
          v19 = v6;
          v20 = 2114;
          v21 = v10;
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v13, 0x30u);
        }

        [v6 locationManagerDidPauseLocationUpdates:self];
      }

      else
      {
        entr_act_modify();
      }
    }
  }

  objc_sync_exit(self);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)onDidBecomeActive:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    *&buf[4] = 0;
    *v15 = 2082;
    *&v15[2] = "";
    *&v15[10] = 2082;
    *&v15[12] = "activity";
    *&v15[20] = 2114;
    *&v15[22] = v8;
    *&v15[30] = 2050;
    v16 = self;
    v17 = 2113;
    v18 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  if ([objc_msgSend(a3 "name")])
  {
    v9 = *(self->_internal + 1);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8AD740;
    v12[3] = &unk_1E753CC90;
    v12[4] = self;
    if (v9)
    {
      v10 = *(v9 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v15 = 3221225472;
      *&v15[8] = sub_19B88071C;
      *&v15[16] = &unk_1E753CCE0;
      *&v15[24] = v12;
      [v10 async:buf];
    }
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)onWillEnterForeground:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    v21 = 2113;
    v22 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)onDidEnterBackground:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    v21 = 2113;
    v22 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventAutopauseStatus:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v9 = 0;
  if (sub_19B88E7D8(a3, &v9 + 1, &v9))
  {
    if (HIBYTE(v9))
    {
      [(CLLocationManager *)self pauseLocationUpdates:v9 != 0];
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "could not get updated paused state", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventAutopauseStatus:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  objc_sync_exit(self);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventBatch:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (sub_19B88EEEC(*(internal + 1), a3, &v21, &v22))
  {
    if (v21)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:v22 userInfo:0];
    }

    v11 = objc_opt_respondsToSelector();
    v12 = *(internal + 1);
    if (v11)
    {
      entr_act_modify();
      v13 = NSStringFromSelector(sel_locationManager_didFinishDeferredUpdatesWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        *&v27[4] = 2082;
        *v27 = 0;
        *&v27[6] = "";
        v28 = 2050;
        v29 = self;
        v30 = 2050;
        v31 = v6;
        v32 = 2114;
        v33 = v13;
        v34 = 2114;
        v35 = v7;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v6 locationManager:self didFinishDeferredUpdatesWithError:v7];
    }

    else
    {
      entr_act_modify();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v16 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v16 = "success";
      }

      *buf = 136315138;
      *v27 = v16;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "Finished deferred updates: %s", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      if (v7)
      {
        v18 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v18 = "success";
      }

      v24 = 136315138;
      v25 = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventBatch:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    [*(internal + 4) setBatchingLocation:0];
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get batch result", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      LOWORD(v24) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventBatch:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventInterrupted:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = [internal delegate];
  objc_sync_enter(self);
  if ([*(internal + 4) batchingLocation])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:11 userInfo:0];
    v7 = objc_opt_respondsToSelector();
    v8 = *(internal + 1);
    if (v7)
    {
      entr_act_modify();
      v9 = NSStringFromSelector(sel_locationManager_didFinishDeferredUpdatesWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        v23 = 2082;
        v22 = 0;
        v24 = "";
        v25 = 2050;
        v26 = self;
        v27 = 2050;
        v28 = v5;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v5 locationManager:self didFinishDeferredUpdatesWithError:v6];
    }

    else
    {
      entr_act_modify();
    }

    [*(internal + 4) setBatchingLocation:0];
  }

  if (*(internal + 31))
  {
    sub_19B884630(*(internal + 1), *(internal + 64));
  }

  [internal setClientKeyForIdentityValidation:0];
  v11 = [*(internal + 35) copy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(*(*(*(&v16 + 1) + 8 * i) + 16))() updateIdentityToken:0 withStorageToken:0];
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  objc_sync_exit(self);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventVehicleSpeed:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v14 = 0u;
  v15 = 0u;
  if (sub_19B88F058(a3, &v14))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v6 = [CLVehicleSpeed alloc];
      v7 = [(CLVehicleSpeed *)v6 initWithClientVehicleSpeed:v14, v15];
      v8 = NSStringFromSelector(sel_locationManager_didUpdateVehicleSpeed_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v18 = 2082;
        v17 = 0;
        v19 = "";
        v20 = 2050;
        v21 = self;
        v22 = 2050;
        v23 = v5;
        v24 = 2114;
        v25 = v8;
        v26 = 2114;
        v27 = v7;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, vehicleSpeed:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v5 locationManager:self didUpdateVehicleSpeed:v7];
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get updated vehicle speed", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventVehicleSpeed:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventVehicleHeading:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  v14 = 0.0;
  v15 = 0.0;
  if (sub_19B88F104(a3, &v14))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v6 = [CLVehicleHeading alloc];
      v7 = [(CLVehicleHeading *)v6 initWithClientVehicleHeading:v14, v15];
      v8 = NSStringFromSelector(sel_locationManager_didUpdateVehicleHeading_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v18 = 2082;
        v17 = 0;
        v19 = "";
        v20 = 2050;
        v21 = self;
        v22 = 2050;
        v23 = v5;
        v24 = 2114;
        v25 = v8;
        v26 = 2114;
        v27 = v7;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, vehicleHeading:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      [v5 locationManager:self didUpdateVehicleHeading:v7];
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get updated vehicle heading", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventVehicleHeading:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventSignificantLocationVisit:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = [internal delegate];
  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v7 = [a3 objectForKey:@"kCLConnectionMessageSignificantLocationVisitKey"];
    v25 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:&v25];
    if (v25)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v25;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:], error:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v10 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v25;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:]", "{msg%{public}.0s:Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:], error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      v11 = v8;
      v12 = [[CLVisit alloc] initWithCoder:v8];
      sub_19B890864(internal[1], 6, 917504, 1, 0, 0);
      v13 = NSStringFromSelector(sel_locationManager_didVisit_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        [(CLVisit *)v12 coordinate];
        v16 = v15;
        [(CLVisit *)v12 coordinate];
        v18 = v17;
        [(CLVisit *)v12 horizontalAccuracy];
        v20 = v19;
        v21 = [(CLVisit *)v12 arrivalDate];
        v22 = [(CLVisit *)v12 departureDate];
        v23 = [(CLVisit *)v12 _placeInference];
        *buf = 68291331;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2050;
        v31 = self;
        v32 = 2050;
        v33 = v6;
        v34 = 2114;
        v35 = v13;
        v36 = 2053;
        v37 = v16;
        v38 = 2053;
        v39 = v18;
        v40 = 2050;
        v41 = v20;
        v42 = 2113;
        v43 = v21;
        v44 = 2113;
        v45 = v22;
        v46 = 2117;
        v47 = v23;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, visit.coordinate.latitude:%{sensitive}.08f, visit.coordinate.longitude:%{sensitive}.08f, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@}", buf, 0x6Cu);
      }

      [v6 locationManager:self didVisit:v12];
      [v11 finishDecoding];
    }
  }

  else
  {
    sub_19B890864(internal[1], 6, 917504, 0, 0, 0);
  }

  objc_sync_exit(self);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)onClientEventSignificantLocationVisitStateRequest:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [self->_internal delegate];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v21 = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = self;
    v27 = 2050;
    v28 = v5;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Processing Significant Location Visit State Request Event, self:%{public}p, delegate:%{public}p}", &v21, 0x26u);
  }

  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v7 = [a3 objectForKey:@"kCLConnectionMessageSignificantLocationVisitStateKey"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
      v7 = [[CLVisit alloc] initWithCoder:v8];
      [v8 finishDecoding];
    }

    v9 = NSStringFromSelector(sel_locationManager_didReportVisit_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      [(CLVisit *)v7 coordinate];
      v12 = v11;
      [(CLVisit *)v7 coordinate];
      v14 = v13;
      [(CLVisit *)v7 horizontalAccuracy];
      v16 = v15;
      v17 = [(CLVisit *)v7 arrivalDate];
      v18 = [(CLVisit *)v7 departureDate];
      v19 = [(CLVisit *)v7 _placeInference];
      v21 = 68291331;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = self;
      v27 = 2050;
      v28 = v5;
      v29 = 2114;
      v30 = v9;
      v31 = 2053;
      v32 = v12;
      v33 = 2053;
      v34 = v14;
      v35 = 2050;
      v36 = v16;
      v37 = 2113;
      v38 = v17;
      v39 = 2113;
      v40 = v18;
      v41 = 2117;
      v42 = v19;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, visit.coordinate.latitude:%{sensitive}.08f, visit.coordinate.longitude:%{sensitive}.08f, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@}", &v21, 0x6Cu);
    }

    [v5 locationManager:self didReportVisit:v7];
  }

  objc_sync_exit(self);
  v20 = *MEMORY[0x1E69E9840];
}

+ (int)_authorizationStatusForBundleIdentifier:(id)a3 bundlePath:(id)a4
{
  v9 = 0;
  if (a3 | a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = qword_1EAFE5B30;
  }

  if (a3 | a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = qword_1EAFE5B40;
  }

  v6 = sub_19B87DBA8(v4, v5, &v9);
  v7 = v9;
  if ((v9 - 1) >= 4)
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (int)authorizationStatusForBundle:(id)a3
{
  v4 = [a3 bundlePath];

  return [a1 authorizationStatusForBundlePath:v4];
}

+ (CLAuthorizationStatus)authorizationStatus
{
  [a1 collectMetricForFunction:0x80000];

  return [a1 _authorizationStatus];
}

- (BOOL)isAuthorizedForPreciseLocation
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization}", &v7, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v4 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization", "{msg%{public}.0s:isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization}", &v7, 0x12u);
  }

  result = [(CLLocationManager *)self accuracyAuthorization]== CLAccuracyAuthorizationFullAccuracy;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isAuthorizedForWidgetUpdates
{
  objc_sync_enter(self);
  internal = self->_internal;
  if ([internal[4] previousAuthorizationStatusValid])
  {
    v4 = [internal[4] isAuthorizedForWidgetUpdates];
  }

  else
  {
    [(CLLocationManager *)self collectMetricForFunction:0x200000];
    v7 = 0;
    sub_19B9BE1B8(*(internal[1] + 45), *(internal[1] + 46), &v7);
    v5 = [(CLLocationManager *)self authorizationStatus];
    v4 = v5 == kCLAuthorizationStatusAuthorizedAlways || v5 == kCLAuthorizationStatusAuthorizedWhenInUse && v7 == 3;
  }

  objc_sync_exit(self);
  return v4;
}

+ (void)setAuthorizationStatus:(BOOL)a3 forBundle:(id)a4
{
  [a4 bundlePath];

  MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatus_forBundlePath_);
}

+ (void)setAuthorizationStatusByType:(int)a3 forBundle:(id)a4
{
  [a4 bundlePath];

  MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatusByType_forBundlePath_);
}

+ (void)getIncidentalUseMode:(int *)a3 forBundle:(id)a4
{
  v5 = [a4 bundlePath];

  sub_19B9BE1B8(0, v5, a3);
}

+ (void)setRelevance:(BOOL)a3 forInterestZoneWithId:(id)a4 registeredForBundle:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [a5 bundlePath];

  sub_19B9BE440(0, v9, a4, v8, a6);
}

+ (void)deleteInterestZoneWithId:(id)a3 registeredForBundle:(id)a4 error:(id *)a5
{
  v7 = [a4 bundlePath];

  sub_19B9BE4A8(0, v7, a3, a5);
}

+ (void)setBackgroundIndicatorEnabled:(BOOL)a3 forBundle:(id)a4
{
  [a4 bundlePath];

  sub_19B9C1334();
}

+ (void)setDefaultEffectiveBundle:(id)a3
{
  v3 = [a3 bundlePath];

  sub_19B888CDC(v3);
}

- (void)requestWhenInUseAuthorizationWithPrompt
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientSetShowLocationPrompt(*(self->_internal + 1), 1);
  [(CLLocationManager *)self requestWhenInUseAuthorization];
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestWhenInUseAuthorizationWithPurposeKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  sub_19B88948C(*(self->_internal + 1), a3, 4);
  os_activity_scope_leave(&state);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)requestAlwaysAuthorization
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    Name = sel_getName(a2);
    *buf = 68290050;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    v21 = self;
    v22 = 2082;
    v23 = Name;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, SEL:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x800000];
  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v9 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting always authorization}", buf, 0x12u);
  }

  CLClientRequestAuthorization(internal[1], 3);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)changeFencesStateMatchingHandoffTags:(id)a3 forDeviceID:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v9, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v11;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  sub_19B889210(*(self->_internal + 1), a3, [a4 UUIDString]);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_requestTemporaryFullAccuracyWithUsageDescription:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v11 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting temporary accuracy increase}", buf, 0x12u);
  }

  CLClientRequestTemporaryPrecise(internal[1], a3, 0);
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v5 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v8, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v6 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey", "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v8, 0x12u);
  }

  [(CLLocationManager *)self requestTemporaryFullAccuracyAuthorizationWithPurposeKey:a3];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v7 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v10, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v8 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey", "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v10, 0x12u);
  }

  [(CLLocationManager *)self requestTemporaryFullAccuracyAuthorizationWithPurposeKey:a3 completion:a4];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey
{
  [(CLLocationManager *)self collectMetricForFunction:0x1000000];

  [(CLLocationManager *)self requestTemporaryFullAccuracyAuthorizationWithPurposeKey:purposeKey completion:0];
}

- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey completion:(void *)completion
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v7, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v9;
    v20 = 2050;
    v21 = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationManager *)self collectMetricForFunction:0x1000000];
  CLClientRequestTemporaryPrecise(*(self->_internal + 1), 0, purposeKey);
  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLocationServicesPreferencesDialogEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) allowsLocationPrompts];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isDynamicAccuracyReductionEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) dynamicAccuracyReductionEnabled];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)allowsAlteredAccessoryLocations
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) allowsAlteredAccessoryLocations];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)registerAsLocationClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  sub_19B88EFC0(*(self->_internal + 1));
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)dumpDiagnosticFilesWithHandler:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    if (qword_1ED519088 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "handler";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v11 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "must pass handler to dumpDiagnosticFilesWithHandler", "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "handler";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
LABEL_3:
  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "dumpDiagnosticFiles called, trying to make an xpc call", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v14 = 0;
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.diagnostic" options:4096];
  [v7 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F0EAC7A8)}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8B19DC;
  v13[3] = &unk_1E753D138;
  v13[4] = v7;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B8B1BAC;
  v12[3] = &unk_1E753D160;
  v12[4] = v7;
  v12[5] = v3;
  [v8 copyRegisteredFilesWithHandler:v12];
  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)bundleSupported:(id)a3
{
  if (a3)
  {
    [a3 bundlePath];
  }

  return a3 != 0;
}

- (void)setIsActuallyAWatchKitExtension:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    v20 = self;
    v21 = 1026;
    v22 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, isActuallyAWatchKitExtension:%{public}hhd}", buf, 0x36u);
  }

  sub_19B88A4D4(*(self->_internal + 1), v3);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)backgroundActivitySession
{
  [*(self->_internal + 36) queue];

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_sessionWithLocationManager_queue_handler_);
}

- (id)serviceSession
{
  [*(self->_internal + 36) queue];

  return MEMORY[0x1EEE66B58](CLServiceSession, sel_sessionWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_);
}

- (id)privilegedServiceSession
{
  [*(self->_internal + 36) queue];

  return MEMORY[0x1EEE66B58](CLServiceSession, sel_sessionWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_);
}

- (void)startUpdatingVehicleSpeed
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  [*(internal + 4) setUpdatingVehicleSpeed:1];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Start updating vehicle speed", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) startUpdatingVehicleSpeed]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientStartVehicleSpeedUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingVehicleSpeed
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [*(internal + 4) setUpdatingVehicleSpeed:0];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Stop updating vehicle speed", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) stopUpdatingVehicleSpeed]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientStopVehicleSpeedUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingVehicleHeading
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [internal performCourtesyPromptIfNeeded];
  [*(internal + 4) setUpdatingVehicleHeading:1];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Start updating vehicle heading", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) startUpdatingVehicleHeading]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientStartVehicleHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingVehicleHeading
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  [*(internal + 4) setUpdatingVehicleHeading:0];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Stop updating vehicle heading", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) stopUpdatingVehicleHeading]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientStopVehicleHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMatchInfoEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) matchInfoEnabled];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_isGroundAltitudeEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) groundAltitudeEnabled];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_groundAltitudeAtLocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v6, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v8;
    v15 = 2050;
    v16 = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (a3)
  {
    if ([(CLLocationManager *)self _isGroundAltitudeEnabled]&& (internal = self->_internal, memset(buf, 0, 32), CLClientGetGroundAltitudeAtLocation(internal[1])) && *&buf[8] > 0.0)
    {
      v12 = objc_alloc(MEMORY[0x1E6985C58]);
      a3 = [v12 initWithEstimate:*&buf[24] uncertainty:*buf undulation:*&buf[8] undulationModel:*&buf[16]];
    }

    else
    {
      a3 = 0;
    }
  }

  os_activity_scope_leave(&v13);
  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

- (BOOL)_isFusionInfoEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) fusionInfoEnabled];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isTrackRunInfoEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = [*(self->_internal + 4) trackRunInfoEnabled];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)stopMonitoringVisits
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88A810(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_startLeechingVisits
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  *buf = 1;
  sub_19B884C9C(internal[1], buf);
  objc_sync_exit(self);
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_requestVisitState
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#slv: Request visit state", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(CLVisitExtensions) _requestVisitState]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B88A8E0(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (id)_startPlaceInferencesCommonLogic:(unint64_t)a3 handler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Setup PlaceInferences common logic", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v19 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _startPlaceInferencesCommonLogic:handler:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  objc_sync_enter(self);
  v11 = internal[33];
  if (v11 && ([v11 fireInterval], v12 != 1.79769313e308) || internal[31])
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:10 userInfo:0];
    objc_sync_exit(self);
    if (v13)
    {
      v14 = internal[1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B8B44C0;
      v18[3] = &unk_1E753CD08;
      v18[4] = v13;
      v18[5] = a4;
      if (v14)
      {
        v15 = *(v14 + 232);
        *buf = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = sub_19B88071C;
        v23 = &unk_1E753CCE0;
        v24 = v18;
        [v15 async:buf];
      }
    }
  }

  else
  {
    internal[31] = [a4 copy];
    internal[32] = a3;
    objc_sync_exit(self);
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v10;
    v25 = 2050;
    v26 = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  if (![(CLLocationManager *)self _startPlaceInferencesCommonLogic:a3 handler:a4])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "Start oneshot PlaceInferences", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _fetchPlaceInferencesWithFidelityPolicy:handler:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    sub_19B884630(internal[1], a3);
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_fetchContinuousPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    buf = 68289794;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    v22 = 2114;
    v23 = v10;
    v24 = 2050;
    v25 = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  if (![(CLLocationManager *)self _startPlaceInferencesCommonLogic:a3 handler:a4])
  {
    objc_sync_enter(self);
    if (!*(internal + 33))
    {
      *(internal + 33) = [*(internal + 36) newTimer];
    }

    objc_initWeak(&buf, self);
    v12 = *(internal + 33);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B8B4AD0;
    v14[3] = &unk_1E753D188;
    objc_copyWeak(v15, &buf);
    v14[4] = internal;
    v14[5] = a4;
    v15[1] = a3;
    [v12 setHandler:v14];
    [*(internal + 33) setNextFireDelay:0.0 interval:20.0];
    objc_destroyWeak(v15);
    objc_destroyWeak(&buf);
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_stopFetchingContinuousPlaceInferences
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    v22 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    internal = self->_internal;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  else
  {
    internal = self->_internal;
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Stop continuous PlaceInferences", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _stopFetchingContinuousPlaceInferences]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  objc_sync_enter(self);
  sub_19B88A790(*(internal + 1));
  [*(internal + 33) setNextFireDelay:1.79769313e308 interval:1.79769313e308];

  *(internal + 31) = 0;
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_fetchEstimatedLocationAtDate:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v10;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!a4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B8905B8(internal[1], a3);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateVLLocalizationResult:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D730);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLVLLocalizationResult, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D730);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLVLLocalizationResult", "{msg%{public}.0s:Could not serialize _CLVLLocalizationResult, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    CLClientUpdateVLLocalizationResult([(CLLocationManager *)self internalClient], v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)updatePromptedLatitude:longitude:
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_updatePromptedLatitude_longitude_);
}

- (void)_updateARSessionState:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:8];
  if (v4)
  {
    CLClientUpdateARSessionState([(CLLocationManager *)self internalClient], v4);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E518);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLARSessionState}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E518);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLARSessionState", "{msg%{public}.0s:Could not serialize _CLARSessionState}", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateVIOEstimation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E7C8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLVIOEstimation, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E7C8);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLVIOEstimation", "{msg%{public}.0s:Could not serialize _CLVIOEstimation, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    CLClientUpdateVIOEstimation([(CLLocationManager *)self internalClient], v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)entityClassesForLocationDictionary:(id)a3
{
  result = [a1 primaryEntityClassForLocationDictionary:a3];
  if ((result & 0x3C) != 0)
  {
    result |= 6uLL;
  }

  return result;
}

+ (unint64_t)activeLocationServiceTypesForLocationDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 isEntityAuthorizedForLocationDictionary:?])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_19B9F756C(a3, v4);
  if (v5 == 3)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6EA30);
    }

    v7 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Dictionary utilites reported the arrow is in max state?!, clientRecord:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EA30);
      }
    }

    v8 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a3;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Dictionary utilites reported the arrow is in max state?!", "{msg%{public}.0s:Dictionary utilites reported the arrow is in max state?!, clientRecord:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    result = 0;
  }

  else if (v5 == 2)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)interestZonesIdentifierListForLocationDictionary:(id)a3
{
  result = sub_19B9F7804(a3, a2);
  if (result)
  {

    return [result allKeys];
  }

  return result;
}

+ (id)interestZoneDictionaryIdentifiedById:(id)a3 forLocationDictionary:(id)a4
{
  v6 = sub_19B9F7804(a4, a2);
  v7 = v6;
  if (v6)
  {
    if ([v6 objectForKey:a3])
    {
      v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v7, "objectForKey:", a3)}];
      [v7 setObject:a3 forKey:@"ZoneId"];
      [v7 setObject:objc_msgSend(a4 forKey:{"objectForKey:", @"BundleId", @"BundleId"}];
      [v7 setObject:objc_msgSend(a4 forKey:{"objectForKey:", @"BundlePath", @"BundlePath"}];
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

+ (void)setEntityAuthorized:(BOOL)a3 forLocationDictionary:(id)a4
{
  v6 = [a4 objectForKey:@"BundleId"];
  v7 = [a4 objectForKey:@"BundlePath"];
  if (v6)
  {

    MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatus_forBundleIdentifier_);
  }

  else if (v7)
  {
    [MEMORY[0x1E696AAE8] bundleWithPath:v7];

    MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatus_forBundle_);
  }
}

+ (void)setEntityAuthorization:(unint64_t)a3 withCorrectiveCompensationType:(int)a4 forLocationDictionary:(id)a5
{
  v8 = [a5 objectForKey:@"BundleId"];
  v9 = [a5 objectForKey:@"BundlePath"];
  v10 = [a5 objectForKey:@"ZoneId"];
  if (a3 > 4)
  {
    if (v10)
    {
LABEL_3:
      if (v8)
      {

        MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatus_withCorrectiveCompensation_forInterestZoneWithId_registeredForBundleIdentifier_);
      }

      else if (v9)
      {
        [MEMORY[0x1E696AAE8] bundleWithPath:v9];

        MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatus_withCorrectiveCompensation_forInterestZoneWithId_registeredForBundle_);
      }

      return;
    }
  }

  else
  {
    v11 = dword_19BA8D260[a3];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (v8)
  {

    MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatusByType_withCorrectiveCompensation_forBundleIdentifier_);
  }

  else if (v9)
  {
    [MEMORY[0x1E696AAE8] bundleWithPath:v9];

    MEMORY[0x1EEE66B58](a1, sel_setAuthorizationStatusByType_withCorrectiveCompensation_forBundle_);
  }
}

+ (void)setBackgroundIndicatorEnabled:(BOOL)a3 forLocationDictionary:(id)a4
{
  v6 = [a4 objectForKey:@"BundleId"];
  v7 = [a4 objectForKey:@"BundlePath"];
  if (v6)
  {

    MEMORY[0x1EEE66B58](a1, sel_setBackgroundIndicatorEnabled_forBundleIdentifier_);
  }

  else if (v7)
  {
    [MEMORY[0x1E696AAE8] bundleWithPath:v7];

    MEMORY[0x1EEE66B58](a1, sel_setBackgroundIndicatorEnabled_forBundle_);
  }
}

@end