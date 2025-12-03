@interface SHLCloudFetchTaskScheduler
- (BOOL)cloudBackedZones:(id)zones containsZone:(id)zone;
- (NSArray)preconditions;
- (SHLCloudFetchTaskScheduler)initWithConfiguration:(id)configuration;
- (void)cacheTask:(id)task;
- (void)scheduleFetchTask:(id)task;
- (void)schedulePendingBatchChangesFetchTask:(id)task withContainer:(id)container;
@end

@implementation SHLCloudFetchTaskScheduler

- (SHLCloudFetchTaskScheduler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLCloudFetchTaskScheduler;
  v5 = [(SHLCloudTaskScheduler *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = [[SHLCloudFetchTaskTransformer alloc] initWithConfiguration:configurationCopy];
    fetchTaskTransformer = v5->_fetchTaskTransformer;
    v5->_fetchTaskTransformer = v6;

    v8 = [[SHLCloudSubscriptionTransformer alloc] initWithConfiguration:configurationCopy];
    subscriptionTaskTransformer = v5->_subscriptionTaskTransformer;
    v5->_subscriptionTaskTransformer = v8;
  }

  return v5;
}

- (NSArray)preconditions
{
  v3 = +[NSMutableArray array];
  v4 = [SHLCloudAccountStatusPrecondition alloc];
  containerTransformer = [(SHLCloudTaskScheduler *)self containerTransformer];
  cloudBackedContainer = [containerTransformer cloudBackedContainer];
  v7 = [(SHLCloudAccountStatusPrecondition *)v4 initWithContainer:cloudBackedContainer];

  [v3 addObject:v7];
  configuration = [(SHLCloudTaskScheduler *)self configuration];
  sessionScope = [configuration sessionScope];

  if (sessionScope == 1)
  {
    v10 = [SHLCloudEncryptionPrecondition alloc];
    containerTransformer2 = [(SHLCloudTaskScheduler *)self containerTransformer];
    cloudBackedContainer2 = [containerTransformer2 cloudBackedContainer];
    v13 = [(SHLCloudEncryptionPrecondition *)v10 initWithContainer:cloudBackedContainer2];

    [v3 addObject:v13];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)scheduleFetchTask:(id)task
{
  taskCopy = task;
  containerTransformer = [(SHLCloudTaskScheduler *)self containerTransformer];
  cloudBackedContainer = [containerTransformer cloudBackedContainer];

  syncStartCondition = [taskCopy syncStartCondition];

  if (syncStartCondition == @"BatchFetchContinuation")
  {
    [(SHLCloudFetchTaskScheduler *)self schedulePendingBatchChangesFetchTask:taskCopy withContainer:cloudBackedContainer];
  }

  else
  {
    fetchTaskTransformer = [(SHLCloudFetchTaskScheduler *)self fetchTaskTransformer];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002A2A0;
    v13[3] = &unk_10007D9C8;
    v13[4] = self;
    v9 = taskCopy;
    v14 = v9;
    v15 = cloudBackedContainer;
    v10 = [fetchTaskTransformer cloudBackedDatabaseChangesOperationFromFetchTask:v9 container:v15 completion:v13];

    [(SHLCloudFetchTaskScheduler *)self cacheTask:v9];
    v11 = +[SHLOperationQueue defaultQueue];
    operation = [v10 operation];
    [v11 addOperation:operation waitUntilFinished:1];
  }
}

- (BOOL)cloudBackedZones:(id)zones containsZone:(id)zone
{
  zonesCopy = zones;
  zoneCopy = zone;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = zonesCopy;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) zone];
        zoneID = [v10 zoneID];
        zoneName = [zoneID zoneName];
        zoneID2 = [zoneCopy zoneID];
        zoneName2 = [zoneID2 zoneName];
        v15 = [zoneName isEqual:zoneName2];

        if (v15)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)schedulePendingBatchChangesFetchTask:(id)task withContainer:(id)container
{
  taskCopy = task;
  containerCopy = container;
  cache = [(SHLCloudTaskScheduler *)self cache];
  storedZoneIdentifiers = [cache storedZoneIdentifiers];

  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [storedZoneIdentifiers count]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = storedZoneIdentifiers;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        cache2 = [(SHLCloudTaskScheduler *)self cache];
        v16 = [cache2 hasPendingBatchChangesForZoneID:v14];

        if (v16)
        {
          v17 = [[CKRecordZoneID alloc] initWithZoneName:v14 ownerName:CKCurrentUserDefaultName];
          v18 = [[CKRecordZone alloc] initWithZoneID:v17];
          v19 = [[SHLCloudBackedZone alloc] initWithZone:v18];
          [v8 addObject:v19];

          v20 = sub_1000317DC();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "About to fetch pending batch changes for zone: %@", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v11);
  }

  v21 = [v8 count];
  v22 = sub_1000317DC();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v24 = [v8 count];
      *buf = 134217984;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetching pending batch changes for %lu zone(s)", buf, 0xCu);
    }

    fetchTaskTransformer = [(SHLCloudFetchTaskScheduler *)self fetchTaskTransformer];
    v27 = containerCopy;
    v26 = taskCopy;
    v22 = [fetchTaskTransformer cloudBackedZoneChangesOperationFromFetchTask:taskCopy forChangedZones:v8 container:containerCopy];

    [(SHLCloudFetchTaskScheduler *)self cacheTask:taskCopy];
    v28 = +[SHLOperationQueue defaultQueue];
    operation = [v22 operation];
    [v28 addOperation:operation];
  }

  else
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not scheduling a batch fetch task as there are no batch changes to be fetched for any zone.", buf, 2u);
    }

    v27 = containerCopy;
    v26 = taskCopy;
  }
}

- (void)cacheTask:(id)task
{
  taskCopy = task;
  cache = [(SHLCloudTaskScheduler *)self cache];
  v13 = 0;
  v6 = [cache storeTask:taskCopy ofType:0 error:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = sub_1000317DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to store the inflight task in the fetch task scheduler with error %{public}@", buf, 0xCu);
    }
  }

  v9 = sub_1000317DC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    identifier = [taskCopy identifier];
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "<task: %{public}@ %@> is scheduled", buf, 0x16u);
  }
}

@end