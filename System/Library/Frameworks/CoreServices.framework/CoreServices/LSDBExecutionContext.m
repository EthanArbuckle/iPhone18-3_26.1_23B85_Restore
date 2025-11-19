@interface LSDBExecutionContext
+ (id)sharedServerInstance;
- (PerThreadContext)_perThreadContextsLock_createPerThreadContextForThisThread;
- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThread;
- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThreadIfExists;
- (id).cxx_construct;
- (id)_init;
- (id)getPerThreadDatabaseWithError:(os_unfair_lock_s *)a1;
- (id)maintenanceQueue;
- (uint64_t)rawWriteAccessContextForDBInit;
- (void)_perThreadContextsLock_destroyPerThreadContextForThisThread;
- (void)assertActiveForThisThread;
- (void)assertNotActiveForThisThread;
- (void)beginServerDBBootstrap:(uint64_t)a1;
- (void)performAsyncRead:(uint64_t)a1;
- (void)performAsyncWrite:(uint64_t)a1;
- (void)setServerDatabase:(uint64_t)a1;
- (void)syncRead:(uint64_t)a1;
- (void)syncWrite:(uint64_t)a1;
@end

@implementation LSDBExecutionContext

- (PerThreadContext)_perThreadContextsLock_createPerThreadContextForThisThread
{
  os_unfair_lock_assert_owner(&self->_perThreadContextsLock);
  v3 = pthread_self();
  operator new();
}

- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThread
{
  os_unfair_lock_assert_owner(&self->_perThreadContextsLock);
  v7 = pthread_self();
  v4 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(&self->_perThreadContexts.__table_.__bucket_list_.__ptr_, &v7);
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"LSServerDBExecutionContext.mm" lineNumber:107 description:{@"Calling %s but didn't have a per thread context!", "-[LSDBExecutionContext _perThreadContextsLock_findPerThreadContextForThisThread]"}];
  }

  return v4[3];
}

- (void)_perThreadContextsLock_destroyPerThreadContextForThisThread
{
  os_unfair_lock_assert_owner(&self->_perThreadContextsLock);
  v3 = pthread_self();
  std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__erase_unique<_opaque_pthread_t *>(&self->_perThreadContexts.__table_.__bucket_list_.__ptr_, &v3);
}

- (void)assertActiveForThisThread
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 5);
    [(os_unfair_lock_s *)a1 _perThreadContextsLock_findPerThreadContextForThisThread];

    os_unfair_lock_unlock(a1 + 5);
  }
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = LSDBExecutionContext;
  v2 = [(LSDBExecutionContext *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.LSDBExecutionContext", v3);
    maintenanceQueue = v2->_maintenanceQueue;
    v2->_maintenanceQueue = v4;

    SharedReadingContext = _CSStoreAccessContextCreateSharedReadingContext();
    fItem = v2->_readAccessContext.fItem;
    if (fItem != SharedReadingContext)
    {
      v2->_readAccessContext.fItem = SharedReadingContext;
      SharedReadingContext = fItem;
    }

    if (SharedReadingContext)
    {
      CFRelease(SharedReadingContext);
    }

    v8 = _CSStoreAccessContextCreateWithLock();
    v9 = v2->_writeAccessContext.fItem;
    if (v9 != v8)
    {
      v2->_writeAccessContext.fItem = v8;
      v8 = v9;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v2->_databaseLeftWritable = 0;
  }

  return v2;
}

- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThreadIfExists
{
  os_unfair_lock_assert_owner(&self->_perThreadContextsLock);
  v4 = pthread_self();
  result = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(&self->_perThreadContexts.__table_.__bucket_list_.__ptr_, &v4);
  if (result)
  {
    return result[1].var0;
  }

  return result;
}

- (id)getPerThreadDatabaseWithError:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 5);
    v4 = [(os_unfair_lock_s *)a1 _perThreadContextsLock_findPerThreadContextForThisThread];
    v5 = *v4;
    if (*v4)
    {
      v6 = v5;
    }

    else if (a2)
    {
      *a2 = *(v4 + 8);
    }

    os_unfair_lock_unlock(a1 + 5);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assertNotActiveForThisThread
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 5);
    if ([(os_unfair_lock_s *)a1 _perThreadContextsLock_findPerThreadContextForThisThreadIfExists])
    {
      v2 = [MEMORY[0x1E696AAA8] currentHandler];
      [v2 handleFailureInMethod:sel_assertNotActiveForThisThread object:a1 file:@"LSServerDBExecutionContext.mm" lineNumber:152 description:@"Had a context for this thread?"];
    }

    os_unfair_lock_unlock(a1 + 5);
  }
}

- (void)syncRead:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    os_unfair_lock_lock((a1 + 20));
    v4 = [a1 _perThreadContextsLock_createPerThreadContextForThisThread];
    v12 = 0;
    v5 = LaunchServices::PerThreadContext::getDatabase(v4, &v12);
    v6 = v12;
    if (v5)
    {
      v7 = *(a1 + 64);
      v11 = v5;
      _CSStoreAccessContextAccessForRead();
    }

    os_unfair_lock_lock((v4 + 20));

    os_unfair_lock_unlock((a1 + 20));
    os_unfair_lock_unlock((a1 + 16));
    v8 = *(a1 + 64);
    v10 = v3;
    v9 = v6;
    _CSStoreAccessContextAccessForRead();
    LaunchServices::PerThreadContext::releaseDatabase(v4);
    os_unfair_lock_unlock((v4 + 20));
    os_unfair_lock_lock((a1 + 20));
    [a1 _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((a1 + 20));
  }
}

void __33__LSDBExecutionContext_syncRead___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  IsMutable = _LSDatabaseIsMutable(*(a1 + 40));
  if (v2 == 1)
  {
    if (IsMutable)
    {
      v4 = *(*(a1 + 32) + 72);
      [_LSDatabase setAccessContext:?];
      _LSDatabaseSetMutable(*(a1 + 40));
    }

    v5 = *(*(a1 + 32) + 64);
    [_LSDatabase setAccessContext:?];
    *(*(a1 + 32) + 80) = 0;
  }

  else if (IsMutable)
  {
    v6 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __33__LSDBExecutionContext_syncRead___block_invoke_cold_1(v6);
    }

    abort();
  }
}

void __33__LSDBExecutionContext_syncRead___block_invoke_14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)syncWrite:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    os_unfair_lock_lock((a1 + 20));
    v4 = [a1 _perThreadContextsLock_createPerThreadContextForThisThread];
    *(v4 + 16) = 1;
    for (i = *(a1 + 40); i; i = *i)
    {
      if (i[3] != v4)
      {
        std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::push_back[abi:nn200100](&v15, (i + 3));
      }
    }

    os_unfair_lock_unlock((a1 + 20));
    v6 = v15;
    v7 = v16;
    while (v6 != v7)
    {
      v8 = *v6;
      v6 += 2;
      os_unfair_lock_lock(v8 + 5);
      os_unfair_lock_unlock(v8 + 5);
    }

    v9 = objc_autoreleasePoolPush();
    v14 = 0;
    v10 = LaunchServices::PerThreadContext::getDatabase(v4, &v14);
    v11 = v14;
    if (v10)
    {
      v12 = *(a1 + 72);
      [_LSDatabase setAccessContext:v10];
      if ((_LSDatabaseIsMutable(v10) & 1) == 0)
      {
        _LSDatabaseSetMutable(v10);
      }

      v3[2](v3, a1, 0);
      *(a1 + 80) = 1;
    }

    else
    {
      v13 = *(v4 + 8);

      v11 = v13;
      (v3)[2](v3, 0, v13);
    }

    objc_autoreleasePoolPop(v9);
    os_unfair_lock_lock((a1 + 20));
    [a1 _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((a1 + 20));
    v18 = &v15;
    std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](&v18);
    os_unfair_lock_unlock((a1 + 16));
  }
}

- (void)beginServerDBBootstrap:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    os_unfair_lock_lock((a1 + 20));
    *([a1 _perThreadContextsLock_createPerThreadContextForThisThread] + 16) = 1;
    os_unfair_lock_unlock((a1 + 20));
    v3 = objc_autoreleasePoolPush();
    v4[2]();
    objc_autoreleasePoolPop(v3);
    *(a1 + 80) = 1;
    os_unfair_lock_lock((a1 + 20));
    [a1 _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((a1 + 20));
    os_unfair_lock_unlock((a1 + 16));
  }
}

- (void)setServerDatabase:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v9 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_setServerDatabase_ object:a1 file:@"LSServerDBExecutionContext.mm" lineNumber:310 description:@"setting nil database"];
    }

    os_unfair_lock_lock((a1 + 20));
    v5 = [a1 _perThreadContextsLock_findPerThreadContextForThisThread];
    if ((*(v5 + 16) & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_setServerDatabase_ object:a1 file:@"LSServerDBExecutionContext.mm" lineNumber:314 description:@"must be in write context to set new server database"];
    }

    v6 = *(a1 + 72);
    [_LSDatabase setAccessContext:v9];
    if ((_LSDatabaseIsMutable(v9) & 1) == 0)
    {
      _LSDatabaseSetMutable(v9);
    }

    _LSSetLocalDatabase(v9);
    objc_storeStrong(v5, a2);
    os_unfair_lock_unlock((a1 + 20));
    v4 = v9;
  }
}

+ (id)sharedServerInstance
{
  objc_opt_self();
  if (+[LSDBExecutionContext sharedServerInstance]::onceToken != -1)
  {
    +[LSDBExecutionContext sharedServerInstance];
  }

  v0 = +[LSDBExecutionContext sharedServerInstance]::result;

  return v0;
}

void __44__LSDBExecutionContext_sharedServerInstance__block_invoke()
{
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v0 = [[LSDBExecutionContext alloc] _init];
    v1 = +[LSDBExecutionContext sharedServerInstance]::result;
    +[LSDBExecutionContext sharedServerInstance]::result = v0;
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 14) = 1065353216;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

- (void)performAsyncWrite:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_4();
    v5[1] = 3221225472;
    v5[2] = __42__LSDBExecutionContext_performAsyncWrite___block_invoke;
    v5[3] = &unk_1E6A19728;
    v5[4] = a1;
    v6 = v4;
    dispatch_async(v2, v5);
  }
}

- (void)performAsyncRead:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_4();
    v5[1] = 3221225472;
    v5[2] = __41__LSDBExecutionContext_performAsyncRead___block_invoke;
    v5[3] = &unk_1E6A19728;
    v5[4] = a1;
    v6 = v4;
    dispatch_async(v2, v5);
  }
}

- (uint64_t)rawWriteAccessContextForDBInit
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (id)maintenanceQueue
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

@end