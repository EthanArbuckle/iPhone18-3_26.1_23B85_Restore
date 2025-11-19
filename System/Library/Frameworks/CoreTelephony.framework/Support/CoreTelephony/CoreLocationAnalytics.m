@interface CoreLocationAnalytics
- (CoreLocationAnalytics)initWithQueue:(id)a3;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation CoreLocationAnalytics

- (CoreLocationAnalytics)initWithQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CoreLocationAnalytics;
  v5 = [(CoreLocationAnalytics *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_authStatus = 0;
    v7 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle" delegate:v5 onQueue:v4];
    locationManager = v6->_locationManager;
    v6->_locationManager = v7;

    operator new();
  }

  return 0;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  self->_authStatus = [v4 authorizationStatus];
  v5 = sub_100032AC8(self->_logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    authStatus = self->_authStatus;
    if (authStatus > 4)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101E7DEA8[authStatus];
    }

    v8[0] = 67109378;
    v8[1] = authStatus;
    v9 = 2080;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I new auth status %d (%s)", v8, 0x12u);
  }
}

@end