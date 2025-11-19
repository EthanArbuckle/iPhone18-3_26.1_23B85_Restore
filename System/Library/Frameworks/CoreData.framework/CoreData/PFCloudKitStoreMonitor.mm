@interface PFCloudKitStoreMonitor
- (NSManagedObjectContext)newBackgroundContextForMonitoredCoordinator;
- (id)initForStore:(id)a3;
- (uint64_t)retainedMonitoredStore;
- (void)coordinatorWillRemoveStore:(id)a3;
- (void)dealloc;
- (void)performBlock:(uint64_t)a1;
@end

@implementation PFCloudKitStoreMonitor

- (uint64_t)retainedMonitoredStore
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__51;
  v11 = __Block_byref_object_dispose__51;
  v12 = 0;
  if (*(a1 + 20) == 1 && (*(a1 + 21) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__PFCloudKitStoreMonitor_retainedMonitoredStore__block_invoke;
      v6[3] = &unk_1E6EC23F0;
      v6[5] = a1;
      v6[6] = &v7;
      v6[4] = WeakRetained;
      [WeakRetained performBlockAndWait:v6];
    }

    v2 = v8[5];
    if (!v2)
    {
      os_unfair_lock_lock_with_options();
      *(a1 + 20) = 256;
      os_unfair_lock_unlock((a1 + 16));
      v2 = v8[5];
    }
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v2;
}

id __48__PFCloudKitStoreMonitor_retainedMonitoredStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) persistentStoreForIdentifier:*(*(a1 + 40) + 48)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (NSManagedObjectContext)newBackgroundContextForMonitoredCoordinator
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [(NSManagedObjectContext *)v2 setPersistentStoreCoordinator:WeakRetained];
    [(NSManagedObjectContext *)v2 _setAllowAncillaryEntities:1];
    if (v2)
    {
      *&v2->_flags &= ~0x8000000u;
    }

    [(NSManagedObjectContext *)v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    if (!*(a1 + 48))
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to create context without a store identifier.\n", &v16, 2u);
      }

      v13 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      LOWORD(v16) = 0;
      v8 = "CoreData: Attempt to create context without a store identifier.";
      v10 = v13;
      v11 = 2;
      goto LABEL_24;
    }

    v18[0] = *(a1 + 48);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    if (v2)
    {
      v5 = [v4 copy];

      v2->_persistentStoreIdentifiers = v5;
    }

    if ([WeakRetained persistentStoreForIdentifier:*(a1 + 48)])
    {
      goto LABEL_21;
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = a1;
      _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: fault: Called after the store is dead. This method needs to be called inside a performBlock on the store monitor: %@\n", &v16, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v16 = 138412290;
    v17 = a1;
    v8 = "CoreData: Called after the store is dead. This method needs to be called inside a performBlock on the store monitor: %@";
  }

  else
  {
    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = a1;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Called after the store is dead. This method needs to be called inside a performBlock on the store monitor: %@\n", &v16, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v16 = 138412290;
    v17 = a1;
    v8 = "CoreData: Called after the store is dead. This method needs to be called inside a performBlock on the store monitor: %@";
  }

  v10 = v7;
  v11 = 12;
LABEL_24:
  _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, v8, &v16, v11);
LABEL_21:

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  self->_storeIdentifier = 0;
  dispatch_release(self->_monitorGroup);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = PFCloudKitStoreMonitor;
  [(PFCloudKitStoreMonitor *)&v3 dealloc];
}

- (id)initForStore:(id)a3
{
  v17.receiver = self;
  v17.super_class = PFCloudKitStoreMonitor;
  v4 = [(PFCloudKitStoreMonitor *)&v17 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_storeIsAlive = 0;
    v4->_monitorGroup = dispatch_group_create();
    v5->_aliveLock._os_unfair_lock_opaque = 0;
    *&v5->_retryCount = 0xA00000000;
    v5->_storeIdentifier = [a3 identifier];
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    storeIdentifier = v5->_storeIdentifier;
    v8 = [a3 URL];
    v9 = [a3 persistentStoreCoordinator];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__PFCloudKitStoreMonitor_initForStore___block_invoke;
    v12[3] = &unk_1E6EC28A8;
    v12[4] = v5;
    v12[5] = v9;
    v12[6] = storeIdentifier;
    v12[7] = &v13;
    [v9 performBlockAndWait:v12];
    v10 = *(v14 + 24);
    v5->_storeIsAlive = v10;
    if (v10 == 1)
    {
      objc_storeWeak(&v5->_monitoredCoordinator, v9);
      objc_storeWeak(&v5->_monitoredStore, a3);
    }

    _Block_object_dispose(&v13, 8);
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

uint64_t __39__PFCloudKitStoreMonitor_initForStore___block_invoke(uint64_t a1)
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  result = [*(a1 + 40) persistentStoreForIdentifier:*(a1 + 48)];
  if (result)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (void)coordinatorWillRemoveStore:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 "userInfo")];
  if (-[NSString isEqualToString:](self->_storeIdentifier, "isEqualToString:", [v4 identifier]) && objc_loadWeak(&self->_monitoredStore) == v4)
  {
    os_unfair_lock_lock_with_options();
    *&self->_storeIsAlive = 256;
    os_unfair_lock_unlock(&self->_aliveLock);
    retryCount = self->_retryCount;
    *&v7 = 136315906;
    v24 = v7;
    while (1)
    {
      self->_retryCount = retryCount + 1;
      monitorGroup = self->_monitorGroup;
      v9 = dispatch_time(0, 1000000000 * self->_timeoutSeconds);
      v10 = dispatch_group_wait(monitorGroup, v9);
      v11 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v13 = Stream;
      if (!v10)
      {
        break;
      }

      if (__ckLoggingOverride == 17)
      {
        v14 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v14 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v14))
      {
        v15 = self->_retryCount;
        *buf = v24;
        v26 = "[PFCloudKitStoreMonitor pfcloudstoremonitor_is_holding_your_store_open_waiting_for_cloudkit_activity_to_finish]";
        v27 = 1024;
        *v28 = 128;
        *&v28[4] = 2112;
        *&v28[6] = self;
        v29 = 1024;
        v30 = v15;
        _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Exporter / importer didn't tear down after 5 seconds, retrying (%d).", buf, 0x22u);
      }

      objc_autoreleasePoolPop(v11);
      retryCount = self->_retryCount;
      if (retryCount >= 10)
      {
        goto LABEL_24;
      }
    }

    if (__ckLoggingOverride == 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v16 = 16;
    }

    if (__ckLoggingOverride)
    {
      v17 = v16;
    }

    else
    {
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v17))
    {
      v18 = self->_retryCount;
      *buf = v24;
      v26 = "[PFCloudKitStoreMonitor pfcloudstoremonitor_is_holding_your_store_open_waiting_for_cloudkit_activity_to_finish]";
      v27 = 1024;
      *v28 = 125;
      *&v28[4] = 2112;
      *&v28[6] = self;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_18565F000, v13, v17, "CoreData+CloudKit: %s(%d): %@: Exporter / importer finished after %d tries. Allowing store to deallocate.", buf, 0x22u);
    }

    objc_autoreleasePoolPop(v11);
    if (self->_retryCount >= 10)
    {
LABEL_24:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        storeIdentifier = self->_storeIdentifier;
        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        *v28 = storeIdentifier;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: PFCloudKitStoreMonitor failed to tear down gracefully, this means requests are probably about to fail: %@ - %@\n", buf, 0x16u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v23 = self->_storeIdentifier;
        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        *v28 = v23;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: PFCloudKitStoreMonitor failed to tear down gracefully, this means requests are probably about to fail: %@ - %@", buf, 0x16u);
      }
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
    objc_storeWeak(&self->_monitoredCoordinator, 0);
    v21 = *MEMORY[0x1E69E9840];

    objc_storeWeak(&self->_monitoredStore, 0);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

- (void)performBlock:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      dispatch_group_enter(*(a1 + 8));
      (*(a2 + 16))(a2);
      dispatch_group_leave(*(a1 + 8));
    }

    else
    {
      WeakRetained = 0;
    }
  }
}

@end