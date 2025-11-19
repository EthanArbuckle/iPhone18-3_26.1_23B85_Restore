@interface ClientTypeResolverParkedCarSource
- (BOOL)hasObjectWithType:(int)a3;
- (ClientTypeResolverParkedCarSource)initWithParkedCarManager:(id)a3;
- (id)cachedObject;
- (void)objectWithCompletion:(id)a3;
@end

@implementation ClientTypeResolverParkedCarSource

- (id)cachedObject
{
  v2 = [(ClientTypeResolverParkedCarSource *)self parkedCarManager];
  v3 = [v2 parkedCar];

  return v3;
}

- (void)objectWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(ClientTypeResolverParkedCarSource *)self cachedObject];
    if (v5)
    {
      v7[2](v7, v5);
    }

    else
    {
      v6 = [(ClientTypeResolverParkedCarSource *)self parkedCarManager];
      [v6 fetchParkedCar:v7];
    }

    v4 = v7;
  }
}

- (BOOL)hasObjectWithType:(int)a3
{
  if (![(ClientTypeResolverSource *)self typeIsValid:*&a3])
  {
    return 0;
  }

  v4 = [(ClientTypeResolverParkedCarSource *)self cachedObject];
  v5 = v4 != 0;

  return v5;
}

- (ClientTypeResolverParkedCarSource)initWithParkedCarManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ClientTypeResolverParkedCarSource;
  v6 = [(ClientTypeResolverParkedCarSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parkedCarManager, a3);
  }

  return v7;
}

@end