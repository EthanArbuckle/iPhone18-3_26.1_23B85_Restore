@interface NSSQLCoreConnectionObserver
@end

@implementation NSSQLCoreConnectionObserver

uint64_t __63___NSSQLCoreConnectionObserver_initWithSQLCore_andCoordinator___block_invoke(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  notify_get_state(a2, &state64);
  if (WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_loadWeakRetained(WeakRetained + 3);
    objc_autoreleasePoolPop(v6);
    v8 = objc_autoreleasePoolPush();
    v9 = objc_loadWeakRetained(WeakRetained + 4);
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v12 = [(os_unfair_lock_s *)v7 identifier];
          *buf = 138412546;
          v28 = v12;
          v29 = 2048;
          v30 = state64;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - observer received for  %@ with state %lld\n", buf, 0x16u);
        }
      }

      else
      {
        v13 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [(os_unfair_lock_s *)v7 identifier];
          *buf = 138412546;
          v28 = v14;
          v29 = 2048;
          v30 = state64;
          _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - observer received for  %@ with state %lld\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = [(os_unfair_lock_s *)v7 identifier];
      v16 = 1;
    }

    else
    {
      v15 = [(os_unfair_lock_s *)v7 identifier];
      v16 = 9;
    }

    _NSCoreDataLog_console(v16, "Remote Change Notification - observer received for  %@ with state %lld", v15, state64);
    objc_autoreleasePoolPop(v10);
  }

  if (v7 && v9)
  {
    os_unfair_lock_lock_with_options();
    LOBYTE(v7[66]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v7 + 38);
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v18 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [(os_unfair_lock_s *)v7 identifier];
            *buf = 138412546;
            v28 = v19;
            v29 = 2048;
            v30 = state64;
            _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - PSC to post notification for store  %@ with transaction ID %lld\n", buf, 0x16u);
          }
        }

        else
        {
          v20 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [(os_unfair_lock_s *)v7 identifier];
            *buf = 138412546;
            v28 = v21;
            v29 = 2048;
            v30 = state64;
            _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - PSC to post notification for store  %@ with transaction ID %lld\n", buf, 0x16u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v22 = [(os_unfair_lock_s *)v7 identifier];
        v23 = 1;
      }

      else
      {
        v22 = [(os_unfair_lock_s *)v7 identifier];
        v23 = 9;
      }

      _NSCoreDataLog_console(v23, "Remote Change Notification - PSC to post notification for store  %@ with transaction ID %lld", v22, state64);
      objc_autoreleasePoolPop(v17);
    }

    [(NSPersistentStoreCoordinator *)v9 _postStoreRemoteChangeNotificationsForStore:v7 andState:state64];
  }

  result = [v4 drain];
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

@end