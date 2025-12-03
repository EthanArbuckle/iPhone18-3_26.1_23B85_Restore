@interface WISCLLocationManager
+ (const)sAuthStatusAsString:(int)string;
- (BOOL)locationAllowed;
- (BOOL)shouldUpdateLocation:(BOOL)location;
- (BOOL)startLocationUpdates;
- (BOOL)stopLocationUpdates;
- (WISCLLocationManager)init;
- (id).cxx_construct;
- (void)callAuthStatusCallback:(int)callback;
- (void)callOnLocationFailedCallback;
- (void)callOnLocationUpdateCallback:(id)callback;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)onAuthStatusUpdateCallback:(function<void)(BOOL;
- (void)onLocationFailureCallback:(function<void)(;
- (void)onLocationUpdateCallback:(function<void (CLLocation *);
- (void)prepareForShutdown;
- (void)setDesiredLocationAccuracy:(double)accuracy;
@end

@implementation WISCLLocationManager

- (WISCLLocationManager)init
{
  v8.receiver = self;
  v8.super_class = WISCLLocationManager;
  v2 = [(WISCLLocationManager *)&v8 init];
  if (v2)
  {
    v3 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle" delegate:v2 onQueue:&_dispatch_main_q];
    manager = v2->_manager;
    v2->_manager = v3;

    [(CLLocationManager *)v2->_manager setDelegate:v2];
    [(CLLocationManager *)v2->_manager setDistanceFilter:10.0];
    [(CLLocationManager *)v2->_manager setDesiredAccuracy:kCLLocationAccuracyAggressivePrecisionReduction];
    v5 = dispatch_queue_create("com.apple.wirelessinsightsd.cllocationmanager", 0);
    fObj = v2->fQueue.fObj.fObj;
    v2->fQueue.fObj.fObj = v5;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v2->fReceivedFirstLocationUpdate = 0;
  }

  return v2;
}

- (void)prepareForShutdown
{
  v3 = objc_autoreleasePoolPush();
  manager = self->_manager;
  if (manager)
  {
    [(CLLocationManager *)manager setDelegate:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  manager = self->_manager;
  if (manager)
  {
    [(CLLocationManager *)manager stopUpdatingLocation];
    v5 = self->_manager;
    self->_manager = 0;
  }

  objc_autoreleasePoolPop(v3);
  v6.receiver = self;
  v6.super_class = WISCLLocationManager;
  [(WISCLLocationManager *)&v6 dealloc];
}

- (BOOL)shouldUpdateLocation:(BOOL)location
{
  locationCopy = location;
  v5 = +[CLLocationManager locationServicesEnabled];
  if (v5)
  {
    manager = self->_manager;
    if (locationCopy)
    {
      [(CLLocationManager *)manager startUpdatingLocation];
      v7 = *(qword_1002DBE98 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "loc.mgr:#N Started location update";
        v9 = &v12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      [(CLLocationManager *)manager stopUpdatingLocation];
      v7 = *(qword_1002DBE98 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v8 = "loc.mgr:#N Stopped location update";
        v9 = &v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = *(qword_1002DBE98 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "loc.mgr:#N Location services are disabled";
      v9 = &v13;
      goto LABEL_9;
    }
  }

  return v5;
}

- (BOOL)startLocationUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fObj = self->fQueue.fObj.fObj;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FFFC0;
  v5[3] = &unk_1002B1E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(fObj, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)stopLocationUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fObj = self->fQueue.fObj.fObj;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001000C0;
  v5[3] = &unk_1002B1E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(fObj, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)locationAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fObj = self->fQueue.fObj.fObj;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001001C0;
  v5[3] = &unk_1002B1E70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(fObj, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDesiredLocationAccuracy:(double)accuracy
{
  selfCopy = self;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onAuthStatusUpdateCallback:(function<void)(BOOL
{
  selfCopy = self;
  sub_100100BD8(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callAuthStatusCallback:(int)callback
{
  selfCopy = self;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

+ (const)sAuthStatusAsString:(int)string
{
  if (string > 4)
  {
    return "Auth status is unknown";
  }

  else
  {
    return off_1002B1E90[string];
  }
}

- (void)onLocationUpdateCallback:(function<void (CLLocation *)
{
  selfCopy = self;
  sub_100100F20(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnLocationUpdateCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy)
  {
    selfCopy = self;
    v6 = callbackCopy;
    fObj = self->fQueue.fObj.fObj;
    operator new();
  }
}

- (void)onLocationFailureCallback:(function<void)(
{
  selfCopy = self;
  sub_100101280(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnLocationFailedCallback
{
  selfCopy = self;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  v6 = *(qword_1002DBE98 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = [WISCLLocationManager sAuthStatusAsString:authorizationStatus];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "loc.mgr:#N Updated auth status from locationd %s", &v7, 0xCu);
  }

  [(WISCLLocationManager *)self callAuthStatusCallback:authorizationStatus];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v8 = *(qword_1002DBE98 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "loc.mgr:#N Updated location from locationd", v10, 2u);
  }

  lastObject = [locationsCopy lastObject];
  [(WISCLLocationManager *)self callOnLocationUpdateCallback:lastObject];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  v8 = *(qword_1002DBE98 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "loc.mgr:#N Location failed", v10, 2u);
  }

  v9 = dword_1002D85E0++;
  if (managerCopy && v9 >= 3)
  {
    [managerCopy stopUpdatingLocation];
  }

  [(WISCLLocationManager *)self callOnLocationFailedCallback];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  return self;
}

@end