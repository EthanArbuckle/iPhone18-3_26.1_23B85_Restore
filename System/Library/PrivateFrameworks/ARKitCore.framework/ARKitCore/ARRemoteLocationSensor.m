@interface ARRemoteLocationSensor
- (ARLocationData)currentLocation;
- (ARRemoteLocationSensor)init;
- (ARRemoteLocationSensor)initWithServerConnection:(id)a3;
- (void)configureForReplay;
- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4;
- (void)updateARSessionState:(unint64_t)a3;
- (void)updateEstimationFromVIOPose:(id)a3 imageData:(id)a4;
- (void)updateFromVisualLocalizationResult:(id)a3;
@end

@implementation ARRemoteLocationSensor

- (ARRemoteLocationSensor)init
{
  v3.receiver = self;
  v3.super_class = ARRemoteLocationSensor;
  return [(ARRemoteSensor *)&v3 initWithServiceName:@"com.apple.arkit.service.location"];
}

- (ARRemoteLocationSensor)initWithServerConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARRemoteLocationSensor;
  v5 = [(ARRemoteSensor *)&v9 initWithServerConnection:v4];
  if (v5)
  {
    v6 = ARRemoteLocationSensorClientInterface();
    [v4 setExportedInterface:v6];

    v7 = ARRemoteLocationSensorServiceInterface();
    [v4 setRemoteObjectInterface:v7];
  }

  return v5;
}

- (void)configureForReplay
{
  v3 = [(ARRemoteSensor *)self serverConnection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ARRemoteLocationSensor_configureForReplay__block_invoke;
  v5[3] = &unk_1E817E818;
  v5[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v5];

  [v4 configureForReplay];
}

void __44__ARRemoteLocationSensor_configureForReplay__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_11();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (ARLocationData)currentLocation
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v3 = [(ARRemoteSensor *)self serverConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__ARRemoteLocationSensor_currentLocation__block_invoke;
  v8[3] = &unk_1E817E818;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__ARRemoteLocationSensor_currentLocation__block_invoke_82;
  v7[3] = &unk_1E817E940;
  v7[4] = &v9;
  [v4 currentLocationWithReply:v7];
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __41__ARRemoteLocationSensor_currentLocation__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_11();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v8 = [(ARRemoteSensor *)self serverConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ARRemoteLocationSensor_lookupAltitudeAtCoordinate_completionHandler___block_invoke;
  v10[3] = &unk_1E817E818;
  v10[4] = self;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v10];

  [v9 lookupAltitudeAtCoordinate:v7 completionHandler:{latitude, longitude}];
}

void __71__ARRemoteLocationSensor_lookupAltitudeAtCoordinate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_11();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)updateARSessionState:(unint64_t)a3
{
  v5 = [(ARRemoteSensor *)self serverConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ARRemoteLocationSensor_updateARSessionState___block_invoke;
  v7[3] = &unk_1E817E818;
  v7[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v7];

  [v6 updateARSessionState:a3];
}

void __47__ARRemoteLocationSensor_updateARSessionState___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_11();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)updateEstimationFromVIOPose:(id)a3 imageData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ARRemoteSensor *)self serverConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ARRemoteLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke;
  v10[3] = &unk_1E817E818;
  v10[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v10];

  [v9 updateEstimationFromVIOPose:v7 imageData:v6];
}

void __64__ARRemoteLocationSensor_updateEstimationFromVIOPose_imageData___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_11();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)updateFromVisualLocalizationResult:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARRemoteLocationSensor updateFromVisualLocalizationResult:]"];
  [v3 raise:v4 format:{@"%@ should no longer be called remotely.", v5}];
}

@end