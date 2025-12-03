@interface ClientTypeResolverCurrentLocationSource
- (BOOL)hasObjectWithType:(int)type;
- (ClientTypeResolverCurrentLocationSource)initWithLocationManager:(id)manager;
- (id)cachedObject;
- (void)objectWithCompletion:(id)completion;
@end

@implementation ClientTypeResolverCurrentLocationSource

- (id)cachedObject
{
  locationManager = [(ClientTypeResolverCurrentLocationSource *)self locationManager];
  lastLocation = [locationManager lastLocation];

  [lastLocation coordinate];
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v4 = lastLocation;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)objectWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    cachedObject = [(ClientTypeResolverCurrentLocationSource *)self cachedObject];
    (*(completion + 2))(completionCopy, cachedObject);
  }
}

- (BOOL)hasObjectWithType:(int)type
{
  if (![(ClientTypeResolverSource *)self typeIsValid:*&type])
  {
    return 0;
  }

  cachedObject = [(ClientTypeResolverCurrentLocationSource *)self cachedObject];
  v5 = cachedObject != 0;

  return v5;
}

- (ClientTypeResolverCurrentLocationSource)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ClientTypeResolverCurrentLocationSource;
  v6 = [(ClientTypeResolverCurrentLocationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, manager);
  }

  return v7;
}

@end