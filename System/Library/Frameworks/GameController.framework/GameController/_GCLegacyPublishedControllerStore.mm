@interface _GCLegacyPublishedControllerStore
+ (id)sharedInstance;
- (_GCLegacyPublishedControllerStore)init;
- (uint64_t)_publishCustomController:(uint64_t)a1;
- (uint64_t)_unpublishCustomController:(uint64_t)a1;
@end

@implementation _GCLegacyPublishedControllerStore

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_5 != -1)
  {
    +[_GCLegacyPublishedControllerStore sharedInstance];
  }

  v0 = sharedInstance_Shared_2;

  return v0;
}

- (_GCLegacyPublishedControllerStore)init
{
  v6.receiver = self;
  v6.super_class = _GCLegacyPublishedControllerStore;
  v2 = [(_GCLegacyPublishedControllerStore *)&v6 init];
  v2->_controllersLock = 0;
  v3 = objc_opt_new();
  publishedControllers = v2->_publishedControllers;
  v2->_publishedControllers = v3;

  return v2;
}

- (uint64_t)_publishCustomController:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = [OUTLINED_FUNCTION_2_14() member:?];

    if (v6)
    {
      os_unfair_recursive_lock_unlock();
      v7 = _gc_log_session();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_3_8(&dword_1D2CD5000, v8, v9, "#BUG IN CLIENT - Custom controller is already published: %@", v10, v11, v12, v13, 2u);
      }

      v5 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      v5 = 1;
      [OUTLINED_FUNCTION_1_20() willChangeValueForKey:? withSetMutation:? usingObjects:?];
      v15 = [OUTLINED_FUNCTION_2_14() setByAddingObject:?];
      v16 = *(a1 + 16);
      *(a1 + 16) = v15;

      [OUTLINED_FUNCTION_1_20() didChangeValueForKey:? withSetMutation:? usingObjects:?];
      os_unfair_recursive_lock_unlock();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)_unpublishCustomController:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = [OUTLINED_FUNCTION_2_14() member:?];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [OUTLINED_FUNCTION_0_25() willChangeValueForKey:? withSetMutation:? usingObjects:?];
      v8 = [OUTLINED_FUNCTION_2_14() gc_setByRemovingObject:?];
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;

      [OUTLINED_FUNCTION_0_25() didChangeValueForKey:? withSetMutation:? usingObjects:?];
      os_unfair_recursive_lock_unlock();

      v5 = 1;
    }

    else
    {
      os_unfair_recursive_lock_unlock();
      v10 = _gc_log_session();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_3_8(&dword_1D2CD5000, v11, v12, "#BUG IN CLIENT - Controller is not custom or has not been published: %@", v13, v14, v15, v16, 2u);
      }

      v5 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end