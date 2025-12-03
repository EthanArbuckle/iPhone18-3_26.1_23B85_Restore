@interface ATXPredictionContextBuilder
+ (id)loadContextOverrideFromJSONFile:(id)file;
+ (id)sharedInstance;
- (BOOL)tryInitBiomeStreamsAndReturnSuccess:(id)success;
- (BOOL)tryInitContextSourcesAndReturnSuccess:(id)success;
- (NSDate)now;
- (id)_getContextForOverrideKey:(id)key fromContextOverride:(id)override withDefaultContext:(id)context allowNilValues:(BOOL)values;
- (id)ambientLightContextForContextOverride:(id)override guardedData:(id)data;
- (id)ambientLightContextForCurrentContext:(id)context;
- (id)deviceStateContextForContextOverride:(id)override guardedData:(id)data;
- (id)deviceStateContextForCurrentContext:(id)context;
- (id)locationMotionContextForContextOverride:(id)override guardedData:(id)data;
- (id)locationMotionContextForCurrentContext:(id)context;
- (id)predictionContextForContextOverride:(id)override;
- (id)predictionContextForCurrentContext;
- (id)predictionContextForCurrentContextAndCandidatePublisher:(id)publisher contextOverride:(id)override;
- (id)timeContextForContextOverride:(id)override guardedData:(id)data;
- (id)timeContextForCurrentContext:(id)context;
- (id)updateContextStreamAndReturnPredictionContextForCurrentContext;
- (id)userContextForContextOverride:(id)override guardedData:(id)data;
- (id)userContextForCurrentContext:(id)context;
@end

@implementation ATXPredictionContextBuilder

- (id)updateContextStreamAndReturnPredictionContextForCurrentContext
{
  predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)self predictionContextForCurrentContext];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__23;
  v13[4] = __Block_byref_object_dispose__23;
  v14 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke;
  v12[3] = &unk_278599268;
  v12[4] = v13;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v5 = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke_2;
  v10[3] = &unk_278599290;
  v10[4] = self;
  v6 = predictionContextForCurrentContext;
  v11 = v6;
  [(_PASLock *)v5 runWithLockAcquired:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v13, 8);

  return v8;
}

- (id)predictionContextForCurrentContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ATXPredictionContextBuilder_predictionContextForCurrentContext__block_invoke;
  v5[3] = &unk_278599240;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATXPredictionContextBuilder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_6 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_6, block);
  }

  v2 = sharedInstance__pasExprOnceResult_7;

  return v2;
}

void __45__ATXPredictionContextBuilder_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_7;
  sharedInstance__pasExprOnceResult_7 = v4;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)tryInitContextSourcesAndReturnSuccess:(id)success
{
  successCopy = success;
  if (([successCopy contextSourcesInitialized] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42598], "isClassCLocked") & 1) == 0)
  {
    v4 = +[_ATXAppInfoManager sharedInstance];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    mEMORY[0x277D41C38] = [MEMORY[0x277D41C38] sharedInstance];
    v7 = +[ATXAmbientLightMonitor sharedInstance];
    [successCopy updateAppInfoManager:v4 locationManager:mEMORY[0x277D41BF8] motionManagerWrapper:mEMORY[0x277D41C38] ambientLightMonitor:v7 deviceStateMonitorClass:objc_opt_class() contextSourcesInitialized:1];
  }

  contextSourcesInitialized = [successCopy contextSourcesInitialized];

  return contextSourcesInitialized;
}

- (BOOL)tryInitBiomeStreamsAndReturnSuccess:(id)success
{
  successCopy = success;
  if (([successCopy biomeStreamsInitialized] & 1) == 0)
  {
    v4 = objc_opt_new();
    [successCopy updatePredictionContextStream:v4 biomeStreamsInitialized:1];
  }

  biomeStreamsInitialized = [successCopy biomeStreamsInitialized];

  return biomeStreamsInitialized;
}

- (id)deviceStateContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionDeviceStateContext alloc];
  v5 = [objc_msgSend(contextCopy "deviceStateMonitorClass")];
  v6 = [objc_msgSend(contextCopy "deviceStateMonitorClass")];
  deviceStateMonitorClass = [contextCopy deviceStateMonitorClass];

  v8 = -[ATXPredictionDeviceStateContext initWithWifiSSID:onWifi:inAirplaneMode:](v4, "initWithWifiSSID:onWifi:inAirplaneMode:", v5, v6, [deviceStateMonitorClass airplaneMode]);

  return v8;
}

- (id)timeContextForCurrentContext:(id)context
{
  v4 = [ATXPredictionTimeContext alloc];
  v5 = [(ATXPredictionContextBuilder *)self now];
  v6 = [(ATXPredictionTimeContext *)v4 initWithDate:v5];

  return v6;
}

- (id)locationMotionContextForCurrentContext:(id)context
{
  contextCopy = context;
  locationManager = [contextCopy locationManager];
  previousLOIAndCurrentLOI = [locationManager previousLOIAndCurrentLOI];

  motionManagerWrapper = [contextCopy motionManagerWrapper];
  getCurrentActivity = [motionManagerWrapper getCurrentActivity];

  v8 = [ATXPredictionLocationMotionContext alloc];
  v29 = previousLOIAndCurrentLOI;
  second = [previousLOIAndCurrentLOI second];
  first = [previousLOIAndCurrentLOI first];
  motiontype = [getCurrentActivity motiontype];
  locationManager2 = [contextCopy locationManager];
  getCurrentLocation = [locationManager2 getCurrentLocation];
  locationManager3 = [contextCopy locationManager];
  locationEnabled = [locationManager3 locationEnabled];
  locationManager4 = [contextCopy locationManager];
  [locationManager4 distanceFromHomeOfCurrentLocationInMeters];
  v14 = v13;
  locationManager5 = [contextCopy locationManager];
  [locationManager5 distanceFromWorkOfCurrentLocationInMeters];
  v17 = v16;
  locationManager6 = [contextCopy locationManager];
  [locationManager6 distanceFromSchoolOfCurrentLocationInMeters];
  v20 = v19;
  locationManager7 = [contextCopy locationManager];

  [locationManager7 distanceFromGymOfCurrentLocationInMeters];
  v23 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](v8, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", second, first, motiontype, getCurrentLocation, locationEnabled, [getCurrentActivity canPredictClipsGivenRecentMotion], v14, v17, v20, v22);

  return v23;
}

- (id)ambientLightContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionAmbientLightContext alloc];
  ambientLightMonitor = [contextCopy ambientLightMonitor];

  v6 = -[ATXPredictionAmbientLightContext initWithAmbientLightType:](v4, "initWithAmbientLightType:", [ambientLightMonitor getCurrentAmbientLightType]);

  return v6;
}

- (id)userContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionUserContext alloc];
  appInfoManager = [contextCopy appInfoManager];
  lastUnlockDate = [appInfoManager lastUnlockDate];
  appInfoManager2 = [contextCopy appInfoManager];
  lastAppLaunch = [appInfoManager2 lastAppLaunch];
  appInfoManager3 = [contextCopy appInfoManager];
  lastAppLaunchDate = [appInfoManager3 lastAppLaunchDate];
  appInfoManager4 = [contextCopy appInfoManager];
  secondMostRecentAppLaunch = [appInfoManager4 secondMostRecentAppLaunch];
  appInfoManager5 = [contextCopy appInfoManager];

  lastAppActionLaunch = [appInfoManager5 lastAppActionLaunch];
  v14 = [(ATXPredictionUserContext *)v4 initWithLastUnlockDate:lastUnlockDate lastAppLaunch:lastAppLaunch lastAppLaunchDate:lastAppLaunchDate secondMostRecentAppLaunch:secondMostRecentAppLaunch lastAppActionLaunch:lastAppActionLaunch];

  return v14;
}

void __65__ATXPredictionContextBuilder_predictionContextForCurrentContext__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([*(a1 + 32) tryInitContextSourcesAndReturnSuccess:?])
  {
    v3 = [ATXPredictionContext alloc];
    v4 = [*(a1 + 32) deviceStateContextForCurrentContext:v12];
    v5 = [*(a1 + 32) timeContextForCurrentContext:v12];
    v6 = [*(a1 + 32) locationMotionContextForCurrentContext:v12];
    v7 = [*(a1 + 32) ambientLightContextForCurrentContext:v12];
    v8 = [*(a1 + 32) userContextForCurrentContext:v12];
    v9 = [(ATXPredictionContext *)v3 initWithDeviceStateContext:v4 timeContext:v5 locationMotionContext:v6 ambientLightContext:v7 userContext:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 locationManager];
  v3 = [v6 getCurrentLocation];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) tryInitBiomeStreamsAndReturnSuccess:v3] && *(a1 + 40))
  {
    v4 = CLLocationCoordinate2DMake(0.0, 0.0);
    v5 = [*(a1 + 40) locationMotionContext];
    v6 = [v5 currentLOI];
    [v6 setCoordinate:{v4.latitude, v4.longitude}];

    v7 = CLLocationCoordinate2DMake(0.0, 0.0);
    v8 = [*(a1 + 40) locationMotionContext];
    v9 = [v8 previousLOI];
    [v9 setCoordinate:{v7.latitude, v7.longitude}];

    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - updating prediction context Biome stream.", &v16, 0xCu);
    }

    v14 = [v3 predictionContextStream];
    [v14 sendEvent:*(a1 + 40)];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)_getContextForOverrideKey:(id)key fromContextOverride:(id)override withDefaultContext:(id)context allowNilValues:(BOOL)values
{
  valuesCopy = values;
  keyCopy = key;
  overrideCopy = override;
  contextCopy = context;
  if (!contextCopy && !valuesCopy)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXPredictionContextBuilder _getContextForOverrideKey:v12 fromContextOverride:? withDefaultContext:? allowNilValues:?];
    }
  }

  v13 = [overrideCopy objectForKey:keyCopy];
  null = [MEMORY[0x277CBEB68] null];
  v15 = [v13 isEqual:null];

  if (valuesCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = contextCopy;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = contextCopy;
  }

  if (!v15)
  {
    v16 = v17;
  }

  v18 = v16;

  return v18;
}

- (id)deviceStateContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self deviceStateContextForCurrentContext:data];
  wifiSSID = [v7 wifiSSID];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideWifiSSID" fromContextOverride:overrideCopy withDefaultContext:wifiSSID allowNilValues:0];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "onWifi")}];
  v11 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideOnWifi" fromContextOverride:overrideCopy withDefaultContext:v10 allowNilValues:0];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "inAirplaneMode")}];
  v13 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideInAirplaneMode" fromContextOverride:overrideCopy withDefaultContext:v12 allowNilValues:0];

  v14 = -[ATXPredictionDeviceStateContext initWithWifiSSID:onWifi:inAirplaneMode:]([ATXPredictionDeviceStateContext alloc], "initWithWifiSSID:onWifi:inAirplaneMode:", v9, [v11 BOOLValue], objc_msgSend(v13, "BOOLValue"));

  return v14;
}

- (id)timeContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self timeContextForCurrentContext:data];
  date = [v7 date];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideDate" fromContextOverride:overrideCopy withDefaultContext:date allowNilValues:0];

  v10 = [[ATXPredictionTimeContext alloc] initWithDate:v9];

  return v10;
}

- (id)locationMotionContextForContextOverride:(id)override guardedData:(id)data
{
  v93 = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  dataCopy = data;
  v74 = [(ATXPredictionContextBuilder *)self locationMotionContextForCurrentContext:?];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v74, "locationEnabled")}];
  v69 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLocationEnabled" fromContextOverride:overrideCopy withDefaultContext:v6 allowNilValues:0];

  v7 = [MEMORY[0x277D41C40] stringForMotionType:{objc_msgSend(v74, "motionType")}];
  v71 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideMotionType" fromContextOverride:overrideCopy withDefaultContext:v7 allowNilValues:0];

  v91 = 0;
  v67 = [MEMORY[0x277D41C40] motionTypeForString:v71 found:&v91];
  if ((v91 & 1) == 0)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXPredictionContextBuilder locationMotionContextForContextOverride:v8 guardedData:?];
    }

    v67 = 4;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v74, "canPredictClipsGivenRecentMotion")}];
  v68 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridecanPredictClipsGivenRecentMotion" fromContextOverride:overrideCopy withDefaultContext:v9 allowNilValues:0];

  locationManager = [dataCopy locationManager];
  getCurrentLocation = [locationManager getCurrentLocation];
  v12 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideCurrentLocation" fromContextOverride:overrideCopy withDefaultContext:getCurrentLocation allowNilValues:1];

  locationManager2 = [dataCopy locationManager];
  previousLOIAndCurrentLOI = [locationManager2 previousLOIAndCurrentLOI];
  first = [previousLOIAndCurrentLOI first];

  if (first)
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [first coordinate];
    v17 = v16;
    [first coordinate];
    v19 = [v15 initWithLatitude:v17 longitude:v18];
    v20 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePreviousLocation" fromContextOverride:overrideCopy withDefaultContext:v19 allowNilValues:1];
  }

  else
  {
    v20 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePreviousLocation" fromContextOverride:overrideCopy withDefaultContext:0 allowNilValues:1];
  }

  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__23;
  v89 = __Block_byref_object_dispose__23;
  v90 = 0;
  v21 = dispatch_semaphore_create(0);
  locationManager3 = [dataCopy locationManager];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __83__ATXPredictionContextBuilder_locationMotionContextForContextOverride_guardedData___block_invoke;
  v82[3] = &unk_278597EC0;
  v84 = &v85;
  v70 = v21;
  v83 = v70;
  [locationManager3 fetchAllLocationsOfInterest:v82];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v70 timeoutSeconds:5.0] == 1)
  {
    v23 = __atxlog_handle_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXPredictionContextBuilder locationMotionContextForContextOverride:v23 guardedData:?];
    }
  }

  [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLocationsOfInterest" fromContextOverride:overrideCopy withDefaultContext:v86[5] allowNilValues:1];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v24 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
  v25 = *MEMORY[0x277D41CB8];
  v26 = 0;
  if (v24)
  {
    v77 = 0;
    v27 = *MEMORY[0x277CE41E0];
    v28 = *v79;
    v29 = *MEMORY[0x277D41CB8];
    v30 = *MEMORY[0x277D41CB8];
    v31 = *MEMORY[0x277D41CB8];
    v32 = *MEMORY[0x277CE41E0];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v79 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v78 + 1) + 8 * i);
        v35 = objc_alloc(MEMORY[0x277CE41F8]);
        [v34 coordinate];
        v37 = v36;
        [v34 coordinate];
        v38 = [v35 initWithLatitude:v37 longitude:?];
        [v12 distanceFromLocation:v38];
        if (v12)
        {
          v40 = v39;
          if (v39 < 400.0 && v39 < v32)
          {
            v42 = v34;

            v32 = v40;
            v77 = v42;
          }
        }

        [v20 distanceFromLocation:v38];
        if (v20)
        {
          v44 = v43;
          if (v43 < 400.0 && v43 < v27)
          {
            v46 = v34;

            v27 = v44;
            v26 = v46;
          }
        }

        if (v12)
        {
          if (![v34 type])
          {
            [v12 distanceFromLocation:v38];
            v25 = v47;
          }

          if ([v34 type] == 1)
          {
            [v12 distanceFromLocation:v38];
            v29 = v48;
          }

          if ([v34 type] == 2)
          {
            [v12 distanceFromLocation:v38];
            v30 = v49;
          }

          if ([v34 type] == 3)
          {
            [v12 distanceFromLocation:v38];
            v31 = v50;
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v24);
  }

  else
  {
    v77 = 0;
    v29 = *MEMORY[0x277D41CB8];
    v30 = *MEMORY[0x277D41CB8];
    v31 = *MEMORY[0x277D41CB8];
  }

  v51 = [ATXPredictionLocationMotionContext alloc];
  bOOLValue = [v69 BOOLValue];
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [v53 doubleValue];
  v55 = v54;
  v56 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
  [v56 doubleValue];
  v58 = v57;
  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  [v59 doubleValue];
  v61 = v60;
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  [v62 doubleValue];
  v64 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](v51, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v77, v26, v67, v12, bOOLValue, [v68 BOOLValue], v55, v58, v61, v63);

  _Block_object_dispose(&v85, 8);
  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

void __83__ATXPredictionContextBuilder_locationMotionContextForContextOverride_guardedData___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)ambientLightContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self ambientLightContextForCurrentContext:data];
  ambientLightType = [v7 ambientLightType];
  if (ambientLightType >= 8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", ambientLightType];
  }

  else
  {
    v9 = off_2785992D8[ambientLightType];
  }

  v10 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideAmbientLightType" fromContextOverride:overrideCopy withDefaultContext:v9 allowNilValues:0];

  v11 = v10;
  v12 = 0;
  if (([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeDark"] & 1) == 0)
  {
    if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorDark"])
    {
      v12 = 1;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDark"])
    {
      v12 = 2;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorArtificialLight"])
    {
      v12 = 3;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorBrightArtificialLight"])
    {
      v12 = 4;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoor"])
    {
      v12 = 5;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDirectSun"])
    {
      v12 = 6;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeUnknown"])
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = [[ATXPredictionAmbientLightContext alloc] initWithAmbientLightType:v12];

  return v13;
}

- (id)userContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self userContextForCurrentContext:data];
  lastUnlockDate = [v7 lastUnlockDate];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastUnlockDate" fromContextOverride:overrideCopy withDefaultContext:lastUnlockDate allowNilValues:1];

  lastAppLaunch = [v7 lastAppLaunch];
  v11 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppLaunch" fromContextOverride:overrideCopy withDefaultContext:lastAppLaunch allowNilValues:1];

  lastAppLaunchDate = [v7 lastAppLaunchDate];
  v13 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppLaunchDate" fromContextOverride:overrideCopy withDefaultContext:lastAppLaunchDate allowNilValues:1];

  secondMostRecentAppLaunch = [v7 secondMostRecentAppLaunch];
  v15 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideSecondMostRecentAppLaunch" fromContextOverride:overrideCopy withDefaultContext:secondMostRecentAppLaunch allowNilValues:1];

  lastAppActionLaunch = [v7 lastAppActionLaunch];
  v17 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppActionLaunch" fromContextOverride:overrideCopy withDefaultContext:lastAppActionLaunch allowNilValues:1];

  v18 = [[ATXPredictionUserContext alloc] initWithLastUnlockDate:v9 lastAppLaunch:v11 lastAppLaunchDate:v13 secondMostRecentAppLaunch:v15 lastAppActionLaunch:v17];

  return v18;
}

- (id)predictionContextForContextOverride:(id)override
{
  overrideCopy = override;
  if ([overrideCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__23;
    v15 = __Block_byref_object_dispose__23;
    v16 = 0;
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__ATXPredictionContextBuilder_predictionContextForContextOverride___block_invoke;
    v8[3] = &unk_2785992B8;
    v8[4] = self;
    v9 = overrideCopy;
    v10 = &v11;
    [(_PASLock *)lock runWithLockAcquired:v8];
    predictionContextForCurrentContext = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)self predictionContextForCurrentContext];
  }

  return predictionContextForCurrentContext;
}

void __67__ATXPredictionContextBuilder_predictionContextForContextOverride___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) tryInitContextSourcesAndReturnSuccess:?])
  {
    v3 = [*(a1 + 32) deviceStateContextForContextOverride:*(a1 + 40) guardedData:v11];
    v4 = [*(a1 + 32) timeContextForContextOverride:*(a1 + 40) guardedData:v11];
    v5 = [*(a1 + 32) locationMotionContextForContextOverride:*(a1 + 40) guardedData:v11];
    v6 = [*(a1 + 32) ambientLightContextForContextOverride:*(a1 + 40) guardedData:v11];
    v7 = [*(a1 + 32) userContextForContextOverride:*(a1 + 40) guardedData:v11];
    v8 = [[ATXPredictionContext alloc] initWithDeviceStateContext:v3 timeContext:v4 locationMotionContext:v5 ambientLightContext:v6 userContext:v7 isOverridden:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)loadContextOverrideFromJSONFile:(id)file
{
  v87 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v81 = fileCopy;
  v5 = [appPredictionDirectory stringByAppendingPathComponent:fileCopy];
  v6 = [v5 stringByAppendingPathExtension:@"json"];

  v80 = v6;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 valueForKey:@"ATXContextOverrideDate"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"ATXContextOverrideDate"];
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v11, "integerValue")}];
    [v9 setObject:v12 forKeyedSubscript:@"ATXContextOverrideDate"];
  }

  v13 = [v9 valueForKey:@"ATXContextOverrideCurrentLocation"];

  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"ATXContextOverrideCurrentLocation"];
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    v16 = [v14 objectAtIndexedSubscript:0];
    [v16 floatValue];
    v18 = v17;
    v19 = [v14 objectAtIndexedSubscript:1];
    [v19 floatValue];
    v21 = [v15 initWithLatitude:v18 longitude:v20];
    [v9 setObject:v21 forKeyedSubscript:@"ATXContextOverrideCurrentLocation"];
  }

  v22 = [v9 valueForKey:@"ATXContextOverridePreviousLocation"];

  if (v22)
  {
    v23 = [v9 objectForKeyedSubscript:@"ATXContextOverridePreviousLocation"];
    v24 = objc_alloc(MEMORY[0x277CE41F8]);
    v25 = [v23 objectAtIndexedSubscript:0];
    [v25 floatValue];
    v27 = v26;
    v28 = [v23 objectAtIndexedSubscript:1];
    [v28 floatValue];
    v30 = [v24 initWithLatitude:v27 longitude:v29];
    [v9 setObject:v30 forKeyedSubscript:@"ATXContextOverridePreviousLocation"];
  }

  v31 = [v9 valueForKey:@"ATXContextOverrideInferredModeEvent"];

  if (v31)
  {
    v32 = [v9 objectForKeyedSubscript:@"ATXContextOverrideInferredModeEvent"];
    v33 = objc_alloc(MEMORY[0x277CF16E8]);
    v34 = objc_opt_new();
    v35 = objc_opt_new();
    uUIDString = [v35 UUIDString];
    LODWORD(v78) = BMUserFocusInferredModeTypeFromString();
    v37 = [v33 initWithAbsoluteTimestamp:v34 modeIdentifier:0 origin:1 originBundleID:0 isAutomationEnabled:uUIDString isStart:0 uuid:&unk_283A55730 originAnchorType:&unk_283A55748 uiLocation:MEMORY[0x277CBEBF8] confidenceScore:v78 serializedTriggers:MEMORY[0x277CBEC28] modeType:0 shouldSuggestTriggers:? userModeName:?];
    [v9 setObject:v37 forKeyedSubscript:@"ATXContextOverrideInferredModeEvent"];
  }

  v38 = [v9 valueForKey:@"ATXContextOverrideUserFocusComputedModeEvent"];

  if (v38)
  {
    v39 = [v9 objectForKeyedSubscript:@"ATXContextOverrideUserFocusComputedModeEvent"];
    v40 = objc_alloc(MEMORY[0x277CF16F0]);
    v41 = [v40 initWithMode:v39 starting:MEMORY[0x277CBEC38] updateReason:0 semanticType:0 updateSource:0 semanticModeIdentifier:0];
    [v9 setObject:v41 forKeyedSubscript:@"ATXContextOverrideUserFocusComputedModeEvent"];
  }

  v42 = [v9 valueForKey:@"ATXContextOverridePoiCategory"];

  if (v42)
  {
    v43 = [v9 objectForKeyedSubscript:@"ATXContextOverridePoiCategory"];
    v44 = objc_alloc(MEMORY[0x277CF12C0]);
    v45 = objc_opt_new();
    v46 = [v44 initWithPoiCategory:v43 rank:&unk_283A55760 timestamp:v45];
    [v9 setObject:v46 forKeyedSubscript:@"ATXContextOverridePoiCategory"];
  }

  v47 = [v9 valueForKey:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];

  if (v47)
  {
    v79 = v7;
    v48 = [v9 objectForKeyedSubscript:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];
    v49 = objc_opt_new();
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v50 = v48;
    v51 = [v50 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v83;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v83 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v82 + 1) + 8 * i);
          v56 = MEMORY[0x277CBEAA8];
          v57 = [v50 objectForKeyedSubscript:v55];
          v58 = [v56 dateWithTimeIntervalSince1970:{objc_msgSend(v57, "integerValue")}];
          [v49 setObject:v58 forKeyedSubscript:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v52);
    }

    [v9 setObject:v49 forKeyedSubscript:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];
    v7 = v79;
  }

  v59 = [v9 valueForKey:@"ATXContextOverrideBluetoothEvent"];

  if (v59)
  {
    v60 = [v9 objectForKeyedSubscript:@"ATXContextOverrideBluetoothEvent"];
    v61 = MEMORY[0x277CBEAA8];
    v62 = [v60 objectAtIndexedSubscript:0];
    v63 = [v61 dateWithTimeIntervalSince1970:{objc_msgSend(v62, "integerValue")}];

    v64 = MEMORY[0x277CBEAA8];
    v65 = [v60 objectAtIndexedSubscript:1];
    v66 = [v64 dateWithTimeIntervalSince1970:{objc_msgSend(v65, "integerValue")}];

    v67 = [[ATXBluetoothDuetEvent alloc] initWithBluetoothState:1 deviceType:3 deviceName:&stru_2839A6058 hardwareAddress:&stru_2839A6058 startDate:v63 endDate:v66];
    [v9 setObject:v67 forKeyedSubscript:@"ATXContextOverrideBluetoothEvent"];
  }

  v68 = [v9 valueForKey:@"ATXContextOverrideMicrolocationVisitEvent"];

  if (v68)
  {
    v69 = [v9 objectForKeyedSubscript:@"ATXContextOverrideMicrolocationVisitEvent"];
    v70 = [ATXMicrolocationVisitDuetEvent alloc];
    v71 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v69];
    v72 = objc_opt_new();
    v73 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
    v74 = objc_opt_new();
    v75 = [(ATXMicrolocationVisitDuetEvent *)v70 initWithDominantMicrolocationUUID:v71 microlocationProbabilities:v72 startDate:v73 endDate:v74];
    [v9 setObject:v75 forKeyedSubscript:@"ATXContextOverrideMicrolocationVisitEvent"];
  }

  v76 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)predictionContextForCurrentContextAndCandidatePublisher:(id)publisher contextOverride:(id)override
{
  publisherCopy = publisher;
  overrideCopy = override;
  v8 = [(ATXPredictionContextBuilder *)self predictionContextForContextOverride:overrideCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__78;
  v29 = __Block_byref_object_dispose__78;
  v30 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke;
  v24[3] = &unk_27859EF10;
  v24[4] = self;
  v24[5] = &v25;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_11;
  v23[3] = &unk_27859F628;
  v23[4] = &v25;
  v9 = [publisherCopy sinkWithCompletion:v24 receiveInput:v23];
  v10 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideCandidateIdentifiersLaunchAge" fromContextOverride:overrideCopy withDefaultContext:v26[5] allowNilValues:1];
  [v8 setCandidateIdentifiersLaunchAge:v10];

  currentMode = [MEMORY[0x277D41C68] currentMode];
  v12 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideInferredModeEvent" fromContextOverride:overrideCopy withDefaultContext:currentMode allowNilValues:1];
  [v8 setInferredModeEvent:v12];

  currentMode2 = [MEMORY[0x277D41C60] currentMode];
  v14 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideUserFocusComputedModeEvent" fromContextOverride:overrideCopy withDefaultContext:currentMode2 allowNilValues:1];
  [v8 setUserFocusComputedModeEvent:v14];

  v15 = objc_opt_new();
  currentPoiCategory = [v15 currentPoiCategory];
  v17 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePoiCategory" fromContextOverride:overrideCopy withDefaultContext:currentPoiCategory allowNilValues:1];
  [v8 setPoiCategory:v17];

  v18 = +[ATXBluetoothDuetEvent mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues];
  v19 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideBluetoothEvent" fromContextOverride:overrideCopy withDefaultContext:v18 allowNilValues:1];
  [v8 setBluetoothEvent:v19];

  v20 = [objc_alloc(+[ATXMicrolocationVisitDuetDataProvider supportedDuetEventClass](ATXMicrolocationVisitDuetDataProvider "supportedDuetEventClass"))];
  v21 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideMicrolocationVisitEvent" fromContextOverride:overrideCopy withDefaultContext:v20 allowNilValues:1];
  [v8 setMicrolocationVisitEvent:v21];

  if ([overrideCopy count])
  {
    [v8 setIsOverridden:1];
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state])
  {
    v3 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_cold_1(a1, v3);
    }

    v4 = objc_opt_new();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v4 timestamp];
  v8 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [v4 eventBody];

  v7 = [v6 identifier];
  [v5 setObject:v8 forKeyedSubscript:v7];
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Error when querying for recently launched candidate. Returning empty set.", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end