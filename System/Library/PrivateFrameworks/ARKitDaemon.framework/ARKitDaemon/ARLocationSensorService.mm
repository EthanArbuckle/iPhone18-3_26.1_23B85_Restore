@interface ARLocationSensorService
- (ARLocationSensorService)initWithConnection:(id)connection;
- (id)updateFromDeviceOrientationData:(id)data;
- (id)updateFromLocationData:(id)data;
- (void)configureForReplay;
- (void)currentLocationWithReply:(id)reply;
- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)sensor:(id)sensor didOutputSensorData:(id)data;
- (void)updateARSessionState:(unint64_t)state;
- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data;
- (void)updateFromVisualLocalizationResult:(id)result;
@end

@implementation ARLocationSensorService

- (ARLocationSensorService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = ARRemoteLocationSensorServiceInterface();
  v6 = ARRemoteLocationSensorClientInterface();
  v14.receiver = self;
  v14.super_class = ARLocationSensorService;
  v7 = [(ARDaemonService *)&v14 initWithConnection:connectionCopy exportedInterface:v5 remoteObjectInterface:v6];

  if (v7)
  {
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(ARSensorService *)v7 setClientProxy:remoteObjectProxy];

    v9 = objc_alloc(MEMORY[0x277CE52E8]);
    clientBundleIdentifier = [(ARDaemonService *)v7 clientBundleIdentifier];
    v11 = [v9 initWithBundleIdentifier:clientBundleIdentifier];
    [(ARSensorService *)v7 setSensor:v11];

    sensor = [(ARSensorService *)v7 sensor];
    [sensor setDelegate:v7];
  }

  return v7;
}

- (void)configureForReplay
{
  sensor = [(ARSensorService *)self sensor];
  [sensor configureForReplay];
}

- (void)currentLocationWithReply:(id)reply
{
  replyCopy = reply;
  sensor = [(ARSensorService *)self sensor];
  currentLocation = [sensor currentLocation];

  replyCopy[2](replyCopy, currentLocation, 0);
}

- (void)lookupAltitudeAtCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  sensor = [(ARSensorService *)self sensor];
  [sensor lookupAltitudeAtCoordinate:handlerCopy completionHandler:{latitude, longitude}];
}

- (void)updateARSessionState:(unint64_t)state
{
  sensor = [(ARSensorService *)self sensor];
  [sensor updateARSessionState:state];
}

- (void)updateEstimationFromVIOPose:(id)pose imageData:(id)data
{
  dataCopy = data;
  poseCopy = pose;
  sensor = [(ARSensorService *)self sensor];
  [sensor updateEstimationFromVIOPose:poseCopy imageData:dataCopy];
}

- (void)updateFromVisualLocalizationResult:(id)result
{
  resultCopy = result;
  sensor = [(ARSensorService *)self sensor];
  [sensor updateFromVisualLocalizationResult:resultCopy];
}

- (id)updateFromLocationData:(id)data
{
  dataCopy = data;
  sensor = [(ARSensorService *)self sensor];
  v6 = [sensor updateFromLocationData:dataCopy];

  return v6;
}

- (id)updateFromDeviceOrientationData:(id)data
{
  dataCopy = data;
  sensor = [(ARSensorService *)self sensor];
  v6 = [sensor updateFromDeviceOrientationData:dataCopy];

  return v6;
}

- (void)sensor:(id)sensor didOutputSensorData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource = [(ARDaemonService *)self dataSource];
    v7 = [dataSource service:self peerServiceOfType:objc_opt_class()];

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
      selfCopy = self;
      v20 = 2048;
      v21 = v7;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: sensor:didOutputSensorData: - Calling processLocationData on geoTrackingTechniqueService (%p): %@", buf, 0x2Au);
    }

    v12 = [v7 processLocationData:dataCopy];
  }

  sensor = [(ARSensorService *)self sensor];
  v15.receiver = self;
  v15.super_class = ARLocationSensorService;
  [(ARSensorService *)&v15 sensor:sensor didOutputSensorData:dataCopy];

  v14 = *MEMORY[0x277D85DE8];
}

@end