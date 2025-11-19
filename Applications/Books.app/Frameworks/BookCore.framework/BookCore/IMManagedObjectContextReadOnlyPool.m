@interface IMManagedObjectContextReadOnlyPool
- (IMManagedObjectContextReadOnlyPool)initWithContextProvider:(id)a3;
- (void)_cleanupWithCompletion:(id)a3;
- (void)_makeAvailable:(id)a3;
- (void)_managedObjectContextDidSaveNotification:(id)a3;
- (void)_updateUseCountTime;
- (void)dealloc;
- (void)performReadOnlyBlock:(id)a3;
- (void)remoteContextDidSave:(id)a3;
@end

@implementation IMManagedObjectContextReadOnlyPool

- (IMManagedObjectContextReadOnlyPool)initWithContextProvider:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = IMManagedObjectContextReadOnlyPool;
  v5 = [(IMManagedObjectContextReadOnlyPool *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_create("IMManagedObjectContextReadOnlyPool", 0);
    [(IMManagedObjectContextReadOnlyPool *)v5 setSync:v6];

    v7 = [(IMManagedObjectContextReadOnlyPool *)v5 sync];
    dispatch_queue_set_specific(v7, off_33E678, off_33E678, 0);

    [(IMManagedObjectContextReadOnlyPool *)v5 setProviderBlock:v4];
    v8 = [[NSMutableArray alloc] initWithCapacity:8];
    [(IMManagedObjectContextReadOnlyPool *)v5 setContexts:v8];

    v9 = objc_alloc_init(NSMutableArray);
    [(IMManagedObjectContextReadOnlyPool *)v5 setPendingBlocks:v9];

    v10 = objc_alloc_init(NSMutableIndexSet);
    [(IMManagedObjectContextReadOnlyPool *)v5 setAvailableContextIndexes:v10];

    [(IMManagedObjectContextReadOnlyPool *)v5 setMinInstanceCount:1];
    [(IMManagedObjectContextReadOnlyPool *)v5 setMaxInstanceCount:8];
    objc_initWeak(&location, v5);
    v11 = [BUCoalescingCallBlock alloc];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_AA37C;
    v21 = &unk_2C8140;
    objc_copyWeak(&v22, &location);
    v12 = [v11 initWithNotifyBlock:&v18 blockDescription:@"IMManagedObjectContextReadOnlyPool"];
    [(IMManagedObjectContextReadOnlyPool *)v5 setCoalescingCleanup:v12, v18, v19, v20, v21];

    v13 = [(IMManagedObjectContextReadOnlyPool *)v5 coalescingCleanup];
    [v13 setCoalescingDelay:5.0];

    v14 = [(IMManagedObjectContextReadOnlyPool *)v5 coalescingCleanup];
    [v14 setMaximumDelay:10.0];

    v15 = objc_opt_new();
    [(IMManagedObjectContextReadOnlyPool *)v5 setLastUsedTime:v15];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v5 selector:"_managedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v4.receiver = self;
  v4.super_class = IMManagedObjectContextReadOnlyPool;
  [(IMManagedObjectContextReadOnlyPool *)&v4 dealloc];
}

- (void)_cleanupWithCompletion:(id)a3
{
  v4 = a3;
  sync = self->_sync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AA4E4;
  v7[3] = &unk_2C8488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sync, v7);
}

- (void)_updateUseCountTime
{
  v3 = [(IMManagedObjectContextReadOnlyPool *)self inUseCount];
  if (v3 > [(IMManagedObjectContextReadOnlyPool *)self minInstanceCount])
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;

    v7 = [NSNumber numberWithDouble:v6];
    v8 = [(IMManagedObjectContextReadOnlyPool *)self lastUsedTime];
    v9 = [NSNumber numberWithUnsignedInteger:[(IMManagedObjectContextReadOnlyPool *)self inUseCount]];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = [(IMManagedObjectContextReadOnlyPool *)self coalescingCleanup];
    [v10 signalWithCompletion:&stru_2CC318];
  }
}

- (void)remoteContextDidSave:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_AAA80;
  v25 = sub_AAA90;
  v26 = 0;
  if (dispatch_get_specific(off_33E678))
  {
    v5 = [(IMManagedObjectContextReadOnlyPool *)self contexts];
    v6 = [v5 copy];
    v7 = v22[5];
    v22[5] = v6;
  }

  else
  {
    sync = self->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AAA98;
    block[3] = &unk_2C7AE0;
    block[4] = self;
    block[5] = &v21;
    dispatch_sync(sync, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v22[5];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_AAAFC;
        v14[3] = &unk_2C7BE8;
        v14[4] = v13;
        v15 = v4;
        [v13 performBlock:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)_managedObjectContextDidSaveNotification:(id)a3
{
  v17 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_AAA80;
  v29 = sub_AAA90;
  v30 = 0;
  if (dispatch_get_specific(off_33E678))
  {
    v4 = [(IMManagedObjectContextReadOnlyPool *)self contexts];
    v5 = [v4 copy];
    v6 = v26[5];
    v26[5] = v5;
  }

  else
  {
    sync = self->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AADF0;
    block[3] = &unk_2C7AE0;
    block[4] = self;
    block[5] = &v25;
    dispatch_sync(sync, block);
  }

  v8 = [v17 object];
  v9 = [v8 persistentStoreCoordinator];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v26[5];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v14 != v8)
        {
          v15 = [*(*(&v20 + 1) + 8 * i) persistentStoreCoordinator];
          v16 = [v15 hasStoreInCommonWith:v9];

          if (v16)
          {
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_AAE54;
            v18[3] = &unk_2C7BE8;
            v18[4] = v14;
            v19 = v17;
            [v14 performBlock:v18];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v25, 8);
}

- (void)_makeAvailable:(id)a3
{
  v4 = a3;
  v5 = [(IMManagedObjectContextReadOnlyPool *)self sync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AAF14;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)performReadOnlyBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IMManagedObjectContextReadOnlyPool *)self sync];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_AB19C;
    v6[3] = &unk_2C8488;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

@end