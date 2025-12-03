@interface AVTInMemoryResourceCache
- (AVTInMemoryResourceCache)initWithLockProvider:(id)provider totalCostLimit:(unint64_t)limit logger:(id)logger;
- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope;
- (id)_resourceForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler;
- (id)observeChangesForItem:(id)item key:(id)key;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)dealloc;
- (void)evictResourceFromCache:(id)cache scope:(id)scope;
- (void)handleChangeForItemForKey:(id)key;
- (void)nts_evictObjectsToFreeUpCost:(unint64_t)cost;
- (void)performStorageWork:(id)work;
@end

@implementation AVTInMemoryResourceCache

- (AVTInMemoryResourceCache)initWithLockProvider:(id)provider totalCostLimit:(unint64_t)limit logger:(id)logger
{
  providerCopy = provider;
  loggerCopy = logger;
  v18.receiver = self;
  v18.super_class = AVTInMemoryResourceCache;
  v10 = [(AVTInMemoryResourceCache *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    storage = v10->_storage;
    v10->_storage = v11;

    array = [MEMORY[0x1E695DF70] array];
    orderedEntries = v10->_orderedEntries;
    v10->_orderedEntries = array;

    [(NSCache *)v10->_storage setTotalCostLimit:limit];
    [(NSCache *)v10->_storage setDelegate:v10];
    v15 = providerCopy[2](providerCopy, "com.apple.AvatarUI.AVTInMemoryResourceCache.storageLock");
    storageLock = v10->_storageLock;
    v10->_storageLock = v15;

    objc_storeStrong(&v10->_logger, logger);
  }

  return v10;
}

- (void)dealloc
{
  [(NSCache *)self->_storage removeAllObjects];
  v3.receiver = self;
  v3.super_class = AVTInMemoryResourceCache;
  [(AVTInMemoryResourceCache *)&v3 dealloc];
}

- (void)performStorageWork:(id)work
{
  workCopy = work;
  storageLock = [(AVTInMemoryResourceCache *)self storageLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AVTInMemoryResourceCache_performStorageWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(storageLock, v7);
}

void __47__AVTInMemoryResourceCache_performStorageWork___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) storage];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope
{
  itemCopy = item;
  scopeCopy = scope;
  v8 = [objc_opt_class() keyForItem:itemCopy scope:scopeCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AVTInMemoryResourceCache_resourceExistsInCacheForItem_scope___block_invoke;
  v11[3] = &unk_1E7F3A8D0;
  v13 = &v14;
  v9 = v8;
  v12 = v9;
  [(AVTInMemoryResourceCache *)self performStorageWork:v11];
  LOBYTE(self) = v15[5] != 0;

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __63__AVTInMemoryResourceCache_resourceExistsInCacheForItem_scope___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKey:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_resourceForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler
{
  itemCopy = item;
  scopeCopy = scope;
  handlerCopy = handler;
  v11 = [objc_opt_class() keyForItem:itemCopy scope:scopeCopy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__AVTInMemoryResourceCache__resourceForItem_scope_cacheMissHandler___block_invoke;
  v27[3] = &unk_1E7F3A8F8;
  v29 = &v37;
  v12 = v11;
  v28 = v12;
  v30 = &v31;
  [(AVTInMemoryResourceCache *)self performStorageWork:v27];
  if (handlerCopy && !v32[5])
  {
    v13 = [objc_opt_class() costForItem:itemCopy scope:scopeCopy];
    v14 = handlerCopy[2](handlerCopy, itemCopy, scopeCopy);
    v15 = v32[5];
    v32[5] = v14;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__AVTInMemoryResourceCache__resourceForItem_scope_cacheMissHandler___block_invoke_2;
    v20[3] = &unk_1E7F3A920;
    v24 = &v37;
    v21 = v12;
    selfCopy = self;
    v23 = itemCopy;
    v25 = &v31;
    v26 = v13;
    [(AVTInMemoryResourceCache *)self performStorageWork:v20];
  }

  if (v38[5])
  {
    logger = [(AVTInMemoryResourceCache *)self logger];
    v17 = [v38[5] description];
    [logger logInMemoryCacheHitForResource:v17];
  }

  v18 = v32[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

uint64_t __68__AVTInMemoryResourceCache__resourceForItem_scope_cacheMissHandler___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKey:a1[4]];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(a1[6] + 8) + 40) = [*(*(a1[5] + 8) + 40) resource];

  return MEMORY[0x1EEE66BB8]();
}

void __68__AVTInMemoryResourceCache__resourceForItem_scope_cacheMissHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = [*(a1 + 40) observeChangesForItem:*(a1 + 48) key:*(a1 + 32)];
    v7 = [[AVTInMemoryResourceCacheEntry alloc] initWithResource:*(*(*(a1 + 64) + 8) + 40) changeToken:v6 key:*(a1 + 32) cost:*(a1 + 72)];
    [*(a1 + 40) nts_evictObjectsToFreeUpCost:*(a1 + 72)];
    v8 = [*(a1 + 40) logger];
    v9 = [(AVTInMemoryResourceCacheEntry *)v7 description];
    [v8 logInMemoryCacheStorageForResource:v9];

    v10 = [*(a1 + 40) orderedEntries];
    [v10 addObject:v7];

    [v11 setObject:v7 forKey:*(a1 + 32) cost:*(a1 + 72)];
  }
}

- (void)evictResourceFromCache:(id)cache scope:(id)scope
{
  scopeCopy = scope;
  cacheCopy = cache;
  v8 = [objc_opt_class() keyForItem:cacheCopy scope:scopeCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__AVTInMemoryResourceCache_evictResourceFromCache_scope___block_invoke;
  v10[3] = &unk_1E7F3A948;
  v11 = v8;
  v9 = v8;
  [(AVTInMemoryResourceCache *)self performStorageWork:v10];
}

- (void)nts_evictObjectsToFreeUpCost:(unint64_t)cost
{
  v30 = *MEMORY[0x1E69E9840];
  storage = [(AVTInMemoryResourceCache *)self storage];
  totalCostLimit = [storage totalCostLimit];

  orderedEntries = [(AVTInMemoryResourceCache *)self orderedEntries];
  v8 = [orderedEntries count];

  if (v8 - 1 >= 0)
  {
    v9 = 0;
    v10 = totalCostLimit - cost;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      --v8;
      orderedEntries2 = [(AVTInMemoryResourceCache *)self orderedEntries];
      v13 = [orderedEntries2 objectAtIndexedSubscript:v8];

      v9 += [v13 cost];
      if (v9 > v10)
      {
        break;
      }

      v11 = v8;
      if (v8 < 1)
      {
        return;
      }
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      orderedEntries3 = [(AVTInMemoryResourceCache *)self orderedEntries];
      v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v11}];
      v16 = [orderedEntries3 objectsAtIndexes:v15];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v25 + 1) + 8 * i);
            storage2 = [(AVTInMemoryResourceCache *)self storage];
            v24 = [v22 key];
            [storage2 removeObjectForKey:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }
    }
  }
}

- (id)observeChangesForItem:(id)item key:(id)key
{
  itemCopy = item;
  keyCopy = key;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__AVTInMemoryResourceCache_observeChangesForItem_key___block_invoke;
    v10[3] = &unk_1E7F3A990;
    objc_copyWeak(&v12, &location);
    v11 = keyCopy;
    v8 = [itemCopy tokenForObservingChangesWithHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __54__AVTInMemoryResourceCache_observeChangesForItem_key___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleChangeForItemForKey:*(a1 + 32)];
}

- (void)handleChangeForItemForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVTInMemoryResourceCache_handleChangeForItemForKey___block_invoke;
  v6[3] = &unk_1E7F3A948;
  v7 = keyCopy;
  v5 = keyCopy;
  [(AVTInMemoryResourceCache *)self performStorageWork:v6];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  objectCopy = object;
  logger = [(AVTInMemoryResourceCache *)self logger];
  v7 = [objectCopy description];
  [logger logInMemoryCacheEvictsResource:v7];

  orderedEntries = [(AVTInMemoryResourceCache *)self orderedEntries];
  [orderedEntries removeObject:objectCopy];
}

@end