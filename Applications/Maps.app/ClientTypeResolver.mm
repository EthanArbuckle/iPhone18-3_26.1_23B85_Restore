@interface ClientTypeResolver
- (BOOL)hasObjectWithType:(int)type;
- (ClientTypeResolver)initWithCurrentLocation:(BOOL)location parkedCar:(BOOL)car personalizedItems:(BOOL)items;
- (id)sourceWithType:(int)type;
- (void)addSource:(id)source;
@end

@implementation ClientTypeResolver

- (id)sourceWithType:(int)type
{
  v3 = *&type;
  sources = [(ClientTypeResolver *)self sources];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [sources objectForKey:v5];

  return v6;
}

- (void)addSource:(id)source
{
  sourceCopy = source;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  knownTypes = [sourceCopy knownTypes];
  v6 = [knownTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(knownTypes);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        sources = [(ClientTypeResolver *)self sources];
        [sources setObject:sourceCopy forKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [knownTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasObjectWithType:(int)type
{
  v3 = *&type;
  v4 = [(ClientTypeResolver *)self sourceWithType:?];
  LOBYTE(v3) = [v4 hasObjectWithType:v3];

  return v3;
}

- (ClientTypeResolver)initWithCurrentLocation:(BOOL)location parkedCar:(BOOL)car personalizedItems:(BOOL)items
{
  itemsCopy = items;
  carCopy = car;
  locationCopy = location;
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

  if (!locationCopy)
  {
    if (!carCopy)
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
    if (!itemsCopy)
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
  if (carCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (itemsCopy)
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