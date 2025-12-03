@interface PersistenceManager
+ (id)sharedManager;
- (BOOL)_writeDirectionsCache:(id)cache error:(id *)error;
- (BOOL)addDataToDirectionsCache:(id)cache forKey:(id)key error:(id *)error;
- (BOOL)writePins:(id)pins error:(id *)error;
- (BOOL)writeRoutingAppLaunchRecord:(id)record error:(id *)error;
- (PersistenceManager)initWithPersistenceData:(id)data;
- (id)cacheKeyForWaypoints:(id)waypoints;
- (id)directionsCache;
- (id)directionsCacheDataArrayForKey:(id)key;
- (id)readPins;
- (id)readRoutingAppLaunchRecord;
- (void)_cleanDirectionsCache;
- (void)_deleteDirectionsCacheFile;
- (void)_syncDirectionsCacheIfNeeded;
- (void)dealloc;
- (void)deleteRoutingAppLaunchRecord;
@end

@implementation PersistenceManager

- (void)_deleteDirectionsCacheFile
{
  v3 = +[NSFileManager defaultManager];
  directionsCachePath = [(MSPMapsPaths *)self->_locations directionsCachePath];
  if ([v3 fileExistsAtPath:directionsCachePath])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = 0;
    [v5 removeItemAtPath:directionsCachePath error:&v6];
  }
}

- (void)_cleanDirectionsCache
{
  if (self->_directionsCache)
  {
    v3 = [NSMutableDictionary alloc];
    directionsCache = [(PersistenceManager *)self directionsCache];
    v18 = [v3 initWithCapacity:{objc_msgSend(directionsCache, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(PersistenceManager *)self directionsCache];
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          directionsCache2 = [(PersistenceManager *)self directionsCache];
          v11 = [directionsCache2 objectForKeyedSubscript:v9];

          v12 = [v11 objectForKeyedSubscript:@"d"];
          GEOConfigGetDouble();
          v14 = [NSDate dateWithTimeIntervalSinceNow:-v13];
          v15 = [v12 compare:v14];

          if (v15 == 1)
          {
            [v18 setObject:v11 forKeyedSubscript:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v16 = [NSDictionary dictionaryWithDictionary:v18];
    directionsCache = self->_directionsCache;
    self->_directionsCache = v16;
  }
}

- (BOOL)_writeDirectionsCache:(id)cache error:(id *)error
{
  cacheCopy = cache;
  v7 = +[UIApplication sharedApplication];
  isProtectedDataAvailable = [v7 isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    directionsCachePath = [(MSPMapsPaths *)self->_locations directionsCachePath];
    [(PersistenceManager *)self _deleteDirectionsCacheFile];
    v10 = [NSKeyedArchiver archivedDataWithRootObject:cacheCopy requiringSecureCoding:1 error:0];
    v11 = v10;
    if (v10)
    {
      v15 = 0;
      [v10 writeToFile:directionsCachePath options:536870913 error:&v15];
      v12 = v15;
      if (v12 && *error)
      {
        v12 = v12;
        v13 = 0;
        *error = v12;
      }

      else
      {
        v13 = 1;
      }
    }

    else if (error)
    {
      [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_syncDirectionsCacheIfNeeded
{
  if (self->_directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked)
  {
    directionsCache = [(PersistenceManager *)self directionsCache];
    v4 = [directionsCache mutableCopy];

    [v4 setObject:self->_directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked forKeyedSubscript:self->_directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked];
    v9 = 0;
    v5 = [(PersistenceManager *)self _writeDirectionsCache:v4 error:&v9];
    v6 = v9;
    if (v5)
    {
      directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked = self->_directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked;
      self->_directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked = 0;

      directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked = self->_directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked;
      self->_directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked = 0;
    }
  }
}

- (id)directionsCache
{
  directionsCache = self->_directionsCache;
  if (directionsCache)
  {
    v3 = directionsCache;
LABEL_8:
    v19 = v3;
    goto LABEL_9;
  }

  v5 = +[UIApplication sharedApplication];
  isProtectedDataAvailable = [v5 isProtectedDataAvailable];

  if ((isProtectedDataAvailable & 1) == 0)
  {
    v3 = objc_alloc_init(NSDictionary);
    goto LABEL_8;
  }

  directionsCachePath = [(MSPMapsPaths *)self->_locations directionsCachePath];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:directionsCachePath];

  if (v9)
  {
    v24 = 0;
    v10 = [NSData dataWithContentsOfFile:directionsCachePath options:1 error:&v24];
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [NSSet setWithObjects:v12, v13, v14, v15, objc_opt_class(), 0];
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v16 fromData:v11 error:0];
      v18 = self->_directionsCache;
      self->_directionsCache = v17;
    }

    else
    {
      [(PersistenceManager *)self _deleteDirectionsCacheFile];
    }
  }

  v21 = self->_directionsCache;
  if (!v21)
  {
    v22 = objc_alloc_init(NSDictionary);
    v23 = self->_directionsCache;
    self->_directionsCache = v22;

    v21 = self->_directionsCache;
  }

  v19 = v21;

LABEL_9:

  return v19;
}

- (id)directionsCacheDataArrayForKey:(id)key
{
  keyCopy = key;
  [(PersistenceManager *)self _cleanDirectionsCache];
  directionsCache = [(PersistenceManager *)self directionsCache];
  v6 = [directionsCache objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"a"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addDataToDirectionsCache:(id)cache forKey:(id)key error:(id *)error
{
  cacheCopy = cache;
  keyCopy = key;
  [(PersistenceManager *)self _cleanDirectionsCache];
  v10 = [cacheCopy count];
  if (keyCopy)
  {
    v11 = v10 == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v11)
  {
    directionsCache = [(PersistenceManager *)self directionsCache];
    v14 = [directionsCache mutableCopy];

    v21[0] = @"d";
    v15 = +[NSDate date];
    v21[1] = @"a";
    v22[0] = v15;
    v22[1] = cacheCopy;
    v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    [v14 setObject:v16 forKeyedSubscript:keyCopy];
    if ([(PersistenceManager *)self _writeDirectionsCache:v14 error:error])
    {
      v17 = [NSDictionary dictionaryWithDictionary:v14];
      directionsCache = self->_directionsCache;
      self->_directionsCache = v17;
    }

    else
    {
      objc_storeStrong(&self->_directionsCacheKeyThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked, key);
      v19 = v16;
      directionsCache = self->_directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked;
      self->_directionsCacheObjectThatFailedToBeWrittenBecauseTheDeviceWasLockedLastTimeWeChecked = v19;
    }
  }

  return v12;
}

- (id)cacheKeyForWaypoints:(id)waypoints
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  waypointsCopy = waypoints;
  v4 = [waypointsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"T";
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(waypointsCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isCurrentLocation])
        {
          [(__CFString *)v6 stringByAppendingString:@"|C"];
          v6 = v10 = v6;
        }

        else
        {
          locationForWaypoint = [v9 locationForWaypoint];
          if (!locationForWaypoint)
          {

            v17 = 0;
            goto LABEL_16;
          }

          v10 = locationForWaypoint;
          [(__CFString *)locationForWaypoint lat];
          v13 = v12;
          [(__CFString *)v10 lng];
          v15 = [NSString stringWithFormat:@"|%f%f", v13, v14, v19];
          v16 = [(__CFString *)v6 stringByAppendingString:v15];

          v6 = v16;
        }
      }

      v5 = [waypointsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = @"T";
  }

  v6 = v6;
  v17 = v6;
LABEL_16:

  return v17;
}

- (void)deleteRoutingAppLaunchRecord
{
  v5 = +[NSFileManager defaultManager];
  routingAppLaunchRecordPath = [(MSPMapsPaths *)self->_locations routingAppLaunchRecordPath];
  if ([v5 fileExistsAtPath:routingAppLaunchRecordPath])
  {
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:routingAppLaunchRecordPath error:0];
  }
}

- (BOOL)writeRoutingAppLaunchRecord:(id)record error:(id *)error
{
  locations = self->_locations;
  recordCopy = record;
  routingAppLaunchRecordPath = [(MSPMapsPaths *)locations routingAppLaunchRecordPath];
  [(PersistenceManager *)self deleteRoutingAppLaunchRecord];
  v9 = [NSKeyedArchiver archivedDataWithRootObject:recordCopy requiringSecureCoding:1 error:0];

  if (v9)
  {
    v13 = 0;
    v10 = 1;
    [v9 writeToFile:routingAppLaunchRecordPath options:1 error:&v13];
    v11 = v13;
    if (v11)
    {
      if (*error)
      {
        v11 = v11;
        v10 = 0;
        *error = v11;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)readRoutingAppLaunchRecord
{
  routingAppLaunchRecordPath = [(MSPMapsPaths *)self->_locations routingAppLaunchRecordPath];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:routingAppLaunchRecordPath];

  if (v5)
  {
    v12 = 0;
    v6 = [NSData dataWithContentsOfFile:routingAppLaunchRecordPath options:1 error:&v12];
    if (v12)
    {
      [(PersistenceManager *)self deleteRoutingAppLaunchRecord];
    }

    if (v6)
    {
      v11 = 0;
      v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
      v8 = v11;
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(RoutingAppLaunchRecord);
LABEL_9:

  return v7;
}

- (BOOL)writePins:(id)pins error:(id *)error
{
  v6 = [pins arrayByApplyingSelector:"data"];
  v14[0] = @"PinsKey";
  v14[1] = @"PinsVersion";
  v15[0] = v6;
  v15[1] = &off_1016E6CE0;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  pinsSettingsPath = [(MSPMapsPaths *)self->_locations pinsSettingsPath];
  v13 = 0;
  v9 = [v7 _maps_writeBinaryPlist:pinsSettingsPath error:&v13];
  v10 = v13;

  if (*error)
  {
    v11 = v10;
    *error = v10;
  }

  return v9;
}

- (id)readPins
{
  pinsSettingsPath = [(MSPMapsPaths *)self->_locations pinsSettingsPath];
  v3 = [NSDictionary dictionaryWithContentsOfFile:pinsSettingsPath];

  v4 = [v3 objectForKeyedSubscript:@"PinsKey"];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [MSPPinStorage alloc];
        v13 = [v12 initWithData:{v11, v16}];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [NSArray arrayWithArray:v5];

  return v14;
}

- (void)dealloc
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PersistenceManager;
  [(PersistenceManager *)&v5 dealloc];
}

- (PersistenceManager)initWithPersistenceData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = PersistenceManager;
  v6 = [(PersistenceManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locations, data);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_syncDirectionsCacheIfNeeded" name:UIApplicationProtectedDataDidBecomeAvailable object:0];

    v9 = +[GEOResourceManifestManager modernManager];
    [v9 addTileGroupObserver:v7 queue:&_dispatch_main_q];
  }

  return v7;
}

+ (id)sharedManager
{
  if (qword_10195D258 != -1)
  {
    dispatch_once(&qword_10195D258, &stru_101628EA0);
  }

  v3 = qword_10195D250;

  return v3;
}

@end