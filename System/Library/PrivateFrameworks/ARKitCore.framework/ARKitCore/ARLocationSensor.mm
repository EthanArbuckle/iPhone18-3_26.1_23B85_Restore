@interface ARLocationSensor
- (ARLocationSensor)init;
- (ARLocationSensor)initWithBundleIdentifier:(id)identifier;
- (ARSensorDelegate)delegate;
- (CLLocationManagerDelegate)locationManagerDelegate;
- (id)_createLocationManager;
- (id)_validateLocationAuthorization;
- (id)updateFromLocationData:(id)data;
- (void)_attemptAltitudeLookupAtCoordinate:(CLLocationCoordinate2D)coordinate attemptCount:(unsigned int)count lookupStartDate:(id)date completionHandler:(id)handler;
- (void)_start;
- (void)configureForReplay;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)updateARSessionState:(unint64_t)state;
- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data;
- (void)updateFromVisualLocalizationResult:(id)result;
- (void)waitForOutstandingCallbacks;
@end

@implementation ARLocationSensor

- (ARLocationSensor)init
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [(ARLocationSensor *)self initWithBundleIdentifier:bundleIdentifier];

  return v5;
}

- (ARLocationSensor)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = ARLocationSensor;
  v5 = [(ARLocationSensor *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_lastVIOUpdateTimestamp = _Q0;
    v5->_lastLocationUpdateTimestamp = -1.0;
    *&v5->_isLiveSensor = 1;
    v5->_startTimestamp = 0.0;
    v13 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.locationSensor.locationManager");
    locationManagerQueue = v5->_locationManagerQueue;
    v5->_locationManagerQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    altitudeSkipTiles = v5->_altitudeSkipTiles;
    v5->_altitudeSkipTiles = v15;

    v17 = objc_opt_new();
    localizer = v5->_localizer;
    v5->_localizer = v17;
  }

  return v5;
}

- (void)configureForReplay
{
  v15 = *MEMORY[0x1E69E9840];
  self->_isLiveSensor = 0;
  v3 = objc_opt_new();
  locationPlayer = self->_locationPlayer;
  self->_locationPlayer = v3;

  v5 = _ARLogSensor_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = self->_locationPlayer;
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created _CLLocationPlayer: %p", &v9, 0x20u);
  }

  [(_CLLocationPlayer *)self->_locationPlayer setSimulationEnabled:0];
  [(_CLLocationPlayer *)self->_locationPlayer start];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: start", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  locationManagerQueue = self->_locationManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__ARLocationSensor_start__block_invoke;
  block[3] = &unk_1E817BD88;
  objc_copyWeak(&v8, buf);
  dispatch_async(locationManagerQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __25__ARLocationSensor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _start];
}

- (void)_start
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_isRunning)
  {
    kdebug_trace();
    locationManager = self->_locationManager;
    if (!locationManager)
    {
      _createLocationManager = [(ARLocationSensor *)self _createLocationManager];
      v5 = self->_locationManager;
      self->_locationManager = _createLocationManager;

      locationManager = self->_locationManager;
    }

    if ([(CLLocationManager *)locationManager authorizationStatus]== kCLAuthorizationStatusNotDetermined)
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
LABEL_14:
      kdebug_trace();
      return;
    }

    _validateLocationAuthorization = [(ARLocationSensor *)self _validateLocationAuthorization];
    if (_validateLocationAuthorization)
    {
      delegate = [(ARLocationSensor *)self delegate];
      [delegate sensor:self didFailWithError:_validateLocationAuthorization];
    }

    else
    {
      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
      kdebug_trace();
      self->_startTimestamp = ARGetSystemUpTime();
      self->_isRunning = 1;
      v8 = _ARLogSensor_2();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v13 = 138543618;
        v14 = v10;
        v15 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Started location updates", &v13, 0x16u);
      }

      delegate2 = [(ARLocationSensor *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      delegate = [(ARLocationSensor *)self delegate];
      [delegate sensorDidStart:self];
    }

LABEL_13:
    goto LABEL_14;
  }
}

- (id)_createLocationManager
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v3 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:self->_bundleIdentifier delegate:self onQueue:self->_locationManagerQueue];
  [v3 setActivityType:4];
  [v3 setDesiredAccuracy:*MEMORY[0x1E6985C78]];
  [v3 setDistanceFilter:*MEMORY[0x1E6985C70]];
  [v3 _setGroundAltitudeEnabled:1];
  [v3 _setFusionInfoEnabled:1];
  v4 = _ARLogSensor_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138543875;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2113;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Location manager created: %{private}@", &v8, 0x20u);
  }

  return v3;
}

- (id)_validateLocationAuthorization
{
  v16[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if (([MEMORY[0x1E695FBE8] locationServicesEnabled] & 1) == 0)
  {
    v15 = *MEMORY[0x1E696A588];
    v3 = ARKitCoreBundle();
    v4 = [v3 localizedStringForKey:@"Location use is restricted on this device." value:&stru_1F4208A80 table:@"Localizable"];
    v16[0] = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = v16;
    v7 = &v15;
    goto LABEL_7;
  }

  if ([(CLLocationManager *)self->_locationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways && [(CLLocationManager *)self->_locationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedWhenInUse)
  {
    v13 = *MEMORY[0x1E696A588];
    v3 = ARKitCoreBundle();
    v4 = [v3 localizedStringForKey:@"Location authorization denied by the user." value:&stru_1F4208A80 table:@"Localizable"];
    v14 = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v14;
    v7 = &v13;
    goto LABEL_7;
  }

  if ([(CLLocationManager *)self->_locationManager accuracyAuthorization])
  {
    v11 = *MEMORY[0x1E696A588];
    v3 = ARKitCoreBundle();
    v4 = [v3 localizedStringForKey:@"Usage of precise location denied by user." value:&stru_1F4208A80 table:@"Localizable"];
    v12 = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v12;
    v7 = &v11;
LABEL_7:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];

    v9 = ARErrorWithCodeAndUserInfo(101, v8);

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v13 = v5;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: stop", buf, 0x16u);
  }

  kdebug_trace();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ARLocationSensor(%p):", self];
  if (!self->_isLiveSensor)
  {
    [(_CLLocationPlayer *)self->_locationPlayer stop];
    v7 = _ARLogSensor_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%@ stopped location player.", buf, 0xCu);
    }
  }

  if (self->_locationManager)
  {
    objc_initWeak(buf, self);
    locationManagerQueue = self->_locationManagerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ARLocationSensor_stop__block_invoke;
    block[3] = &unk_1E817BDB0;
    objc_copyWeak(&v11, buf);
    v10 = v6;
    dispatch_async(locationManagerQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    kdebug_trace();
  }
}

void __24__ARLocationSensor_stop__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 41) & 1) != 0)
  {
    [WeakRetained[2] stopUpdatingLocation];
    *(v3 + 41) = 0;
    v3[6] = 0;
    kdebug_trace();
    v4 = _ARLogSensor_2();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%@ Stopped location updates", &v6, 0xCu);
    }
  }

  else
  {
    kdebug_trace();
  }
}

- (void)waitForOutstandingCallbacks
{
  dispatch_assert_queue_not_V2(self->_locationManagerQueue);
  locationManagerQueue = self->_locationManagerQueue;

  dispatch_sync(locationManagerQueue, &__block_literal_global_4);
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  kdebug_trace();
  [(_CLLocationPlayer *)self->_locationPlayer stop];
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  kdebug_trace();
  v6 = _ARLogSensor_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "Stopped location updates", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = ARLocationSensor;
  [(ARLocationSensor *)&v7 dealloc];
}

- (void)updateARSessionState:(unint64_t)state
{
  v26 = *MEMORY[0x1E69E9840];
  switch(state)
  {
    case 2uLL:
      v5 = _ARLogSensor_2();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v7 = NSStringFromClass(v10);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStateInterrupted";
        goto LABEL_10;
      }

      goto LABEL_11;
    case 1uLL:
      v5 = _ARLogSensor_2();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v7 = NSStringFromClass(v9);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStateRunning";
        goto LABEL_10;
      }

LABEL_11:

      locationManagerQueue = self->_locationManagerQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41__ARLocationSensor_updateARSessionState___block_invoke;
      v21[3] = &unk_1E817BDD8;
      v21[4] = self;
      v21[5] = state;
      dispatch_async(locationManagerQueue, v21);
      return;
    case 0uLL:
      v5 = _ARLogSensor_2();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        selfCopy5 = self;
        v8 = "%{public}@ <%p>: ARSessionStatePaused";
LABEL_10:
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, v8, buf, 0x16u);

        goto LABEL_11;
      }

      goto LABEL_11;
  }

  if (ARShouldUseLogTypeError_onceToken_1 != -1)
  {
    [ARLocationSensor updateARSessionState:];
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion_1;
  v13 = _ARLogSensor_2();
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      selfCopy5 = self;
      v17 = "%{public}@ <%p>: Unknown ARSessionState received";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    v16 = NSStringFromClass(v20);
    *buf = 138543618;
    v23 = v16;
    v24 = 2048;
    selfCopy5 = self;
    v17 = "Error: %{public}@ <%p>: Unknown ARSessionState received";
    v18 = v14;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }
}

uint64_t __41__ARLocationSensor_updateARSessionState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 24;
  if (*(v1 + 40))
  {
    v2 = 16;
  }

  return [*(v1 + v2) _updateARSessionState:*(a1 + 40)];
}

- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data
{
  v51 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dataCopy = data;
  worldTrackingState = [poseCopy worldTrackingState];
  [worldTrackingState poseTimestamp];
  v10 = v9;

  if (v10 > self->_lastVIOUpdateTimestamp)
  {
    worldTrackingState2 = [poseCopy worldTrackingState];
    inertialState = [worldTrackingState2 inertialState];

    if (inertialState)
    {
      self->_lastVIOUpdateTimestamp = v10;
      [dataCopy cameraIntrinsics];
      v28 = v13;
      v29 = v14;
      v30 = v15;
      [dataCopy imageResolution];
      locationManagerQueue = self->_locationManagerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__ARLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke;
      block[3] = &unk_1E817BE00;
      v42 = v10;
      v32 = DWORD2(v28);
      v35 = DWORD2(v29);
      block[4] = v28;
      v33 = 0;
      v34 = v29;
      v36 = 0;
      v38 = DWORD2(v30);
      v37 = v30;
      v39 = 0;
      v43 = v17;
      v44 = v18;
      v40 = poseCopy;
      selfCopy = self;
      dispatch_async(locationManagerQueue, block);
      v19 = v40;
LABEL_12:

      goto LABEL_13;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_1;
    v21 = _ARLogSensor_2();
    v19 = v21;
    if (v20 == 1)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543874;
      v46 = v23;
      v47 = 2048;
      selfCopy3 = self;
      v49 = 2048;
      v50 = v10;
      v24 = "%{public}@ <%p>: World tracking state is missing inertial state: %f";
      v25 = v19;
      v26 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v27 = objc_opt_class();
      v23 = NSStringFromClass(v27);
      *buf = 138543874;
      v46 = v23;
      v47 = 2048;
      selfCopy3 = self;
      v49 = 2048;
      v50 = v10;
      v24 = "Error: %{public}@ <%p>: World tracking state is missing inertial state: %f";
      v25 = v19;
      v26 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v25, v26, v24, buf, 0x20u);

    goto LABEL_12;
  }

LABEL_13:
}

void __58__ARLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = objc_opt_new();
  v3 = [*(a1 + 80) worldTrackingState];
  [v2 setTrackingState:{objc_msgSend(v3, "vioTrackingState")}];

  v4 = [*(a1 + 80) worldTrackingState];
  [v4 originTimestamp];
  [v2 setOriginTimestamp:?];

  [v2 setTimestamp:*(a1 + 96)];
  v5 = [*(a1 + 80) worldTrackingState];
  v6 = [v5 inertialState];
  v56 = ARGetInertialStateInfo_kCV3DVIOInertialStateInfo;
  v57.i64[0] = 201219;
  [v2 setInertialStateInfo:&v56];

  v47 = [*(a1 + 80) worldTrackingState];
  v7 = [v47 inertialState];
  v8 = v7;
  v9 = 0uLL;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  if (v7)
  {
    [v7 orientation];
    v11 = v56;
    v10 = v57;
    v13 = v58;
    v12 = v59;
    v9 = v60;
    v14 = v61;
  }

  else
  {
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  v15 = vzip1q_s64(v11, v13);
  v16 = vzip2q_s64(v13, v9);
  v9.i64[1] = v11.i64[1];
  v70[0] = v15;
  v70[1] = v9;
  v70[2] = v16;
  v70[3] = vzip1q_s64(v10, v12);
  v71 = v14;
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v70 length:72];
  v18 = 0;
  if (v8)
  {
    [v8 gyroscopeBias];
    v19 = v54;
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v21 = v55;
  }

  else
  {
    v19.i64[0] = 0;
    v20 = 0;
    v21 = 0;
  }

  v19.i64[1] = v20;
  v68 = v19;
  v69 = v21;
  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v68 length:24];
  if (v8)
  {
    [v8 velocity];
    v23 = v52;
    v24 = vextq_s8(v23, v23, 8uLL).u64[0];
    v18 = v53;
  }

  else
  {
    v23.i64[0] = 0;
    v24 = 0;
  }

  v23.i64[1] = v24;
  v66 = v23;
  v67 = v18;
  v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v66 length:24];
  v26 = 0;
  if (v8)
  {
    [v8 accelerometerBias];
    v27 = v50;
    v28 = vextq_s8(v27, v27, 8uLL).u64[0];
    v29 = v51;
  }

  else
  {
    v27.i64[0] = 0;
    v28 = 0;
    v29 = 0;
  }

  v27.i64[1] = v28;
  v64 = v27;
  v65 = v29;
  v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v64 length:24];
  if (v8)
  {
    [v8 position];
    v31 = v48;
    v32 = vextq_s8(v31, v31, 8uLL).u64[0];
    v26 = v49;
  }

  else
  {
    v31.i64[0] = 0;
    v32 = 0;
  }

  v31.i64[1] = v32;
  v62 = v31;
  v63 = v26;
  v33 = [MEMORY[0x1E695DEF0] dataWithBytes:&v62 length:24];
  v34 = [v17 length];
  v35 = [v22 length] + v34;
  v36 = [v25 length];
  v37 = v35 + v36 + [v30 length];
  v38 = [v33 length];
  v39 = [MEMORY[0x1E695DF88] dataWithCapacity:v37 + v38];
  [v39 appendData:v17];
  [v39 appendData:v22];
  [v39 appendData:v25];
  [v39 appendData:v30];
  [v39 appendData:v33];

  [v2 setInertialState:v39];
  v40 = [*(a1 + 80) worldTrackingState];
  v41 = [v40 inertialState];
  v56 = ARGetInertialCovarianceInfo_kCV3DVIOInertialCovarianceInfo;
  v57.i64[0] = 199683;
  [v2 setInertialCovarianceInfo:&v56];

  v42 = [*(a1 + 80) worldTrackingState];
  v43 = [v42 inertialState];
  v44 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v43 length:{"covarianceMatrix"), 1800}];
  [v2 setInertialCovariance:v44];

  [*(a1 + 80) visionCameraTransform];
  [v2 setCameraPose:?];
  [v2 setCameraIntrinsics:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  [v2 setCameraImageResolution:{*(a1 + 104), *(a1 + 112)}];
  v45 = *(a1 + 88);
  v46 = 16;
  if (!*(v45 + 40))
  {
    v46 = 24;
  }

  [*(v45 + v46) _updateVIOEstimation:v2];
  kdebug_trace();
}

- (void)_attemptAltitudeLookupAtCoordinate:(CLLocationCoordinate2D)coordinate attemptCount:(unsigned int)count lookupStartDate:(id)date completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v142 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if (self->_locationManager)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _createLocationManager = [(ARLocationSensor *)self _createLocationManager];
    locationManager = self->_locationManager;
    self->_locationManager = _createLocationManager;

    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  dateCopy = [MEMORY[0x1E695DF00] date];
LABEL_3:
  if (![MEMORY[0x1E695FBE8] locationServicesEnabled] || -[CLLocationManager authorizationStatus](self->_locationManager, "authorizationStatus") != kCLAuthorizationStatusAuthorizedAlways && -[CLLocationManager authorizationStatus](self->_locationManager, "authorizationStatus") != kCLAuthorizationStatusAuthorizedWhenInUse || -[CLLocationManager accuracyAuthorization](self->_locationManager, "accuracyAuthorization"))
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_1;
    v14 = _ARLogSensor_2();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543618;
        v137 = v17;
        v138 = 2048;
        selfCopy17 = self;
        v18 = "%{public}@ <%p>: Precise location permissions must be enabled to use geo tracking features.";
        v19 = v15;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      *buf = 138543618;
      v137 = v17;
      v138 = 2048;
      selfCopy17 = self;
      v18 = "Error: %{public}@ <%p>: Precise location permissions must be enabled to use geo tracking features.";
      v19 = v15;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    v22 = @"FailedDueToMissingPermissions";
    v23 = 0.0;
LABEL_16:
    [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:v22 andResult:v23];
LABEL_17:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_18;
  }

  currentLocation = self->_currentLocation;
  if (currentLocation)
  {
    location = [(ARLocationData *)currentLocation location];
    [location coordinate];
    v30 = ARLInfinityAngularDistance(latitude, longitude, v28, v29);

    v31 = _ARLogSensor_2();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    if (v30 > 0.05)
    {
      if (v32)
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543875;
        v137 = v34;
        v138 = 2048;
        selfCopy17 = self;
        v140 = 2049;
        *v141 = 0x3FA999999999999ALL;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Lookup coordinate too far away (>%{private}f degrees) from current location to perform CL altitude lookup", buf, 0x20u);
      }

      goto LABEL_17;
    }

    if (v32)
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544387;
      v137 = v43;
      v138 = 2048;
      selfCopy17 = self;
      v140 = 1024;
      *v141 = count + 1;
      *&v141[4] = 2049;
      *&v141[6] = latitude;
      *&v141[14] = 2049;
      *&v141[16] = longitude;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Performing CL altitude look up attempt #%d at coordinate: %{private}f, %{private}f", buf, 0x30u);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v44 = self->_altitudeSkipTiles;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v125 objects:v135 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v126;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v126 != v47)
          {
            objc_enumerationMutation(v44);
          }

          if ([*(*(&v125 + 1) + 8 * i) isInside:{latitude, longitude}])
          {
            v65 = _ARLogSensor_2();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              v66 = objc_opt_class();
              v67 = NSStringFromClass(v66);
              *buf = 138543618;
              v137 = v67;
              v138 = 2048;
              selfCopy17 = self;
              _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tile hasn't been loaded. Skipping look up.", buf, 0x16u);
            }

            longitude = 0;
            goto LABEL_57;
          }
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v125 objects:v135 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    v49 = 0;
    do
    {
      v50 = self->_locationManager;
      v51 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
      longitude = [(CLLocationManager *)v50 _groundAltitudeAtLocation:v51];

      if (longitude)
      {
        v53 = 1;
      }

      else
      {
        v53 = v49 >= 7;
      }

      ++v49;
    }

    while (!v53);
    if (longitude)
    {
      if (([(ARSkipTileBounds *)longitude isAltitudeWgs84Available]& 1) != 0)
      {
        v54 = _ARLogSensor_2();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          *buf = 138544131;
          v137 = v56;
          v138 = 2048;
          selfCopy17 = self;
          v140 = 2049;
          *v141 = latitude;
          *&v141[8] = 2049;
          *&v141[10] = longitude;
          _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Look up succeeded at coordinate: %{private}f, %{private}f", buf, 0x2Au);
        }

        [dateCopy timeIntervalSinceNow];
        [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:@"Success" andResult:fabs(v57)];
        location2 = [(ARLocationData *)self->_currentLocation location];
        [location2 coordinate];
        v61 = ARLInfinityDistance(latitude, longitude, v59, v60);

        if (v61 > 60.0)
        {
          v62 = _ARLogSensor_2();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v63 = objc_opt_class();
            v64 = NSStringFromClass(v63);
            *buf = 138543875;
            v137 = v64;
            v138 = 2048;
            selfCopy17 = self;
            v140 = 2049;
            *v141 = 0x404E000000000000;
            _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Look up coordinate too far away (>%{private}f meters) from current location to perform VL altitude look up", buf, 0x20u);
          }

          (handlerCopy)[2](handlerCopy, longitude);
          goto LABEL_96;
        }

        localizer = self->_localizer;
        v110 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
        locationManagerQueue = self->_locationManagerQueue;
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_65;
        v114[3] = &unk_1E817BE78;
        v114[4] = self;
        v115 = longitude;
        v116 = handlerCopy;
        longitude = longitude;
        [(VLLocalizer *)localizer determineAltitudesAtLocation:v110 callbackQueue:locationManagerQueue callback:v114];

        v78 = v116;
        goto LABEL_65;
      }

      if (ARShouldUseLogTypeError_onceToken_1 != -1)
      {
        [ARLocationSensor _attemptAltitudeLookupAtCoordinate:attemptCount:lookupStartDate:completionHandler:];
      }

      v101 = ARShouldUseLogTypeError_internalOSVersion_1;
      v102 = _ARLogSensor_2();
      v103 = v102;
      if (v101 == 1)
      {
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v104 = objc_opt_class();
          v105 = NSStringFromClass(v104);
          *buf = 138543618;
          v137 = v105;
          v138 = 2048;
          selfCopy17 = self;
          v106 = "%{public}@ <%p>: Altitude value is not available. Giving up.";
          v107 = v103;
          v108 = OS_LOG_TYPE_ERROR;
LABEL_93:
          _os_log_impl(&dword_1C241C000, v107, v108, v106, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
      {
        v112 = objc_opt_class();
        v105 = NSStringFromClass(v112);
        *buf = 138543618;
        v137 = v105;
        v138 = 2048;
        selfCopy17 = self;
        v106 = "Error: %{public}@ <%p>: Altitude value is not available. Giving up.";
        v107 = v103;
        v108 = OS_LOG_TYPE_INFO;
        goto LABEL_93;
      }

      [dateCopy timeIntervalSinceNow];
      v99 = fabs(v113);
      v100 = @"FailedDueToUnavailableAltitude";
      goto LABEL_95;
    }

    longitude = [[ARSkipTileBounds alloc] initWithCoordinate:latitude, longitude];
LABEL_57:
    v68 = count + 1;
    if (count + 1 <= 5)
    {
      v69 = _attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler__kDelayTimes[v68];
      v70 = _ARLogSensor_2();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        *buf = 138543874;
        v137 = v72;
        v138 = 2048;
        selfCopy17 = self;
        v140 = 2048;
        *v141 = v69;
        _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CL Look up failed. Scheduling another attempt in %f seconds.", buf, 0x20u);
      }

      if (longitude)
      {
        v73 = _ARLogSensor_2();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v74 = objc_opt_class();
          v75 = NSStringFromClass(v74);
          *buf = 138543618;
          v137 = v75;
          v138 = 2048;
          selfCopy17 = self;
          _os_log_impl(&dword_1C241C000, v73, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Storing DEM bounds.", buf, 0x16u);
        }

        [(NSMutableArray *)self->_altitudeSkipTiles addObject:longitude];
      }

      v76 = dispatch_time(0, (v69 * 1000000000.0));
      v77 = self->_locationManagerQueue;
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_55;
      v117[3] = &unk_1E817BE50;
      v118 = longitude;
      selfCopy12 = self;
      v122 = latitude;
      v123 = longitude;
      v124 = v68;
      v120 = dateCopy;
      v121 = handlerCopy;
      longitude = longitude;
      dispatch_after(v76, v77, v117);

      v78 = v118;
LABEL_65:

LABEL_96:
      goto LABEL_18;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor _attemptAltitudeLookupAtCoordinate:attemptCount:lookupStartDate:completionHandler:];
    }

    v87 = ARShouldUseLogTypeError_internalOSVersion_1;
    v88 = _ARLogSensor_2();
    v89 = v88;
    if (v87 == 1)
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        *buf = 138543618;
        v137 = v91;
        v138 = 2048;
        selfCopy17 = self;
        v92 = "%{public}@ <%p>: All CL altitude look up attempts have failed. Giving up.";
        v93 = v89;
        v94 = OS_LOG_TYPE_ERROR;
LABEL_82:
        _os_log_impl(&dword_1C241C000, v93, v94, v92, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v97 = objc_opt_class();
      v91 = NSStringFromClass(v97);
      *buf = 138543618;
      v137 = v91;
      v138 = 2048;
      selfCopy17 = self;
      v92 = "Error: %{public}@ <%p>: All CL altitude look up attempts have failed. Giving up.";
      v93 = v89;
      v94 = OS_LOG_TYPE_INFO;
      goto LABEL_82;
    }

    [dateCopy timeIntervalSinceNow];
    v99 = fabs(v98);
    v100 = @"FailedDueToTimeout";
LABEL_95:
    [ARSessionMetrics recordAltitudeLookupAttemptWithDuration:v100 andResult:v99];
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_96;
  }

  v35 = count + 1;
  if (count + 1 > 5)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v79 = ARShouldUseLogTypeError_internalOSVersion_1;
    v80 = _ARLogSensor_2();
    v81 = v80;
    if (v79 == 1)
    {
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        *buf = 138543618;
        v137 = v83;
        v138 = 2048;
        selfCopy17 = self;
        v84 = "%{public}@ <%p>: All CL altitude look up attempts have failed (no current location). Giving up.";
        v85 = v81;
        v86 = OS_LOG_TYPE_ERROR;
LABEL_78:
        _os_log_impl(&dword_1C241C000, v85, v86, v84, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      v95 = objc_opt_class();
      v83 = NSStringFromClass(v95);
      *buf = 138543618;
      v137 = v83;
      v138 = 2048;
      selfCopy17 = self;
      v84 = "Error: %{public}@ <%p>: All CL altitude look up attempts have failed (no current location). Giving up.";
      v85 = v81;
      v86 = OS_LOG_TYPE_INFO;
      goto LABEL_78;
    }

    [dateCopy timeIntervalSinceNow];
    v23 = fabs(v96);
    v22 = @"FailedDueToNoLocation";
    goto LABEL_16;
  }

  v36 = _attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler__kDelayTimes[v35];
  v37 = _ARLogSensor_2();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    *buf = 138543874;
    v137 = v39;
    v138 = 2048;
    selfCopy17 = self;
    v140 = 2048;
    *v141 = v36;
    _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor altitude lookup is too soon; current location hasn't been set yet. Trying again in %f seconds.", buf, 0x20u);
  }

  v40 = dispatch_time(0, (v36 * 1000000000.0));
  v41 = self->_locationManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke;
  block[3] = &unk_1E817BE28;
  block[4] = self;
  v132 = latitude;
  v133 = longitude;
  v134 = v35;
  v130 = dateCopy;
  v131 = handlerCopy;
  dispatch_after(v40, v41, block);

LABEL_18:
}

uint64_t __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_55(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 88) removeObject:?];
  }

  v2 = *(a1 + 80);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v3 _attemptAltitudeLookupAtCoordinate:v2 attemptCount:v4 lookupStartDate:v5 completionHandler:{v6, v7}];
}

void __102__ARLocationSensor__attemptAltitudeLookupAtCoordinate_attemptCount_lookupStartDate_completionHandler___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6 || ![v5 count])
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v37 = ARShouldUseLogTypeError_internalOSVersion_1;
    v38 = _ARLogSensor_2();
    v39 = v38;
    if (v37 == 1)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = *(a1 + 32);
        v50 = 138543874;
        v51 = v41;
        v52 = 2048;
        v53 = v42;
        v54 = 2112;
        v55 = v7;
        v43 = "%{public}@ <%p>: High resolution (VL) altitude lookup failed, error=%@";
        v44 = v39;
        v45 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v44, v45, v43, &v50, 0x20u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v41 = NSStringFromClass(v46);
      v47 = *(a1 + 32);
      v50 = 138543874;
      v51 = v41;
      v52 = 2048;
      v53 = v47;
      v54 = 2112;
      v55 = v7;
      v43 = "Error: %{public}@ <%p>: High resolution (VL) altitude lookup failed, error=%@";
      v44 = v39;
      v45 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v48, v49);
    goto LABEL_21;
  }

  v8 = [v5 objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;
  [*(a1 + 40) altitudeWgs84];
  v12 = v11;

  v13 = 0;
  if ([v5 count] >= 2)
  {
    v13 = 0;
    v14 = vabdd_f64(v10, v12);
    v15 = 1;
    do
    {
      v16 = [v5 objectAtIndexedSubscript:v15];
      [v16 doubleValue];
      v18 = v17;
      [*(a1 + 40) altitudeWgs84];
      v20 = vabdd_f64(v18, v19);

      if (v20 < v14)
      {
        v14 = v20;
        v13 = v15;
      }

      ++v15;
    }

    while (v15 < [v5 count]);
  }

  v21 = _ARLogSensor_2();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = *(a1 + 32);
    [*(a1 + 40) altitude];
    v26 = v25;
    v27 = [v5 objectAtIndexedSubscript:v13];
    [v27 doubleValue];
    v50 = 138544131;
    v51 = v23;
    v52 = 2048;
    v53 = v24;
    v54 = 2049;
    v55 = v26;
    v56 = 2049;
    v57 = v28;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: High Resolution Altitude Lookup: SUCCESS (%{private}f :> %{private}f)", &v50, 0x2Au);
  }

  v29 = objc_alloc(MEMORY[0x1E6985C58]);
  v30 = [v5 objectAtIndexedSubscript:v13];
  [v30 doubleValue];
  v32 = v31;
  [*(a1 + 40) undulation];
  v34 = ARWGS84ToMSLAltitude(v32, v33);
  [*(a1 + 40) undulation];
  v36 = [v29 initWithEstimate:objc_msgSend(*(a1 + 40) uncertainty:"undulationModel") undulation:v34 undulationModel:{-1.0, v35}];

  (*(*(a1 + 48) + 16))();
LABEL_21:
}

- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  locationManagerQueue = self->_locationManagerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ARLocationSensor_lookupAltitudeAtCoordinate_completionHandler___block_invoke;
  v10[3] = &unk_1E817BEA0;
  v12 = latitude;
  v13 = longitude;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(locationManagerQueue, v10);
}

- (void)updateFromVisualLocalizationResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = resultCopy;
  if (self->_isLiveSensor && ([resultCopy isSecure] & 1) == 0)
  {
    v9 = _ARLogSensor_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping update due to insecure location data.", buf, 0x16u);
    }
  }

  else
  {
    [v5 timestamp];
    if (v6 > self->_lastVLUpdateTimestamp)
    {
      [v5 timestamp];
      self->_lastVLUpdateTimestamp = v7;
      locationManagerQueue = self->_locationManagerQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__ARLocationSensor_updateFromVisualLocalizationResult___block_invoke;
      v12[3] = &unk_1E817BEC8;
      v12[4] = self;
      v13 = v5;
      dispatch_async(locationManagerQueue, v12);
    }
  }
}

void __55__ARLocationSensor_updateFromVisualLocalizationResult___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSensor_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) localizationResult];
    v7 = v6;
    if (v6)
    {
      [v6 location];
      v8 = v27;
      v9 = v28;
    }

    else
    {
      v8 = 0uLL;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      v9 = 0uLL;
    }

    v10 = ARVector3Description(vcvt_hight_f32_f64(vcvt_f32_f64(v8), v9));
    v11 = [*(a1 + 40) localizationResult];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    v13.n128_f64[0] = ARMatrix4x4DoubleToFloat(v26);
    v17 = ARMatrix4x4Description(1, v13, v14, v15, v16);
    [*(a1 + 40) timestamp];
    LODWORD(v26[0].f64[0]) = 138544387;
    *(v26[0].f64 + 4) = v4;
    WORD2(v26[0].f64[1]) = 2048;
    *(&v26[0].f64[1] + 6) = v5;
    HIWORD(v26[1].f64[0]) = 2113;
    *&v26[1].f64[1] = v10;
    LOWORD(v26[2].f64[0]) = 2113;
    *(v26[2].f64 + 2) = v17;
    WORD1(v26[2].f64[1]) = 2048;
    *(&v26[2].f64[1] + 4) = v18;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updateFromVisualLocalizationResult: location = %{private}@, transform = %{private}@, time = %f", v26, 0x34u);
  }

  v19 = objc_alloc(MEMORY[0x1E695FC58]);
  [*(a1 + 40) timestamp];
  v21 = v20;
  v22 = [*(a1 + 40) localizationResult];
  v23 = [v19 initWithTimestamp:v22 localizationResult:v21];

  v24 = *(a1 + 32);
  v25 = 24;
  if (*(v24 + 40))
  {
    v25 = 16;
  }

  [*(v24 + v25) _updateVLLocalizationResult:v23];
}

- (id)updateFromLocationData:(id)data
{
  v48 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_isLiveSensor)
  {
    v6 = _ARLogSensor_2();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_5:

LABEL_6:
      v12 = v5;
      goto LABEL_7;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v42 = 138543618;
    v43 = v8;
    v44 = 2048;
    selfCopy7 = self;
    v9 = "%{public}@ <%p>: updateFromLocationData is only intended for use during replay; skipping.";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_4:
    _os_log_impl(&dword_1C241C000, v10, v11, v9, &v42, 0x16u);

    goto LABEL_5;
  }

  if ([dataCopy isSecure])
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_1;
    v15 = _ARLogSensor_2();
    v6 = v15;
    if (v14 == 1)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v16 = objc_opt_class();
      v8 = NSStringFromClass(v16);
      v42 = 138543618;
      v43 = v8;
      v44 = 2048;
      selfCopy7 = self;
      v9 = "%{public}@ <%p>: updateFromLocationData expects insecure data.";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v32 = objc_opt_class();
      v8 = NSStringFromClass(v32);
      v42 = 138543618;
      v43 = v8;
      v44 = 2048;
      selfCopy7 = self;
      v9 = "Error: %{public}@ <%p>: updateFromLocationData expects insecure data.";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
    }

    goto LABEL_4;
  }

  [v5 timestamp];
  if (v17 <= self->_lastLocationUpdateTimestamp)
  {
    goto LABEL_6;
  }

  [v5 timestamp];
  self->_lastLocationUpdateTimestamp = v18;
  locationPlayer = self->_locationPlayer;
  location = [v5 location];
  [v5 timestamp];
  v21 = [(_CLLocationPlayer *)locationPlayer _getFusedLocationFrom:location machAbsTime:?];

  v22 = v5;
  v23 = v22;
  if (!v21)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARLocationSensor updateARSessionState:];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_1;
    v34 = _ARLogSensor_2();
    v25 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v42 = 138543618;
        v43 = v36;
        v44 = 2048;
        selfCopy7 = self;
        v37 = "%{public}@ <%p>: Location fusion failed.";
        v38 = v25;
        v39 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v38, v39, v37, &v42, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v36 = NSStringFromClass(v41);
      v42 = 138543618;
      v43 = v36;
      v44 = 2048;
      selfCopy7 = self;
      v37 = "Error: %{public}@ <%p>: Location fusion failed.";
      v38 = v25;
      v39 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v12 = v23;
    goto LABEL_35;
  }

  v12 = [v22 copy];

  [v12 setLocation:v21];
  isCoordinateFused = [v21 isCoordinateFused];
  v25 = _ARLogSensor_2();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
  if (isCoordinateFused)
  {
    if (v26)
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v42 = 138543875;
      v43 = v28;
      v44 = 2048;
      selfCopy7 = self;
      v46 = 2113;
      v47 = v12;
      v29 = "%{public}@ <%p>: Updated to fused location: %{private}@.";
      v30 = v25;
      v31 = 32;
LABEL_30:
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, v29, &v42, v31);
    }
  }

  else if (v26)
  {
    v40 = objc_opt_class();
    v28 = NSStringFromClass(v40);
    v42 = 138543618;
    v43 = v28;
    v44 = 2048;
    selfCopy7 = self;
    v29 = "%{public}@ <%p>: Fusion did not produce fused location.";
    v30 = v25;
    v31 = 22;
    goto LABEL_30;
  }

LABEL_35:

  [(ARLocationSensor *)self setCurrentLocation:v12];
LABEL_7:

  return v12;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v21 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v5 = _ARLogSensor_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    authorizationStatus = [authorizationCopy authorizationStatus];
    accuracyAuthorization = [authorizationCopy accuracyAuthorization];
    v10 = @"No";
    *v16 = 138544130;
    *&v16[12] = 2048;
    *&v16[4] = v7;
    if (!accuracyAuthorization)
    {
      v10 = @"Yes";
    }

    *&v16[14] = self;
    v17 = 1024;
    v18 = authorizationStatus;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: authorization status changed: %i with precise location: %@", v16, 0x26u);
  }

  locationManagerDelegate = [(ARLocationSensor *)self locationManagerDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    locationManagerDelegate2 = [(ARLocationSensor *)self locationManagerDelegate];
    [locationManagerDelegate2 locationManagerDidChangeAuthorization:authorizationCopy];
  }

  _validateLocationAuthorization = [(ARLocationSensor *)self _validateLocationAuthorization];
  if (_validateLocationAuthorization)
  {
    delegate = [(ARLocationSensor *)self delegate];
    [delegate sensor:self didFailWithError:_validateLocationAuthorization];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v31 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if (self->_startTimestamp > 0.0)
  {
    v6 = ARGetSystemUpTime();
    startTimestamp = self->_startTimestamp;
    kdebug_trace();
    self->_startTimestamp = 0.0;
    v8 = _ARLogSensor_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v25 = 138543874;
      v26 = v10;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2048;
      v30 = v6 - startTimestamp;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: first location update received after %f seconds", &v25, 0x20u);
    }
  }

  if (self->_isRunning)
  {
    [locationsCopy count];
    kdebug_trace();
    v11 = [ARLocationData alloc];
    lastObject = [locationsCopy lastObject];
    v13 = [(ARLocationData *)v11 initWithLocation:lastObject];

    v14 = _ARLogSensor_2();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v13 description];
      v25 = 138543874;
      v26 = v16;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2112;
      v30 = *&v17;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: location update received: %@", &v25, 0x20u);
    }

    [(ARLocationSensor *)self setCurrentLocation:v13];
    [v13 timestamp];
    location = [v13 location];
    [location coordinate];
    location2 = [v13 location];
    [location2 coordinate];
    location3 = [v13 location];
    [location3 horizontalAccuracy];
    kdebug_trace();

    delegate = [(ARLocationSensor *)self delegate];
    LOBYTE(location) = objc_opt_respondsToSelector();

    if (location)
    {
      delegate2 = [(ARLocationSensor *)self delegate];
      [delegate2 sensor:self didOutputSensorData:v13];
    }

    kdebug_trace();
    kdebug_trace();
  }

  else
  {
    v13 = _ARLogSensor_2();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = 138543618;
      v26 = v24;
      v27 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ignoring location update for stopped sensor", &v25, 0x16u);
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  if ([errorCopy code])
  {
    delegate = [(ARLocationSensor *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(ARLocationSensor *)self delegate];
      [delegate2 sensor:self didFailWithError:errorCopy];
    }
  }

  locationManagerDelegate = [(ARLocationSensor *)self locationManagerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    locationManagerDelegate2 = [(ARLocationSensor *)self locationManagerDelegate];
    [locationManagerDelegate2 locationManager:managerCopy didFailWithError:errorCopy];
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationManagerDelegate)locationManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationManagerDelegate);

  return WeakRetained;
}

@end