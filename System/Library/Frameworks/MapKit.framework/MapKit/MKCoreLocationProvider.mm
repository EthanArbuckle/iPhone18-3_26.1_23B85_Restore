@interface MKCoreLocationProvider
- (BOOL)fusionInfoEnabled;
- (BOOL)locationManagerShouldDisplayHeadingCalibration:(id)a3;
- (BOOL)matchInfoEnabled;
- (CLLocation)lastLocation;
- (CLLocationManager)_clLocationManager;
- (MKCoreLocationProvider)initWithCLLocationManager:(id)a3;
- (MKLocationProviderDelegate)delegate;
- (NSBundle)effectiveBundle;
- (NSString)effectiveBundleIdentifier;
- (double)desiredAccuracy;
- (double)distanceFilter;
- (int)authorizationStatus;
- (int)headingOrientation;
- (int64_t)accuracyAuthorization;
- (int64_t)activityType;
- (void)_authStatusReceived;
- (void)_beginWaitingForAuthCallback;
- (void)_createCLLocationManager;
- (void)_resetForNewEffectiveBundle;
- (void)_stopWaitingForAuthCallback;
- (void)_updateAccuracyAuthorizationOnQueue:(id)a3;
- (void)_updateAuthorizationStatus;
- (void)accuracyAuthorizationOnQueue:(id)a3 result:(id)a4;
- (void)authorizationStatusOnQueue:(id)a3 result:(id)a4;
- (void)dealloc;
- (void)dismissHeadingCalibrationDisplay;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateHeading:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didUpdateVehicleHeading:(id)a4;
- (void)locationManager:(id)a3 didUpdateVehicleSpeed:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)locationManagerDidPauseLocationUpdates:(id)a3;
- (void)locationManagerDidResumeLocationUpdates:(id)a3;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3 completion:(id)a4;
- (void)requestWhenInUseAuthorization;
- (void)setActivityType:(int64_t)a3;
- (void)setDesiredAccuracy:(double)a3;
- (void)setDistanceFilter:(double)a3;
- (void)setEffectiveBundle:(id)a3;
- (void)setEffectiveBundleIdentifier:(id)a3;
- (void)setFusionInfoEnabled:(BOOL)a3;
- (void)setHeadingOrientation:(int)a3;
- (void)setMatchInfoEnabled:(BOOL)a3;
- (void)startMonitoringVisits;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopMonitoringVisits;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
- (void)stopWaitingForAuthCallback;
@end

@implementation MKCoreLocationProvider

void __45__MKCoreLocationProvider__authStatusReceived__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

- (CLLocationManager)_clLocationManager
{
  clLocationManager = self->_clLocationManager;
  if (!clLocationManager)
  {
    [(MKCoreLocationProvider *)self _createCLLocationManager];
    clLocationManager = self->_clLocationManager;
  }

  return clLocationManager;
}

- (int64_t)accuracyAuthorization
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  coreLocationQueue = self->_coreLocationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MKCoreLocationProvider_accuracyAuthorization__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(coreLocationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__MKCoreLocationProvider_accuracyAuthorization__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _accuracyAuthorizationOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)authorizationStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  coreLocationQueue = self->_coreLocationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MKCoreLocationProvider_authorizationStatus__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(coreLocationQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__MKCoreLocationProvider_authorizationStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _authorizationStatusOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateAuthorizationStatus
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_clLocationManager)
  {
    [(MKCoreLocationProvider *)self _createCLLocationManager];
  }

  v3 = atomic_load(&self->_avoidSynchronousLocationAuthQuery);
  if ((v3 & 1) != 0 && self->_authFetchStatus == 1)
  {
    v4 = MKGetMKCoreLocationProviderLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(MKCoreLocationProvider *)self _clLocationManager];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "CLLocationManager(%@) for %@ is avoiding location permission calls.", &v10, 0x16u);
    }
  }

  else
  {
    authorizationStatus = self->_authorizationStatus;
    v7 = [(CLLocationManager *)self->_clLocationManager authorizationStatus];
    self->_authorizationStatus = v7;
    if (authorizationStatus != v7)
    {
      v8 = MKGetMKCoreLocationProviderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_authorizationStatus;
        v10 = 134218496;
        v11 = self;
        v12 = 2048;
        v13 = authorizationStatus;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "Updated authorization status for %p from: %li to: %li", &v10, 0x20u);
      }
    }

    [(MKCoreLocationProvider *)self _updateAccuracyAuthorizationOnQueue:self->_clLocationManager];
  }
}

- (void)_createCLLocationManager
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_clLocationManager)
  {
    return;
  }

  dispatch_assert_queue_V2(self->_coreLocationQueue);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3116;
  v53 = __Block_byref_object_dispose__3117;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3116;
  v47 = __Block_byref_object_dispose__3117;
  v48 = 0;
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __50__MKCoreLocationProvider__createCLLocationManager__block_invoke;
  v39 = &unk_1E76C6B88;
  v40 = self;
  v41 = &v49;
  v42 = &v43;
  geo_isolate_sync();
  if (v50[5])
  {
    v3 = objc_alloc(MEMORY[0x1E695FBE8]);
    v4 = [v50[5] bundlePath];
    v5 = [v3 initWithEffectiveBundlePath:v4 delegate:self onQueue:self->_coreLocationQueue];

    v6 = MKGetMKCoreLocationProviderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v50[5] bundleIdentifier];
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v56 = v7;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Created CLLocationManager(%@) for %p with bundle %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  if (v44[5])
  {
    v8 = objc_alloc(MEMORY[0x1E695FBE8]);
    v5 = [v8 initWithEffectiveBundleIdentifier:v44[5] delegate:self onQueue:self->_coreLocationQueue];
    v6 = MKGetMKCoreLocationProviderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = v44[5];
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v56 = v9;
      v10 = "Created CLLocationManager(%@) for %p with bundle identifier %@";
      v11 = v6;
      v12 = 32;
LABEL_10:
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695FBE8]) _initWithDelegate:self onQueue:self->_coreLocationQueue];
    v6 = MKGetMKCoreLocationProviderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v10 = "Created CLLocationManager(%@) for %p with no bundle";
      v11 = v6;
      v12 = 22;
      goto LABEL_10;
    }
  }

LABEL_11:

  [(CLLocationManager *)v5 setDelegate:self];
  [(MKCoreLocationProvider *)self _beginWaitingForAuthCallback];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15 = MEMORY[0x1E69E9820];
  geo_isolate_sync();
  [(CLLocationManager *)v5 setDistanceFilter:*(*&buf[8] + 24), v15, 3221225472, __50__MKCoreLocationProvider__createCLLocationManager__block_invoke_15, &unk_1E76C6BB0, self, buf, &v32, &v28, &v24, &v20, &v16];
  [(CLLocationManager *)v5 setDesiredAccuracy:v33[3]];
  [(CLLocationManager *)v5 setActivityType:v29[3]];
  if (*(v25 + 24) == 1)
  {
    [(CLLocationManager *)v5 setMatchInfoEnabled:1];
  }

  if (*(v21 + 24) == 1)
  {
    [(CLLocationManager *)v5 _setFusionInfoEnabled:1];
  }

  if (*(v17 + 6))
  {
    [(CLLocationManager *)v5 setHeadingOrientation:?];
  }

  [(CLLocationManager *)v5 setAllowsAlteredAccessoryLocations:1];
  clLocationManager = self->_clLocationManager;
  self->_clLocationManager = v5;
  v14 = v5;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
}

void __50__MKCoreLocationProvider__createCLLocationManager__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 40));
  v2 = *(a1[4] + 48);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_beginWaitingForAuthCallback
{
  if (!self->_authFetchStatus)
  {
    self->_authFetchStatus = 1;
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke;
    location[4] = &unk_1E76CDB38;
    location[5] = self;
    geo_isolate_sync();
    objc_initWeak(location, self);
    v3 = MEMORY[0x1E695DFF0];
    Integer = GEOConfigGetInteger();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke_2;
    v7[3] = &unk_1E76C6BD8;
    objc_copyWeak(&v8, location);
    v7[4] = self;
    v5 = [v3 scheduledTimerWithTimeInterval:1 repeats:v7 block:Integer];
    waitingForAuthCheckinTimer = self->_waitingForAuthCheckinTimer;
    self->_waitingForAuthCheckinTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }
}

void __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (void)_authStatusReceived
{
  if (self->_authFetchStatus != 2)
  {
    self->_authFetchStatus = 2;
    geo_isolate_sync();
    [(NSTimer *)self->_waitingForAuthCheckinTimer invalidate];
    waitingForAuthCheckinTimer = self->_waitingForAuthCheckinTimer;
    self->_waitingForAuthCheckinTimer = 0;
  }
}

- (void)startUpdatingHeading
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MKCoreLocationProvider_startUpdatingHeading__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

void __46__MKCoreLocationProvider_startUpdatingHeading__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_INFO, "Start updating Heading for %p _clLocationManager %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) _clLocationManager];
  [v5 startUpdatingHeading];
}

- (void)startUpdatingLocation
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MKCoreLocationProvider_startUpdatingLocation__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

void __47__MKCoreLocationProvider_startUpdatingLocation__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_INFO, "Start updating Location for %p _clLocationManager %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) _clLocationManager];
  [v5 startUpdatingLocation];
}

- (double)desiredAccuracy
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

double __41__MKCoreLocationProvider_desiredAccuracy__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)stopUpdatingLocation
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MKCoreLocationProvider_stopUpdatingLocation__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

uint64_t __46__MKCoreLocationProvider_stopUpdatingLocation__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_INFO, "Stop updating Location for %p _clLocationManager %@", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 8) stopUpdatingLocation];
}

- (MKLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MKGetVisitMonitorLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 hasArrivalDate];
    if (v7)
    {
      v8 = [v5 arrivalDate];
    }

    else
    {
      v8 = @"No Arrival Date";
    }

    v9 = [v5 hasDepartureDate];
    if (v9)
    {
      v10 = [v5 departureDate];
    }

    else
    {
      v10 = @"No Departure Date";
    }

    [v5 coordinate];
    v12 = v11;
    [v5 coordinate];
    *buf = 138478595;
    v18 = v8;
    v19 = 2113;
    v20 = v10;
    v21 = 2049;
    v22 = v12;
    v23 = 2049;
    v24 = v13;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "Got a visit: %{private}@ | %{private}@ | Lat: %{private}f Long: %{private}f", buf, 0x2Au);
    if (v9)
    {
    }

    if (v7)
    {
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__MKCoreLocationProvider_locationManager_didVisit___block_invoke;
  v15[3] = &unk_1E76CD810;
  v15[4] = self;
  v16 = v5;
  v14 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __51__MKCoreLocationProvider_locationManager_didVisit___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProvider:*(a1 + 32) didVisit:*(a1 + 40)];
}

- (void)locationManager:(id)a3 didUpdateVehicleHeading:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [v5 trueHeading];
    v8 = v7;
    v9 = [v5 timestamp];
    *buf = 134218243;
    v14 = v8;
    v15 = 2113;
    v16 = v9;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "Got vehicle heading: %g | %{private}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MKCoreLocationProvider_locationManager_didUpdateVehicleHeading___block_invoke;
  v11[3] = &unk_1E76CD810;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __66__MKCoreLocationProvider_locationManager_didUpdateVehicleHeading___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  [*(a1 + 40) trueHeading];
  v4 = v3;
  v5 = [*(a1 + 40) timestamp];
  [WeakRetained locationProvider:v2 didUpdateVehicleHeading:v5 timestamp:v4];
}

- (void)locationManager:(id)a3 didUpdateVehicleSpeed:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [v5 speed];
    v8 = v7;
    v9 = [v5 timestamp];
    *buf = 134218243;
    v14 = v8;
    v15 = 2113;
    v16 = v9;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "Got vehicle speed: %g | %{private}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MKCoreLocationProvider_locationManager_didUpdateVehicleSpeed___block_invoke;
  v11[3] = &unk_1E76CD810;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __64__MKCoreLocationProvider_locationManager_didUpdateVehicleSpeed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  [*(a1 + 40) speed];
  v4 = v3;
  v5 = [*(a1 + 40) timestamp];
  [WeakRetained locationProvider:v2 didUpdateVehicleSpeed:v5 timestamp:v4];
}

- (void)locationManagerDidResumeLocationUpdates:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MKCoreLocationProvider_locationManagerDidResumeLocationUpdates___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__MKCoreLocationProvider_locationManagerDidResumeLocationUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProviderDidResumeLocationUpdates:*(a1 + 32)];
}

- (void)locationManagerDidPauseLocationUpdates:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MKCoreLocationProvider_locationManagerDidPauseLocationUpdates___block_invoke;
  v6[3] = &unk_1E76CD810;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __65__MKCoreLocationProvider_locationManagerDidPauseLocationUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained locationProviderShouldPauseLocationUpdates:*(a1 + 32)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v6 = objc_loadWeakRetained((v4 + 16));
    [v6 locationProviderDidPauseLocationUpdates:*(a1 + 32)];
  }

  else
  {
    v5 = *(v4 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MKCoreLocationProvider_locationManagerDidPauseLocationUpdates___block_invoke_2;
    block[3] = &unk_1E76CDB38;
    v8 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_authorizationStatus = [v4 authorizationStatus];
  [(MKCoreLocationProvider *)self _authStatusReceived];
  [(MKCoreLocationProvider *)self _updateAccuracyAuthorizationOnQueue:v4];
  v5 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    authorizationStatus = self->_authorizationStatus;
    *buf = 134218498;
    v11 = self;
    v12 = 1024;
    *v13 = authorizationStatus;
    *&v13[4] = 2112;
    *&v13[6] = v4;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Updated authorization status for %p to: %i from CLLocationManager(%@)", buf, 0x1Cu);
  }

  v7 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    accuracyAuthorization = self->_accuracyAuthorization;
    *buf = 134218498;
    v11 = self;
    v12 = 2048;
    *v13 = accuracyAuthorization;
    *&v13[8] = 2112;
    *&v13[10] = v4;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "Updated accuracy authorization for %p to: %li from CLLocationManager(%@)", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MKCoreLocationProvider_locationManagerDidChangeAuthorization___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__MKCoreLocationProvider_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProviderDidChangeAuthorizationStatus:*(a1 + 32)];
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__MKCoreLocationProvider_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke;
  block[3] = &unk_1E76CAA70;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(coreLocationQueue, block);
}

void __96__MKCoreLocationProvider_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clLocationManager];
  [v2 requestTemporaryFullAccuracyAuthorizationWithPurposeKey:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)requestWhenInUseAuthorization
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MKCoreLocationProvider_requestWhenInUseAuthorization__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

void __55__MKCoreLocationProvider_requestWhenInUseAuthorization__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clLocationManager];
  [v1 requestWhenInUseAuthorization];
}

- (BOOL)locationManagerShouldDisplayHeadingCalibration:(id)a3
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 applicationCanPromptToCalibrateHeading:v3];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "CLLocationManager(%@) for %@ did fail with error: %@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__MKCoreLocationProvider_locationManager_didFailWithError___block_invoke;
  v10[3] = &unk_1E76CD810;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __59__MKCoreLocationProvider_locationManager_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProvider:*(a1 + 32) didReceiveError:*(a1 + 40)];
}

- (void)locationManager:(id)a3 didUpdateHeading:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MKCoreLocationProvider_locationManager_didUpdateHeading___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __59__MKCoreLocationProvider_locationManager_didUpdateHeading___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProvider:*(a1 + 32) didUpdateHeading:*(a1 + 40)];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v36 = a4;
  v6 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    clLocationManager = self->_clLocationManager;
    *buf = 138413059;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = clLocationManager;
    LOWORD(v56) = 2113;
    *(&v56 + 2) = v36;
    v9 = v7;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "%@ %p - clLocationManager: %p didUpdateLocations: %{private}@", buf, 0x2Au);
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  if (self->_hasExternallyProvidedLocationManager)
  {
    [v34 desiredAccuracy];
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke;
    v48 = &unk_1E76C6CA0;
    v52 = v10;
    v49 = self;
    v50 = v34;
    v51 = v53;
    geo_isolate_sync();
  }

  v11 = [v36 lastObject];
  [v11 _navigation_setGtLog:1];
  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [v12 objectForKey:@"LocationLatitude"];
  v14 = [v12 objectForKey:@"LocationLongitude"];
  v15 = [v12 objectForKey:@"LocationAccuracy"];
  v16 = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17 || v15)
  {
    if ((locationManager_didUpdateLocations__logged & 1) == 0)
    {
      v19 = MKGetMKDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138478339;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = v14;
        *&buf[22] = 2113;
        *&buf[24] = v16;
        _os_log_impl(&dword_1A2EA0000, v19, OS_LOG_TYPE_INFO, "Overriding core location with coordinate:%{private}@,%{private}@ accuracy:%{private}@!", buf, 0x20u);
      }

      locationManager_didUpdateLocations__logged = 1;
    }

    [v11 coordinate];
    v21 = v20;
    v23 = v22;
    [v11 horizontalAccuracy];
    v25 = v24;
    if (v18)
    {
      [v13 _mapkit_cgFloatValue];
      v27 = v26;
      [v14 _mapkit_cgFloatValue];
      if (((fabs(v27) <= 90.0) & (fabs(v28) <= 180.0)) != 0)
      {
        v23 = v28;
        v21 = v27;
      }
    }

    if (v16)
    {
      [v16 _mapkit_cgFloatValue];
      if (v29 <= 5000.0 && v29 > 0.0)
      {
        v25 = v29;
      }
    }

    v59 = 0u;
    memset(v60, 0, 60);
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(buf, 0, sizeof(buf));
    if (v11)
    {
      [v11 clientLocation];
    }

    *&buf[4] = v21;
    *&buf[12] = v23;
    *(v60 + 4) = v21;
    *(v60 + 12) = v23;
    *&buf[20] = v25;
    v31 = objc_alloc(MEMORY[0x1E6985C40]);
    v43[6] = v60[0];
    v43[7] = v60[1];
    v44[0] = v60[2];
    *(v44 + 12) = *(&v60[2] + 12);
    v43[2] = v56;
    v43[3] = v57;
    v43[4] = v58;
    v43[5] = v59;
    v43[0] = *buf;
    v43[1] = *&buf[16];
    v32 = [v31 initWithClientLocation:v43];
    [v32 _navigation_setGtLog:1];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke_31;
    v40[3] = &unk_1E76C6CD0;
    v41 = v32;
    v42 = v53;
    v40[4] = self;
    v33 = v32;
    dispatch_async(MEMORY[0x1E69E96A0], v40);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke_2;
    block[3] = &unk_1E76C6CD0;
    v39 = v53;
    block[4] = self;
    v38 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  _Block_object_dispose(v53, 8);
}

uint64_t __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(result + 32);
  if (v1 != *(v2 + 112))
  {
    v3 = result;
    *(v2 + 112) = v1;
    v4 = *(result + 32);
    v5 = v4[4];
    result = [v4 _updateAccuracyAuthorizationOnQueue:v3[5]];
    *(*(v3[6] + 8) + 24) = *(v3[4] + 32) != v5;
  }

  return result;
}

void __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke_31(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    [WeakRetained locationProviderDidChangeAuthorizationStatus:a1[4]];
  }

  v3 = objc_loadWeakRetained((a1[4] + 16));
  [v3 locationProvider:a1[4] didUpdateLocation:a1[5]];
}

void __61__MKCoreLocationProvider_locationManager_didUpdateLocations___block_invoke_2(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    [WeakRetained locationProviderDidChangeAuthorizationStatus:a1[4]];
  }

  v3 = objc_loadWeakRetained((a1[4] + 16));
  [v3 locationProvider:a1[4] didUpdateLocation:a1[5]];
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clLocationManager = self->_clLocationManager;
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = clLocationManager;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "Retrieving current place inference for %@ _clLocationManager: %@", &v9, 0x16u);
  }

  [(CLLocationManager *)self->_clLocationManager _fetchPlaceInferencesWithFidelityPolicy:a3 handler:v6];
}

- (CLLocation)lastLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3116;
  v10 = __Block_byref_object_dispose__3117;
  v11 = 0;
  coreLocationQueue = self->_coreLocationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MKCoreLocationProvider_lastLocation__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(coreLocationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__MKCoreLocationProvider_lastLocation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _clLocationManager];
  v2 = [v5 location];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dismissHeadingCalibrationDisplay
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MKCoreLocationProvider_dismissHeadingCalibrationDisplay__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

- (void)accuracyAuthorizationOnQueue:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    coreLocationQueue = self->_coreLocationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MKCoreLocationProvider_accuracyAuthorizationOnQueue_result___block_invoke;
    block[3] = &unk_1E76CAA70;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(coreLocationQueue, block);
  }
}

void __62__MKCoreLocationProvider_accuracyAuthorizationOnQueue_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accuracyAuthorizationOnQueue];
  v3 = *(a1 + 40);
  v4 = v3;
  if (!v3)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MKCoreLocationProvider_accuracyAuthorizationOnQueue_result___block_invoke_2;
  v6[3] = &unk_1E76C97C8;
  v7 = *(a1 + 48);
  v8 = v2;
  dispatch_async(v4, v6);
  if (!v3)
  {
  }
}

- (void)authorizationStatusOnQueue:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    coreLocationQueue = self->_coreLocationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MKCoreLocationProvider_authorizationStatusOnQueue_result___block_invoke;
    block[3] = &unk_1E76CAA70;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(coreLocationQueue, block);
  }
}

void __60__MKCoreLocationProvider_authorizationStatusOnQueue_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _authorizationStatusOnQueue];
  v3 = *(a1 + 40);
  v4 = v3;
  if (!v3)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__MKCoreLocationProvider_authorizationStatusOnQueue_result___block_invoke_2;
  v6[3] = &unk_1E76C6C78;
  v7 = *(a1 + 48);
  v8 = v2;
  dispatch_async(v4, v6);
  if (!v3)
  {
  }
}

- (void)setHeadingOrientation:(int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __48__MKCoreLocationProvider_setHeadingOrientation___block_invoke;
  v5[8] = &unk_1E76C6C50;
  v5[9] = self;
  v5[10] = &v7;
  v6 = a3;
  geo_isolate_sync();
  if (v8[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__MKCoreLocationProvider_setHeadingOrientation___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __48__MKCoreLocationProvider_setHeadingOrientation___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 140) != v1;
  *(*(result + 32) + 140) = v1;
  return result;
}

- (int)headingOrientation
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)setFusionInfoEnabled:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __47__MKCoreLocationProvider_setFusionInfoEnabled___block_invoke;
  v5[8] = &unk_1E76C6C28;
  v5[9] = self;
  v5[10] = &v7;
  v6 = a3;
  geo_isolate_sync();
  if (v8[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__MKCoreLocationProvider_setFusionInfoEnabled___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __47__MKCoreLocationProvider_setFusionInfoEnabled___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 137) != *(result + 48);
  *(*(result + 32) + 137) = *(result + 48);
  return result;
}

- (BOOL)fusionInfoEnabled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)setMatchInfoEnabled:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __46__MKCoreLocationProvider_setMatchInfoEnabled___block_invoke;
  v5[8] = &unk_1E76C6C28;
  v5[9] = self;
  v5[10] = &v7;
  v6 = a3;
  geo_isolate_sync();
  if (v8[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MKCoreLocationProvider_setMatchInfoEnabled___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __46__MKCoreLocationProvider_setMatchInfoEnabled___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 136) != *(result + 48);
  *(*(result + 32) + 136) = *(result + 48);
  return result;
}

- (BOOL)matchInfoEnabled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)setDistanceFilter:(double)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __44__MKCoreLocationProvider_setDistanceFilter___block_invoke;
  v5[8] = &unk_1E76C6C00;
  v5[9] = self;
  v5[10] = &v6;
  *&v5[11] = a3;
  geo_isolate_sync();
  if (v7[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MKCoreLocationProvider_setDistanceFilter___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __44__MKCoreLocationProvider_setDistanceFilter___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 128) != v1;
  *(*(result + 32) + 128) = v1;
  return result;
}

- (double)distanceFilter
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

double __40__MKCoreLocationProvider_distanceFilter__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 128);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setActivityType:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __42__MKCoreLocationProvider_setActivityType___block_invoke;
  v5[8] = &unk_1E76C6C00;
  v5[9] = self;
  v5[10] = &v6;
  v5[11] = a3;
  geo_isolate_sync();
  if (v7[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__MKCoreLocationProvider_setActivityType___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v6, 8);
}

void *__42__MKCoreLocationProvider_setActivityType___block_invoke(void *result)
{
  v1 = result[6];
  *(*(result[5] + 8) + 24) = *(result[4] + 120) != v1;
  *(result[4] + 120) = v1;
  return result;
}

- (int64_t)activityType
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)setDesiredAccuracy:(double)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke;
  v5[8] = &unk_1E76C6C00;
  v5[9] = self;
  v5[10] = &v6;
  *&v5[11] = a3;
  geo_isolate_sync();
  if (v7[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_2;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    dispatch_async(coreLocationQueue, v5);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 112) != v1;
  *(*(result + 32) + 112) = v1;
  return result;
}

void __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_3;
    block[8] = &unk_1E76CD7E8;
    block[9] = v1;
    block[10] = &v7;
    geo_isolate_sync();
    [*(*(a1 + 32) + 8) setDesiredAccuracy:v8[3]];
    v3 = *(a1 + 32);
    if (v3[8] == 2)
    {
      v4 = v3[4];
      [v3 _updateAccuracyAuthorizationOnQueue:v3[1]];
      v5 = *(a1 + 32);
      if (*(v5 + 32) != v4)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_4;
        block[3] = &unk_1E76CDB38;
        block[4] = v5;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    _Block_object_dispose(&v7, 8);
  }
}

double __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __45__MKCoreLocationProvider_setDesiredAccuracy___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained locationProviderDidChangeAuthorizationStatus:*(a1 + 32)];
}

- (void)setEffectiveBundleIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[5] = MEMORY[0x1E69E9820];
  v7[6] = 3221225472;
  v7[7] = __55__MKCoreLocationProvider_setEffectiveBundleIdentifier___block_invoke;
  v7[8] = &unk_1E76C6CD0;
  v9 = &v10;
  v7[9] = self;
  v5 = v4;
  v8 = v5;
  geo_isolate_sync();
  if (v11[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__MKCoreLocationProvider_setEffectiveBundleIdentifier___block_invoke_2;
    v7[3] = &unk_1E76CDB38;
    v7[4] = self;
    dispatch_async(coreLocationQueue, v7);
  }

  _Block_object_dispose(&v10, 8);
}

void __55__MKCoreLocationProvider_setEffectiveBundleIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 48) isEqualToString:*(a1 + 40)] ^ 1;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;
  }
}

void *__55__MKCoreLocationProvider_setEffectiveBundleIdentifier___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _resetForNewEffectiveBundle];
  }

  return result;
}

- (NSString)effectiveBundleIdentifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3116;
  v8 = __Block_byref_object_dispose__3117;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setEffectiveBundle:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[5] = MEMORY[0x1E69E9820];
  v7[6] = 3221225472;
  v7[7] = __45__MKCoreLocationProvider_setEffectiveBundle___block_invoke;
  v7[8] = &unk_1E76C6CD0;
  v9 = &v10;
  v7[9] = self;
  v5 = v4;
  v8 = v5;
  geo_isolate_sync();
  if (v11[3])
  {
    coreLocationQueue = self->_coreLocationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MKCoreLocationProvider_setEffectiveBundle___block_invoke_2;
    v7[3] = &unk_1E76CDB38;
    v7[4] = self;
    dispatch_async(coreLocationQueue, v7);
  }

  _Block_object_dispose(&v10, 8);
}

void __45__MKCoreLocationProvider_setEffectiveBundle___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 40) isEqual:a1[5]] ^ 1;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = a1[5];
    v3 = (a1[4] + 40);

    objc_storeStrong(v3, v2);
  }
}

void *__45__MKCoreLocationProvider_setEffectiveBundle___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _resetForNewEffectiveBundle];
  }

  return result;
}

- (NSBundle)effectiveBundle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3116;
  v8 = __Block_byref_object_dispose__3117;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_resetForNewEffectiveBundle
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clLocationManager = self->_clLocationManager;
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = clLocationManager;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Reset for effective bundle %p _clLocationManager %@", &v7, 0x16u);
  }

  v5 = self->_clLocationManager;
  if (v5)
  {
    [(CLLocationManager *)v5 setDelegate:0];
    v6 = self->_clLocationManager;
    self->_clLocationManager = 0;

    [(MKCoreLocationProvider *)self _stopWaitingForAuthCallback];
    self->_authorizationStatus = 0;
    [(MKCoreLocationProvider *)self _createCLLocationManager];
    [(MKCoreLocationProvider *)self _updateAuthorizationStatus];
  }
}

- (void)stopMonitoringVisits
{
  v3 = MKGetVisitMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Stopping visit monitoring updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MKCoreLocationProvider_stopMonitoringVisits__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

- (void)startMonitoringVisits
{
  v3 = MKGetVisitMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Starting visit monitoring updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MKCoreLocationProvider_startMonitoringVisits__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

- (void)stopUpdatingVehicleHeading
{
  v3 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Stopping vehicle heading updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MKCoreLocationProvider_stopUpdatingVehicleHeading__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

- (void)startUpdatingVehicleHeading
{
  v3 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Starting vehicle heading updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MKCoreLocationProvider_startUpdatingVehicleHeading__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

void __53__MKCoreLocationProvider_startUpdatingVehicleHeading__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clLocationManager];
  [v1 startUpdatingVehicleHeading];
}

- (void)stopUpdatingVehicleSpeed
{
  v3 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Stopping vehicle speed updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MKCoreLocationProvider_stopUpdatingVehicleSpeed__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

- (void)startUpdatingVehicleSpeed
{
  v3 = MKGetVehicleSensorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Starting vehicle speed updates", buf, 2u);
  }

  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKCoreLocationProvider_startUpdatingVehicleSpeed__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

void __51__MKCoreLocationProvider_startUpdatingVehicleSpeed__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clLocationManager];
  [v1 startUpdatingVehicleSpeed];
}

- (void)stopUpdatingHeading
{
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MKCoreLocationProvider_stopUpdatingHeading__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(coreLocationQueue, block);
}

uint64_t __45__MKCoreLocationProvider_stopUpdatingHeading__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_INFO, "Stop updating Heading for %p _clLocationManager %@", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 8) stopUpdatingHeading];
}

- (void)_updateAccuracyAuthorizationOnQueue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  accuracyAuthorization = self->_accuracyAuthorization;
  [v4 desiredAccuracy];
  if (v6 == *MEMORY[0x1E6985CA8] || ([v4 desiredAccuracy], v7 == 6380000.0))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 accuracyAuthorization];
  }

  self->_accuracyAuthorization = v8;
  if (accuracyAuthorization != v8)
  {
    v9 = MKGetMKCoreLocationProviderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_accuracyAuthorization;
      v11 = 134218496;
      v12 = self;
      v13 = 2048;
      v14 = accuracyAuthorization;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "Updated accuracy authorization for %p from: %li to: %li", &v11, 0x20u);
    }
  }
}

- (void)stopWaitingForAuthCallback
{
  [(MKCoreLocationProvider *)self _stopWaitingForAuthCallback];

  [(MKCoreLocationProvider *)self authorizationStatus];
}

- (void)_stopWaitingForAuthCallback
{
  self->_authFetchStatus = 0;
  geo_isolate_sync();
  [(NSTimer *)self->_waitingForAuthCheckinTimer invalidate];
  waitingForAuthCheckinTimer = self->_waitingForAuthCheckinTimer;
  self->_waitingForAuthCheckinTimer = 0;
}

void __53__MKCoreLocationProvider__stopWaitingForAuthCallback__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

void __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [v3 isValid];

    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      geo_isolate_sync();
    }
  }
}

void __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(v1 + 72);
    if (v3)
    {
      [v3 timeIntervalSinceNow];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke_4;
      block[3] = &unk_1E76C8808;
      v7 = *(a1 + 32);
      v4 = *(v7 + 104);
      v8 = -v5;
      dispatch_async(v4, block);
    }
  }
}

void __54__MKCoreLocationProvider__beginWaitingForAuthCallback__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MKGetMKCoreLocationProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) _clLocationManager];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_ERROR, "CLLocationManager(%@) for %@ has not received auth status for %@ seconds.", &v6, 0x20u);
  }
}

double __50__MKCoreLocationProvider__createCLLocationManager__block_invoke_15(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 128);
  result = *(a1[4] + 112);
  *(*(a1[6] + 8) + 24) = result;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 120);
  *(*(a1[8] + 8) + 24) = *(a1[4] + 136);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 137);
  *(*(a1[10] + 8) + 24) = *(a1[4] + 140);
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(NSTimer *)self->_waitingForAuthCheckinTimer invalidate];
  v4 = self->_clLocationManager;
  clLocationManager = self->_clLocationManager;
  self->_clLocationManager = 0;

  GEOConfigRemoveBlockListener();
  coreLocationQueue = self->_coreLocationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MKCoreLocationProvider_dealloc__block_invoke;
  block[3] = &unk_1E76CDB38;
  v10 = v4;
  v7 = v4;
  dispatch_async(coreLocationQueue, block);

  v8.receiver = self;
  v8.super_class = MKCoreLocationProvider;
  [(MKCoreLocationProvider *)&v8 dealloc];
}

uint64_t __33__MKCoreLocationProvider_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopUpdatingLocation];
  [*(a1 + 32) stopUpdatingHeading];
  v2 = *(a1 + 32);

  return [v2 setDelegate:0];
}

- (MKCoreLocationProvider)initWithCLLocationManager:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = MKCoreLocationProvider;
  v6 = [(MKCoreLocationProvider *)&v21 init];
  if (v6)
  {
    v7 = geo_isolater_create();
    isolation = v6->_isolation;
    v6->_isolation = v7;

    v9 = geo_isolater_create();
    clWaitIsolation = v6->_clWaitIsolation;
    v6->_clWaitIsolation = v9;

    v11 = geo_dispatch_queue_create();
    coreLocationQueue = v6->_coreLocationQueue;
    v6->_coreLocationQueue = v11;

    v6->_hasExternallyProvidedLocationManager = v5 != 0;
    objc_storeStrong(&v6->_clLocationManager, a3);
    [(CLLocationManager *)v6->_clLocationManager setDelegate:v6];
    v6->_expectedGpsUpdateInterval = 1.0;
    v6->_authFetchStatus = 0;
    if (v6->_hasExternallyProvidedLocationManager)
    {
      [v5 distanceFilter];
      v6->_distanceFilter = v13;
      [v5 desiredAccuracy];
    }

    else
    {
      v6->_distanceFilter = *MEMORY[0x1E6985C70];
      v14 = *MEMORY[0x1E6985C78];
    }

    v6->_desiredAccuracy = v14;
    v6->_avoidSynchronousLocationAuthQuery = GEOConfigGetBOOL();
    objc_initWeak(&location, v6);
    global_queue = geo_get_global_queue();
    objc_copyWeak(&v19, &location);
    v16 = _GEOConfigAddBlockListenerForKey();
    avoidSynchronousLocationAuthQueryListener = v6->_avoidSynchronousLocationAuthQueryListener;
    v6->_avoidSynchronousLocationAuthQueryListener = v16;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __52__MKCoreLocationProvider_initWithCLLocationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    atomic_store(GEOConfigGetBOOL(), WeakRetained + 144);
    WeakRetained = v2;
  }
}

@end