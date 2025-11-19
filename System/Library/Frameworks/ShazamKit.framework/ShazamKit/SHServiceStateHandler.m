@interface SHServiceStateHandler
+ (NSMapTable)globallyScopedWorkers;
+ (OS_dispatch_queue)globalQueue;
- (BOOL)hasRegisteredWorkers;
- (BOOL)service:(id)a3 registerWorker:(id)a4 watchdogTimeout:(double)a5 error:(id *)a6;
- (SHServiceStateHandler)initWithClientCredentials:(id)a3;
- (id)allWorkersForService:(id)a3;
- (id)registeredWorkerForWorkerID:(id)a3;
- (void)service:(id)a3 unregisterWorker:(id)a4;
- (void)unregisterAllWorkersForService:(id)a3;
@end

@implementation SHServiceStateHandler

- (SHServiceStateHandler)initWithClientCredentials:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SHServiceStateHandler;
  v6 = [(SHServiceStateHandler *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSLock);
    lock = v6->_lock;
    v6->_lock = v7;

    objc_storeStrong(&v6->_clientCredentials, a3);
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    workers = v6->_workers;
    v6->_workers = v9;

    v11 = [(SHClientCredentials *)v6->_clientCredentials attribution];
    v12 = [v11 bundleIdentifier];
    v13 = [SHAttribution requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:v12];

    if (v13)
    {
      +[SHServiceStateHandlerUtilities registerMusicRecognitionBundleAttribution];
    }

    else
    {
      v14 = [(SHClientCredentials *)v6->_clientCredentials attribution];
      v15 = v14;
      if (v14)
      {
        [v14 auditToken];
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

- (BOOL)service:(id)a3 registerWorker:(id)a4 watchdogTimeout:(double)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v11 workerID];
  v13 = [(SHServiceStateHandler *)self registeredWorkerForWorkerID:v12];

  if (v13)
  {
    if (a6)
    {
      *a6 = [SHCoreError errorWithCode:106 underlyingError:0];
    }
  }

  else
  {
    v14 = [(SHServiceStateHandler *)self lock];
    [v14 lock];

    v15 = objc_alloc_init(SHWatchdogTimer);
    v16 = [(SHServiceStateHandler *)self workers];
    [v16 setObject:v15 forKey:v11];

    if (a5 > 0.0)
    {
      objc_initWeak(&location, v11);
      v17 = sh_log_object();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v27 = v11;
        v28 = 2048;
        v29 = a5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Worker %@ started watchdog timer for %f seconds", buf, 0x16u);
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000025E4;
      v23[3] = &unk_10007CD28;
      objc_copyWeak(&v24, &location);
      [(SHWatchdogTimer *)v15 startWatchdogTimerForInterval:v23 firedCompletion:a5];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    if ([v11 executionScope] == 1)
    {
      v18 = +[SHServiceStateHandler globalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002624;
      block[3] = &unk_10007CD50;
      v22 = v11;
      dispatch_sync(v18, block);
    }

    v19 = [(SHServiceStateHandler *)self lock];
    [v19 unlock];
  }

  return v13 == 0;
}

- (void)service:(id)a3 unregisterWorker:(id)a4
{
  v5 = a4;
  v6 = [(SHServiceStateHandler *)self lock];
  [v6 lock];

  v7 = [(SHServiceStateHandler *)self workers];
  v8 = [v7 objectForKey:v5];

  [v8 stopWatchdogTimer];
  v9 = [(SHServiceStateHandler *)self workers];
  [v9 removeObjectForKey:v5];

  if ([v5 executionScope] == 1)
  {
    v10 = +[SHServiceStateHandler globalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000027DC;
    block[3] = &unk_10007CD50;
    v13 = v5;
    dispatch_sync(v10, block);
  }

  v11 = [(SHServiceStateHandler *)self lock];
  [v11 unlock];
}

- (void)unregisterAllWorkersForService:(id)a3
{
  v4 = [(SHServiceStateHandler *)self lock];
  [v4 lock];

  v5 = [(SHServiceStateHandler *)self workers];
  [v5 removeAllObjects];

  v6 = [(SHServiceStateHandler *)self lock];
  [v6 unlock];
}

- (id)allWorkersForService:(id)a3
{
  v4 = [(SHServiceStateHandler *)self lock];
  [v4 lock];

  v5 = [(SHServiceStateHandler *)self workers];
  v6 = [v5 copy];

  v7 = [(SHServiceStateHandler *)self lock];
  [v7 unlock];

  return v6;
}

- (id)registeredWorkerForWorkerID:(id)a3
{
  v4 = a3;
  v5 = [(SHServiceStateHandler *)self lock];
  [v5 lock];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(SHServiceStateHandler *)self workers];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 workerID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v16 = [(SHServiceStateHandler *)self lock];
          [v16 unlock];

          v15 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(SHServiceStateHandler *)self lock];
  [v13 unlock];

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
  v19 = v4;
  dispatch_sync(v14, v18);

  v15 = v22[5];
  _Block_object_dispose(&v21, 8);

LABEL_11:

  return v15;
}

- (BOOL)hasRegisteredWorkers
{
  v3 = [(SHServiceStateHandler *)self lock];
  [v3 lock];

  v4 = [(SHServiceStateHandler *)self workers];
  v5 = [v4 count] != 0;

  v6 = [(SHServiceStateHandler *)self lock];
  [v6 unlock];

  return v5;
}

@end