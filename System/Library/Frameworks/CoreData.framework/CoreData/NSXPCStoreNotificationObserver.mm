@interface NSXPCStoreNotificationObserver
- (id)initForObservationWithName:(id)name store:(id)store;
- (id)setStore:(id *)result;
- (void)dealloc;
@end

@implementation NSXPCStoreNotificationObserver

- (id)initForObservationWithName:(id)name store:(id)store
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSXPCStoreNotificationObserver;
  v6 = [(NSXPCStoreNotificationObserver *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_token = -1;
    v6->_storeID = [objc_msgSend(store "identifier")];
    objc_storeWeak(&v7->_psc, [store persistentStoreCoordinator]);
    v8 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CoreData.%@.%p", name, v7), "UTF8String"];
    v7->_queue = dispatch_queue_create(v8, MEMORY[0x1E69E96A8]);
    objc_initWeak(&location, v7);
    fileSystemRepresentation = [name fileSystemRepresentation];
    queue = v7->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSXPCStoreNotificationObserver_initForObservationWithName_store___block_invoke;
    handler[3] = &unk_1E6EC2008;
    handler[4] = v7;
    objc_copyWeak(&v17, &location);
    v11 = notify_register_dispatch(fileSystemRepresentation, &v7->_token, queue, handler);
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v21 = v11;
LABEL_12:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to setup notification listener: %d\n", buf, 8u);
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v21 = v11;
            goto LABEL_12;
          }
        }
      }

      _NSCoreDataLog_console(1, " Failed to setup notification listener: %d", v11);
      objc_autoreleasePoolPop(v12);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      v7 = 0;
      goto LABEL_10;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

id __67__NSXPCStoreNotificationObserver_initForObservationWithName_store___block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v8 = Weak[4];
    v9 = [WeakRetained persistentStoreForIdentifier:v8];
    v10 = v9;
    if (WeakRetained && v9)
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v8;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - posting NSRemotePersistentStoreDidChangeNotification for store  %@ \n", buf, 0xCu);
          }
        }

        else
        {
          v13 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v8;
            _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Remote Change Notification - posting NSRemotePersistentStoreDidChangeNotification for store  %@ \n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v14 = 1;
      }

      else
      {
        v14 = 8;
      }

      _NSCoreDataLog_console(v14, "Remote Change Notification - posting NSRemotePersistentStoreDidChangeNotification for store  %@ ", v8);
      objc_autoreleasePoolPop(v11);
      [v5 postNotificationName:@"NSRemotePersistentStoreDidChangeNotification" object:v10];
      state64 = 0;
      notify_get_state(a2, &state64);
      v15 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v16 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v8;
            v24 = 2048;
            v25 = state64;
            _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - PSC to post notification for store  %@ with state %ld\n", buf, 0x16u);
          }
        }

        else
        {
          v17 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v23 = v8;
            v24 = 2048;
            v25 = state64;
            _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Remote Change Notification - PSC to post notification for store  %@ with state %ld\n", buf, 0x16u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v18 = 1;
      }

      else
      {
        v18 = 8;
      }

      _NSCoreDataLog_console(v18, "Remote Change Notification - PSC to post notification for store  %@ with state %ld", v8, state64);
      objc_autoreleasePoolPop(v15);
      [(NSPersistentStoreCoordinator *)WeakRetained _postStoreRemoteChangeNotificationsForStore:v10 andState:state64];
    }
  }

  else
  {
    v10 = 0;
  }

  [v4 drain];
  result = 0;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
    self->_token = -1;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  objc_storeWeak(&self->_psc, 0);

  self->_storeID = 0;
  v5.receiver = self;
  v5.super_class = NSXPCStoreNotificationObserver;
  [(NSXPCStoreNotificationObserver *)&v5 dealloc];
}

- (id)setStore:(id *)result
{
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);

    v3[4] = [objc_msgSend(a2 "identifier")];

    return objc_sync_exit(v3);
  }

  return result;
}

@end