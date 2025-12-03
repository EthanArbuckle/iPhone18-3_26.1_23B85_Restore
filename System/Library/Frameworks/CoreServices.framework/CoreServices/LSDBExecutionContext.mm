@interface LSDBExecutionContext
+ (id)sharedServerInstance;
- (PerThreadContext)_perThreadContextsLock_createPerThreadContextForThisThread;
- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThread;
- (PerThreadContext)_perThreadContextsLock_findPerThreadContextForThisThreadIfExists;
- (id).cxx_construct;
- (id)_init;
- (id)getPerThreadDatabaseWithError:(os_unfair_lock_s *)error;
- (id)maintenanceQueue;
- (uint64_t)rawWriteAccessContextForDBInit;
- (void)_perThreadContextsLock_destroyPerThreadContextForThisThread;
- (void)assertActiveForThisThread;
- (void)assertNotActiveForThisThread;
- (void)beginServerDBBootstrap:(uint64_t)bootstrap;
- (void)performAsyncRead:(uint64_t)read;
- (void)performAsyncWrite:(uint64_t)write;
- (void)setServerDatabase:(uint64_t)database;
- (void)syncRead:(uint64_t)read;
- (void)syncWrite:(uint64_t)write;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSServerDBExecutionContext.mm" lineNumber:107 description:{@"Calling %s but didn't have a per thread context!", "-[LSDBExecutionContext _perThreadContextsLock_findPerThreadContextForThisThread]"}];
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
  if (self)
  {
    os_unfair_lock_lock(self + 5);
    [(os_unfair_lock_s *)self _perThreadContextsLock_findPerThreadContextForThisThread];

    os_unfair_lock_unlock(self + 5);
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

- (id)getPerThreadDatabaseWithError:(os_unfair_lock_s *)error
{
  if (error)
  {
    os_unfair_lock_lock(error + 5);
    _perThreadContextsLock_findPerThreadContextForThisThread = [(os_unfair_lock_s *)error _perThreadContextsLock_findPerThreadContextForThisThread];
    v5 = *_perThreadContextsLock_findPerThreadContextForThisThread;
    if (*_perThreadContextsLock_findPerThreadContextForThisThread)
    {
      v6 = v5;
    }

    else if (a2)
    {
      *a2 = *(_perThreadContextsLock_findPerThreadContextForThisThread + 8);
    }

    os_unfair_lock_unlock(error + 5);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assertNotActiveForThisThread
{
  if (self)
  {
    os_unfair_lock_lock(self + 5);
    if ([(os_unfair_lock_s *)self _perThreadContextsLock_findPerThreadContextForThisThreadIfExists])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_assertNotActiveForThisThread object:self file:@"LSServerDBExecutionContext.mm" lineNumber:152 description:@"Had a context for this thread?"];
    }

    os_unfair_lock_unlock(self + 5);
  }
}

- (void)syncRead:(uint64_t)read
{
  v3 = a2;
  if (read)
  {
    os_unfair_lock_lock((read + 16));
    os_unfair_lock_lock((read + 20));
    _perThreadContextsLock_createPerThreadContextForThisThread = [read _perThreadContextsLock_createPerThreadContextForThisThread];
    v12 = 0;
    v5 = LaunchServices::PerThreadContext::getDatabase(_perThreadContextsLock_createPerThreadContextForThisThread, &v12);
    v6 = v12;
    if (v5)
    {
      v7 = *(read + 64);
      v11 = v5;
      _CSStoreAccessContextAccessForRead();
    }

    os_unfair_lock_lock((_perThreadContextsLock_createPerThreadContextForThisThread + 20));

    os_unfair_lock_unlock((read + 20));
    os_unfair_lock_unlock((read + 16));
    v8 = *(read + 64);
    v10 = v3;
    v9 = v6;
    _CSStoreAccessContextAccessForRead();
    LaunchServices::PerThreadContext::releaseDatabase(_perThreadContextsLock_createPerThreadContextForThisThread);
    os_unfair_lock_unlock((_perThreadContextsLock_createPerThreadContextForThisThread + 20));
    os_unfair_lock_lock((read + 20));
    [read _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((read + 20));
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

- (void)syncWrite:(uint64_t)write
{
  v3 = a2;
  if (write)
  {
    os_unfair_lock_lock((write + 16));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    os_unfair_lock_lock((write + 20));
    _perThreadContextsLock_createPerThreadContextForThisThread = [write _perThreadContextsLock_createPerThreadContextForThisThread];
    *(_perThreadContextsLock_createPerThreadContextForThisThread + 16) = 1;
    for (i = *(write + 40); i; i = *i)
    {
      if (i[3] != _perThreadContextsLock_createPerThreadContextForThisThread)
      {
        std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::push_back[abi:nn200100](&v15, (i + 3));
      }
    }

    os_unfair_lock_unlock((write + 20));
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
    v10 = LaunchServices::PerThreadContext::getDatabase(_perThreadContextsLock_createPerThreadContextForThisThread, &v14);
    v11 = v14;
    if (v10)
    {
      v12 = *(write + 72);
      [_LSDatabase setAccessContext:v10];
      if ((_LSDatabaseIsMutable(v10) & 1) == 0)
      {
        _LSDatabaseSetMutable(v10);
      }

      v3[2](v3, write, 0);
      *(write + 80) = 1;
    }

    else
    {
      v13 = *(_perThreadContextsLock_createPerThreadContextForThisThread + 8);

      v11 = v13;
      (v3)[2](v3, 0, v13);
    }

    objc_autoreleasePoolPop(v9);
    os_unfair_lock_lock((write + 20));
    [write _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((write + 20));
    v18 = &v15;
    std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](&v18);
    os_unfair_lock_unlock((write + 16));
  }
}

- (void)beginServerDBBootstrap:(uint64_t)bootstrap
{
  v4 = a2;
  if (bootstrap)
  {
    os_unfair_lock_lock((bootstrap + 16));
    os_unfair_lock_lock((bootstrap + 20));
    *([bootstrap _perThreadContextsLock_createPerThreadContextForThisThread] + 16) = 1;
    os_unfair_lock_unlock((bootstrap + 20));
    v3 = objc_autoreleasePoolPush();
    v4[2]();
    objc_autoreleasePoolPop(v3);
    *(bootstrap + 80) = 1;
    os_unfair_lock_lock((bootstrap + 20));
    [bootstrap _perThreadContextsLock_destroyPerThreadContextForThisThread];
    os_unfair_lock_unlock((bootstrap + 20));
    os_unfair_lock_unlock((bootstrap + 16));
  }
}

- (void)setServerDatabase:(uint64_t)database
{
  v4 = a2;
  if (database)
  {
    v9 = v4;
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setServerDatabase_ object:database file:@"LSServerDBExecutionContext.mm" lineNumber:310 description:@"setting nil database"];
    }

    os_unfair_lock_lock((database + 20));
    _perThreadContextsLock_findPerThreadContextForThisThread = [database _perThreadContextsLock_findPerThreadContextForThisThread];
    if ((*(_perThreadContextsLock_findPerThreadContextForThisThread + 16) & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_setServerDatabase_ object:database file:@"LSServerDBExecutionContext.mm" lineNumber:314 description:@"must be in write context to set new server database"];
    }

    v6 = *(database + 72);
    [_LSDatabase setAccessContext:v9];
    if ((_LSDatabaseIsMutable(v9) & 1) == 0)
    {
      _LSDatabaseSetMutable(v9);
    }

    _LSSetLocalDatabase(v9);
    objc_storeStrong(_perThreadContextsLock_findPerThreadContextForThisThread, a2);
    os_unfair_lock_unlock((database + 20));
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

- (void)performAsyncWrite:(uint64_t)write
{
  v4 = a2;
  if (write)
  {
    OUTLINED_FUNCTION_0_4();
    v5[1] = 3221225472;
    v5[2] = __42__LSDBExecutionContext_performAsyncWrite___block_invoke;
    v5[3] = &unk_1E6A19728;
    v5[4] = write;
    v6 = v4;
    dispatch_async(v2, v5);
  }
}

- (void)performAsyncRead:(uint64_t)read
{
  v4 = a2;
  if (read)
  {
    OUTLINED_FUNCTION_0_4();
    v5[1] = 3221225472;
    v5[2] = __41__LSDBExecutionContext_performAsyncRead___block_invoke;
    v5[3] = &unk_1E6A19728;
    v5[4] = read;
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
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

@end