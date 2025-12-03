@interface _ATXAppLaunchSequence
- (_ATXAppLaunchSequence)initWithPreviousLaunch:(id)launch subsequentLaunchCounts:(id)counts dataStore:(id)store allowSimulatedCrashes:(BOOL)crashes launchType:(int)type;
- (double)launchCount:(id)count;
- (double)likelihoodForLaunch:(id)launch;
- (void)_deleteDataForLaunchLocked:(id)locked;
- (void)addSubsequentLaunch:(id)launch;
- (void)dealloc;
- (void)decayByFactor:(double)factor;
- (void)decayWithHalfLifeInDays:(double)days;
- (void)deleteAllInformation;
- (void)deleteDataForLaunch:(id)launch;
- (void)deleteDataForLaunches:(id)launches;
- (void)save;
@end

@implementation _ATXAppLaunchSequence

- (void)save
{
  if (self->_subsequentLaunchCountMap)
  {
    launchType = self->_launchType;
    if (launchType == 1)
    {
      previousLaunch = self->_previousLaunch;
      [_ATXDataStore writeAppActionLaunches:"writeAppActionLaunches:followingAppAction:" followingAppAction:?];
    }

    else if (!launchType)
    {
      v3 = self->_previousLaunch;
      [_ATXDataStore writeLaunches:"writeLaunches:followingBundle:" followingBundle:?];
    }
  }
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchSequence;
  [(_ATXAppLaunchSequence *)&v3 dealloc];
}

- (_ATXAppLaunchSequence)initWithPreviousLaunch:(id)launch subsequentLaunchCounts:(id)counts dataStore:(id)store allowSimulatedCrashes:(BOOL)crashes launchType:(int)type
{
  crashesCopy = crashes;
  v42 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  countsCopy = counts;
  storeCopy = store;
  v40.receiver = self;
  v40.super_class = _ATXAppLaunchSequence;
  v16 = [(_ATXAppLaunchSequence *)&v40 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v34 = storeCopy;
  v16->_launchType = type;
  objc_storeStrong(&v16->_previousLaunch, launch);
  objc_storeStrong(&v17->_datastore, store);
  v35 = countsCopy;
  v18 = [countsCopy mutableCopy];
  subsequentLaunchCountMap = v17->_subsequentLaunchCountMap;
  v17->_subsequentLaunchCountMap = v18;

  v17->_previousAppDeleted = 0;
  pthread_rwlock_init(&v17->_rwlock, 0);
  v20 = objc_opt_new();
  v17->_subsequentLaunchTotalCount = 0.0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v17->_subsequentLaunchCountMap;
  v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  v24 = *v37;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v36 + 1) + 8 * i);
      v27 = [(NSMutableDictionary *)v17->_subsequentLaunchCountMap objectForKeyedSubscript:v26];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [(NSMutableDictionary *)v17->_subsequentLaunchCountMap objectForKeyedSubscript:v26];
        [v28 doubleValue];
        v17->_subsequentLaunchTotalCount = v29 + v17->_subsequentLaunchTotalCount;
      }

      else
      {
        [v20 addObject:v26];
        if (!crashesCopy)
        {
          goto LABEL_12;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launch count not of type NSNumber. Of type: %@", objc_opt_class()];
        [MEMORY[0x277D42578] simulateCrashWithDescription:v28];
      }

LABEL_12:
    }

    v23 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v23);
LABEL_14:

  if ([v20 count])
  {
    v30 = v17->_subsequentLaunchCountMap;
    allObjects = [v20 allObjects];
    [(NSMutableDictionary *)v30 removeObjectsForKeys:allObjects];

    [(_ATXAppLaunchSequence *)v17 save];
  }

  countsCopy = v35;
  storeCopy = v34;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)addSubsequentLaunch:(id)launch
{
  launchCopy = launch;
  pthread_rwlock_wrlock(&self->_rwlock);
  if (!self->_previousAppDeleted)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:launchCopy];
    [v5 doubleValue];
    v7 = [v4 numberWithDouble:v6 + 1.0];
    [(NSMutableDictionary *)self->_subsequentLaunchCountMap setObject:v7 forKeyedSubscript:launchCopy];

    self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount + 1.0;
    [(_ATXAppLaunchSequence *)self save];
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)deleteDataForLaunch:(id)launch
{
  launchCopy = launch;
  pthread_rwlock_wrlock(&self->_rwlock);
  if (!self->_previousAppDeleted)
  {
    [(_ATXAppLaunchSequence *)self _deleteDataForLaunchLocked:launchCopy];
    [(_ATXAppLaunchSequence *)self save];
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)deleteDataForLaunches:(id)launches
{
  v16 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  pthread_rwlock_wrlock(&self->_rwlock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = launchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_ATXAppLaunchSequence *)self _deleteDataForLaunchLocked:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(_ATXAppLaunchSequence *)self save];
  pthread_rwlock_unlock(&self->_rwlock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_deleteDataForLaunchLocked:(id)locked
{
  subsequentLaunchCountMap = self->_subsequentLaunchCountMap;
  lockedCopy = locked;
  v6 = [(NSMutableDictionary *)subsequentLaunchCountMap objectForKeyedSubscript:lockedCopy];
  [v6 doubleValue];
  v8 = v7;

  [(NSMutableDictionary *)self->_subsequentLaunchCountMap removeObjectForKey:lockedCopy];
  self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount - v8;
}

- (double)launchCount:(id)count
{
  countCopy = count;
  pthread_rwlock_rdlock(&self->_rwlock);
  if (self->_previousAppDeleted)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:countCopy];
  }

  pthread_rwlock_unlock(&self->_rwlock);
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)likelihoodForLaunch:(id)launch
{
  launchCopy = launch;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = 0.0;
  if (!self->_previousAppDeleted && self->_subsequentLaunchTotalCount != 0.0)
  {
    v6 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:launchCopy];
    [v6 doubleValue];
    v5 = v7 / self->_subsequentLaunchTotalCount;
  }

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (void)decayByFactor:(double)factor
{
  v22 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock(&self->_rwlock);
  if (!self->_previousAppDeleted)
  {
    v5 = objc_autoreleasePoolPush();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [(NSMutableDictionary *)self->_subsequentLaunchCountMap allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:v11];
          [v12 doubleValue];
          v14 = v13;

          factor = [MEMORY[0x277CCABB0] numberWithDouble:v14 * factor];
          [(NSMutableDictionary *)self->_subsequentLaunchCountMap setObject:factor forKeyedSubscript:v11];
        }

        v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount * factor;
    [(_ATXAppLaunchSequence *)self save];
    objc_autoreleasePoolPop(v5);
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)decayWithHalfLifeInDays:(double)days
{
  v4 = exp2(-1.0 / days);

  [(_ATXAppLaunchSequence *)self decayByFactor:v4];
}

- (void)deleteAllInformation
{
  pthread_rwlock_wrlock(&self->_rwlock);
  launchType = self->_launchType;
  if (launchType == 1)
  {
    [(_ATXDataStore *)self->_datastore deleteLaunchesFollowingAppAction:self->_previousLaunch];
  }

  else if (!launchType)
  {
    [(_ATXDataStore *)self->_datastore deleteLaunchesFollowingBundle:self->_previousLaunch];
  }

  self->_previousAppDeleted = 1;
  self->_subsequentLaunchTotalCount = 0.0;
  previousLaunch = self->_previousLaunch;
  self->_previousLaunch = 0;

  subsequentLaunchCountMap = self->_subsequentLaunchCountMap;
  self->_subsequentLaunchCountMap = 0;

  self->_launchType = -1;

  pthread_rwlock_unlock(&self->_rwlock);
}

@end