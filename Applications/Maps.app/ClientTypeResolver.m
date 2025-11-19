@interface ClientTypeResolver
- (BOOL)hasObjectWithType:(int)a3;
- (ClientTypeResolver)initWithCurrentLocation:(BOOL)a3 parkedCar:(BOOL)a4 personalizedItems:(BOOL)a5;
- (id)sourceWithType:(int)a3;
- (void)addSource:(id)a3;
@end

@implementation ClientTypeResolver

- (id)sourceWithType:(int)a3
{
  v3 = *&a3;
  v4 = [(ClientTypeResolver *)self sources];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)addSource:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 knownTypes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(ClientTypeResolver *)self sources];
        [v11 setObject:v4 forKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasObjectWithType:(int)a3
{
  v3 = *&a3;
  v4 = [(ClientTypeResolver *)self sourceWithType:?];
  LOBYTE(v3) = [v4 hasObjectWithType:v3];

  return v3;
}

- (ClientTypeResolver)initWithCurrentLocation:(BOOL)a3 parkedCar:(BOOL)a4 personalizedItems:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v25.receiver = self;
  v25.super_class = ClientTypeResolver;
  v8 = [(ClientTypeResolver *)&v25 init];
  if (!v8)
  {
    return v8;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  sources = v8->_sources;
  v8->_sources = v9;

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_8:
    v21 = [ClientTypeResolverParkedCarSource alloc];
    v22 = +[ParkedCarManager sharedManager];
    v23 = [(ClientTypeResolverParkedCarSource *)v21 initWithParkedCarManager:v22];
    parkedCarSource = v8->_parkedCarSource;
    v8->_parkedCarSource = v23;

    [(ClientTypeResolver *)v8 addSource:v8->_parkedCarSource];
    if (!v5)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v17 = [ClientTypeResolverCurrentLocationSource alloc];
  v18 = +[MKLocationManager sharedLocationManager];
  v19 = [(ClientTypeResolverCurrentLocationSource *)v17 initWithLocationManager:v18];
  currentLocationSource = v8->_currentLocationSource;
  v8->_currentLocationSource = v19;

  [(ClientTypeResolver *)v8 addSource:v8->_currentLocationSource];
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    v11 = [ClientTypeResolverPersonalizedItemSource alloc];
    v12 = +[AddressBookManager sharedManager];
    v13 = +[CoreRoutineLocationOfInterestManager sharedManager];
    v14 = [(ClientTypeResolverPersonalizedItemSource *)v11 initWithAddressBookManager:v12 locationOfInterestManager:v13];
    personalizedItemSource = v8->_personalizedItemSource;
    v8->_personalizedItemSource = v14;

    [(ClientTypeResolver *)v8 addSource:v8->_personalizedItemSource];
  }

  return v8;
}

@end