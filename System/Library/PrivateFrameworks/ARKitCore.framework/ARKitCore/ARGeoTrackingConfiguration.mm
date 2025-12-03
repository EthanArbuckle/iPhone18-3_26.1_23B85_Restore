@interface ARGeoTrackingConfiguration
+ (BOOL)_verifyLocationPermissionsWithLocationManager:(id)manager handler:(id)handler;
+ (BOOL)isSupportedWithOptions:(unint64_t)options;
+ (BOOL)supportsAppClipCodeTracking;
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
+ (BOOL)verifyLocationPermissions;
+ (id)checkAvailabilityQueue;
+ (id)locationManagerQueue;
+ (id)supportedVideoFormats;
+ (void)checkAvailabilityAtCoordinate:(CLLocationCoordinate2D)coordinate withOptions:(unint64_t)options completionHandler:(id)handler;
+ (void)checkAvailabilityWithOptions:(unint64_t)options completionHandler:(id)handler;
- (ARGeoTrackingConfiguration)init;
- (ARImageSensorSettings)imageSensorSettingsForUltraWide;
- (BOOL)appClipCodeTrackingEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings;
- (BOOL)shouldUseJasper;
- (BOOL)shouldUseUltraWide;
- (id)_trackingOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (id)parentImageSensorSettings;
- (int64_t)_depthPrioritization;
- (void)createTechniques:(id)techniques;
- (void)setDetectionImages:(NSSet *)detectionImages;
- (void)setVideoFormat:(id)format;
- (void)setWorldAlignment:(ARWorldAlignment)worldAlignment;
@end

@implementation ARGeoTrackingConfiguration

+ (id)checkAvailabilityQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = checkAvailabilityQueue;
  if (!checkAvailabilityQueue)
  {
    v4 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.geoTrackingConfiguration.checkAvailabilityQueue");
    v5 = checkAvailabilityQueue;
    checkAvailabilityQueue = v4;

    v3 = checkAvailabilityQueue;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)locationManagerQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = locationManagerQueue;
  if (!locationManagerQueue)
  {
    v4 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.geoTrackingConfiguration.locationManagerQueue");
    v5 = locationManagerQueue;
    locationManagerQueue = v4;

    v3 = locationManagerQueue;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (BOOL)verifyLocationPermissions
{
  selfCopy = self;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  locationManagerQueue = [self locationManagerQueue];
  dispatch_assert_queue_not_V2(locationManagerQueue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ARGeoTrackingConfiguration_verifyLocationPermissions__block_invoke;
  block[3] = &unk_1E817D080;
  v8 = &v10;
  v9 = &v16;
  v4 = locationManagerQueue;
  v7 = v4;
  dispatch_sync(v4, block);
  LOBYTE(selfCopy) = [selfCopy _verifyLocationPermissionsWithLocationManager:v17[5] handler:v11[5]];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return selfCopy;
}

uint64_t __55__ARGeoTrackingConfiguration_verifyLocationPermissions__block_invoke(void *a1)
{
  v2 = objc_opt_new();
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [objc_alloc(MEMORY[0x1E695FBE8]) _initWithDelegate:*(*(a1[5] + 8) + 40) onQueue:a1[4]];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[5] + 8) + 40);
  v9 = *(*(a1[6] + 8) + 40);

  return [v8 setLocationManager:v9];
}

+ (BOOL)_verifyLocationPermissionsWithLocationManager:(id)manager handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  handlerCopy = handler;
  if ([MEMORY[0x1E695FBE8] locationServicesEnabled])
  {
    authorizationStatus = [managerCopy authorizationStatus];
    if (!authorizationStatus)
    {
      [managerCopy requestWhenInUseAuthorization];
      authorizationStatus = [handlerCopy waitForAuthorizationStatus];
    }

    if ((authorizationStatus - 5) > 0xFFFFFFFD)
    {
      if (![managerCopy accuracyAuthorization])
      {
        v15 = 1;
        goto LABEL_14;
      }

      v9 = _ARLogGeneral_13();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v11 = NSStringFromClass(v14);
        v17 = 138543618;
        v18 = v11;
        v19 = 2048;
        selfCopy3 = self;
        v12 = "%{public}@ <%p>: Precise location must be authorized for app to use geo tracking.";
        goto LABEL_12;
      }
    }

    else
    {
      v9 = _ARLogGeneral_13();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 138543618;
        v18 = v11;
        v19 = 2048;
        selfCopy3 = self;
        v12 = "%{public}@ <%p>: Location services must be authorized for app to use geo tracking.";
LABEL_12:
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, v12, &v17, 0x16u);
      }
    }
  }

  else
  {
    v9 = _ARLogGeneral_13();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v11 = NSStringFromClass(v13);
      v17 = 138543618;
      v18 = v11;
      v19 = 2048;
      selfCopy3 = self;
      v12 = "%{public}@ <%p>: Location services must be enabled on device to use geo tracking.";
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

+ (BOOL)isSupportedWithOptions:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ARGeoTrackingConfiguration;
  v4 = objc_msgSendSuper2(&v6, sel_isSupported);
  if (v4)
  {
    LOBYTE(v4) = [ARGeoTrackingTechnique isSupportedWithOptions:options];
  }

  return v4;
}

+ (void)checkAvailabilityWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = _ARLogGeneral_13();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543618;
    v23 = v9;
    v24 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Checking geo tracking availability at current device location", buf, 0x16u);
  }

  if ([self isSupportedWithOptions:options])
  {
    v10 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_2;
    v18[3] = &unk_1E817D0F8;
    v11 = v19;
    v19[0] = handlerCopy;
    v19[1] = self;
    v19[2] = options;
    v12 = handlerCopy;
    v13 = v18;
  }

  else
  {
    v14 = _ARLogGeneral_13();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking is not supported on this device", buf, 0x16u);
    }

    v10 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke;
    block[3] = &unk_1E817CC30;
    v11 = &v21;
    v21 = handlerCopy;
    v17 = handlerCopy;
    v13 = block;
  }

  dispatch_async(v10, v13);
}

void __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ARErrorWithCodeAndUserInfo(100, 0);
  (*(v1 + 16))(v1, 0, v2);
}

void __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v2 = [*(a1 + 40) locationManagerQueue];
  dispatch_assert_queue_not_V2(v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_3;
  block[3] = &unk_1E817D080;
  v29 = &v31;
  v30 = &v37;
  v3 = v2;
  v28 = v3;
  dispatch_sync(v3, block);
  if ([*(a1 + 40) _verifyLocationPermissionsWithLocationManager:v38[5] handler:v32[5]])
  {
    v4 = dispatch_semaphore_create(0);
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2810000000;
    v25[3] = "";
    v26 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v5 = v32[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_4;
    v16[3] = &unk_1E817D0A8;
    v6 = v4;
    v17 = v6;
    v19 = v25;
    v20 = v23;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v21 = *(a1 + 40);
    v22 = v8;
    v18 = v7;
    [v5 requestLocationWithCompletionHandler:v16];
    v9 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v6, v9))
    {
      v10 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_2_12;
      v12[3] = &unk_1E817D0D0;
      v14 = v25;
      v15 = v23;
      v13 = *(a1 + 32);
      dispatch_async(v10, v12);
    }

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    v11 = *(a1 + 32);
    v6 = ARErrorWithCodeAndUserInfo(105, 0);
    (*(v11 + 16))(v11, 0, v6);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

uint64_t __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_3(void *a1)
{
  v2 = objc_opt_new();
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [objc_alloc(MEMORY[0x1E695FBE8]) _initWithDelegate:*(*(a1[5] + 8) + 40) onQueue:a1[4]];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[6] + 8) + 40) setDesiredAccuracy:*MEMORY[0x1E6985C78]];
  [*(*(a1[6] + 8) + 40) setActivityType:4];
  v8 = *(*(a1[5] + 8) + 40);
  v9 = *(*(a1[6] + 8) + 40);

  return [v8 setLocationManager:v9];
}

void __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = 1;
  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  if (v8 != 1)
  {
    if (v5)
    {
      v13 = *(a1 + 64);
      [v5 coordinate];
      [v13 checkAvailabilityAtCoordinate:*(a1 + 72) withOptions:*(a1 + 40) completionHandler:?];
      goto LABEL_16;
    }

    if (ARShouldUseLogTypeError_onceToken_25 != -1)
    {
      __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_4_cold_1();
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_25;
    v15 = _ARLogGeneral_13();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = *(a1 + 64);
        *buf = 138543874;
        v29 = v18;
        v30 = 2048;
        v31 = v19;
        v32 = 2112;
        v33 = v6;
        v20 = "%{public}@ <%p>: Could not get location fix for geo tracking availability check: %@";
        v21 = v16;
        v22 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v21, v22, v20, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v18 = NSStringFromClass(v23);
      v24 = *(a1 + 64);
      *buf = 138543874;
      v29 = v18;
      v30 = 2048;
      v31 = v24;
      v32 = 2112;
      v33 = v6;
      v20 = "Error: %{public}@ <%p>: Could not get location fix for geo tracking availability check: %@";
      v21 = v16;
      v22 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    v25 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_10;
    block[3] = &unk_1E817CC30;
    v27 = *(a1 + 40);
    dispatch_async(v25, block);

    goto LABEL_16;
  }

  v9 = _ARLogGeneral_13();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 64);
    *buf = 138543618;
    v29 = v11;
    v30 = 2048;
    v31 = v12;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Availability check has already timed out.", buf, 0x16u);
  }

LABEL_16:
}

void __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ARErrorWithCodeAndUserInfo(102, 0);
  (*(v1 + 16))(v1, 0, v2);
}

void __77__ARGeoTrackingConfiguration_checkAvailabilityWithOptions_completionHandler___block_invoke_2_12(void *a1)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = 1;
  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  if ((v3 & 1) == 0)
  {
    v4 = a1[4];
    v5 = ARErrorWithCodeAndUserInfo(501, 0);
    (*(v4 + 16))(v4, 0, v5);
  }
}

+ (void)checkAvailabilityAtCoordinate:(CLLocationCoordinate2D)coordinate withOptions:(unint64_t)options completionHandler:(id)handler
{
  latitude = coordinate.latitude;
  longitude = coordinate.longitude;
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([self isSupportedWithOptions:options])
  {
    v8 = objc_opt_new();
    *&v9 = latitude;
    *(&v9 + 1) = longitude;
    *buf = v9;
    *&buf[16] = 0u;
    ARLLAToECEF(v25);
    v16 = v25[1];
    v17 = v25[0];
    v10 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__ARGeoTrackingConfiguration_checkAvailabilityAtCoordinate_withOptions_completionHandler___block_invoke_2;
    v20[3] = &unk_1E817D120;
    v23 = latitude;
    v24 = longitude;
    v21 = handlerCopy;
    selfCopy = self;
    *buf = v17;
    *&buf[16] = v16;
    v29 = 0;
    v30 = 0;
    v11 = handlerCopy;
    [v8 determineAvailabilityAtLocation:buf callbackQueue:v10 callback:v20];
  }

  else
  {
    v12 = _ARLogGeneral_13();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking is not supported on this device", buf, 0x16u);
    }

    v15 = +[ARGeoTrackingConfiguration checkAvailabilityQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__ARGeoTrackingConfiguration_checkAvailabilityAtCoordinate_withOptions_completionHandler___block_invoke;
    block[3] = &unk_1E817CC30;
    v27 = handlerCopy;
    v8 = handlerCopy;
    dispatch_async(v15, block);

    v11 = v27;
  }
}

void __90__ARGeoTrackingConfiguration_checkAvailabilityAtCoordinate_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ARErrorWithCodeAndUserInfo(100, 0);
  (*(v1 + 16))(v1, 0, v2);
}

void __90__ARGeoTrackingConfiguration_checkAvailabilityAtCoordinate_withOptions_completionHandler___block_invoke_2(void *a1, char a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = _ARLogGeneral_13();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = a1[5];
      *buf = 138543618;
      v30 = v8;
      v31 = 2048;
      v32 = v9;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Geo tracking availability check succeeded", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = _ARLogGeneral_13();
    v12 = v11;
    if (v5)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = a1[5];
        v16 = a1[6];
        v17 = a1[7];
        v18 = [v5 localizedDescription];
        *buf = 138544387;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        v33 = 2049;
        v34 = v16;
        v35 = 2049;
        v36 = v17;
        v37 = 2112;
        v38 = v18;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Geo tracking availability error at %{private}f, %{private}f: %@", buf, 0x34u);
      }

      v19 = [MEMORY[0x1E696AAE8] mainBundle];
      v20 = [v19 localizedStringForKey:@"Failed to complete geo tracking availability check." value:&stru_1F4208A80 table:0];

      v27 = *MEMORY[0x1E696A588];
      v28 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v10 = ARErrorWithCodeAndUserInfo(501, v21);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = a1[5];
        v25 = a1[6];
        v26 = a1[7];
        *buf = 138544131;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2049;
        v34 = v25;
        v35 = 2049;
        v36 = v26;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking is not available at coordinate: %{private}f, %{private}f", buf, 0x2Au);
      }

      v10 = ARErrorWithCodeAndUserInfo(201, 0);
    }
  }

  (*(a1[4] + 16))();
}

- (ARGeoTrackingConfiguration)init
{
  v17.receiver = self;
  v17.super_class = ARGeoTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v17 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [initPrivate setAutoFocusEnabled:1];
    [v3 setMaximumNumberOfTrackedImages:0];
    [v3 setWantsHDREnvironmentTextures:{+[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.environmentTexturing.wantsHDR"}];
    v4 = objc_opt_new();
    v5 = *(v3 + 19);
    *(v3 + 19) = v4;

    v6 = objc_opt_new();
    v7 = *(v3 + 21);
    *(v3 + 21) = v6;

    v8 = objc_opt_new();
    [v8 minVergenceAngle];
    *(v3 + 22) = v9;
    v10 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"];
    if (v10)
    {
      LOBYTE(v10) = ARAppleNeuralEngine();
    }

    v3[123] = v10;
    v3[124] = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableLowQosScheduling"];
    *(v3 + 125) = 1;
    v3[127] = 0;
    v3[128] = 0;
    v3[122] = 0;
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.visualLocalizationCallInterval"];
    *(v3 + 23) = v11;
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.posteriorVisualLocalizationCallInterval"];
    *(v3 + 14) = v12;
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.bypassChecksForANE"])
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v14 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.bypassChecksForGPS"];
    v15 = v13 | 2;
    if (!v14)
    {
      v15 = v13;
    }

    *(v3 + 24) = v15;
    v3[129] = 1;
    v3[130] = 1;
  }

  return v3;
}

+ (id)supportedVideoFormats
{
  if ([self isSupportedWithOptions:6])
  {
    v2 = +[ARWorldTrackingConfiguration supportedVideoFormats];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

+ (BOOL)supportsAppClipCodeTracking
{
  if (ARAppleNeuralEngine())
  {
    return 1;
  }

  return +[ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode];
}

- (BOOL)appClipCodeTrackingEnabled
{
  if (!self->_appClipCodeTrackingEnabled)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 supportsAppClipCodeTracking];
}

- (id)parentImageSensorSettings
{
  v9.receiver = self;
  v9.super_class = ARGeoTrackingConfiguration;
  parentImageSensorSettings = [(ARConfiguration *)&v9 parentImageSensorSettings];
  settings = [parentImageSensorSettings settings];
  v5 = [settings mutableCopy];

  imageSensorSettingsForUltraWide = [(ARGeoTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  if (imageSensorSettingsForUltraWide)
  {
    [v5 addObject:imageSensorSettingsForUltraWide];
  }

  depthSensorSettingsForJasper = [(ARConfiguration *)self depthSensorSettingsForJasper];
  if (depthSensorSettingsForJasper)
  {
    [v5 addObject:depthSensorSettingsForJasper];
  }

  [parentImageSensorSettings setSettings:v5];

  return parentImageSensorSettings;
}

- (id)imageSensorSettings
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = ARGeoTrackingConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v15 imageSensorSettings];
  [imageSensorSettings setVisionDataOutputEnabled:{-[ARGeoTrackingConfiguration shouldEnableVisionDataForImageSensorSettings:](self, "shouldEnableVisionDataForImageSensorSettings:", imageSensorSettings)}];
  if ([imageSensorSettings visionDataOutputEnabled])
  {
    _trackingOptions = [(ARGeoTrackingConfiguration *)self _trackingOptions];
    [_trackingOptions setImageSensorSettings:imageSensorSettings];
    imageSensorSettingsForUltraWide = [(ARGeoTrackingConfiguration *)self imageSensorSettingsForUltraWide];
    [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

    v6 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
    if (v6)
    {
      [imageSensorSettings setVisionDataOutputParameters:v6];
      v7 = _ARLogGeneral_13();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543874;
        v17 = v9;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 2112;
        v21 = v6;
        v10 = "%{public}@ <%p>: Setting vision data output parameters for wide: %@";
        v11 = v7;
        v12 = 32;
LABEL_7:
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
      }
    }

    else
    {
      v7 = _ARLogGeneral_13();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        *buf = 138543618;
        v17 = v9;
        v18 = 2048;
        selfCopy2 = self;
        v10 = "%{public}@ <%p>: Did not receive vision data output parameters for wide.";
        v11 = v7;
        v12 = 22;
        goto LABEL_7;
      }
    }
  }

  return imageSensorSettings;
}

- (ARImageSensorSettings)imageSensorSettingsForUltraWide
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(ARGeoTrackingConfiguration *)self shouldUseUltraWide])
  {
    v5 = 0;
    goto LABEL_14;
  }

  supportedVideoFormatsForUltraWide = [objc_opt_class() supportedVideoFormatsForUltraWide];
  firstObject = [supportedVideoFormatsForUltraWide firstObject];

  if (firstObject)
  {
    v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:firstObject];
    LODWORD(v6) = 1126170624;
    [(ARImageSensorSettings *)v5 setMaxGainOverride:v6];
    [(ARImageSensorSettings *)v5 setVisionDataOutputEnabled:[(ARGeoTrackingConfiguration *)self shouldEnableVisionDataForImageSensorSettings:v5]];
    if ([(ARImageSensorSettings *)v5 visionDataOutputEnabled])
    {
      _trackingOptions = [(ARGeoTrackingConfiguration *)self _trackingOptions];
      imageSensorSettings = [(ARGeoTrackingConfiguration *)self imageSensorSettings];
      [_trackingOptions setImageSensorSettings:imageSensorSettings];

      [_trackingOptions setImageSensorSettingsForUltraWide:v5];
      v9 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
      if (v9)
      {
        [(ARImageSensorSettings *)v5 setVisionDataOutputParameters:v9];
        v10 = _ARLogGeneral_13();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v18 = 138543874;
          v19 = v12;
          v20 = 2048;
          selfCopy2 = self;
          v22 = 2112;
          v23 = v9;
          v13 = "%{public}@ <%p>: Setting vision data output parameters for ultra wide: %@";
          v14 = v10;
          v15 = 32;
LABEL_11:
          _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, v13, &v18, v15);
        }
      }

      else
      {
        v10 = _ARLogGeneral_13();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v12 = NSStringFromClass(v16);
          v18 = 138543618;
          v19 = v12;
          v20 = 2048;
          selfCopy2 = self;
          v13 = "%{public}@ <%p>: Did not receive vision data output parameters for ultra wide.";
          v14 = v10;
          v15 = 22;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (BOOL)shouldUseUltraWide
{
  if (ARDeviceSupportsUltraWideCamera() && ARUserDefaultsMulticamModeEnabled())
  {
    supportedVideoFormatsForUltraWide = [objc_opt_class() supportedVideoFormatsForUltraWide];
    if ([supportedVideoFormatsForUltraWide count] && self->_shouldUseUltraWideIfAvailable)
    {
      backdropCameraOverride = [objc_opt_class() backdropCameraOverride];

      if (!backdropCameraOverride)
      {
        v5 = 1;
        if (ARDeviceSupportsMulticamMode())
        {
          return v5;
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v5 = 0;
LABEL_10:
  if (ARLinkedOnOrAfterYukon())
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    return v5 & ARDeviceSupportsJasper();
  }

  return v5;
}

- (BOOL)shouldUseJasper
{
  v3 = ARDeviceSupportsJasper();
  if (v3)
  {

    LOBYTE(v3) = [(ARGeoTrackingConfiguration *)self useLidarIfAvailable];
  }

  return v3;
}

- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings
{
  videoFormat = [settings videoFormat];
  if (!videoFormat)
  {
    goto LABEL_8;
  }

  shouldUseUltraWide = [(ARGeoTrackingConfiguration *)self shouldUseUltraWide];
  captureDeviceType = [videoFormat captureDeviceType];
  v7 = captureDeviceType;
  if (!shouldUseUltraWide)
  {
    v9 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(captureDeviceType);

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    LOBYTE(v10) = 0;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E6986948];

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    goto LABEL_8;
  }

  v10 = ![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"];
LABEL_9:

  return v10;
}

- (void)setWorldAlignment:(ARWorldAlignment)worldAlignment
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _ARLogGeneral_13();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromARWorldAlignment([(ARGeoTrackingConfiguration *)self worldAlignment]);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to set world alignment of ARGeoTrackingConfiguration. Alignment is always set to %{public}@", &v8, 0x20u);
  }
}

- (void)setDetectionImages:(NSSet *)detectionImages
{
  v4 = detectionImages;
  v6 = v4;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  objc_storeStrong(&self->_detectionImages, v4);
  v5 = v6;
  if (!v6)
  {

    v5 = 0;
  }
}

- (void)setVideoFormat:(id)format
{
  formatCopy = format;
  v6.receiver = self;
  v6.super_class = ARGeoTrackingConfiguration;
  [(ARConfiguration *)&v6 setVideoFormat:formatCopy];
  if ([formatCopy has4KVideoResolution])
  {
    isX420PixelFormat = 1;
  }

  else
  {
    isX420PixelFormat = [formatCopy isX420PixelFormat];
  }

  [(ARGeoTrackingConfiguration *)self setAlwaysUsePrimaryCameraForTracking:isX420PixelFormat];
}

- (void)createTechniques:(id)techniques
{
  v57 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  frameSemantics = [(ARConfiguration *)self frameSemantics];
  if (![(ARGeoTrackingConfiguration *)self useLidarIfAvailable]&& (frameSemantics & 0x18) != 0)
  {
    if (_ARLogRuntimeIssues_onceToken != -1)
    {
      [ARGeoTrackingConfiguration createTechniques:];
    }

    v6 = _ARLogRuntimeIssues_logObj;
    if (os_log_type_enabled(_ARLogRuntimeIssues_logObj, OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v52 = v9;
      v53 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Disabling Lidar (useLidarIfAvailable=false) and SceneDepth is not compatible (ARFrameSemanticSceneDepth | ARFrameSemanticSmoothedSceneDepth)", buf, 0x16u);
    }
  }

  _trackingOptions = [(ARGeoTrackingConfiguration *)self _trackingOptions];
  imageSensorSettings = [(ARGeoTrackingConfiguration *)self imageSensorSettings];
  [_trackingOptions setImageSensorSettings:imageSensorSettings];

  imageSensorSettingsForUltraWide = [(ARGeoTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

  if ([(ARGeoTrackingConfiguration *)self environmentTexturing])
  {
    [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x80}];
  }

  replaySensor = [(ARConfiguration *)self replaySensor];
  v14 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
  {
    [_trackingOptions setDeterministicMode:1];
  }

  if ([_trackingOptions planeDetection])
  {
    v15 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"];
    v16 = _ARLogGeneral_13();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = @"disabled";
      *buf = 138543874;
      v52 = v18;
      if (v15)
      {
        v19 = @"enabled";
      }

      v53 = 2048;
      selfCopy2 = self;
      v55 = 2114;
      v56 = v19;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (v15)
    {
      [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x200}];
    }
  }

  v20 = [[ARWorldTrackingTechnique alloc] initWithOptions:_trackingOptions];
  if (v20)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:v20];
    options = [(ARWorldTrackingTechnique *)v20 options];
    planeDetection = [options planeDetection];

    if (planeDetection)
    {
      v24 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v20];
      [techniquesCopy addObject:v24];
    }

    if ([(ARGeoTrackingConfiguration *)self environmentTexturing])
    {
      v25 = [[AREnvironmentTexturingTechnique alloc] initWithOptions:[(ARGeoTrackingConfiguration *)self environmentTexturing] wantsHDREnvironmentTextures:self->_wantsHDREnvironmentTextures];
      [techniquesCopy addObject:v25];
    }

    v26 = [[ARParentTechnique alloc] initWithParallelTechniques:array];
    [techniquesCopy insertObject:v26 atIndex:0];
    v50.receiver = self;
    v50.super_class = ARGeoTrackingConfiguration;
    [(ARConfiguration *)&v50 createTechniques:techniquesCopy];
    if ([_trackingOptions planeDetection] && -[ARGeoTrackingConfiguration isMLModelEnabled](self, "isMLModelEnabled"))
    {
      shouldUseJasper = [(ARGeoTrackingConfiguration *)self shouldUseJasper];
      maxUltrawideImageForwardingFrameRate = [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate];
      if (shouldUseJasper)
      {
        ARAddJasperTechniquesToParent(v26, techniquesCopy, 1, 0, maxUltrawideImageForwardingFrameRate);
      }

      else
      {
        ARAddNonJasperSemanticsToParent(v26, techniquesCopy, maxUltrawideImageForwardingFrameRate, 1);
      }
    }

    v49 = v14;
    v29 = [techniquesCopy indexOfObjectPassingTest:{&__block_literal_global_53, array}];
    v30 = [ARWorldAlignmentTechnique alloc];
    videoFormat = [(ARConfiguration *)self videoFormat];
    v32 = -[ARWorldAlignmentTechnique initWithAlignment:cameraPosition:](v30, "initWithAlignment:cameraPosition:", 16, [videoFormat captureDevicePosition]);

    [techniquesCopy removeObjectAtIndex:v29];
    v33 = [techniquesCopy indexOfObject:v26];
    [techniquesCopy insertObject:v32 atIndex:v33 + 1];
    v34 = objc_opt_new();
    [(ARGeoTrackingConfiguration *)self visualLocalizationCallInterval];
    [v34 setVisualLocalizationCallInterval:?];
    [v34 setPosteriorVisualLocalizationCallInterval:self->_posteriorVisualLocalizationCallInterval];
    [v34 setVisualLocalizationUpdatesRequested:{-[ARGeoTrackingConfiguration visualLocalizationUpdatesRequested](self, "visualLocalizationUpdatesRequested")}];
    [v34 setSupportEnablementOptions:{-[ARGeoTrackingConfiguration supportEnablementOptions](self, "supportEnablementOptions")}];
    [techniquesCopy insertObject:v34 atIndex:v33 + 1];
    detectionImages = [(ARGeoTrackingConfiguration *)self detectionImages];
    v36 = [detectionImages count];

    if (v36)
    {
      v37 = [ARImageDetectionTechnique alloc];
      detectionImages2 = [(ARGeoTrackingConfiguration *)self detectionImages];
      allObjects = [detectionImages2 allObjects];
      v40 = [(ARImageDetectionTechnique *)v37 initWithReferenceImages:allObjects maximumNumberOfTrackedImages:[(ARGeoTrackingConfiguration *)self maximumNumberOfTrackedImages]];

      [(ARImageDetectionTechnique *)v40 setEnableAutomaticImageScaleEstimation:[(ARGeoTrackingConfiguration *)self automaticImageScaleEstimationEnabled]];
      [techniquesCopy addObject:v40];
    }

    detectionObjects = [(ARGeoTrackingConfiguration *)self detectionObjects];
    v42 = [detectionObjects count];

    if (v42)
    {
      v43 = [ARObjectDetectionTechnique alloc];
      detectionObjects2 = [(ARGeoTrackingConfiguration *)self detectionObjects];
      allObjects2 = [detectionObjects2 allObjects];
      v46 = [(ARObjectDetectionTechnique *)v43 initWithDetectionObjects:allObjects2];

      [techniquesCopy addObject:v46];
    }

    if ([(ARGeoTrackingConfiguration *)self appClipCodeTrackingEnabled])
    {
      v47 = [[ARAppClipCodeTechnique alloc] initWithIgnoreURLLimitation:[(ARGeoTrackingConfiguration *)self ignoreAppClipCodeURLLimitation]];
      [techniquesCopy addObject:v47];
    }

    v14 = v49;
  }
}

uint64_t __47__ARGeoTrackingConfiguration_createTechniques___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_trackingOptions
{
  v3 = objc_alloc_init(ARWorldTrackingOptions);
  deviceModel = [(ARConfiguration *)self deviceModel];
  [(ARWorldTrackingOptions *)v3 setDeviceModel:deviceModel];

  [(ARWorldTrackingOptions *)v3 setRelocalizationEnabled:0];
  [(ARWorldTrackingOptions *)v3 setInitialWorldMap:0];
  [(ARWorldTrackingOptions *)v3 setSlamConfiguration:@"CoreLocationIntegration"];
  [(ARWorldTrackingOptions *)v3 setPlaneDetection:[(ARGeoTrackingConfiguration *)self planeDetection]];
  [(ARGeoTrackingConfiguration *)self minVergenceAngle];
  [(ARWorldTrackingOptions *)v3 setMinVergenceAngle:?];
  [(ARWorldTrackingOptions *)v3 setMlModelEnabled:[(ARGeoTrackingConfiguration *)self isMLModelEnabled]];
  [(ARWorldTrackingOptions *)v3 setLowQosSchedulingEnabled:[(ARGeoTrackingConfiguration *)self isLowQosSchedulingEnabled]];
  [(ARWorldTrackingOptions *)v3 setCollaborationEnabled:0];
  [(ARWorldTrackingOptions *)v3 setSceneReconstruction:0];
  [(ARWorldTrackingOptions *)v3 setPlaneEstimationShouldUseJasperData:[(ARGeoTrackingConfiguration *)self shouldUseJasper]];
  v5 = [(ARConfiguration *)self frameSemantics]& 8;
  if (v5 | [(ARConfiguration *)self frameSemantics]& 0x10)
  {
    [(ARWorldTrackingOptions *)v3 setDepthBuffersWillBeProvided:1];
  }

  [(ARWorldTrackingOptions *)v3 setAlwaysUsePrimaryCameraForTracking:[(ARGeoTrackingConfiguration *)self alwaysUsePrimaryCameraForTracking]];
  [(ARWorldTrackingOptions *)v3 setDisableMLRelocalization:[(ARConfiguration *)self disableMLRelocalization]];

  return v3;
}

- (int64_t)_depthPrioritization
{
  if ([(ARGeoTrackingConfiguration *)self depthOptimizedForStaticScene])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  if (semantics & 7) == 0 && (ARDeviceSupportsJasper() & 1) != 0 || (semantics & 0x1C) == 0 && (ARAppleNeuralEngine() & 1) != 0 || (semantics & 4) == 0 && ARAppleNeuralEngine() && (ARDeviceSupportsJasper())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ARGeoTrackingConfiguration;
  return objc_msgSendSuper2(&v6, sel_supportsFrameSemantics_, semantics);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v23.receiver = self;
  v23.super_class = ARGeoTrackingConfiguration;
  if ([(ARConfiguration *)&v23 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_planeDetection == *(v5 + 18) && self->_minVergenceAngle == *(v5 + 22) && self->_mlModelEnabled == v5[123] && self->_environmentTexturing == *(v5 + 17) && self->_lowQosSchedulingEnabled == v5[124] && self->_wantsHDREnvironmentTextures == v5[120])
    {
      detectionImages = self->_detectionImages;
      detectionImages = [v5 detectionImages];
      if ((detectionImages == detectionImages || -[NSSet isEqual:](self->_detectionImages, "isEqual:", *(v6 + 19))) && self->_maximumNumberOfTrackedImages == *(v6 + 20) && ((detectionObjects = self->_detectionObjects, detectionObjects == *(v6 + 21)) || -[NSSet isEqual:](detectionObjects, "isEqual:")) && (automaticImageScaleEstimationEnabled = self->_automaticImageScaleEstimationEnabled, automaticImageScaleEstimationEnabled == [v6 automaticImageScaleEstimationEnabled]) && (shouldUseUltraWideIfAvailable = self->_shouldUseUltraWideIfAvailable, shouldUseUltraWideIfAvailable == objc_msgSend(v6, "shouldUseUltraWideIfAvailable")) && (depthOptimizedForStaticScene = self->_depthOptimizedForStaticScene, depthOptimizedForStaticScene == objc_msgSend(v6, "depthOptimizedForStaticScene")) && (alwaysUsePrimaryCameraForTracking = self->_alwaysUsePrimaryCameraForTracking, alwaysUsePrimaryCameraForTracking == objc_msgSend(v6, "alwaysUsePrimaryCameraForTracking")) && (ignoreAppClipCodeURLLimitation = self->_ignoreAppClipCodeURLLimitation, ignoreAppClipCodeURLLimitation == objc_msgSend(v6, "ignoreAppClipCodeURLLimitation")) && (appClipCodeTrackingEnabled = self->_appClipCodeTrackingEnabled, appClipCodeTrackingEnabled == objc_msgSend(v6, "appClipCodeTrackingEnabled")) && (supportEnablementOptions = self->_supportEnablementOptions, supportEnablementOptions == objc_msgSend(v6, "supportEnablementOptions")) && (visualLocalizationCallInterval = self->_visualLocalizationCallInterval, objc_msgSend(v6, "visualLocalizationCallInterval"), visualLocalizationCallInterval == v18) && self->_posteriorVisualLocalizationCallInterval == *(v6 + 14) && (visualLocalizationUpdatesRequested = self->_visualLocalizationUpdatesRequested, visualLocalizationUpdatesRequested == objc_msgSend(v6, "visualLocalizationUpdatesRequested")))
      {
        useLidarIfAvailable = self->_useLidarIfAvailable;
        v21 = useLidarIfAvailable == [v6 useLidarIfAvailable];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ARGeoTrackingConfiguration;
  v5 = [(ARConfiguration *)&v11 copyWithZone:?];
  v5[18] = self->_planeDetection;
  v5[22] = *&self->_minVergenceAngle;
  *(v5 + 123) = self->_mlModelEnabled;
  *(v5 + 124) = self->_lowQosSchedulingEnabled;
  v5[17] = self->_environmentTexturing;
  *(v5 + 120) = self->_wantsHDREnvironmentTextures;
  v6 = [(NSSet *)self->_detectionImages copyWithZone:zone];
  v7 = v5[19];
  v5[19] = v6;

  v5[20] = self->_maximumNumberOfTrackedImages;
  v8 = [(NSSet *)self->_detectionObjects copyWithZone:zone];
  v9 = v5[21];
  v5[21] = v8;

  *(v5 + 121) = self->_automaticImageScaleEstimationEnabled;
  *(v5 + 125) = self->_shouldUseUltraWideIfAvailable;
  *(v5 + 126) = self->_depthOptimizedForStaticScene;
  *(v5 + 127) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 128) = self->_ignoreAppClipCodeURLLimitation;
  *(v5 + 122) = self->_appClipCodeTrackingEnabled;
  v5[23] = *&self->_visualLocalizationCallInterval;
  v5[14] = *&self->_posteriorVisualLocalizationCallInterval;
  v5[24] = self->_supportEnablementOptions;
  *(v5 + 129) = self->_visualLocalizationUpdatesRequested;
  *(v5 + 130) = self->_useLidarIfAvailable;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  if ([(ARConfiguration *)self isAutoFocusEnabled])
  {
    v8 = @"Enabled";
  }

  else
  {
    v8 = @"Disabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromAREnvironmentTexturing(self->_environmentTexturing);
  [v6 appendFormat:@" environmentTexturing=%@", v9];

  if ([(ARGeoTrackingConfiguration *)self wantsHDREnvironmentTextures])
  {
    v10 = @"Enabled";
  }

  else
  {
    v10 = @"Disabled";
  }

  [v6 appendFormat:@" wantsHDREnvironmentTextures=%@", v10];
  v11 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v11];

  detectionImages = [(ARGeoTrackingConfiguration *)self detectionImages];
  v13 = [detectionImages count];

  if (v13)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARGeoTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
    if ([(ARGeoTrackingConfiguration *)self automaticImageScaleEstimationEnabled])
    {
      v14 = @"Enabled";
    }

    else
    {
      v14 = @"Disabled";
    }

    [v6 appendFormat:@" automaticImageScaleEstimation=%@", v14];
    detectionImages2 = [(ARGeoTrackingConfiguration *)self detectionImages];
    v16 = [detectionImages2 count];
    detectionImages3 = [(ARGeoTrackingConfiguration *)self detectionImages];
    allObjects = [detectionImages3 allObjects];
    v19 = [allObjects ar_map:&__block_literal_global_96];
    v20 = [v19 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionImages=[count: %ld, %@]", v16, v20];
  }

  detectionObjects = [(ARGeoTrackingConfiguration *)self detectionObjects];
  v22 = [detectionObjects count];

  if (v22)
  {
    detectionObjects2 = [(ARGeoTrackingConfiguration *)self detectionObjects];
    allObjects2 = [detectionObjects2 allObjects];
    v25 = [allObjects2 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionObjects=[%@]", v25];
  }

  [v6 appendFormat:@" visualLocalizationCallInterval=%f", *&self->_visualLocalizationCallInterval];
  [v6 appendFormat:@" posteriorVisualLocalizationCallInterval=%f", *&self->_posteriorVisualLocalizationCallInterval];
  [v6 appendFormat:@" supportEnablementOptions=%ld", self->_supportEnablementOptions];
  [v6 appendFormat:@" visualLocalizationUpdatesRequested=%d", self->_visualLocalizationUpdatesRequested];
  [v6 appendFormat:@" useLidarIfAvailable=%d", self->_useLidarIfAvailable];
  if ([(ARGeoTrackingConfiguration *)self appClipCodeTrackingEnabled])
  {
    v26 = @"Enabled";
  }

  else
  {
    v26 = @"Disabled";
  }

  [v6 appendFormat:@" appClipCodeTracking=%@", v26];
  [v6 appendString:@">"];

  return v6;
}

@end