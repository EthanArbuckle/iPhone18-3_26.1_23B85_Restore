@interface ARGeoTrackingLocationRequestHandler
- (ARGeoTrackingLocationRequestHandler)init;
- (int)waitForAuthorizationStatus;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestLocationWithCompletionHandler:(id)handler;
- (void)setLocationManager:(id)manager;
@end

@implementation ARGeoTrackingLocationRequestHandler

- (ARGeoTrackingLocationRequestHandler)init
{
  v7.receiver = self;
  v7.super_class = ARGeoTrackingLocationRequestHandler;
  v2 = [(ARGeoTrackingLocationRequestHandler *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    authorizationCondition = v2->_authorizationCondition;
    v2->_authorizationCondition = v3;

    v2->_authorizationStatus = 0;
    locationCompletionHandler = v2->_locationCompletionHandler;
    v2->_locationCompletionHandler = 0;
  }

  return v2;
}

- (void)setLocationManager:(id)manager
{
  managerCopy = manager;
  objc_storeWeak(&self->_locationManager, managerCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v18 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  managerCopy = manager;
  v8 = _ARLogGeneral_24();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received location", &v14, 0x16u);
  }

  [managerCopy stopUpdatingLocation];
  lastObject = [locationsCopy lastObject];

  locationCompletionHandler = self->_locationCompletionHandler;
  if (locationCompletionHandler)
  {
    locationCompletionHandler[2](locationCompletionHandler, lastObject, 0);
    v13 = self->_locationCompletionHandler;
    self->_locationCompletionHandler = 0;
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  errorCopy = error;
  if (ARShouldUseLogTypeError_onceToken_33 != -1)
  {
    [ARGeoTrackingLocationRequestHandler locationManager:didFailWithError:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_33;
  v9 = _ARLogGeneral_24();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v19 = 138543874;
      v20 = v12;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2112;
      v24 = errorCopy;
      v13 = "%{public}@ <%p>: Location request handler failed: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v14, v15, v13, &v19, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v12 = NSStringFromClass(v16);
    v19 = 138543874;
    v20 = v12;
    v21 = 2048;
    selfCopy2 = self;
    v23 = 2112;
    v24 = errorCopy;
    v13 = "Error: %{public}@ <%p>: Location request handler failed: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  if ([errorCopy code])
  {
    locationCompletionHandler = self->_locationCompletionHandler;
    if (locationCompletionHandler)
    {
      locationCompletionHandler[2](locationCompletionHandler, 0, errorCopy);
      v18 = self->_locationCompletionHandler;
      self->_locationCompletionHandler = 0;
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v16 = *MEMORY[0x1E69E9840];
  authorizationCondition = self->_authorizationCondition;
  authorizationCopy = authorization;
  [(NSCondition *)authorizationCondition lock];
  authorizationStatus = [authorizationCopy authorizationStatus];

  self->_authorizationStatus = authorizationStatus;
  [(NSCondition *)self->_authorizationCondition broadcast];
  [(NSCondition *)self->_authorizationCondition unlock];
  v7 = _ARLogGeneral_24();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138543874;
    v11 = v9;
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    v15 = authorizationStatus;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: User has set location authorization status: %d", &v10, 0x1Cu);
  }
}

- (int)waitForAuthorizationStatus
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_24();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Waiting for location authorization from user", &v8, 0x16u);
  }

  [(NSCondition *)self->_authorizationCondition lock];
  while (1)
  {
    authorizationStatus = self->_authorizationStatus;
    if (authorizationStatus)
    {
      break;
    }

    [(NSCondition *)self->_authorizationCondition wait];
  }

  [(NSCondition *)self->_authorizationCondition unlock];
  return authorizationStatus;
}

- (void)requestLocationWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _ARLogGeneral_24();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Waiting for location for availability check", &v9, 0x16u);
  }

  [(ARGeoTrackingLocationRequestHandler *)self setLocationCompletionHandler:handlerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_locationManager);
  [WeakRetained startUpdatingLocation];
}

@end