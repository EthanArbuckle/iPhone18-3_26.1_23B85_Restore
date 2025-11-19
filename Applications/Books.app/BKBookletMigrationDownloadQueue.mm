@interface BKBookletMigrationDownloadQueue
- (BKBookletMigrationDownloadQueue)initWithStore:(id)a3;
- (BKBookletMigrationDownloadQueueObserver)observer;
- (BOOL)_hasPendingItems;
- (void)_notifyDidBecomeEmpty;
- (void)_processNextBatchWithCompletion:(id)a3;
- (void)_setMigrationState:(int64_t)a3 forStoreIDStrings:(id)a4 logPrefix:(id)a5;
- (void)_triggerDownloads:(id)a3;
- (void)enqueueDownloads:(id)a3;
- (void)reloadFromStore;
- (void)setObserver:(id)a3;
@end

@implementation BKBookletMigrationDownloadQueue

- (BKBookletMigrationDownloadQueue)initWithStore:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = BKBookletMigrationDownloadQueue;
  v6 = [(BKBookletMigrationDownloadQueue *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = objc_alloc_init(NSMutableArray);
    pendingItems = v7->_pendingItems;
    v7->_pendingItems = v8;

    v7->_accessLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);

    v12 = dispatch_queue_create("BKBookletMigrationDownloadQueue.workQueue", v11);
    workQueue = v7->_workQueue;
    v7->_workQueue = v12;

    observer = v7->_observer;
    v7->_observer = 0;

    objc_initWeak(&location, v7);
    v15 = [BUCoalescingCallBlock alloc];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10010B15C;
    v22 = &unk_100A04820;
    objc_copyWeak(&v23, &location);
    v16 = [v15 initWithNotifyBlock:&v19 blockDescription:@"BKBookletMigrationDownloadQueue.processNextBatch"];
    coalescingProcessNextBatch = v7->_coalescingProcessNextBatch;
    v7->_coalescingProcessNextBatch = v16;

    [(BUCoalescingCallBlock *)v7->_coalescingProcessNextBatch setCoalescingDelay:60.0, v19, v20, v21, v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)setObserver:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010B26C;
  v5[3] = &unk_100A03440;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_accessLock);
  sub_10010B26C(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (BKBookletMigrationDownloadQueueObserver)observer
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000273F0;
  v15 = sub_100027630;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10010B3A4;
  v8 = &unk_100A036C0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_accessLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)enqueueDownloads:(id)a3
{
  v19 = self;
  v3 = a3;
  v4 = BKBookletMigrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "enqueueDownloads: storeIDs: %@", &buf, 0xCu);
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v20 = v5;

  v6 = [NSSet setWithArray:v20];
  v7 = [v6 mutableCopy];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_1000273F0;
  v38 = sub_100027630;
  v39 = &__NSArray0__struct;
  v8 = [(BKBookletMigrationDownloadQueue *)v19 store];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10010B794;
  v25[3] = &unk_100A07978;
  v9 = v7;
  v26 = v9;
  p_buf = &buf;
  [v8 migrationItemsWithStoreIDStrings:v9 completion:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = *(*(&buf + 1) + 40);
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 storeIDString];
        v16 = BKBookletMigrationLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 migrationState]);
          *v28 = 141558530;
          v29 = 1752392040;
          v30 = 2112;
          v31 = v15;
          v32 = 2114;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "enqueueDownloads: Skipping existing item - storeID: %{mask.hash}@, state: %{public}@", v28, 0x20u);
        }

        [v9 removeObject:v15];
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    [(BKBookletMigrationDownloadQueue *)v19 _setMigrationState:100 forStoreIDStrings:v9 logPrefix:@"enqueueDownloads"];
  }

  else
  {
    v18 = BKBookletMigrationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "enqueueDownloads: Nothing to enqueue", v28, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (void)reloadFromStore
{
  v3 = BKBookletMigrationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reloadFromStore", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_1000273F0;
  v24 = sub_100027630;
  v25 = &__NSArray0__struct;
  v4 = [(BKBookletMigrationDownloadQueue *)self store];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010BAB0;
  v19[3] = &unk_100A079A0;
  v19[4] = buf;
  v19[5] = 100;
  [v4 migrationItemsWithState:100 completion:v19];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10010BB70;
  v11 = &unk_100A04B88;
  v12 = self;
  v13 = buf;
  v14 = &v15;
  v5 = v9;
  os_unfair_lock_lock(&self->_accessLock);
  v10(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  if (*(v16 + 24) == 1)
  {
    v6 = [(BKBookletMigrationDownloadQueue *)self coalescingProcessNextBatch];
    [v6 signalWithCompletion:&stru_100A079C0];
  }

  else
  {
    v7 = BKBookletMigrationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "reloadFromStore: Pending queue is empty", v8, 2u);
    }

    [(BKBookletMigrationDownloadQueue *)self _notifyDidBecomeEmpty];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(buf, 8);
}

- (BOOL)_hasPendingItems
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_10010BCF0;
  v7 = &unk_100A036C0;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_accessLock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_accessLock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (void)_processNextBatchWithCompletion:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000273F0;
  v19 = sub_100027630;
  v20 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_10010BF04;
  v12 = &unk_100A037D8;
  v13 = self;
  v14 = &v15;
  v5 = v10;
  os_unfair_lock_lock(&self->_accessLock);
  v11(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  if ([v16[5] count])
  {
    [(BKBookletMigrationDownloadQueue *)self _triggerDownloads:v16[5]];
  }

  else
  {
    v6 = BKBookletMigrationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_processNextBatchWithCompletion: Pending queue is empty", v9, 2u);
    }

    [(BKBookletMigrationDownloadQueue *)self _notifyDidBecomeEmpty];
  }

  v7 = objc_retainBlock(v4);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_triggerDownloads:(id)a3
{
  v4 = a3;
  v5 = BKBookletMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: %@", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = [NSSet setWithArray:v4];
  v8 = [v7 mutableCopy];

  if ([v4 count])
  {
    dispatch_group_enter(v6);
    v9 = +[BKLibraryManager defaultManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010C208;
    v17[3] = &unk_100A04CA0;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    v10 = v9;
    [v10 fetchLibraryAssetsFromStoreIDs:v4 handler:v17];
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010C834;
  v13[3] = &unk_100A06858;
  v14 = v8;
  v15 = self;
  v12 = v8;
  objc_copyWeak(&v16, buf);
  dispatch_group_notify(v6, workQueue, v13);
  objc_destroyWeak(&v16);

  objc_destroyWeak(buf);
}

- (void)_notifyDidBecomeEmpty
{
  v2 = [(BKBookletMigrationDownloadQueue *)self observer];
  [v2 bookletMigrationDownloadQueueDidBecomeEmpty];
}

- (void)_setMigrationState:(int64_t)a3 forStoreIDStrings:(id)a4 logPrefix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BKBookletMigrationDownloadQueue *)self store];
  v17 = 0;
  v11 = [v10 setMigrationState:a3 forStoreIDStrings:v8 error:&v17];
  v12 = v17;

  v13 = BKBookletMigrationLog();
  v14 = v13;
  if (!v11)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v16 = [NSNumber numberWithInteger:a3];
    *buf = 138544130;
    v19 = v9;
    v20 = 2114;
    v21 = v16;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Error setting migrationState to %{public}@, storeIDs: %@, error: %@", buf, 0x2Au);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 count];
    v16 = [NSNumber numberWithInteger:a3];
    *buf = 138544130;
    v19 = v9;
    v20 = 2048;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated migrationState of %lu items to %{public}@, storeIDs: %@", buf, 0x2Au);
LABEL_4:
  }

LABEL_6:
}

@end