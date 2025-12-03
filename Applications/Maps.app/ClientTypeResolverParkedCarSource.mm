@interface ClientTypeResolverParkedCarSource
- (BOOL)hasObjectWithType:(int)type;
- (ClientTypeResolverParkedCarSource)initWithParkedCarManager:(id)manager;
- (id)cachedObject;
- (void)objectWithCompletion:(id)completion;
@end

@implementation ClientTypeResolverParkedCarSource

- (id)cachedObject
{
  parkedCarManager = [(ClientTypeResolverParkedCarSource *)self parkedCarManager];
  parkedCar = [parkedCarManager parkedCar];

  return parkedCar;
}

- (void)objectWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    cachedObject = [(ClientTypeResolverParkedCarSource *)self cachedObject];
    if (cachedObject)
    {
      v7[2](v7, cachedObject);
    }

    else
    {
      parkedCarManager = [(ClientTypeResolverParkedCarSource *)self parkedCarManager];
      [parkedCarManager fetchParkedCar:v7];
    }

    completionCopy = v7;
  }
}

- (BOOL)hasObjectWithType:(int)type
{
  if (![(ClientTypeResolverSource *)self typeIsValid:*&type])
  {
    return 0;
  }

  cachedObject = [(ClientTypeResolverParkedCarSource *)self cachedObject];
  v5 = cachedObject != 0;

  return v5;
}

- (ClientTypeResolverParkedCarSource)initWithParkedCarManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ClientTypeResolverParkedCarSource;
  v6 = [(ClientTypeResolverParkedCarSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parkedCarManager, manager);
  }

  return v7;
}

@end