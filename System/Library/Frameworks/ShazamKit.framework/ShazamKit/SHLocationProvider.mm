@interface SHLocationProvider
+ (NSMapTable)activeLocationProviders;
+ (OS_dispatch_queue)locationQueue;
+ (id)locationProviderForRequestIdentifier:(id)identifier clientType:(int64_t)type;
- (CLLocation)location;
- (NSUUID)taskID;
- (NSUUID)workerID;
- (SHLocationProvider)initWithRequestIdentifier:(id)identifier;
- (SHWorkerDelegate)workerDelegate;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)shutdownWorker;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
@end

@implementation SHLocationProvider

+ (OS_dispatch_queue)locationQueue
{
  if (qword_1000982A8 != -1)
  {
    sub_10002C270();
  }

  v3 = qword_1000982A0;

  return v3;
}

+ (NSMapTable)activeLocationProviders
{
  if (qword_1000982B8 != -1)
  {
    sub_10002C284();
  }

  v3 = qword_1000982B0;

  return v3;
}

+ (id)locationProviderForRequestIdentifier:(id)identifier clientType:(int64_t)type
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10002B918;
  v22 = sub_10002B928;
  v23 = 0;
  v6 = +[SHLocationProvider locationQueue];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10002B930;
  v15 = &unk_10007CD78;
  v17 = &v18;
  v7 = identifierCopy;
  v16 = v7;
  dispatch_sync(v6, &v12);

  v8 = v19[5];
  if (v8)
  {
    v9 = v8;
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if ([SHLocationProvider isClientAuthorizedToRequestLocation:@"com.apple.musicrecognition" clientType:type authorizationStatus:[CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.musicrecognition", v12, v13, v14, v15]])
  {
    v9 = [[SHLocationProvider alloc] initWithRequestIdentifier:v7];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (SHLocationProvider)initWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SHLocationProvider;
  v6 = [(SHLocationProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestIdentifier, identifier);
    v8 = +[SHLocationProvider locationQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002BA9C;
    v10[3] = &unk_10007D1C0;
    v11 = v7;
    v12 = identifierCopy;
    dispatch_sync(v8, v10);
  }

  return v7;
}

- (void)startUpdatingLocation
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    requestIdentifier = [(SHLocationProvider *)self requestIdentifier];
    v6 = 138412290;
    v7 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Fetching location for request %@", &v6, 0xCu);
  }

  locationManager = [(SHLocationProvider *)self locationManager];
  [locationManager startUpdatingLocation];
}

- (void)stopUpdatingLocation
{
  locationManager = [(SHLocationProvider *)self locationManager];
  [locationManager stopUpdatingLocation];

  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    requestIdentifier = [(SHLocationProvider *)self requestIdentifier];
    v6 = 138412290;
    v7 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stopped fetching location for request %@", &v6, 0xCu);
  }
}

- (CLLocation)location
{
  locationManager = [(SHLocationProvider *)self locationManager];
  location = [locationManager location];

  return location;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    requestIdentifier = [(SHLocationProvider *)self requestIdentifier];
    v8 = 138412546;
    v9 = managerCopy;
    v10 = 2112;
    v11 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "locationManager %@ didUpdateLocations for request %@", &v8, 0x16u);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    requestIdentifier = [(SHLocationProvider *)self requestIdentifier];
    v10 = 138412802;
    v11 = managerCopy;
    v12 = 2112;
    v13 = requestIdentifier;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Location manager %@ failed to update for request %@ with error %@", &v10, 0x20u);
  }
}

- (NSUUID)workerID
{
  workerID = self->_workerID;
  if (!workerID)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_workerID;
    self->_workerID = v4;

    workerID = self->_workerID;
  }

  return workerID;
}

- (NSUUID)taskID
{
  taskID = self->_taskID;
  if (!taskID)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_taskID;
    self->_taskID = v4;

    taskID = self->_taskID;
  }

  return taskID;
}

- (void)shutdownWorker
{
  [(SHLocationProvider *)self stopUpdatingLocation];
  workerDelegate = [(SHLocationProvider *)self workerDelegate];
  [workerDelegate finishedWorker:self];
}

- (SHWorkerDelegate)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

@end