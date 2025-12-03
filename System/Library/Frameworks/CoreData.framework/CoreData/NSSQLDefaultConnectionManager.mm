@interface NSSQLDefaultConnectionManager
- (BOOL)handleStoreRequest:(id)request;
- (NSSQLDefaultConnectionManager)initWithSQLCore:(id)core priority:(unint64_t)priority seedConnection:(id)connection;
- (intptr_t)_checkinConnection:(intptr_t)result;
- (void)_checkoutConnectionOfType:(uint64_t)type;
- (void)dealloc;
- (void)disconnectAllConnections;
- (void)enumerateAvailableConnectionsWithBlock:(id)block;
- (void)scheduleBarrierBlock:(id)block;
- (void)scheduleConnectionsBarrier:(id)barrier;
- (void)setExclusiveLockingMode:(BOOL)mode;
@end

@implementation NSSQLDefaultConnectionManager

- (void)disconnectAllConnections
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__NSSQLDefaultConnectionManager_disconnectAllConnections__block_invoke;
  v4[3] = &unk_1E6EC1330;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_barrier_sync(processingQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    objc_exception_throw(v3);
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __57__NSSQLDefaultConnectionManager_disconnectAllConnections__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(*(a1 + 32) + 32) count];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = [NSSQLDefaultConnectionManager _checkoutConnectionOfType:?];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        v5 = [*(*(a1 + 32) + 32) count];
        os_unfair_lock_unlock((*(a1 + 32) + 48));
      }
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v3 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v9)
  {
    v10 = *v39;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v3);
        }

        [(NSSQLiteConnection *)*(*(&v38 + 1) + 8 * j) performAndWait:?];
      }

      v9 = [v3 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = *v35;
    do
    {
      for (k = 0; k != v12; ++k)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v34 + 1) + 8 * k);
        if (v15)
        {

          *(v15 + 208) = 0;
        }
      }

      v12 = [v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v3 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = *v31;
    do
    {
      for (m = 0; m != v16; ++m)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v3);
        }

        v19 = *(*(&v30 + 1) + 8 * m);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __57__NSSQLDefaultConnectionManager_disconnectAllConnections__block_invoke_3;
        v29[3] = &unk_1E6EC16F0;
        v29[4] = v19;
        [(NSSQLiteConnection *)v19 performAndWait:v29];
      }

      v16 = [v3 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v16);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = [v3 countByEnumeratingWithState:&v25 objects:v42 count:16];
  if (v20)
  {
    v21 = *v26;
    do
    {
      for (n = 0; n != v20; ++n)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v3);
        }

        [(NSSQLDefaultConnectionManager *)*(a1 + 32) _checkinConnection:?];
      }

      v20 = [v3 countByEnumeratingWithState:&v25 objects:v42 count:16];
    }

    while (v20);
  }

  [v3 removeAllObjects];
  result = [v2 drain];
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  processingQueue = self->_processingQueue;
  if (processingQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__NSSQLDefaultConnectionManager_dealloc__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    dispatch_barrier_sync(processingQueue, block);
    dispatch_release(self->_processingQueue);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allConnections = self->_allConnections;
    v5 = [(NSArray *)allConnections countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allConnections);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __40__NSSQLDefaultConnectionManager_dealloc__block_invoke_3;
          v13[3] = &unk_1E6EC16F0;
          v13[4] = v9;
          [(NSSQLiteConnection *)v9 performAndWait:v13];
        }

        v6 = [(NSArray *)allConnections countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    self->_allConnections = 0;
  }

  self->_availableConnections = 0;
  poolCounter = self->_poolCounter;
  if (poolCounter)
  {
    dispatch_release(poolCounter);
    self->_poolCounter = 0;
  }

  v12.receiver = self;
  v12.super_class = NSSQLDefaultConnectionManager;
  [(NSSQLConnectionManager *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __40__NSSQLDefaultConnectionManager_dealloc__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __40__NSSQLDefaultConnectionManager_dealloc__block_invoke_2;
        v10[3] = &unk_1E6EC16F0;
        v10[4] = v7;
        [(NSSQLiteConnection *)v7 performAndWait:v10];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 32) = 0;
  result = [v2 drain];
  if (v4)
  {
    objc_exception_rethrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLDefaultConnectionManager)initWithSQLCore:(id)core priority:(unint64_t)priority seedConnection:(id)connection
{
  v36 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = NSSQLDefaultConnectionManager;
  v9 = [NSSQLConnectionManager initWithSQLCore:sel_initWithSQLCore_priority_seedConnection_ priority:? seedConnection:?];
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"SQLQueue: %@ : %p", objc_msgSend(objc_msgSend(core, "_persistentStoreCoordinator"), "name"), v9), "cStringUsingEncoding:", 1];
  if (priority == 1)
  {
    v11 = QOS_CLASS_USER_INITIATED;
  }

  else
  {
    _persistentStoreCoordinator = [core _persistentStoreCoordinator];
    if (!_persistentStoreCoordinator)
    {
      goto LABEL_13;
    }

    v13 = *(_persistentStoreCoordinator + 24);
    v11 = (v13 >> 2);
    if (!(v13 >> 2))
    {
      goto LABEL_13;
    }
  }

  v14 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v11, 0);
  if (!v14)
  {
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v16 = _pflogging_catastrophic_mode == 0;
      LogStream = _PFLogGetLogStream(1);
      v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v18)
        {
LABEL_36:
          Name = sel_getName(a2);
          *buf = 136315138;
          v35 = Name;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: dispatch_queue_attr_make_with_qos_class() returned NULL in %s\n", buf, 0xCu);
        }
      }

      else if (v18)
      {
        goto LABEL_36;
      }
    }

    v19 = sel_getName(a2);
    _NSCoreDataLog_console(1, "dispatch_queue_attr_make_with_qos_class() returned NULL in %s", v19);
    objc_autoreleasePoolPop(v15);
LABEL_13:
    v14 = MEMORY[0x1E69E96A8];
  }

  v9->_processingQueue = dispatch_queue_create(v10, v14);
  dispatch_release(v14);
  v9->_connectionLock._os_unfair_lock_opaque = 0;
  v9->_availableConnections = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = [objc_msgSend(-[NSSQLConnectionManager sqlCore](v9 "sqlCore")];
  if (+[_PFTask getPhysicalMemory]< 0x80000001)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  if (v20)
  {
    integerValue = [v20 integerValue];
    if (integerValue <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = integerValue;
    }
  }

  sqlCore = [(NSSQLConnectionManager *)v9 sqlCore];
  v24 = v21 - (connection != 0);
  if (sqlCore && (*(sqlCore + 200) & 0x1C) == 8 || (v25 = [(NSSQLConnectionManager *)v9 sqlCore]) != 0 && (*(v25 + 200) & 0x1C) == 4)
  {
    v24 -= v24 > 2;
    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  while ([(NSMutableArray *)v9->_availableConnections count]< v24)
  {
    v27 = [[NSSQLiteConnection alloc] initForSQLCore:[(NSSQLConnectionManager *)v9 sqlCore]];
    [(NSMutableArray *)v9->_availableConnections addObject:v27];
    if (v26)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __64__NSSQLDefaultConnectionManager__initializeConnectionsWithSeed___block_invoke;
      v33[3] = &unk_1E6EC16F0;
      v33[4] = v27;
      [(NSSQLiteConnection *)v27 performAndWait:v33];
    }
  }

  if (connection)
  {
    [(NSMutableArray *)v9->_availableConnections addObject:connection];
    if (v26)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __64__NSSQLDefaultConnectionManager__initializeConnectionsWithSeed___block_invoke_2;
      v32[3] = &unk_1E6EC16F0;
      v32[4] = connection;
      [(NSSQLiteConnection *)connection performAndWait:v32];
    }
  }

  v9->_allConnections = [(NSMutableArray *)v9->_availableConnections copy];
  v9->_poolCounter = dispatch_semaphore_create([(NSMutableArray *)v9->_availableConnections count]);
LABEL_35:
  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setExclusiveLockingMode:(BOOL)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__NSSQLDefaultConnectionManager_setExclusiveLockingMode___block_invoke;
  v3[3] = &__block_descriptor_33_e28_v16__0__NSSQLiteConnection_8l;
  modeCopy = mode;
  [(NSSQLDefaultConnectionManager *)self scheduleConnectionsBarrier:v3];
}

- (void)_checkoutConnectionOfType:(uint64_t)type
{
  if (!type)
  {
    return 0;
  }

  v2 = *(type + 40);
  v3 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v2, v3))
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  lastObject = [*(type + 24) lastObject];
  v6 = lastObject;
  if (lastObject)
  {
    v7 = lastObject;
    v4 = v6;
    [*(type + 24) removeLastObject];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((type + 48));
  return v4;
}

- (intptr_t)_checkinConnection:(intptr_t)result
{
  if (result && a2)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    [*(v3 + 24) addObject:a2];
    os_unfair_lock_unlock((v3 + 48));
    v4 = *(v3 + 40);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

- (BOOL)handleStoreRequest:(id)request
{
  if (request)
  {
    [*(request + 2) requestType];
    v5 = [NSSQLDefaultConnectionManager _checkoutConnectionOfType:?];
    if (v5)
    {
      v6 = v5;
      [(NSSQLStoreRequestContext *)request setConnection:v5];
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v11 = 0;
      v12 = &v11;
      v13 = 0x3052000000;
      v14 = __Block_byref_object_copy__17;
      v15 = __Block_byref_object_dispose__17;
      v16 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__NSSQLDefaultConnectionManager_handleStoreRequest___block_invoke;
      v10[3] = &unk_1E6EC2988;
      v10[4] = v6;
      v10[5] = request;
      v10[7] = &v17;
      v10[8] = &v11;
      v10[6] = self;
      [(NSSQLiteConnection *)v6 performAndWait:v10];
      v7 = v12[5];
      if (v7)
      {
        objc_exception_throw(v7);
      }

      v8 = *(v18 + 24);
      _Block_object_dispose(&v11, 8);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t __52__NSSQLDefaultConnectionManager_handleStoreRequest___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) executeRequestUsingConnection:v3];
  [*(a1 + 40) clearSQLiteStatements];
  [(NSSQLStoreRequestContext *)*(a1 + 40) setConnection:?];
  [(NSSQLDefaultConnectionManager *)*(a1 + 48) _checkinConnection:v3];

  result = [v2 drain];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)scheduleBarrierBlock:(id)block
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__17;
  processingQueue = self->_processingQueue;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NSSQLDefaultConnectionManager_scheduleBarrierBlock___block_invoke;
  block[3] = &unk_1E6EC29B0;
  block[4] = self;
  block[5] = block;
  block[6] = &v6;
  dispatch_barrier_sync(processingQueue, block);
  v4 = v7[5];
  if (v4)
  {
    objc_exception_throw(v4);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __54__NSSQLDefaultConnectionManager_scheduleBarrierBlock___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(*(a1 + 32) + 32) count];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = [NSSQLDefaultConnectionManager _checkoutConnectionOfType:?];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        v5 = [*(*(a1 + 32) + 32) count];
        os_unfair_lock_unlock((*(a1 + 32) + 48));
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v3);
        }

        [(NSSQLiteConnection *)*(*(&v21 + 1) + 8 * j) performAndWait:?];
      }

      v9 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (k = 0; k != v12; ++k)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v3);
        }

        [(NSSQLDefaultConnectionManager *)*(a1 + 32) _checkinConnection:?];
      }

      v12 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  [v3 removeAllObjects];
  result = [v2 drain];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)scheduleConnectionsBarrier:(id)barrier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__17;
  processingQueue = self->_processingQueue;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NSSQLDefaultConnectionManager_scheduleConnectionsBarrier___block_invoke;
  block[3] = &unk_1E6EC29B0;
  block[4] = self;
  block[5] = barrier;
  block[6] = &v6;
  dispatch_barrier_sync(processingQueue, block);
  v4 = v7[5];
  if (v4)
  {
    objc_exception_throw(v4);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __60__NSSQLDefaultConnectionManager_scheduleConnectionsBarrier___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(*(a1 + 32) + 32) count];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = [NSSQLDefaultConnectionManager _checkoutConnectionOfType:?];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        v5 = [*(*(a1 + 32) + 32) count];
        os_unfair_lock_unlock((*(a1 + 32) + 48));
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v24 + 1) + 8 * j);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __60__NSSQLDefaultConnectionManager_scheduleConnectionsBarrier___block_invoke_2;
        v23[3] = &unk_1E6EC29D8;
        v13 = *(a1 + 40);
        v23[4] = v12;
        v23[5] = v13;
        [(NSSQLiteConnection *)v12 performAndWait:v23];
      }

      v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v3);
        }

        [(NSSQLDefaultConnectionManager *)*(a1 + 32) _checkinConnection:?];
      }

      v14 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  [v3 removeAllObjects];
  result = [v2 drain];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateAvailableConnectionsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  availableConnections = self->_availableConnections;
  v6 = [(NSMutableArray *)availableConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(availableConnections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __72__NSSQLDefaultConnectionManager_enumerateAvailableConnectionsWithBlock___block_invoke;
        v12[3] = &unk_1E6EC29D8;
        v12[4] = v9;
        v12[5] = block;
        [(NSSQLiteConnection *)v9 performAndWait:v12];
      }

      v6 = [(NSMutableArray *)availableConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  [v11 drain];
  v10 = *MEMORY[0x1E69E9840];
}

@end