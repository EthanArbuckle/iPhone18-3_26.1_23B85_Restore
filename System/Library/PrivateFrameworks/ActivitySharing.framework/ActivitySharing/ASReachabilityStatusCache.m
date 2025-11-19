@interface ASReachabilityStatusCache
- (ASReachabilityStatusCache)init;
- (id)statusForDestination:(id)a3;
- (id)statusesForDestinations:(id)a3;
- (void)addStatusesByDestination:(id)a3;
- (void)setStatus:(id)a3 forDestination:(id)a4;
@end

@implementation ASReachabilityStatusCache

- (ASReachabilityStatusCache)init
{
  v8.receiver = self;
  v8.super_class = ASReachabilityStatusCache;
  v2 = [(ASReachabilityStatusCache *)&v8 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = v5;
  }

  return v2;
}

- (id)statusForDestination:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASReachabilityStatusCache_statusForDestination___block_invoke;
  block[3] = &unk_278C46C40;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__ASReachabilityStatusCache_statusForDestination___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[6] + 8);
  if (!*(v5 + 40))
  {
    *(v5 + 40) = &unk_2850DDDA8;
  }
}

- (id)statusesForDestinations:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASReachabilityStatusCache_statusesForDestinations___block_invoke;
  block[3] = &unk_278C46C40;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __53__ASReachabilityStatusCache_statusesForDestinations___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 16) objectForKey:{v10, v14}];
        v12 = v11;
        if (v11 && [v11 integerValue])
        {
          [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setStatus:(id)a3 forDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ASReachabilityStatusCache_setStatus_forDestination___block_invoke;
  block[3] = &unk_278C46C68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)addStatusesByDestination:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ASReachabilityStatusCache_addStatusesByDestination___block_invoke;
  v7[3] = &unk_278C46C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

@end