@interface SHServiceStateHandler
+ (NSMapTable)globallyScopedWorkers;
+ (OS_dispatch_queue)globalQueue;
- (BOOL)hasRegisteredWorkers;
- (BOOL)service:(id)service registerWorker:(id)worker watchdogTimeout:(double)timeout error:(id *)error;
- (SHServiceStateHandler)initWithClientCredentials:(id)credentials;
- (id)allWorkersForService:(id)service;
- (id)registeredWorkerForWorkerID:(id)d;
- (void)service:(id)service unregisterWorker:(id)worker;
- (void)unregisterAllWorkersForService:(id)service;
@end

@implementation SHServiceStateHandler

- (SHServiceStateHandler)initWithClientCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v18.receiver = self;
  v18.super_class = SHServiceStateHandler;
  v6 = [(SHServiceStateHandler *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSLock);
    lock = v6->_lock;
    v6->_lock = v7;

    objc_storeStrong(&v6->_clientCredentials, credentials);
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    workers = v6->_workers;
    v6->_workers = v9;

    attribution = [(SHClientCredentials *)v6->_clientCredentials attribution];
    bundleIdentifier = [attribution bundleIdentifier];
    v13 = [SHAttribution requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:bundleIdentifier];

    if (v13)
    {
      +[SHServiceStateHandlerUtilities registerMusicRecognitionBundleAttribution];
    }

    else
    {
      attribution2 = [(SHClientCredentials *)v6->_clientCredentials attribution];
      v15 = attribution2;
      if (attribution2)
      {
        [attribution2 auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      [SHServiceStateHandlerUtilities registerBundleAttributionForAuditToken:v17];
    }
  }

  return v6;
}

+ (NSMapTable)globallyScopedWorkers
{
  if (qword_100098228 != -1)
  {
    sub_10004B030();
  }

  v3 = qword_100098220;

  return v3;
}

+ (OS_dispatch_queue)globalQueue
{
  if (qword_100098238 != -1)
  {
    sub_10004B044();
  }

  v3 = qword_100098230;

  return v3;
}

- (BOOL)service:(id)service registerWorker:(id)worker watchdogTimeout:(double)timeout error:(id *)error
{
  serviceCopy = service;
  workerCopy = worker;
  workerID = [workerCopy workerID];
  v13 = [(SHServiceStateHandler *)self registeredWorkerForWorkerID:workerID];

  if (v13)
  {
    if (error)
    {
      *error = [SHCoreError errorWithCode:106 underlyingError:0];
    }
  }

  else
  {
    lock = [(SHServiceStateHandler *)self lock];
    [lock lock];

    v15 = objc_alloc_init(SHWatchdogTimer);
    workers = [(SHServiceStateHandler *)self workers];
    [workers setObject:v15 forKey:workerCopy];

    if (timeout > 0.0)
    {
      objc_initWeak(&location, workerCopy);
      v17 = sh_log_object();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v27 = workerCopy;
        v28 = 2048;
        timeoutCopy = timeout;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Worker %@ started watchdog timer for %f seconds", buf, 0x16u);
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000025E4;
      v23[3] = &unk_10007CD28;
      objc_copyWeak(&v24, &location);
      [(SHWatchdogTimer *)v15 startWatchdogTimerForInterval:v23 firedCompletion:timeout];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    if ([workerCopy executionScope] == 1)
    {
      v18 = +[SHServiceStateHandler globalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002624;
      block[3] = &unk_10007CD50;
      v22 = workerCopy;
      dispatch_sync(v18, block);
    }

    lock2 = [(SHServiceStateHandler *)self lock];
    [lock2 unlock];
  }

  return v13 == 0;
}

- (void)service:(id)service unregisterWorker:(id)worker
{
  workerCopy = worker;
  lock = [(SHServiceStateHandler *)self lock];
  [lock lock];

  workers = [(SHServiceStateHandler *)self workers];
  v8 = [workers objectForKey:workerCopy];

  [v8 stopWatchdogTimer];
  workers2 = [(SHServiceStateHandler *)self workers];
  [workers2 removeObjectForKey:workerCopy];

  if ([workerCopy executionScope] == 1)
  {
    v10 = +[SHServiceStateHandler globalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000027DC;
    block[3] = &unk_10007CD50;
    v13 = workerCopy;
    dispatch_sync(v10, block);
  }

  lock2 = [(SHServiceStateHandler *)self lock];
  [lock2 unlock];
}

- (void)unregisterAllWorkersForService:(id)service
{
  lock = [(SHServiceStateHandler *)self lock];
  [lock lock];

  workers = [(SHServiceStateHandler *)self workers];
  [workers removeAllObjects];

  lock2 = [(SHServiceStateHandler *)self lock];
  [lock2 unlock];
}

- (id)allWorkersForService:(id)service
{
  lock = [(SHServiceStateHandler *)self lock];
  [lock lock];

  workers = [(SHServiceStateHandler *)self workers];
  v6 = [workers copy];

  lock2 = [(SHServiceStateHandler *)self lock];
  [lock2 unlock];

  return v6;
}

- (id)registeredWorkerForWorkerID:(id)d
{
  dCopy = d;
  lock = [(SHServiceStateHandler *)self lock];
  [lock lock];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  workers = [(SHServiceStateHandler *)self workers];
  v7 = [workers countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(workers);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        workerID = [v10 workerID];
        v12 = [workerID isEqual:dCopy];

        if (v12)
        {
          lock2 = [(SHServiceStateHandler *)self lock];
          [lock2 unlock];

          v15 = v10;
          goto LABEL_11;
        }
      }

      v7 = [workers countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  lock3 = [(SHServiceStateHandler *)self lock];
  [lock3 unlock];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100002BE4;
  v25 = sub_100002BF4;
  v26 = 0;
  v14 = +[SHServiceStateHandler globalQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002BFC;
  v18[3] = &unk_10007CD78;
  v20 = &v21;
  v19 = dCopy;
  dispatch_sync(v14, v18);

  v15 = v22[5];
  _Block_object_dispose(&v21, 8);

LABEL_11:

  return v15;
}

- (BOOL)hasRegisteredWorkers
{
  lock = [(SHServiceStateHandler *)self lock];
  [lock lock];

  workers = [(SHServiceStateHandler *)self workers];
  v5 = [workers count] != 0;

  lock2 = [(SHServiceStateHandler *)self lock];
  [lock2 unlock];

  return v5;
}

@end