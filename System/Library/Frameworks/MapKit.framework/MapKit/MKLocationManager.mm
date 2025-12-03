@interface MKLocationManager
+ (id)sharedLocationManager;
- (BOOL)_shouldAllowLocationUpdateInterval:(double)interval;
- (BOOL)fusionInfoEnabled;
- (BOOL)hasLocation;
- (BOOL)isAuthorizedForPreciseLocation;
- (BOOL)isLocationServicesApproved;
- (BOOL)isLocationServicesAuthorizationNeeded;
- (BOOL)isLocationServicesDenied;
- (BOOL)isLocationServicesPossiblyAvailable;
- (BOOL)isLocationServicesPossiblyAvailable:(id *)available;
- (BOOL)isLocationServicesRestricted;
- (BOOL)isLocationSimulated;
- (BOOL)isTemporaryPreciseLocationAuthorizationPromptShown;
- (BOOL)locationProviderShouldPauseLocationUpdates:(id)updates;
- (BOOL)matchInfoEnabled;
- (CLHeading)throttledHeading;
- (CLLocation)lastGoodLocation;
- (CLLocation)lastLocation;
- (CLLocation)lastProviderLocation;
- (GEOLocation)courseCorrectedLocation;
- (GEOLocation)currentLocation;
- (GEOLocation)gridSnappedCurrentLocation;
- (MKLocationManager)initWithCLLocationManager:(id)manager;
- (MKLocationProvider)locationProvider;
- (NSString)description;
- (double)currentVehicleHeading;
- (double)currentVehicleSpeed;
- (double)desiredAccuracy;
- (double)distanceFilter;
- (double)expectedGpsUpdateInterval;
- (double)timeScale;
- (double)vehicleHeadingOrCourse;
- (id)observersDescription;
- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler;
- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout;
- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout maxLocationAge:(double)age;
- (id)singleLocationUpdateWithHandler:(id)handler;
- (int64_t)activityType;
- (void)_locationProvider:(id)provider didUpdateLocation:(id)location lastKnownNavCourse:(double)course;
- (void)_reportHeadingFailureWithError:(id)error;
- (void)_reportHeadingSuccess;
- (void)_reportLocationFailureWithError:(id)error;
- (void)_reportLocationStatus:(SEL)status;
- (void)_reportLocationSuccess;
- (void)_setIsReceivingAccurateLocations:(BOOL)locations;
- (void)_setTrackingHeading:(BOOL)heading;
- (void)_setTrackingLocation:(BOOL)location;
- (void)_startLocationUpdateWithObserver:(id)observer desiredAccuracy:(double)accuracy;
- (void)_suspend;
- (void)_syncLocationProviderWithTracking;
- (void)_useDefaultCoreLocationProvider;
- (void)_waitForAccurateLocationsTimerFired:(id)fired;
- (void)applicationWillResignActive:(id)active;
- (void)dampenGPSLocationAccuracy:(id *)accuracy;
- (void)dealloc;
- (void)dismissHeadingCalibrationDisplay;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler;
- (void)listenForLocationUpdates:(id)updates;
- (void)locationProvider:(id)provider didReceiveError:(id)error;
- (void)locationProvider:(id)provider didUpdateHeading:(id)heading;
- (void)locationProvider:(id)provider didUpdateLocation:(id)location lastKnownNavCourse:(double)course;
- (void)locationProvider:(id)provider didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp;
- (void)locationProvider:(id)provider didUpdateVehicleSpeed:(double)speed timestamp:(id)timestamp;
- (void)locationProvider:(id)provider didVisit:(id)visit;
- (void)locationProviderDidChangeAuthorizationStatus:(id)status;
- (void)locationProviderDidPauseLocationUpdates:(id)updates;
- (void)locationProviderDidResumeLocationUpdates:(id)updates;
- (void)pushLocation:(id)location;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key completion:(id)completion;
- (void)requestWhenInUseAuthorization;
- (void)reset;
- (void)resetAfterResumeIfNecessary;
- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup;
- (void)setActivityType:(int64_t)type;
- (void)setContinuesWhileInactive:(BOOL)inactive;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)setEffectiveBundle:(id)bundle;
- (void)setEffectiveBundleIdentifier:(id)identifier;
- (void)setFusionInfoEnabled:(BOOL)enabled;
- (void)setHeading:(id)heading;
- (void)setHeadingOrientation:(int64_t)orientation;
- (void)setLastLocation:(id)location;
- (void)setLocationCorrector:(id)corrector;
- (void)setLocationProvider:(id)provider;
- (void)setLocationRecorder:(id)recorder;
- (void)setMatchInfoEnabled:(BOOL)enabled;
- (void)startHeadingUpdateWithObserver:(id)observer;
- (void)startLocationUpdateWithObserver:(id)observer;
- (void)startMonitoringVisitsWithObserver:(id)observer;
- (void)startVehicleHeadingUpdate;
- (void)startVehicleSpeedUpdate;
- (void)stopHeadingUpdateWithObserver:(id)observer;
- (void)stopListeningForLocationUpdates:(id)updates;
- (void)stopLocationUpdateWithObserver:(id)observer;
- (void)stopMonitoringVisitsWithObserver:(id)observer;
- (void)stopVehicleHeadingUpdate;
- (void)stopVehicleSpeedUpdate;
- (void)stopWaitingForAuthCallback;
- (void)waitForAccurateLocationWithTimeout:(double)timeout handler:(id)handler;
@end

@implementation MKLocationManager

+ (id)sharedLocationManager
{
  if (sharedLocationManager_onceToken != -1)
  {
    dispatch_once(&sharedLocationManager_onceToken, &__block_literal_global_3571);
  }

  v3 = sharedLocationManager;

  return v3;
}

void __42__MKLocationManager_sharedLocationManager__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MKLocationManager);
  v1 = sharedLocationManager;
  sharedLocationManager = v0;

  v2 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = &sharedLocationManager;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_INFO, "Shared location manager: %p", &v3, 0xCu);
  }
}

- (void)_useDefaultCoreLocationProvider
{
  v3 = objc_alloc_init(MKCoreLocationProvider);
  [(MKLocationManager *)self setLocationProvider:v3];
}

- (void)_syncLocationProviderWithTracking
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_suspended || self->_continuesWhileInactive)
  {
    if (self->_trackingLocation)
    {
      v3 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Sync with tracking: Start updating location for %@", &v8, 0xCu);
      }

      locationProvider = [(MKLocationManager *)self locationProvider];
      [locationProvider startUpdatingLocation];

      self->_locationUpdateStartTime = CFAbsoluteTimeGetCurrent();
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

      if ((isRunningTest & 1) == 0)
      {
        [(MKLocationManager *)self _setIsReceivingAccurateLocations:0];
      }
    }

    if (self->_trackingHeading && !self->_useCourseForHeading)
    {
      locationProvider2 = [(MKLocationManager *)self locationProvider];
      [locationProvider2 startUpdatingHeading];
    }
  }
}

- (MKLocationProvider)locationProvider
{
  if (self->_enabled)
  {
    v3 = self->_locationProvider;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isAuthorizedForPreciseLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  locationProvider = [(MKLocationManager *)self locationProvider];
  geo_isolate_sync();
  v4 = *(v7 + 24) == 1 && [(MKLocationManager *)self isLocationServicesApproved];

  _Block_object_dispose(&v6, 8);
  return v4;
}

uint64_t __51__MKLocationManager_isAuthorizedForPreciseLocation__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 32) + 312);
  if (!v2)
  {
    result = [*(result + 40) accuracyAuthorization];
    if (result)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    *(*(v1 + 32) + 312) = v3;
    v2 = *(*(v1 + 32) + 312);
  }

  *(*(*(v1 + 48) + 8) + 24) = v2 == 1;
  return result;
}

- (BOOL)isLocationServicesApproved
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  authorizationStatus = [locationProvider authorizationStatus];

  return (authorizationStatus - 3) < 2;
}

void __53__MKLocationManager__initializeAuthStatusIfNecessary__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3478;
  v10 = __Block_byref_object_dispose__3479;
  v11 = geo_dispatch_queue_create();
  v2 = *(a1 + 32);
  v3 = *(v2 + 336);
  v4 = v7[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MKLocationManager__initializeAuthStatusIfNecessary__block_invoke_103;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_group_async(v3, v4, v5);
  _Block_object_dispose(&v6, 8);
}

- (BOOL)isLocationServicesRestricted
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  v3 = [locationProvider authorizationStatus] == 1;

  return v3;
}

- (CLLocation)lastLocation
{
  [(NSLock *)self->_lastLocationLock lock];
  v3 = self->_lastLocation;
  [(NSLock *)self->_lastLocationLock unlock];

  return v3;
}

- (void)_reportLocationSuccess
{
  self->_lastLocationReportTime = CFAbsoluteTimeGetCurrent();
  locationError = self->_locationError;
  self->_locationError = 0;

  [(MKLocationManager *)self _reportLocationStatus:sel_locationManagerUpdatedLocation_];
}

- (double)expectedGpsUpdateInterval
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider expectedGpsUpdateInterval];
  v4 = v3;

  return v4;
}

- (BOOL)isLocationServicesAuthorizationNeeded
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  v3 = [locationProvider authorizationStatus] == 0;

  return v3;
}

- (BOOL)isLocationServicesPossiblyAvailable
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager isLocationServicesPossiblyAvailable %@", &v5, 0xCu);
  }

  if ([(MKLocationManager *)self isLocationServicesDenied])
  {
    return 0;
  }

  else
  {
    return ![(MKLocationManager *)self isLocationServicesRestricted];
  }
}

- (BOOL)isLocationServicesDenied
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  v3 = [locationProvider authorizationStatus] == 2;

  return v3;
}

- (void)resetAfterResumeIfNecessary
{
  if (!self->_continuedAfterBecomingInactive)
  {
    if (self->_suspended)
    {
      self->_applicationResumeTime = CFAbsoluteTimeGetCurrent();
      self->_suspended = 0;
      if ([(MKLocationManager *)self _isTimeToResetOnResume])
      {
        [(MKLocationManager *)self reset];
      }
    }

    [(MKLocationManager *)self _syncLocationProviderWithTracking];
  }
}

- (BOOL)isTemporaryPreciseLocationAuthorizationPromptShown
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

- (double)currentVehicleHeading
{
  lastVehicleHeadingUpdateTime = self->_lastVehicleHeadingUpdateTime;
  result = -1.0;
  if (lastVehicleHeadingUpdateTime > 0.0)
  {
    lastLocationUpdateTime = self->_lastLocationUpdateTime;
    v5 = lastLocationUpdateTime - lastVehicleHeadingUpdateTime;
    if (lastLocationUpdateTime > 0.0 && v5 < 10.0)
    {
      return self->_lastVehicleHeading;
    }
  }

  return result;
}

- (CLHeading)throttledHeading
{
  throttledHeading = self->_throttledHeading;
  if (throttledHeading)
  {
    heading = self->_heading;
    if (!heading)
    {
LABEL_10:
      throttledHeading = throttledHeading;
      goto LABEL_12;
    }

    if (heading != throttledHeading)
    {
      timestamp = [(CLHeading *)throttledHeading timestamp];
      timestamp2 = [(CLHeading *)self->_heading timestamp];
      v7 = [timestamp compare:timestamp2];

      if (v7 != -1)
      {
        [(CLHeading *)self->_throttledHeading headingAccuracy];
        v9 = v8;
        [(CLHeading *)self->_heading headingAccuracy];
        v11 = vabdd_f64(v9, v10);
        [(CLHeading *)self->_throttledHeading heading];
        v13 = v12;
        [(CLHeading *)self->_heading heading];
        v15 = vabdd_f64(v13, v14);
        if (v11 > 2.0 || v15 > 2.0)
        {
          throttledHeading = self->_throttledHeading;
          goto LABEL_10;
        }
      }
    }

    throttledHeading = 0;
  }

LABEL_12:

  return throttledHeading;
}

- (BOOL)hasLocation
{
  [(NSLock *)self->_lastLocationLock lock];
  lastLocation = self->_lastLocation;
  [(NSLock *)self->_lastLocationLock unlock];
  return lastLocation != 0;
}

- (GEOLocation)currentLocation
{
  if ([(MKLocationManager *)self isLocationServicesApproved]&& [(MKLocationManager *)self hasLocation])
  {
    v3 = objc_alloc(MEMORY[0x1E69A1E70]);
    lastLocation = [(MKLocationManager *)self lastLocation];
    v5 = [v3 initWithCLLocation:lastLocation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reportHeadingSuccess
{
  allObjects = [(NSHashTable *)self->_headingObservers allObjects];
  [allObjects makeObjectsPerformSelector:sel_locationManagerUpdatedHeading_ withObject:self];
}

- (void)_suspend
{
  v7 = *MEMORY[0x1E69E9840];
  self->_applicationSuspendTime = CFAbsoluteTimeGetCurrent();
  self->_suspended = 1;
  if (self->_trackingLocation)
  {
    v3 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Suspend: Stop updating location for %@", &v5, 0xCu);
    }

    [(MKLocationProvider *)self->_locationProvider stopUpdatingLocation];
  }

  if (self->_trackingHeading)
  {
    [(MKLocationProvider *)self->_locationProvider stopUpdatingHeading];
    heading = self->_heading;
    self->_heading = 0;

    self->_headingUpdateTime = 0.0;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  locationProvider = self->_locationProvider;
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p, provider: %p, isShared:%@>", v4, self, locationProvider, v6];

  return v7;
}

- (double)vehicleHeadingOrCourse
{
  [(MKLocationManager *)self currentVehicleHeading];
  v4 = v3;
  if (v3 < 0.0)
  {
    lastLocation = [(MKLocationManager *)self lastLocation];
    if (lastLocation && !-[MKLocationManager isLastLocationStale](self, "isLastLocationStale") && [lastLocation _navigation_hasValidCourse])
    {
      [lastLocation course];
      v4 = v6;
    }
  }

  return v4;
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler
{
  handlerCopy = handler;
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider fetchPlaceInferencesWithFidelityPolicy:policy handler:handlerCopy];
}

- (void)stopMonitoringVisitsWithObserver:(id)observer
{
  v9 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (self->_monitoringVisits)
  {
    [(NSLock *)self->_visitObserversLock lock];
    if ([(NSHashTable *)self->_visitObservers containsObject:observerCopy])
    {
      [(NSHashTable *)self->_visitObservers removeObject:observerCopy];
      v5 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Stopping visit monitoring for %@", &v7, 0xCu);
      }

      if (![(NSHashTable *)self->_visitObservers count])
      {
        self->_monitoringVisits = 0;
        locationProvider = [(MKLocationManager *)self locationProvider];
        [locationProvider stopMonitoringVisits];
      }
    }

    [(NSLock *)self->_visitObserversLock unlock];
  }
}

- (void)startMonitoringVisitsWithObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [(NSLock *)self->_visitObserversLock lock];
  visitObservers = self->_visitObservers;
  if (!visitObservers)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
    v7 = self->_visitObservers;
    self->_visitObservers = v6;

    visitObservers = self->_visitObservers;
  }

  if (![(NSHashTable *)visitObservers containsObject:observerCopy])
  {
    if (objc_opt_respondsToSelector())
    {
      [(NSHashTable *)self->_visitObservers addObject:observerCopy];
      self->_monitoringVisits = 1;
      locationProvider = [(MKLocationManager *)self locationProvider];
      [locationProvider startMonitoringVisits];

      v9 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 138412290;
        *&v14[4] = self;
        v10 = "Starting to monitor visits for %@";
        v11 = v9;
        v12 = OS_LOG_TYPE_INFO;
        v13 = 12;
LABEL_9:
        _os_log_impl(&dword_1A2EA0000, v11, v12, v10, v14, v13);
      }
    }

    else
    {
      v9 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v10 = "Tried to start monitoring visits with an incompatible observer. This is a bug.";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 2;
        goto LABEL_9;
      }
    }
  }

  [(NSLock *)self->_visitObserversLock unlock];
}

- (void)stopVehicleHeadingUpdate
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider stopUpdatingVehicleHeading];
}

- (void)startVehicleHeadingUpdate
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider startUpdatingVehicleHeading];
}

- (void)stopVehicleSpeedUpdate
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider stopUpdatingVehicleSpeed];
}

- (void)startVehicleSpeedUpdate
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider startUpdatingVehicleSpeed];
}

- (void)stopHeadingUpdateWithObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSHashTable *)self->_headingObservers containsObject:?])
  {
    [(NSHashTable *)self->_headingObservers removeObject:observerCopy];
    if (![(NSHashTable *)self->_headingObservers count])
    {
      [(MKLocationManager *)self _setTrackingHeading:0];
    }
  }
}

- (void)startHeadingUpdateWithObserver:(id)observer
{
  observerCopy = observer;
  headingObservers = self->_headingObservers;
  v8 = observerCopy;
  if (!headingObservers)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
    v7 = self->_headingObservers;
    self->_headingObservers = v6;

    observerCopy = v8;
    headingObservers = self->_headingObservers;
  }

  if (![(NSHashTable *)headingObservers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_headingObservers addObject:v8];
    [(MKLocationManager *)self _setTrackingHeading:1];
  }
}

- (void)_setTrackingHeading:(BOOL)heading
{
  if (self->_trackingHeading != heading)
  {
    if (heading)
    {
      if (!self->_useCourseForHeading)
      {
        locationProvider = [(MKLocationManager *)self locationProvider];
        [locationProvider startUpdatingHeading];
      }

      v5 = 1;
    }

    else
    {
      locationProvider2 = [(MKLocationManager *)self locationProvider];
      [locationProvider2 stopUpdatingHeading];

      heading = self->_heading;
      self->_heading = 0;

      v5 = 0;
      self->_headingUpdateTime = 0.0;
    }

    self->_trackingHeading = v5;
  }
}

- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout maxLocationAge:(double)age
{
  handlerCopy = handler;
  v11 = [[MKLocationManagerSingleUpdater alloc] initWithLocationManager:self desiredAccuracy:handlerCopy handler:accuracy timeout:timeout maxLocationAge:age];

  return v11;
}

- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout
{
  handlerCopy = handler;
  v9 = [[MKLocationManagerSingleUpdater alloc] initWithLocationManager:self desiredAccuracy:handlerCopy handler:accuracy timeout:timeout];

  return v9;
}

- (id)singleLocationUpdateWithDesiredAccuracy:(double)accuracy handler:(id)handler
{
  handlerCopy = handler;
  v7 = [[MKLocationManagerSingleUpdater alloc] initWithLocationManager:self desiredAccuracy:handlerCopy handler:accuracy];

  return v7;
}

- (id)singleLocationUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MKLocationManagerSingleUpdater alloc] initWithLocationManager:self handler:handlerCopy];

  return v5;
}

- (void)_waitForAccurateLocationsTimerFired:(id)fired
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134218240;
    selfCopy = self;
    v7 = 2048;
    v8 = 0x4024000000000000;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "No accurate locations received for %p after %f seconds", &v5, 0x16u);
  }

  [(MKLocationManager *)self _setIsReceivingAccurateLocations:1];
}

- (void)waitForAccurateLocationWithTimeout:(double)timeout handler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy && self->_trackingLocation)
  {
    if (self->_isReceivingAccurateLocations)
    {
      (*(handlerCopy + 2))(handlerCopy);
    }

    else
    {
      v8 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v23 = 134217984;
        timeoutCopy = timeout;
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "waitForAccurateLocationWithTimeout:handler: waiting %#.2fs for an accurate location", &v23, 0xCu);
      }

      waitForAccurateLocationsHandlers = self->_waitForAccurateLocationsHandlers;
      if (!waitForAccurateLocationsHandlers)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = self->_waitForAccurateLocationsHandlers;
        self->_waitForAccurateLocationsHandlers = v10;

        v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__waitForAccurateLocationsTimerFired_ selector:0 userInfo:0 repeats:10.0];
        waitForAccurateLocationsTimer = self->_waitForAccurateLocationsTimer;
        self->_waitForAccurateLocationsTimer = v12;

        waitForAccurateLocationsHandlers = self->_waitForAccurateLocationsHandlers;
      }

      v14 = [v7 copy];
      [(NSMutableArray *)waitForAccurateLocationsHandlers addObject:v14];

      lastGoodLocation = [(MKLocationManager *)self lastGoodLocation];
      v16 = lastGoodLocation;
      if (lastGoodLocation)
      {
        timestamp = [lastGoodLocation timestamp];
        [timestamp timeIntervalSinceNow];
        v19 = v18;

        if (v19 <= 0.0 && v19 >= -10.0)
        {
          [v16 horizontalAccuracy];
          if (v20 <= 65.0)
          {
            v21 = MKGetMKLocationManagerLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              [v16 horizontalAccuracy];
              v23 = 134218240;
              timeoutCopy = -v19;
              v25 = 2048;
              v26 = v22;
              _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_DEBUG, "waitForAccurateLocationWithTimeout:handler: lastGoodLocation is good enough to consider accurate, short-circuiting wait for new location (%#.1lfs old, %#.1lfm accuracy)", &v23, 0x16u);
            }

            [(MKLocationManager *)self _setIsReceivingAccurateLocations:1];
          }
        }
      }
    }
  }
}

- (id)observersDescription
{
  v21 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_locationObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"%@: %p \n", v12, v9, v16];
        [string appendString:v13];
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [string copy];

  return v14;
}

- (void)stopLocationUpdateWithObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [(NSLock *)self->_observersLock lock];
  if ([(NSHashTable *)self->_locationObservers containsObject:observerCopy])
  {
    v5 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138478083;
      selfCopy2 = v7;
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Removing location observer %{private}@ for %@", &v11, 0x16u);
    }

    [(NSHashTable *)self->_locationObservers removeObject:observerCopy];
    v8 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      observersDescription = [(MKLocationManager *)self observersDescription];
      v11 = 138412547;
      selfCopy2 = self;
      v13 = 2113;
      selfCopy = observersDescription;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "Remaining location observers for %@: \n%{private}@", &v11, 0x16u);
    }

    v10 = [(NSHashTable *)self->_locationObservers count];
    [(NSLock *)self->_observersLock unlock];
    if (!v10)
    {
      [(MKLocationManager *)self _setTrackingLocation:0];
    }
  }

  else
  {
    [(NSLock *)self->_observersLock unlock];
  }
}

- (void)startLocationUpdateWithObserver:(id)observer
{
  v8 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager %@ startLocationUpdateWithObserver", &v6, 0xCu);
  }

  [(MKLocationManager *)self _startLocationUpdateWithObserver:observerCopy desiredAccuracy:*MEMORY[0x1E6985C78]];
}

- (void)_startLocationUpdateWithObserver:(id)observer desiredAccuracy:(double)accuracy
{
  v31 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [(NSLock *)self->_observersLock lock];
  locationObservers = self->_locationObservers;
  if (locationObservers)
  {
    v8 = [(NSHashTable *)locationObservers containsObject:observerCopy];
    v9 = self->_locationObservers;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
  v11 = self->_locationObservers;
  self->_locationObservers = v10;

  v9 = self->_locationObservers;
LABEL_6:
  locationProvider2 = [(NSHashTable *)v9 count];
  if (![(NSHashTable *)self->_locationObservers containsObject:observerCopy])
  {
    v13 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138478083;
      selfCopy2 = v15;
      v29 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Adding location observer %{private}@ for %@", buf, 0x16u);
    }

    [(NSHashTable *)self->_locationObservers addObject:observerCopy];
    v16 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      observersDescription = [(MKLocationManager *)self observersDescription];
      *buf = 138412547;
      selfCopy2 = self;
      v29 = 2113;
      selfCopy = observersDescription;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "All location observers for %@: \n%{private}@", buf, 0x16u);
    }
  }

  [(NSLock *)self->_observersLock unlock];
  if (!self->_hasCustomDesiredAccuracy)
  {
    locationProvider = [(MKLocationManager *)self locationProvider];
    v19 = locationProvider;
    if (locationProvider2)
    {
      [locationProvider desiredAccuracy];
      v21 = v20;
      accuracyCopy = accuracy;
      if (v20 < accuracy)
      {
        locationProvider2 = [(MKLocationManager *)self locationProvider];
        [locationProvider2 desiredAccuracy];
        accuracyCopy = v23;
      }

      locationProvider3 = [(MKLocationManager *)self locationProvider];
      [locationProvider3 setDesiredAccuracy:accuracyCopy];

      if (v21 < accuracy)
      {
      }
    }

    else
    {
      [locationProvider setDesiredAccuracy:accuracy];
    }
  }

  if (!v8)
  {
    if (self->_trackingLocation)
    {
      if ([(MKLocationManager *)self hasLocation]&& !self->_isLastLocationStale)
      {
        [observerCopy locationManagerUpdatedLocation:self];
      }
    }

    else
    {
      [(MKLocationManager *)self _setTrackingLocation:1];
    }
  }

  [(MKLocationManager *)self _initializeAuthStatusIfNecessary];
  authStatusInitializationGroup = self->_authStatusInitializationGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MKLocationManager__startLocationUpdateWithObserver_desiredAccuracy___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_group_notify(authStatusInitializationGroup, MEMORY[0x1E69E96A0], block);
}

void __70__MKLocationManager__startLocationUpdateWithObserver_desiredAccuracy___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 isLocationServicesPossiblyAvailable:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Location Services not available for %@: %@", buf, 0x16u);
    }

    [*(a1 + 32) _reportLocationFailureWithError:v4];
  }
}

void __53__MKLocationManager__initializeAuthStatusIfNecessary__block_invoke_103(uint64_t a1)
{
  [*(a1 + 32) isLocationServicesApproved];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)stopListeningForLocationUpdates:(id)updates
{
  updatesCopy = updates;
  [(NSLock *)self->_observersLock lock];
  locationListeners = self->_locationListeners;
  if (locationListeners && [(NSHashTable *)locationListeners containsObject:updatesCopy])
  {
    [(NSHashTable *)self->_locationListeners removeObject:updatesCopy];
  }

  [(NSLock *)self->_observersLock unlock];
}

- (void)listenForLocationUpdates:(id)updates
{
  updatesCopy = updates;
  [(NSLock *)self->_observersLock lock];
  locationListeners = self->_locationListeners;
  if (!locationListeners)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
    v6 = self->_locationListeners;
    self->_locationListeners = v5;

    locationListeners = self->_locationListeners;
  }

  if (![(NSHashTable *)locationListeners containsObject:updatesCopy])
  {
    [(NSHashTable *)self->_locationListeners addObject:updatesCopy];
  }

  [(NSLock *)self->_observersLock unlock];
}

- (void)locationProvider:(id)provider didVisit:(id)visit
{
  v34 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    hasArrivalDate = [visitCopy hasArrivalDate];
    if (hasArrivalDate)
    {
      arrivalDate = [visitCopy arrivalDate];
    }

    else
    {
      arrivalDate = @"No Arrival Date";
    }

    hasDepartureDate = [visitCopy hasDepartureDate];
    if (hasDepartureDate)
    {
      departureDate = [visitCopy departureDate];
    }

    else
    {
      departureDate = @"No Departure Date";
    }

    [visitCopy coordinate];
    v12 = v11;
    [visitCopy coordinate];
    *buf = 138478595;
    v27 = arrivalDate;
    v28 = 2113;
    v29 = departureDate;
    v30 = 2049;
    v31 = v12;
    v32 = 2049;
    v33 = v13;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "Got a visit: %{private}@ | %{private}@ | Lat: %{private}f Long: %{private}f", buf, 0x2Au);
    if (hasDepartureDate)
    {
    }

    if (hasArrivalDate)
    {
    }
  }

  [(NSLock *)self->_visitObserversLock lock];
  allObjects = [(NSHashTable *)self->_visitObservers allObjects];
  v15 = [allObjects copy];

  [(NSLock *)self->_visitObserversLock unlock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * i) locationManager:self didVisit:{visitCopy, v21}];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

- (void)locationProvider:(id)provider didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp
{
  v26 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  self->_lastVehicleHeading = heading;
  self->_lastVehicleHeadingUpdateTime = MEMORY[0x1A58E85D0]();
  v8 = MKGetVehicleSensorLog_3489();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218243;
    headingCopy = heading;
    v24 = 2113;
    v25 = timestampCopy;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "Vehicle heading: %g | Timestamp: %{private}@\n", buf, 0x16u);
  }

  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [locationRecorder recordVehicleHeading:timestampCopy timestamp:heading];

  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v11 = [allObjects copy];

  [(NSLock *)self->_observersLock unlock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) locationManager:self didUpdateVehicleHeading:timestampCopy timestamp:{heading, v17}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)locationProvider:(id)provider didUpdateVehicleSpeed:(double)speed timestamp:(id)timestamp
{
  v26 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  self->_lastVehicleSpeed = speed;
  self->_lastVehicleSpeedUpdateTime = MEMORY[0x1A58E85D0]();
  v8 = MKGetVehicleSensorLog_3489();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218243;
    speedCopy = speed;
    v24 = 2113;
    v25 = timestampCopy;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "Vehicle speed: %g | Timestamp: %{private}@\n", buf, 0x16u);
  }

  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [locationRecorder recordVehicleSpeed:timestampCopy timestamp:speed];

  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v11 = [allObjects copy];

  [(NSLock *)self->_observersLock unlock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) locationManager:self didUpdateVehicleSpeed:timestampCopy timestamp:{speed, v17}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)locationProviderDidResumeLocationUpdates:(id)updates
{
  v18 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = updatesCopy;
    v16 = 2112;
    selfCopy = self;
    v6 = v13;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Location provider [%@](%p) for %@ did resume location updates", &v12, 0x20u);
  }

  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [locationRecorder recordLocationUpdateResume];

  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v9 = [allObjects copy];

  allObjects2 = [(NSHashTable *)self->_locationListeners allObjects];
  v11 = [allObjects2 copy];

  [(NSLock *)self->_observersLock unlock];
  [v9 makeObjectsPerformSelector:sel_locationManagerDidResumeLocationUpdates_ withObject:self];
  [v11 makeObjectsPerformSelector:sel_locationManagerDidResumeLocationUpdates_ withObject:self];
}

- (void)locationProviderDidPauseLocationUpdates:(id)updates
{
  v18 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = updatesCopy;
    v16 = 2112;
    selfCopy = self;
    v6 = v13;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Location provider [%@](%p) for %@ did pause location updates", &v12, 0x20u);
  }

  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [locationRecorder recordLocationUpdatePause];

  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v9 = [allObjects copy];

  allObjects2 = [(NSHashTable *)self->_locationListeners allObjects];
  v11 = [allObjects2 copy];

  [(NSLock *)self->_observersLock unlock];
  [v9 makeObjectsPerformSelector:sel_locationManagerDidPauseLocationUpdates_ withObject:self];
  [v11 makeObjectsPerformSelector:sel_locationManagerDidPauseLocationUpdates_ withObject:self];
}

- (BOOL)locationProviderShouldPauseLocationUpdates:(id)updates
{
  v39 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v34 = objc_opt_class();
    v35 = 2048;
    v36 = updatesCopy;
    v37 = 2112;
    selfCopy = self;
    v6 = v34;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Location provider [%@](%p) for %@ should pause location updates", buf, 0x20u);
  }

  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v8 = [allObjects copy];

  allObjects2 = [(NSHashTable *)self->_locationListeners allObjects];
  v10 = [allObjects2 copy];

  [(NSLock *)self->_observersLock unlock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (![*(*(&v27 + 1) + 8 * i) locationManagerShouldPauseLocationUpdates:self])
        {
          v21 = 0;
          v16 = v11;
          goto LABEL_23;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (![*(*(&v23 + 1) + 8 * j) locationManagerShouldPauseLocationUpdates:{self, v23}])
        {
          v21 = 0;
          goto LABEL_23;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v21 = 1;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_23:

  return v21;
}

- (void)locationProviderDidChangeAuthorizationStatus:(id)status
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = statusCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    v6 = *&buf[4];
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Location provider [%@](%p) for %@ did change auth status", buf, 0x20u);
  }

  GEOOnce();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(selfCopy) = 0;
  v7 = statusCopy;
  geo_isolate_sync();
  if (*(*&buf[8] + 24) == 1)
  {
    [(NSLock *)self->_lastLocationLock lock];
    lastLocation = self->_lastLocation;
    self->_lastLocation = 0;

    lastGoodLocation = self->_lastGoodLocation;
    self->_lastGoodLocation = 0;

    [(NSLock *)self->_lastLocationLock unlock];
  }

  if ([(MKLocationManager *)self isLocationServicesAvailable])
  {
    [(MKLocationManager *)self _syncLocationProviderWithTracking];
  }

  else
  {
    [(MKLocationManager *)self reset];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [MEMORY[0x1E696AD80] notificationWithName:MKLocationManagerApprovalDidChangeNotification object:0];
  [defaultCenter postNotification:v11];

  _Block_object_dispose(buf, 8);
}

uint64_t __66__MKLocationManager_locationProviderDidChangeAuthorizationStatus___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) accuracyAuthorization];
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3 != *(*(a1 + 40) + 312);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 40) + 312) = v3;
    *(*(a1 + 40) + 316) = 0;
  }

  return result;
}

- (void)locationProvider:(id)provider didUpdateHeading:(id)heading
{
  headingCopy = heading;
  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [headingCopy trueHeading];
  v7 = v6;
  [headingCopy magneticHeading];
  v9 = v8;
  [headingCopy headingAccuracy];
  v11 = v10;
  timestamp = [headingCopy timestamp];
  [locationRecorder recordCompassHeading:timestamp magneticHeading:v7 accuracy:v9 timestamp:v11];

  [(MKLocationManager *)self setHeading:headingCopy];
}

- (void)locationProvider:(id)provider didReceiveError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  errorCopy = error;
  v8 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138413058;
    v12 = objc_opt_class();
    v13 = 2048;
    v14 = providerCopy;
    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = errorCopy;
    v9 = v12;
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "Location provider [%@](%p) for %@ did receive error: %@", &v11, 0x2Au);
  }

  self->_isLastLocationStale = 1;
  locationRecorder = [(MKLocationManager *)self locationRecorder];
  [locationRecorder recordError:errorCopy];

  [(MKLocationManager *)self _reportLocationFailureWithError:errorCopy];
}

- (void)_setIsReceivingAccurateLocations:(BOOL)locations
{
  locationsCopy = locations;
  v20 = *MEMORY[0x1E69E9840];
  if (GEOConfigGetBOOL())
  {
    if (!self->_isReceivingAccurateLocations)
    {
      v5 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Now assuming locations are accurate", buf, 2u);
      }
    }

    locationsCopy = 1;
  }

  if (self->_isReceivingAccurateLocations != locationsCopy)
  {
    self->_isReceivingAccurateLocations = locationsCopy;
    [(NSTimer *)self->_waitForAccurateLocationsTimer invalidate];
    waitForAccurateLocationsTimer = self->_waitForAccurateLocationsTimer;
    self->_waitForAccurateLocationsTimer = 0;

    if (locationsCopy)
    {
      v7 = self->_waitForAccurateLocationsHandlers;
      waitForAccurateLocationsHandlers = self->_waitForAccurateLocationsHandlers;
      self->_waitForAccurateLocationsHandlers = 0;

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = v7;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

            (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
            ++v13;
          }

          while (v11 != v13);
          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_locationProvider:(id)provider didUpdateLocation:(id)location lastKnownNavCourse:(double)course
{
  v56 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  timestamp = [locationCopy timestamp];
  v9 = MEMORY[0x1A58E85D0]();

  if (![(MKLocationManager *)self _shouldAllowLocationUpdateInterval:v9])
  {
    locationRecorder = [(MKLocationManager *)self locationRecorder];
    [locationRecorder recordLocation:locationCopy correctedLocation:0];

    v16 = locationCopy;
    goto LABEL_48;
  }

  if (locationCopy)
  {
    [locationCopy clientLocation];
    v10 = *(&v50 + 4);
    [locationCopy clientLocation];
    v11 = *(&v45 + 4);
    if (*(&v45 + 4) > 0.0 && *(&v45 + 4) < 20.0)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0.0;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    memset(&v49[32], 0, 112);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(v49, 0, 28);
    v10 = 0.0;
  }

  [locationCopy speed];
  if (v17 > 3.0)
  {
    goto LABEL_12;
  }

  _navigation_hasMatch = [locationCopy _navigation_hasMatch];
  v14 = 0;
  v13 = 1;
  if (_navigation_hasMatch && v10 >= 0.0)
  {
    if (course < 0.0)
    {
      goto LABEL_12;
    }

    [locationCopy course];
    v31 = v30;
    v32 = fmod(v10, 360.0);
    v33 = fmod(v31, 360.0);
    if (v31 < 0.0)
    {
      v33 = v33 + 360.0;
    }

    if (vabdd_f64(v32, v33) > 180.0)
    {
      if (v32 >= v33)
      {
        v33 = v33 + 360.0;
      }

      else
      {
        v32 = v32 + 360.0;
      }
    }

    v34 = vabdd_f64(v33, v32);
    [locationCopy course];
    v36 = v35;
    v37 = fmod(course, 360.0);
    if (course >= 0.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 + 360.0;
    }

    v39 = fmod(v36, 360.0);
    if (v36 < 0.0)
    {
      v39 = v39 + 360.0;
    }

    if (vabdd_f64(v38, v39) > 180.0)
    {
      if (v38 >= v39)
      {
        v39 = v39 + 360.0;
      }

      else
      {
        v38 = v38 + 360.0;
      }
    }

    if (v34 < vabdd_f64(v39, v38))
    {
LABEL_12:
      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v14 = 0;
    v13 = 1;
  }

LABEL_13:
  if (self->_navCourse != course)
  {
    self->_consecutiveOutOfCourseCount = 0;
  }

  if (v10 == -1.0)
  {
    v13 = 1;
  }

  if (v13)
  {
    courseCopy = course;
  }

  else
  {
    courseCopy = v10;
  }

  self->_navCourse = courseCopy;
  if (v10 == -1.0)
  {
    self->_consecutiveOutOfCourseCount = 1;
LABEL_22:
    self->_navCourse = course;
    goto LABEL_28;
  }

  consecutiveOutOfCourseCount = self->_consecutiveOutOfCourseCount;
  if (consecutiveOutOfCourseCount >= 1)
  {
    if (vabdd_f64(course, v10) >= 45.0)
    {
      self->_consecutiveOutOfCourseCount = consecutiveOutOfCourseCount + 1;
      if (((consecutiveOutOfCourseCount < 3) & ~v14) != 0)
      {
        goto LABEL_22;
      }
    }

    self->_consecutiveOutOfCourseCount = 0;
  }

  course = courseCopy;
LABEL_28:
  locationCorrector = self->_locationCorrector;
  if (locationCorrector)
  {
    v21 = locationCorrector[2](locationCorrector, locationCopy, course);
LABEL_33:
    v16 = v21;

    goto LABEL_34;
  }

  type = [locationCopy type];
  v16 = locationCopy;
  if (type <= 0xA)
  {
    v16 = locationCopy;
    if (((1 << type) & 0x40E) != 0)
    {
      v40 = locationCopy;
      [(MKLocationManager *)self dampenGPSLocationAccuracy:&v40];
      v21 = v40;
      goto LABEL_33;
    }
  }

LABEL_34:
  locationRecorder2 = [(MKLocationManager *)self locationRecorder];
  [locationRecorder2 recordLocation:locationCopy correctedLocation:v16];

  if (v16)
  {
    [(MKLocationManager *)self setLastLocation:v16];
    self->_lastLocationUpdateTime = CFAbsoluteTimeGetCurrent();
    *&self->_isLastLocationStale = 0;
    [(MKLocationManager *)self _reportLocationSuccess];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [v16 uuid];
      if (uuid)
      {
        v25 = MKGetPuckTrackingLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v53 = uuid;
          v54 = 2080;
          v55 = "[MKLocationManager _locationProvider:didUpdateLocation:lastKnownNavCourse:]";
          _os_log_impl(&dword_1A2EA0000, v25, OS_LOG_TYPE_INFO, "[MK] %@ Processed - in %s", buf, 0x16u);
        }
      }
    }

    if (!self->_isReceivingAccurateLocations)
    {
      if (CFAbsoluteTimeGetCurrent() - self->_locationUpdateStartTime > 10.0 || ([v16 horizontalAccuracy], v26 <= 65.0))
      {
        [(MKLocationManager *)self _setIsReceivingAccurateLocations:1];
      }
    }

    if (self->_useCourseForHeading && self->_trackingHeading)
    {
      v27 = objc_alloc(MEMORY[0x1E695FBD0]);
      [v16 course];
      v28 = [v27 initWithHeading:? accuracy:?];
      [(MKLocationManager *)self setHeading:v28];
    }
  }

LABEL_48:
}

- (void)locationProvider:(id)provider didUpdateLocation:(id)location lastKnownNavCourse:(double)course
{
  v79 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  locationCopy = location;
  v10 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    [locationCopy coordinate];
    v12 = v11;
    [locationCopy coordinate];
    v14 = v13;
    [locationCopy rawCoordinate];
    v16 = v15;
    [locationCopy rawCoordinate];
    v18 = v17;
    [locationCopy course];
    v20 = v19;
    [locationCopy horizontalAccuracy];
    v22 = v21;
    v23 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(locationCopy, "type")}];
    referenceFrame = [locationCopy referenceFrame];
    v25 = @"Not shifted";
    *buf = 138414339;
    *&buf[4] = self;
    *&buf[12] = 2049;
    if (referenceFrame == 2)
    {
      v25 = @"Shifted";
    }

    *&buf[14] = v12;
    *&buf[22] = 2049;
    *&buf[24] = v14;
    *&buf[32] = 2049;
    *&buf[34] = v16;
    *&buf[42] = 2049;
    *&buf[44] = v18;
    *&buf[52] = 2049;
    *&buf[54] = v20;
    *&buf[62] = 2049;
    *&buf[64] = v22;
    *&buf[72] = 2112;
    *&buf[74] = v23;
    *&buf[82] = 2112;
    *&buf[84] = v25;
    _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "%@ received location update: %{private}f, %{private}f (raw: %{private}f %{private}f) | %{private}0.1f° | %{private}gm, | %@ | %@", buf, 0x5Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [locationCopy uuid];
    if (uuid)
    {
      v27 = MKGetPuckTrackingLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = uuid;
        *&buf[12] = 2080;
        *&buf[14] = "[MKLocationManager locationProvider:didUpdateLocation:lastKnownNavCourse:]";
        _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_INFO, "[MK] %@ Received - in %s", buf, 0x16u);
      }
    }
  }

  else
  {
    uuid = 0;
  }

  if ([(MKLocationManager *)self isLocationServicesAvailable])
  {
    if (!locationCopy)
    {
      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695FC60] code:0 userInfo:0];
      [(MKLocationManager *)self locationProvider:providerCopy didReceiveError:v33];

      goto LABEL_42;
    }

    if (!self->_trackingLocation)
    {
      v28 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_INFO, "didUpdateLocation while not tracking location: Stop updating location for %@", buf, 0xCu);
      }

      locationProvider = [(MKLocationManager *)self locationProvider];
      [locationProvider stopUpdatingLocation];
    }

    matchInfo = [locationCopy matchInfo];
    if (matchInfo)
    {
      matchInfo2 = [locationCopy matchInfo];
      if ([matchInfo2 matchQuality] == 1)
      {
        isMatchShifted = 0;
      }

      else
      {
        matchInfo3 = [locationCopy matchInfo];
        isMatchShifted = [matchInfo3 isMatchShifted];
      }
    }

    else
    {
      isMatchShifted = 0;
    }

    if ([locationCopy referenceFrame] == 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = isMatchShifted;
    }

    locationProvider2 = [(MKLocationManager *)self locationProvider];
    if (([locationProvider2 isTracePlayer] & 1) == 0)
    {
      locationProvider3 = [(MKLocationManager *)self locationProvider];
      if ([locationProvider3 shouldShiftIfNecessary])
      {
        v38 = MEMORY[0x1E69A1E80];
        [locationCopy coordinate];
        LODWORD(v38) = [v38 isLocationShiftRequiredForCoordinate:?];

        if (v38)
        {
          if (uuid)
          {
            v39 = MKGetPuckTrackingLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = uuid;
              _os_log_impl(&dword_1A2EA0000, v39, OS_LOG_TYPE_INFO, "[MK] %@ Processing - Needs shifting", buf, 0xCu);
            }
          }

          if (v35)
          {
            v77 = 0u;
            memset(v78, 0, 28);
            v76 = 0u;
            memset(buf, 0, sizeof(buf));
            [locationCopy clientLocation];
            if (isMatchShifted)
            {
              matchInfo4 = [locationCopy matchInfo];
              [matchInfo4 matchCoordinate];
              v42 = v41;
              matchInfo5 = [locationCopy matchInfo];
              [matchInfo5 matchCoordinate];
              *&buf[4] = v42;
              *&buf[12] = v44;
            }

            DWORD1(v78[0]) = 2;
            matchInfo6 = [locationCopy matchInfo];

            v46 = objc_alloc(MEMORY[0x1E6985C40]);
            if (matchInfo6)
            {
              matchInfo7 = [locationCopy matchInfo];
              v72 = v76;
              v73 = v77;
              v74[0] = v78[0];
              *(v74 + 12) = *(v78 + 12);
              v68 = *&buf[32];
              v69 = *&buf[48];
              v70 = *&buf[64];
              v71 = *&buf[80];
              v66 = *buf;
              v67 = *&buf[16];
              v48 = [v46 initWithClientLocation:&v66 matchInfo:matchInfo7];
            }

            else
            {
              matchInfo7 = [locationCopy coarseMetaData];
              v72 = v76;
              v73 = v77;
              v74[0] = v78[0];
              *(v74 + 12) = *(v78 + 12);
              v68 = *&buf[32];
              v69 = *&buf[48];
              v70 = *&buf[64];
              v71 = *&buf[80];
              v66 = *buf;
              v67 = *&buf[16];
              v48 = [v46 initWithClientLocation:&v66 coarseMetaData:matchInfo7];
            }

            v57 = v48;

            [(MKLocationManager *)self _locationProvider:providerCopy didUpdateLocation:v57 lastKnownNavCourse:course];
          }

          else
          {
            v58 = MEMORY[0x1E69E9820];
            v59 = 3221225472;
            v60 = __75__MKLocationManager_locationProvider_didUpdateLocation_lastKnownNavCourse___block_invoke;
            v61 = &unk_1E76C6D20;
            v49 = locationCopy;
            v62 = v49;
            selfCopy = self;
            v64 = providerCopy;
            courseCopy = course;
            v50 = MEMORY[0x1A58E9F30](&v58);
            v51 = objc_alloc(MEMORY[0x1E69A1E70]);
            v52 = [v51 initWithCLLocation:{v49, v58, v59, v60, v61}];
            locationShifter = self->_locationShifter;
            if (!locationShifter)
            {
              v54 = objc_alloc_init(MEMORY[0x1E69A1E80]);
              v55 = self->_locationShifter;
              self->_locationShifter = v54;

              locationShifter = self->_locationShifter;
            }

            latLng = [v52 latLng];
            [v49 horizontalAccuracy];
            [(GEOLocationShifter *)locationShifter shiftLatLng:latLng accuracy:v50 withCompletionHandler:0 mustGoToNetworkCallback:0 errorHandler:MEMORY[0x1E69E96A0] callbackQueue:?];
          }

          goto LABEL_42;
        }

LABEL_41:
        [(MKLocationManager *)self _locationProvider:providerCopy didUpdateLocation:locationCopy lastKnownNavCourse:course];
        goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

LABEL_42:
}

void __75__MKLocationManager_locationProvider_didUpdateLocation_lastKnownNavCourse___block_invoke(uint64_t a1, double a2, double a3)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 28);
  *&v14[16] = 0u;
  *v14 = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 clientLocation];
  }

  *&v14[4] = a2;
  *&v14[12] = a3;
  DWORD1(v15[0]) = 2;
  v7 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) coordinate];
    v9 = v8;
    [*(a1 + 32) coordinate];
    *buf = 134284289;
    *&buf[4] = v9;
    *&buf[12] = 2049;
    *&buf[14] = v10;
    *&buf[22] = 2049;
    *&buf[24] = a2;
    LOWORD(v17) = 2049;
    *(&v17 + 2) = a3;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "Maps shifting location %{private}f, %{private}f => %{private}f, %{private}f", buf, 0x2Au);
  }

  v11 = objc_alloc(MEMORY[0x1E6985C40]);
  v12 = [*(a1 + 32) coarseMetaData];
  v21 = 0u;
  v22 = 0u;
  v23[0] = v15[0];
  *(v23 + 12) = *(v15 + 12);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  *buf = *v14;
  *&buf[16] = *&v14[16];
  v13 = [v11 initWithClientLocation:buf coarseMetaData:v12];

  [*(a1 + 40) _locationProvider:*(a1 + 48) didUpdateLocation:v13 lastKnownNavCourse:*(a1 + 56)];
}

- (void)pushLocation:(id)location
{
  if (location)
  {
    [(MKLocationManager *)self setLastLocation:?];
    self->_lastLocationUpdateTime = CFAbsoluteTimeGetCurrent();
    *&self->_isLastLocationStale = 256;
  }
}

- (BOOL)_shouldAllowLocationUpdateInterval:(double)interval
{
  v41 = *MEMORY[0x1E69E9840];
  lastLocation = [(MKLocationManager *)self lastLocation];
  v6 = lastLocation;
  if (!lastLocation || fabs(self->_minimumLocationUpdateInterval) < 0.000001)
  {
    goto LABEL_23;
  }

  timestamp = [lastLocation timestamp];
  v8 = MEMORY[0x1A58E85D0]();

  v9 = interval - v8;
  recentLocationUpdateIntervals = self->_recentLocationUpdateIntervals;
  if (v9 < 0.0)
  {
    [(NSMutableArray *)recentLocationUpdateIntervals removeAllObjects];
LABEL_23:
    v29 = 1;
    goto LABEL_24;
  }

  if ([(NSMutableArray *)recentLocationUpdateIntervals count]>= 5)
  {
    [(NSMutableArray *)self->_recentLocationUpdateIntervals removeObjectAtIndex:0];
  }

  v11 = self->_recentLocationUpdateIntervals;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [(NSMutableArray *)v11 addObject:v12];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = self->_recentLocationUpdateIntervals;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v17 = v14;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v35 + 1) + 8 * i) doubleValue];
        v16 = v16 + v20;
      }

      v17 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v17);
  }

  v21 = [(NSMutableArray *)self->_recentLocationUpdateIntervals count];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = self->_recentLocationUpdateIntervals;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = v16 / v21;
    v26 = *v32;
    v15 = 0.0;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v31 + 1) + 8 * j) doubleValue];
        v15 = v15 + (v28 - v25) * (v28 - v25);
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

  if (v9 + sqrt(v15 / [(NSMutableArray *)self->_recentLocationUpdateIntervals count]) + 0.1 >= self->_minimumLocationUpdateInterval)
  {
    goto LABEL_23;
  }

  [(NSMutableArray *)self->_recentLocationUpdateIntervals removeLastObject];
  v29 = 0;
LABEL_24:

  return v29;
}

- (void)dismissHeadingCalibrationDisplay
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider dismissHeadingCalibrationDisplay];
}

- (void)dampenGPSLocationAccuracy:(id *)accuracy
{
  if (accuracy)
  {
    v5 = *accuracy;
    Current = CFAbsoluteTimeGetCurrent();
    lastLocation = [(MKLocationManager *)self lastLocation];
    type = [lastLocation type];
    if (type <= 0xA && ((1 << type) & 0x40E) != 0)
    {
      [v5 horizontalAccuracy];
      v10 = v9;
      [lastLocation horizontalAccuracy];
      if (vabdd_f64(v10, v11) >= 0.000001 && v10 > v11)
      {
        if (Current - self->_locationAccuracyUpdateTime >= 3.0)
        {
          self->_locationAccuracyUpdateTime = Current;
        }

        else
        {
          v27 = 0u;
          memset(v28, 0, 28);
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v20 = 0u;
          if (v5)
          {
            [v5 clientLocation];
          }

          [lastLocation horizontalAccuracy];
          *(&v21 + 4) = v13;
          v14 = objc_alloc(MEMORY[0x1E6985C40]);
          coarseMetaData = [v5 coarseMetaData];
          v18[6] = v26;
          v18[7] = v27;
          v19[0] = v28[0];
          *(v19 + 12) = *(v28 + 12);
          v18[2] = v22;
          v18[3] = v23;
          v18[4] = v24;
          v18[5] = v25;
          v18[0] = v20;
          v18[1] = v21;
          v16 = [v14 initWithClientLocation:v18 coarseMetaData:coarseMetaData];

          v5 = v16;
        }
      }
    }

    v17 = v5;
    *accuracy = v5;
  }
}

- (double)timeScale
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider timeScale];
  v4 = v3;

  return v4;
}

- (void)setActivityType:(int64_t)type
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setActivityType:type];
}

- (int64_t)activityType
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  activityType = [locationProvider activityType];

  return activityType;
}

- (void)setFusionInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setFusionInfoEnabled:enabledCopy];
}

- (BOOL)fusionInfoEnabled
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  fusionInfoEnabled = [locationProvider fusionInfoEnabled];

  return fusionInfoEnabled;
}

- (void)setMatchInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setMatchInfoEnabled:enabledCopy];
}

- (BOOL)matchInfoEnabled
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  matchInfoEnabled = [locationProvider matchInfoEnabled];

  return matchInfoEnabled;
}

- (void)setDistanceFilter:(double)filter
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setDistanceFilter:filter];
}

- (double)distanceFilter
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider distanceFilter];
  v4 = v3;

  return v4;
}

- (void)setDesiredAccuracy:(double)accuracy
{
  self->_hasCustomDesiredAccuracy = 1;
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setDesiredAccuracy:accuracy];
}

- (double)desiredAccuracy
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider desiredAccuracy];
  v4 = v3;

  return v4;
}

- (BOOL)isLocationServicesPossiblyAvailable:(id *)available
{
  if (![(MKLocationManager *)self isLocationServicesPossiblyAvailable])
  {
    v5 = MKLocationErrorDomain;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __57__MKLocationManager_isLocationServicesPossiblyAvailable___block_invoke;
    v17 = &unk_1E76CD810;
    v9 = dictionary;
    v18 = v9;
    v10 = v8;
    v19 = v10;
    v11 = MEMORY[0x1A58E9F30](&v14);
    if ([(MKLocationManager *)self isLocationServicesEnabled:v14])
    {
      if ([(MKLocationManager *)self isLocationServicesRestricted])
      {
        v12 = 1;
      }

      else
      {
        if (![(MKLocationManager *)self isLocationServicesDenied])
        {
          v12 = -1;
          if (!available)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 2;
    }

    v11[2](v11);
    if (!available)
    {
LABEL_8:

      return [(MKLocationManager *)self isLocationServicesPossiblyAvailable];
    }

LABEL_7:
    *available = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:v12 userInfo:v9];
    goto LABEL_8;
  }

  return [(MKLocationManager *)self isLocationServicesPossiblyAvailable];
}

void __57__MKLocationManager_isLocationServicesPossiblyAvailable___block_invoke(uint64_t a1)
{
  v2 = _MKLocalizedStringFromThisBundle(@"Location Services Off");
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v3 = MEMORY[0x1E696AEC0];
  v5 = _MKLocalizedStringFromThisBundle(@"Turn on Location Services in Settings > Privacy & Security to allow %@ to determine your current location");
  v4 = [v3 stringWithFormat:v5, *(a1 + 40)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A598]];
}

- (void)_setTrackingLocation:(BOOL)location
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_trackingLocation != location)
  {
    if (location)
    {
      self->_trackingLocation = 1;
      v4 = +[MKApplicationStateMonitor sharedInstance];
      isActive = [v4 isActive];

      if ((isActive & 1) != 0 || self->_continuesWhileInactive)
      {
        v6 = MKGetMKLocationManagerLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Set tracking location to YES: Start updating location for %@", &v11, 0xCu);
        }

        v7 = MKGetMKLocationManagerLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager startUpdatingLocation", &v11, 2u);
        }

        locationProvider = [(MKLocationManager *)self locationProvider];
        [locationProvider startUpdatingLocation];

        self->_locationUpdateStartTime = CFAbsoluteTimeGetCurrent();
        [(MKLocationManager *)self _setIsReceivingAccurateLocations:0];
      }

      else
      {
        v10 = MKGetMKLocationManagerLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "Set tracking location to YES: %@ is inactive", &v11, 0xCu);
        }
      }
    }

    else
    {
      v9 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "Set tracking location to NO: Stop updating location for %@", &v11, 0xCu);
      }

      [(MKLocationProvider *)self->_locationProvider stopUpdatingLocation];
      self->_trackingLocation = 0;
    }
  }
}

- (void)reset
{
  if (self->_trackingLocation)
  {
    self->_isLastLocationStale = 0;
    [(MKLocationManager *)self setLastLocation:0];

    [(MKLocationManager *)self _reportLocationReset];
  }
}

- (void)_reportHeadingFailureWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_headingObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v9++) locationManagerFailedToUpdateHeading:self withError:errorCopy];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_reportLocationFailureWithError:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = MKGetMKLocationManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromBOOL();
    v8 = NSStringFromBOOL();
    *buf = 138413058;
    v34 = errorCopy;
    v35 = 2112;
    selfCopy = self;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Location error: %@ for %@ while suspended: %@ while tracking location: %@", buf, 0x2Au);
  }

  objc_storeStrong(&self->_locationError, error);
  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v10 = [allObjects copy];

  allObjects2 = [(NSHashTable *)self->_locationListeners allObjects];
  v12 = [allObjects2 copy];

  [(NSLock *)self->_observersLock unlock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * v17++) locationManagerFailedToUpdateLocation:self withError:errorCopy];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22++) locationManagerFailedToUpdateLocation:self withError:{errorCopy, v23}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)_reportLocationStatus:(SEL)status
{
  [(NSLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_locationObservers allObjects];
  v8 = [allObjects copy];

  allObjects2 = [(NSHashTable *)self->_locationListeners allObjects];
  v7 = [allObjects2 copy];

  [(NSLock *)self->_observersLock unlock];
  [v8 makeObjectsPerformSelector:status withObject:self];
  [v7 makeObjectsPerformSelector:status withObject:self];
  if (![v8 count])
  {
    [(MKLocationManager *)self _setTrackingLocation:0];
  }
}

- (void)applicationWillResignActive:(id)active
{
  if ([(MKLocationManager *)self continuesWhileInactive])
  {
    self->_continuedAfterBecomingInactive = 1;
  }

  else
  {
    self->_continuedAfterBecomingInactive = 0;

    [(MKLocationManager *)self _suspend];
  }
}

- (void)setContinuesWhileInactive:(BOOL)inactive
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_continuesWhileInactive != inactive)
  {
    inactiveCopy = inactive;
    self->_continuesWhileInactive = inactive;
    v5 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "no";
      if (inactiveCopy)
      {
        v6 = "yes";
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "setContinuesWhileInactive: %s", &v11, 0xCu);
    }

    v7 = +[MKApplicationStateMonitor sharedInstance];
    isActive = [v7 isActive];

    if ((isActive & 1) == 0)
    {
      v9 = MKGetMKLocationManagerLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (inactiveCopy)
      {
        if (v10)
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "setContinuesWhileInactive:1, currently inactive, will sync location provider with tracking", &v11, 2u);
        }

        [(MKLocationManager *)self _syncLocationProviderWithTracking];
      }

      else
      {
        if (v10)
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "setContinuesWhileInactive:0, currently inactive, will suspend if tracking", &v11, 2u);
        }

        self->_continuedAfterBecomingInactive = 0;
        [(MKLocationManager *)self _suspend];
      }
    }
  }
}

- (void)setHeading:(id)heading
{
  headingCopy = heading;
  if (self->_heading != headingCopy)
  {
    v6 = CACurrentMediaTime();
    v7 = v6 - self->_headingUpdateTime;
    if (v7 < 0.2)
    {
      [(MKLocationManager *)self setThrottledHeading:headingCopy];
      if (!self->_headingThrottlingTimer)
      {
        objc_initWeak(&location, self);
        v9 = MEMORY[0x1E695DFF0];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __32__MKLocationManager_setHeading___block_invoke;
        v12[3] = &unk_1E76CD670;
        objc_copyWeak(&v13, &location);
        v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:0.2 - v7];
        headingThrottlingTimer = self->_headingThrottlingTimer;
        self->_headingThrottlingTimer = v10;

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(NSTimer *)self->_headingThrottlingTimer invalidate];
      v8 = self->_headingThrottlingTimer;
      self->_headingThrottlingTimer = 0;

      [(MKLocationManager *)self setThrottledHeading:0];
      objc_storeStrong(&self->_heading, heading);
      if (self->_heading)
      {
        [(MKLocationManager *)self _reportHeadingSuccess];
        self->_headingUpdateTime = v6;
      }
    }
  }
}

void __32__MKLocationManager_setHeading___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 throttledHeading];
  [v2 setHeading:v1];
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(MKLocationManager *)self isAuthorizedForPreciseLocation]|| ![(MKLocationManager *)self isLocationServicesApproved])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke;
    location[4] = &unk_1E76CDB38;
    location[5] = self;
    geo_isolate_sync();
    objc_initWeak(location, self);
    locationProvider = [(MKLocationManager *)self locationProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke_2;
    v9[3] = &unk_1E76C6CF8;
    objc_copyWeak(&v11, location);
    v9[4] = self;
    v10 = completionCopy;
    [locationProvider requestTemporaryPreciseLocationAuthorizationWithPurposeKey:keyCopy completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

void __91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke_3;
  v6[3] = &unk_1E76C8140;
  objc_copyWeak(&v9, (a1 + 48));
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v9);
}

void __91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    geo_isolate_sync();
    v3 = *(v9 + 24);
    v4 = +[MKMapService sharedService];
    v5 = v4;
    if (v3)
    {
      v6 = 76;
    }

    else
    {
      v6 = 77;
    }

    [v4 captureUserAction:v6 onTarget:689 eventValue:0];

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 40));
    }

    _Block_object_dispose(&v8, 8);
  }
}

void *__91__MKLocationManager_requestTemporaryPreciseLocationAuthorizationWithPurposeKey_completion___block_invoke_4(void *result)
{
  *(result[4] + 316) = 0;
  *(*(result[6] + 8) + 24) = *(result[5] + 312) == 1;
  return result;
}

- (double)currentVehicleSpeed
{
  lastVehicleSpeedUpdateTime = self->_lastVehicleSpeedUpdateTime;
  result = -1.0;
  if (lastVehicleSpeedUpdateTime > 0.0)
  {
    lastLocationUpdateTime = self->_lastLocationUpdateTime;
    v5 = lastLocationUpdateTime - lastVehicleSpeedUpdateTime;
    if (lastLocationUpdateTime > 0.0 && v5 < 10.0)
    {
      return self->_lastVehicleSpeed;
    }
  }

  return result;
}

- (void)requestWhenInUseAuthorization
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider requestWhenInUseAuthorization];
}

- (void)setHeadingOrientation:(int64_t)orientation
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider setHeadingOrientation:orientation];
}

- (GEOLocation)courseCorrectedLocation
{
  v3 = MEMORY[0x1E69A1E70];
  lastLocation = [(MKLocationManager *)self lastLocation];
  v5 = [v3 locationWithCLLocation:lastLocation course:self->_navCourse];

  return v5;
}

- (GEOLocation)gridSnappedCurrentLocation
{
  if ([(MKLocationManager *)self isLocationServicesApproved]&& [(MKLocationManager *)self hasLocation])
  {
    lastLocation = [(MKLocationManager *)self lastLocation];
    v4 = [lastLocation snapToResolution:3000.0];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    v9 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:1 isUserLocation:{v6, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setLastLocation:(id)location
{
  locationCopy = location;
  [(NSLock *)self->_lastLocationLock lock];
  if (self->_lastLocation != locationCopy)
  {
    objc_storeStrong(&self->_lastLocation, location);
    [(CLLocation *)self->_lastLocation _navigation_setGtLog:1];
  }

  [(CLLocation *)locationCopy horizontalAccuracy];
  if (v5 <= 200.0)
  {
    objc_storeStrong(&self->_lastGoodLocation, location);
  }

  [(NSLock *)self->_lastLocationLock unlock];
}

- (CLLocation)lastProviderLocation
{
  if (objc_opt_respondsToSelector())
  {
    lastLocation = [(MKLocationProvider *)self->_locationProvider lastLocation];
  }

  else
  {
    lastLocation = 0;
  }

  return lastLocation;
}

- (CLLocation)lastGoodLocation
{
  [(NSLock *)self->_lastLocationLock lock];
  v3 = self->_lastGoodLocation;
  [(NSLock *)self->_lastLocationLock unlock];

  return v3;
}

- (void)setLocationProvider:(id)provider
{
  v21 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v6 = providerCopy;
  p_locationProvider = &self->_locationProvider;
  if (self->_locationProvider != providerCopy)
  {
    if (providerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = MKGetMKLocationManagerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy2 = objc_opt_class();
        v17 = 2048;
        v18 = v6;
        v19 = 2112;
        selfCopy = self;
        v9 = selfCopy2;
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "Setting location provider [%@](%p) for %@", buf, 0x20u);
      }

      locationProvider = self->_locationProvider;
      if (self->_trackingLocation && locationProvider)
      {
        v11 = MKGetMKLocationManagerLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Replacing location provider: Stop updating location for %@", buf, 0xCu);
        }

        [(MKLocationProvider *)*p_locationProvider stopUpdatingLocation];
        locationProvider = *p_locationProvider;
      }

      if (self->_trackingHeading)
      {
        [(MKLocationProvider *)locationProvider stopUpdatingHeading];
        locationProvider = *p_locationProvider;
      }

      [(MKLocationProvider *)locationProvider setDelegate:0];
      v12 = self->_locationProvider;
      self->_locationProvider = 0;

      [(NSLock *)self->_lastLocationLock lock];
      lastLocation = self->_lastLocation;
      self->_lastLocation = 0;

      lastGoodLocation = self->_lastGoodLocation;
      self->_lastGoodLocation = 0;

      [(NSLock *)self->_lastLocationLock unlock];
      if (v6)
      {
        objc_storeStrong(&self->_locationProvider, provider);
      }

      else
      {
        [(MKLocationManager *)self _useDefaultCoreLocationProvider];
      }

      [(MKLocationProvider *)self->_locationProvider setDelegate:self];
      [(MKLocationManager *)self _syncLocationProviderWithTracking];
      geo_isolate_sync();
    }
  }
}

- (void)setEffectiveBundleIdentifier:(id)identifier
{
  [(MKLocationProvider *)self->_locationProvider setEffectiveBundleIdentifier:identifier];

  [(MKLocationManager *)self _syncLocationProviderWithTracking];
}

- (void)setEffectiveBundle:(id)bundle
{
  [(MKLocationProvider *)self->_locationProvider setEffectiveBundle:bundle];

  [(MKLocationManager *)self _syncLocationProviderWithTracking];
}

- (void)stopWaitingForAuthCallback
{
  locationProvider = [(MKLocationManager *)self locationProvider];
  [locationProvider stopWaitingForAuthCallback];
}

- (BOOL)isLocationSimulated
{
  lastLocation = [(MKLocationManager *)self lastLocation];
  sourceInformation = [lastLocation sourceInformation];
  isSimulatedBySoftware = [sourceInformation isSimulatedBySoftware];

  return isSimulatedBySoftware;
}

- (void)setLocationRecorder:(id)recorder
{
  recorderCopy = recorder;
  if (self->_locationRecorder != recorderCopy)
  {
    v6 = recorderCopy;
    objc_storeStrong(&self->_locationRecorder, recorder);
    [(MNLocationRecorder *)self->_locationRecorder recordInitialCourse:self->_navCourse];
    recorderCopy = v6;
  }
}

- (void)setLocationCorrector:(id)corrector
{
  correctorCopy = corrector;
  v5 = correctorCopy;
  if (self->_locationCorrector != correctorCopy)
  {
    v6 = [correctorCopy copy];
    locationCorrector = self->_locationCorrector;
    self->_locationCorrector = v6;

    if ([(MKLocationManager *)self hasLocation])
    {
      lastLocation = [(MKLocationManager *)self lastLocation];
      v9 = self->_locationCorrector;
      if (v9)
      {
        v10 = v9[2](v9, lastLocation, self->_navCourse);
      }

      else
      {
        if ([lastLocation isMemberOfClass:objc_opt_class()])
        {
LABEL_11:

          goto LABEL_12;
        }

        v11 = objc_alloc(MEMORY[0x1E6985C40]);
        if (lastLocation)
        {
          [lastLocation clientLocation];
        }

        else
        {
          v20 = 0u;
          memset(v21, 0, 28);
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
        }

        coarseMetaData = [lastLocation coarseMetaData];
        v10 = [v11 initWithClientLocation:&v13 coarseMetaData:coarseMetaData];
      }

      [(MKLocationManager *)self setLastLocation:v10];

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [MKApplicationStateMonitor sharedInstance:manager];
  isActive = [v6 isActive];

  if (self->_trackingLocation && ((isActive & 1) != 0 || self->_continuesWhileInactive))
  {
    v8 = MKGetMKLocationManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "didChangeActiveTileGroup: Stop then Start updating location for %@", &v11, 0xCu);
    }

    locationProvider = [(MKLocationManager *)self locationProvider];
    [locationProvider stopUpdatingLocation];

    locationProvider2 = [(MKLocationManager *)self locationProvider];
    [locationProvider2 startUpdatingLocation];
  }
}

- (void)dealloc
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager removeTileGroupObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5 = +[MKApplicationStateMonitor sharedInstance];
  [v5 stopObserving];

  [(MKLocationManager *)self setLocationRecorder:0];
  [(NSTimer *)self->_waitForAccurateLocationsTimer invalidate];
  v6.receiver = self;
  v6.super_class = MKLocationManager;
  [(MKLocationManager *)&v6 dealloc];
}

- (MKLocationManager)initWithCLLocationManager:(id)manager
{
  managerCopy = manager;
  v5 = MKGetMKLocationManagerLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Initialization", &unk_1A30FEA0E, buf, 2u);
  }

  v29.receiver = self;
  v29.super_class = MKLocationManager;
  v6 = [(MKLocationManager *)&v29 init];
  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = +[MKApplicationStateMonitor sharedInstance];
    [v8 startObserving];

    [defaultCenter addObserver:v6 selector:sel_applicationDidBecomeActive_ name:@"MKApplicationStateDidBecomeActiveNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_applicationWillResignActive_ name:@"MKApplicationStateWillResignActiveNotification" object:0];
    v6->_enabled = 1;
    v6->_initializedAuthorizationStatus.lock._os_unfair_lock_opaque = 0;
    v6->_initializedAuthorizationStatus.didRun = 0;
    v9 = dispatch_group_create();
    authStatusInitializationGroup = v6->_authStatusInitializationGroup;
    v6->_authStatusInitializationGroup = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lastLocationLock = v6->_lastLocationLock;
    v6->_lastLocationLock = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AD10]);
    observersLock = v6->_observersLock;
    v6->_observersLock = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696AD10]);
    visitObserversLock = v6->_visitObserversLock;
    v6->_visitObserversLock = v15;

    v17 = geo_isolater_create();
    accuracyAuthorizationIsolater = v6->_accuracyAuthorizationIsolater;
    v6->_accuracyAuthorizationIsolater = v17;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier length])
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      v6->_continuesWhileInactive = [&unk_1F1611F58 containsObject:bundleIdentifier2];
    }

    else
    {
      v6->_continuesWhileInactive = 0;
    }

    v6->_consecutiveOutOfCourseCount = 0;
    v6->_navCourse = -1.0;
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    recentLocationUpdateIntervals = v6->_recentLocationUpdateIntervals;
    v6->_recentLocationUpdateIntervals = v23;

    if (managerCopy)
    {
      v25 = [[MKCoreLocationProvider alloc] initWithCLLocationManager:managerCopy];
      [(MKLocationManager *)v6 setLocationProvider:v25];
    }

    else
    {
      [(MKLocationManager *)v6 _useDefaultCoreLocationProvider];
    }

    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager addTileGroupObserver:v6 queue:MEMORY[0x1E69E96A0]];
  }

  v27 = MKGetMKLocationManagerLog();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Initialization", &unk_1A30FEA0E, buf, 2u);
  }

  return v6;
}

@end