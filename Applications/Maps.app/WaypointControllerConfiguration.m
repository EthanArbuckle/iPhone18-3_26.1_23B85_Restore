@interface WaypointControllerConfiguration
- (WaypointControllerConfiguration)initWithRequests:(id)a3 traits:(id)a4;
- (id)debugDescription;
- (id)description;
@end

@implementation WaypointControllerConfiguration

- (id)debugDescription
{
  v3 = [NSMutableString alloc];
  v4 = [(WaypointControllerConfiguration *)self description];
  v5 = [v3 initWithString:v4];

  v6 = +[GEOPlatform sharedPlatform];
  v7 = [v6 isInternalInstall];

  if (v7)
  {
    [v5 appendFormat:@"\ntraits:(%@)", self->_traits];
  }

  v8 = [v5 copy];

  return v8;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v8.receiver = self;
  v8.super_class = WaypointControllerConfiguration;
  v4 = [(WaypointControllerConfiguration *)&v8 description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\nrequests:(%@)", self->_requests];
  v6 = [v5 copy];

  return v6;
}

- (WaypointControllerConfiguration)initWithRequests:(id)a3 traits:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] <= 1)
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%@ is being initialized with insufficient waypoints(%@). This is not supported.", buf, 0x16u);
    }
  }

  v15.receiver = self;
  v15.super_class = WaypointControllerConfiguration;
  v12 = [(WaypointControllerConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requests, a3);
    objc_storeStrong(&v13->_traits, a4);
  }

  return v13;
}

@end