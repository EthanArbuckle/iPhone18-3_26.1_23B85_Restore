@interface ClientTypeResolverCurrentLocationSource
- (BOOL)hasObjectWithType:(int)a3;
- (ClientTypeResolverCurrentLocationSource)initWithLocationManager:(id)a3;
- (id)cachedObject;
- (void)objectWithCompletion:(id)a3;
@end

@implementation ClientTypeResolverCurrentLocationSource

- (id)cachedObject
{
  v2 = [(ClientTypeResolverCurrentLocationSource *)self locationManager];
  v3 = [v2 lastLocation];

  [v3 coordinate];
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)objectWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(ClientTypeResolverCurrentLocationSource *)self cachedObject];
    (*(a3 + 2))(v5, v6);
  }
}

- (BOOL)hasObjectWithType:(int)a3
{
  if (![(ClientTypeResolverSource *)self typeIsValid:*&a3])
  {
    return 0;
  }

  v4 = [(ClientTypeResolverCurrentLocationSource *)self cachedObject];
  v5 = v4 != 0;

  return v5;
}

- (ClientTypeResolverCurrentLocationSource)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ClientTypeResolverCurrentLocationSource;
  v6 = [(ClientTypeResolverCurrentLocationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, a3);
  }

  return v7;
}

@end