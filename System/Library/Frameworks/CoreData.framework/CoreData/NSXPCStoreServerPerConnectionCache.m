@interface NSXPCStoreServerPerConnectionCache
- (NSXPCStoreServerPerConnectionCache)initWithCoordinator:(id)a3;
- (id)releaseQueryGenerationForRemoteGeneration:(id *)result;
- (uint64_t)localGenerationForRemoteGeneration:(id *)a1;
- (void)dealloc;
- (void)registerQueryGeneration:(uint64_t)a3 forRemoteGeneration:;
- (void)setClientIdentifier:(void *)result;
@end

@implementation NSXPCStoreServerPerConnectionCache

- (NSXPCStoreServerPerConnectionCache)initWithCoordinator:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSXPCStoreServerPerConnectionCache;
  v4 = [(NSXPCStoreServerPerConnectionCache *)&v7 init];
  if (v4)
  {
    v4->_coordinator = a3;
    v5 = -[NSSQLitePrefetchRequestCache initWithSQLCore:]([NSSQLitePrefetchRequestCache alloc], "initWithSQLCore:", [objc_msgSend(a3 "persistentStores")]);
    v4->_generationTokenMap = 0;
    v4->_transaction = 0;
    v4->_prefetchRequestCache = v5;
  }

  return v4;
}

- (void)dealloc
{
  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
  }

  self->_coordinator = 0;
  self->_generationTokenMap = 0;

  self->_prefetchRequestCache = 0;
  self->_clientIdentifier = 0;
  v4.receiver = self;
  v4.super_class = NSXPCStoreServerPerConnectionCache;
  [(NSXPCStoreServerPerConnectionCache *)&v4 dealloc];
}

- (uint64_t)localGenerationForRemoteGeneration:(id *)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    objc_sync_enter(a1);
    v5 = [a1[3] objectForKey:a2];
    if (v5)
    {
      v2 = *(v5 + 8);
    }

    else
    {
      v2 = 0;
    }

    objc_sync_exit(a1);
  }

  return v2;
}

- (void)registerQueryGeneration:(uint64_t)a3 forRemoteGeneration:
{
  if (result)
  {
    v5 = result;
    objc_sync_enter(result);
    v6 = *(v5 + 3);
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v5 + 3) = v6;
    }

    if (![v6 count] && !*(v5 + 4))
    {
      *(v5 + 4) = os_transaction_create();
    }

    v7 = [*(v5 + 3) objectForKey:a3];
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = [_NSGenerationTokenMapEntry alloc];
    if (v8)
    {
      v9.receiver = v8;
      v9.super_class = _NSGenerationTokenMapEntry;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      if (v7)
      {
        *(v7 + 1) = a2;
        *(v7 + 4) = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    [*(v5 + 3) setObject:v7 forKey:a3];

    if (v7)
    {
LABEL_12:
      atomic_fetch_add_explicit(v7 + 4, 1u, memory_order_relaxed);
    }

    return objc_sync_exit(v5);
  }

  return result;
}

- (id)releaseQueryGenerationForRemoteGeneration:(id *)result
{
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);
    v4 = [v3[3] objectForKey:a2];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 0xFFFFFFFF, memory_order_relaxed);
      v5 = *(v4 + 16);
      if (v5)
      {
        if (v5 < 0)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: refCount can't be negative\n", buf, 2u);
          }

          v7 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
          {
            *v8 = 0;
            _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: refCount can't be negative", v8, 2u);
          }
        }
      }

      else
      {
        [v3[3] removeObjectForKey:a2];
      }
    }

    if (v3[4])
    {
      if (![v3[3] count])
      {

        v3[4] = 0;
      }
    }

    return objc_sync_exit(v3);
  }

  return result;
}

- (void)setClientIdentifier:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[6];
    if (v4)
    {

      v3[6] = 0;
    }

    result = a2;
    v3[6] = result;
  }

  return result;
}

@end