@interface ARLocationSensorService
- (ARLocationSensorService)initWithConnection:(id)a3;
- (id)updateFromDeviceOrientationData:(id)a3;
- (id)updateFromLocationData:(id)a3;
- (void)configureForReplay;
- (void)currentLocationWithReply:(id)a3;
- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4;
- (void)sensor:(id)a3 didOutputSensorData:(id)a4;
- (void)updateARSessionState:(unint64_t)a3;
- (void)updateEstimationFromVIOPose:(id)a3 imageData:(id)a4;
- (void)updateFromVisualLocalizationResult:(id)a3;
@end

@implementation ARLocationSensorService

- (ARLocationSensorService)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = ARRemoteLocationSensorServiceInterface();
  v6 = ARRemoteLocationSensorClientInterface();
  v14.receiver = self;
  v14.super_class = ARLocationSensorService;
  v7 = [(ARDaemonService *)&v14 initWithConnection:v4 exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    v8 = [v4 remoteObjectProxy];
    [(ARSensorService *)v7 setClientProxy:v8];

    v9 = objc_alloc(MEMORY[0x277CE52E8]);
    v10 = [(ARDaemonService *)v7 clientBundleIdentifier];
    v11 = [v9 initWithBundleIdentifier:v10];
    [(ARSensorService *)v7 setSensor:v11];

    v12 = [(ARSensorService *)v7 sensor];
    [v12 setDelegate:v7];
  }

  return v7;
}

- (void)configureForReplay
{
  v2 = [(ARSensorService *)self sensor];
  [v2 configureForReplay];
}

- (void)currentLocationWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ARSensorService *)self sensor];
  v6 = [v5 currentLocation];

  v4[2](v4, v6, 0);
}

- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v8 = [(ARSensorService *)self sensor];
  [v8 lookupAltitudeAtCoordinate:v7 completionHandler:{latitude, longitude}];
}

- (void)updateARSessionState:(unint64_t)a3
{
  v4 = [(ARSensorService *)self sensor];
  [v4 updateARSessionState:a3];
}

- (void)updateEstimationFromVIOPose:(id)a3 imageData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ARSensorService *)self sensor];
  [v8 updateEstimationFromVIOPose:v7 imageData:v6];
}

- (void)updateFromVisualLocalizationResult:(id)a3
{
  v4 = a3;
  v5 = [(ARSensorService *)self sensor];
  [v5 updateFromVisualLocalizationResult:v4];
}

- (id)updateFromLocationData:(id)a3
{
  v4 = a3;
  v5 = [(ARSensorService *)self sensor];
  v6 = [v5 updateFromLocationData:v4];

  return v6;
}

- (id)updateFromDeviceOrientationData:(id)a3
{
  v4 = a3;
  v5 = [(ARSensorService *)self sensor];
  v6 = [v5 updateFromDeviceOrientationData:v4];

  return v6;
}

- (void)sensor:(id)a3 didOutputSensorData:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(ARDaemonService *)self dataSource];
    v7 = [v6 service:self peerServiceOfType:objc_opt_class()];

    if (_ARLogDaemon_onceToken_0 != -1)
    {
      [ARLocationSensorService sensor:didOutputSensorData:];
    }

    v8 = _ARLogDaemon_logObj_0;
    if (os_log_type_enabled(_ARLogDaemon_logObj_0, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544130;
      v17 = v11;
      v18 = 2048;
      v19 = self;
      v20 = 2048;
      v21 = v7;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: sensor:didOutputSensorData: - Calling processLocationData on geoTrackingTechniqueService (%p): %@", buf, 0x2Au);
    }

    v12 = [v7 processLocationData:v5];
  }

  v13 = [(ARSensorService *)self sensor];
  v15.receiver = self;
  v15.super_class = ARLocationSensorService;
  [(ARSensorService *)&v15 sensor:v13 didOutputSensorData:v5];

  v14 = *MEMORY[0x277D85DE8];
}

@end