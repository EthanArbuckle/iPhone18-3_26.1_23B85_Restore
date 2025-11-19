@interface _ATXAppLaunchSequence
- (_ATXAppLaunchSequence)initWithPreviousLaunch:(id)a3 subsequentLaunchCounts:(id)a4 dataStore:(id)a5 allowSimulatedCrashes:(BOOL)a6 launchType:(int)a7;
- (double)launchCount:(id)a3;
- (double)likelihoodForLaunch:(id)a3;
- (void)_deleteDataForLaunchLocked:(id)a3;
- (void)addSubsequentLaunch:(id)a3;
- (void)dealloc;
- (void)decayByFactor:(double)a3;
- (void)decayWithHalfLifeInDays:(double)a3;
- (void)deleteAllInformation;
- (void)deleteDataForLaunch:(id)a3;
- (void)deleteDataForLaunches:(id)a3;
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

- (_ATXAppLaunchSequence)initWithPreviousLaunch:(id)a3 subsequentLaunchCounts:(id)a4 dataStore:(id)a5 allowSimulatedCrashes:(BOOL)a6 launchType:(int)a7
{
  v8 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v40.receiver = self;
  v40.super_class = _ATXAppLaunchSequence;
  v16 = [(_ATXAppLaunchSequence *)&v40 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v34 = v15;
  v16->_launchType = a7;
  objc_storeStrong(&v16->_previousLaunch, a3);
  objc_storeStrong(&v17->_datastore, a5);
  v35 = v14;
  v18 = [v14 mutableCopy];
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
        if (!v8)
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
    v31 = [v20 allObjects];
    [(NSMutableDictionary *)v30 removeObjectsForKeys:v31];

    [(_ATXAppLaunchSequence *)v17 save];
  }

  v14 = v35;
  v15 = v34;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)addSubsequentLaunch:(id)a3
{
  v8 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  if (!self->_previousAppDeleted)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:v8];
    [v5 doubleValue];
    v7 = [v4 numberWithDouble:v6 + 1.0];
    [(NSMutableDictionary *)self->_subsequentLaunchCountMap setObject:v7 forKeyedSubscript:v8];

    self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount + 1.0;
    [(_ATXAppLaunchSequence *)self save];
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)deleteDataForLaunch:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  if (!self->_previousAppDeleted)
  {
    [(_ATXAppLaunchSequence *)self _deleteDataForLaunchLocked:v4];
    [(_ATXAppLaunchSequence *)self save];
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)deleteDataForLaunches:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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

- (void)_deleteDataForLaunchLocked:(id)a3
{
  subsequentLaunchCountMap = self->_subsequentLaunchCountMap;
  v5 = a3;
  v6 = [(NSMutableDictionary *)subsequentLaunchCountMap objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  [(NSMutableDictionary *)self->_subsequentLaunchCountMap removeObjectForKey:v5];
  self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount - v8;
}

- (double)launchCount:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  if (self->_previousAppDeleted)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:v4];
  }

  pthread_rwlock_unlock(&self->_rwlock);
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)likelihoodForLaunch:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = 0.0;
  if (!self->_previousAppDeleted && self->_subsequentLaunchTotalCount != 0.0)
  {
    v6 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:v4];
    [v6 doubleValue];
    v5 = v7 / self->_subsequentLaunchTotalCount;
  }

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (void)decayByFactor:(double)a3
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
    v6 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap allKeys];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_subsequentLaunchCountMap objectForKeyedSubscript:v11];
          [v12 doubleValue];
          v14 = v13;

          v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * a3];
          [(NSMutableDictionary *)self->_subsequentLaunchCountMap setObject:v15 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    self->_subsequentLaunchTotalCount = self->_subsequentLaunchTotalCount * a3;
    [(_ATXAppLaunchSequence *)self save];
    objc_autoreleasePoolPop(v5);
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)decayWithHalfLifeInDays:(double)a3
{
  v4 = exp2(-1.0 / a3);

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