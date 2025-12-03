@interface APLocationManager
+ (id)_authorizationChangedBlocks;
+ (id)createReverseGeocoder;
+ (id)sharedInstance;
+ (void)addAuthorizationChangedBlock:(id)block;
+ (void)removeAuthorizationChangedBlocks;
- (APLocationManager)init;
- (BOOL)locationEnabled;
- (id)locationInfo;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)start;
- (void)stop;
- (void)updatePlacemark;
@end

@implementation APLocationManager

- (APLocationManager)init
{
  v9.receiver = self;
  v9.super_class = APLocationManager;
  v2 = [(APLocationManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 17) = 0;
    *(v2 + 5) = 0;
    v4 = dispatch_queue_create("com.apple.ap.locationQueue", 0);
    locationQueue = v3->_locationQueue;
    v3->_locationQueue = v4;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BADC6688;
    block[3] = &unk_1E7F1CE98;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1EDBA4BA8 != -1)
  {
    sub_1BADC4CF0();
  }

  v3 = qword_1EDBA4BC0;

  return v3;
}

- (BOOL)locationEnabled
{
  v5 = objc_msgSend_callerStatus(self, a2, v2, v3);

  return objc_msgSend_locationEnabledFor_(APLocationManager, v4, v5, v6);
}

- (id)locationInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1BAF15A70;
  v10 = sub_1BAF15A80;
  v11 = 0;
  locationQueue = self->_locationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1BADC4F28;
  v5[3] = &unk_1E7F1D028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(locationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)start
{
  locationQueue = self->_locationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BADC6860;
  block[3] = &unk_1E7F1CE98;
  block[4] = self;
  dispatch_async(locationQueue, block);
}

+ (id)_authorizationChangedBlocks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = qword_1EDBA4160;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updatePlacemark
{
  v48 = *MEMORY[0x1E69E9840];
  if (!self->_updatingPlacemark)
  {
    v5 = objc_msgSend_location(self, a2, v2, v3);
    lastPlacemarkLocation = self->_lastPlacemarkLocation;
    if (lastPlacemarkLocation && (objc_msgSend_distanceFromLocation_(lastPlacemarkLocation, v7, v5, v8), v11 = *MEMORY[0x1E6985C90], v10 < *MEMORY[0x1E6985C90]))
    {
      v33 = v10;
      v6 = APLogForCategory(0x1CuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v34 = objc_opt_class();
        v35 = MEMORY[0x1E696AD98];
        v36 = v34;
        v40 = objc_msgSend_numberWithDouble_(v35, v37, v38, v39, v11);
        *buf = 138478339;
        v43 = v34;
        v44 = 2048;
        v45 = *&v33;
        v46 = 2114;
        v47 = v40;
        _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "[%{private}@] Distance traveled (%f meters) is less than %{public}@ meters. No need to update Reverse Geolocation.", buf, 0x20u);
      }
    }

    else
    {
      self->_updatingPlacemark = 1;
      v12 = objc_opt_class();
      v6 = objc_msgSend_createReverseGeocoder(v12, v13, v14, v15);
      v16 = objc_opt_class();
      canReverseGeocodeLocation = objc_msgSend_canReverseGeocodeLocation_(v16, v17, v6, v18);
      v20 = APLogForCategory(0x1CuLL);
      v21 = v20;
      if (canReverseGeocodeLocation)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          v23 = MEMORY[0x1E695DF58];
          v24 = v22;
          v27 = objc_msgSend_localeWithLocaleIdentifier_(v23, v25, @"en_US", v26);
          *buf = 138478339;
          v43 = v22;
          v44 = 2117;
          v45 = v5;
          v46 = 2113;
          v47 = v27;
          _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_DEBUG, "[%{private}@ updatePlacemark]: calling reverseGeocodeLocation with parameters:\nlocation = %{sensitive}@\npreferredLocale = %{private}@\nheading = -1\nlocalResultsOnly = NO", buf, 0x20u);
        }

        v21 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v28, @"en_US", v29);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = sub_1BAF15D8C;
        v41[3] = &unk_1E7F1D050;
        v41[4] = self;
        objc_msgSend_reverseGeocodeLocation_preferredLocale_heading_localResultsOnly_completionHandler_(v6, v30, v5, v21, 0, v41, -1.0);
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v43 = objc_opt_class();
        v31 = v43;
        _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "[%{private}@] Error: localized reverse geolocation is not possible.", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  v5 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v43 = objc_opt_class();
    v6 = v43;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_DEBUG, "[%{private}@] Reverse Geolocation update already in-flight.", buf, 0xCu);
LABEL_13:
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (id)createReverseGeocoder
{
  v2 = objc_alloc_init(MEMORY[0x1E695FBC8]);

  return v2;
}

- (void)stop
{
  locationQueue = self->_locationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF15B10;
  block[3] = &unk_1E7F1CE98;
  block[4] = self;
  dispatch_async(locationQueue, block);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  locationQueue = self->_locationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1BAF160BC;
  v7[3] = &unk_1E7F1D098;
  v8 = authorizationCopy;
  selfCopy = self;
  v6 = authorizationCopy;
  dispatch_async(locationQueue, v7);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  locationQueue = self->_locationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1BAF1639C;
  v8[3] = &unk_1E7F1D098;
  v8[4] = self;
  v9 = locationsCopy;
  v7 = locationsCopy;
  dispatch_async(locationQueue, v8);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  errorCopy = error;
  v7 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = managerCopy;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_ERROR, "%{public}@ didFailWithError %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)addAuthorizationChangedBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    aBlock = blockCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (qword_1EDBA4160)
    {
      v9 = objc_msgSend_mutableCopy(qword_1EDBA4160, v6, v7, v8);
    }

    else
    {
      v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v6, 1, v8);
    }

    v10 = v9;
    v11 = _Block_copy(aBlock);
    objc_msgSend_addObject_(v10, v12, v11, v13);

    v17 = objc_msgSend_copy(v10, v14, v15, v16);
    v18 = qword_1EDBA4160;
    qword_1EDBA4160 = v17;

    objc_sync_exit(selfCopy);
    blockCopy = aBlock;
  }
}

+ (void)removeAuthorizationChangedBlocks
{
  obj = self;
  objc_sync_enter(obj);
  v2 = qword_1EDBA4160;
  qword_1EDBA4160 = 0;

  objc_sync_exit(obj);
}

@end