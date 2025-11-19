@interface NSXPCStoreConnectionManager
- (id)initForStore:(id)a3;
- (intptr_t)_checkinConnection:(intptr_t)result;
- (uint64_t)_checkoutConnection:(uint64_t)a1;
- (void)dealloc;
- (void)disconnectAllConnections:(uint64_t)a1;
- (void)sendMessageWithContext:(uint64_t)a1;
@end

@implementation NSXPCStoreConnectionManager

- (id)initForStore:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSXPCStoreConnectionManager;
  v4 = [(NSXPCStoreConnectionManager *)&v20 init];
  if (v4)
  {
    v5 = [objc_msgSend(a3 "URL")];
    objc_initWeak(&location, a3);
    v6 = [objc_msgSend(a3 "options")];
    v7 = +[_PFTask getPhysicalMemory];
    v8 = 2;
    if (v7 >= 0x80000001)
    {
      v8 = 3;
    }

    if (v6)
    {
      v9 = [v6 integerValue];
      if (v9 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v9;
      }
    }

    v4->_maxConnections = v8;
    allConnections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_allConnections = allConnections;
    if (v4->_maxConnections)
    {
      v11 = 0;
      do
      {
        v12 = [[NSXPCStoreConnection alloc] initForStore:a3];
        if (v12)
        {
          [(NSMutableArray *)v4->_allConnections addObject:v12];
        }

        ++v11;
      }

      while (v11 < v4->_maxConnections);
      allConnections = v4->_allConnections;
    }

    if (![(NSMutableArray *)allConnections count])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSXPCStoreConnection failed to initialize any connections for store at %@", objc_msgSend(a3, "URL")];
      v18 = [_NSCoreDataException exceptionWithName:4224 code:v17 reason:0 userInfo:?];
      objc_exception_throw(v18);
    }

    v13 = [(NSMutableArray *)v4->_allConnections mutableCopy];
    v4->_availableConnections = v13;
    v4->_connectionLock._os_unfair_lock_opaque = 0;
    v4->_poolCounter = dispatch_semaphore_create([(NSMutableArray *)v13 count]);
    v14 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"XPCConnectionManager:%p", a3), "UTF8String"];
    v4->_processingQueue = dispatch_queue_create(v14, MEMORY[0x1E69E96A8]);

    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  p_processingQueue = &self->_processingQueue;
  processingQueue = self->_processingQueue;
  if (processingQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__NSXPCStoreConnectionManager_dealloc__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    dispatch_barrier_sync(processingQueue, block);
    poolCounter = self->_processingQueue;
LABEL_4:
    dispatch_release(poolCounter);
    *p_processingQueue = 0;
    goto LABEL_5;
  }

  p_processingQueue = &self->_poolCounter;
  poolCounter = self->_poolCounter;
  if (poolCounter)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6.receiver = self;
  v6.super_class = NSXPCStoreConnectionManager;
  [(NSXPCStoreConnectionManager *)&v6 dealloc];
}

void __38__NSXPCStoreConnectionManager_dealloc__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSXPCStoreConnection *)*(*(&v10 + 1) + 8 * i) disconnect];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 8) = 0;
  v8 = *(*(a1 + 32) + 32);
  if (v8)
  {
    dispatch_release(v8);
    *(*(a1 + 32) + 32) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_checkoutConnection:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  v5 = dispatch_time(0, 120000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 134217984;
          v18 = v6;
LABEL_17:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  NSXPCStoreConnectionManager timed out waiting for a connection - %ld\n", buf, 0xCu);
        }
      }

      else if (v10)
      {
        *buf = 134217984;
        v18 = v6;
        goto LABEL_17;
      }
    }

    _NSCoreDataLog_console(1, " NSXPCStoreConnectionManager timed out waiting for a connection - %ld", v6);
    objc_autoreleasePoolPop(v7);
LABEL_11:
    v14 = 0;
    goto LABEL_15;
  }

  os_unfair_lock_lock_with_options();
  v11 = [*(a1 + 8) lastObject];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    [*(a1 + 8) removeObject:v12];
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock((a1 + 40));
  if (a2)
  {
    [(NSXPCStoreConnection *)v14 reconnect];
  }

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (intptr_t)_checkinConnection:(intptr_t)result
{
  if (result && a2)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    [*(v3 + 8) addObject:a2];

    os_unfair_lock_unlock((v3 + 40));
    v4 = *(v3 + 32);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

- (void)sendMessageWithContext:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 48);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __54__NSXPCStoreConnectionManager_sendMessageWithContext___block_invoke;
      v3[3] = &unk_1E6EC1600;
      v3[4] = a1;
      v3[5] = a2;
      dispatch_sync(v2, v3);
    }
  }
}

uint64_t __54__NSXPCStoreConnectionManager_sendMessageWithContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkoutConnection:?];
  if (v3)
  {
    v4 = v3;
    [(NSXPCStoreConnection *)v3 sendMessageWithContext:?];
    v5 = *(a1 + 40);
    if (!v5 || !*(v5 + 24))
    {
      [(NSXPCStoreConnection *)v4 disconnect];
    }

    goto LABEL_16;
  }

  v6 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
LABEL_18:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: manager sendMessageWithContext: unable to checkout connection.\n", buf, 2u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        goto LABEL_18;
      }
    }
  }

  _NSCoreDataLog_console(1, "manager sendMessageWithContext: unable to checkout connection.");
  objc_autoreleasePoolPop(v6);
  v9 = *(a1 + 40);
  if (v9)
  {
    objc_setProperty_nonatomic(v9, v8, 0, 24);
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = [v10 initWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  v13 = *(a1 + 40);
  if (v13)
  {
    objc_setProperty_nonatomic(v13, v11, v12, 32);
  }

  v4 = 0;
LABEL_16:
  [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkinConnection:v4];
  result = [v2 drain];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)disconnectAllConnections:(uint64_t)a1
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__38;
    v10 = __Block_byref_object_dispose__38;
    v11 = 0;
    v2 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke;
    block[3] = &unk_1E6EC4868;
    v5 = a2;
    block[4] = a1;
    block[5] = &v6;
    dispatch_barrier_sync(v2, block);
    v3 = v7[5];
    if (v3)
    {
      objc_exception_throw(v3);
    }

    _Block_object_dispose(&v6, 8);
  }
}

uint64_t __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(*(a1 + 32) + 16) count];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkoutConnection:?];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        v5 = [*(*(a1 + 32) + 16) count];
        os_unfair_lock_unlock((*(a1 + 32) + 40));
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

        [(NSXPCStoreConnection *)*(*(&v38 + 1) + 8 * j) performAndWait:?];
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
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __56__NSXPCStoreConnectionManager_disconnectAllConnections___block_invoke_3;
        v33[3] = &unk_1E6EC16F0;
        v33[4] = v15;
        [(NSXPCStoreConnection *)v15 performAndWait:v33];
      }

      v12 = [v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  if (*(a1 + 48) == 1)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v16 = [v3 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v16)
    {
      v17 = *v30;
      do
      {
        for (m = 0; m != v16; ++m)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v3);
          }

          [(NSXPCStoreConnectionManager *)*(a1 + 32) _checkinConnection:?];
        }

        v16 = [v3 countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v19 = [v3 countByEnumeratingWithState:&v25 objects:v42 count:16];
    if (v19)
    {
      v20 = *v26;
      do
      {
        for (n = 0; n != v19; ++n)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v3);
          }

          v22 = *(*(&v25 + 1) + 8 * n);
          if (v22)
          {
            dispatch_semaphore_signal(*(*(a1 + 32) + 32));
          }
        }

        v19 = [v3 countByEnumeratingWithState:&v25 objects:v42 count:16];
      }

      while (v19);
    }
  }

  [v3 removeAllObjects];
  result = [v2 drain];
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

@end