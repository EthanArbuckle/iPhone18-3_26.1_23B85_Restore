@interface MPConcreteMediaEntityPropertiesCache
- (MPConcreteMediaEntityPropertiesCache)initWithLibraryDataProvider:(id)a3 dataProviderEntityClass:(Class)a4 identifier:(int64_t)a5;
- (MPMediaLibraryDataProvider)dataProvider;
- (id)valueForProperty:(id)a3 isCached:(BOOL *)a4;
- (void)_cacheValues:(id)a3 persistValueInBackgroundBlock:(id)a4;
- (void)cachePropertyValues:(id)a3 forProperties:(id)a4 persistValueInBackgroundBlock:(id)a5;
- (void)cacheValue:(id)a3 forProperty:(id)a4 persistValueInBackgroundBlock:(id)a5;
- (void)dealloc;
- (void)delete;
- (void)invalidate;
@end

@implementation MPConcreteMediaEntityPropertiesCache

- (MPMediaLibraryDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
  v4 = [WeakRetained entityCache];
  [v4 removeEntityWithIdentifier:self->_identifier dataProviderEntityClass:self->_dataProviderEntityClass];

  v5.receiver = self;
  v5.super_class = MPConcreteMediaEntityPropertiesCache;
  [(MPConcreteMediaEntityPropertiesCache *)&v5 dealloc];
}

- (void)invalidate
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_valuePersistenceBlocks allKeys];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_properties valueForKey:v10, v12];
        if (v11)
        {
          [v4 setObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_properties)
  {
    objc_storeStrong(&self->_properties, v4);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)delete
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_valuePersistenceBlocks removeAllObjects];
  properties = self->_properties;
  if (properties)
  {
    self->_properties = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cacheValue:(id)a3 forProperty:(id)a4 persistValueInBackgroundBlock:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPMediaLibraryDataProvider.m" lineNumber:1721 description:@"Property can't be nil"];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = v9;
LABEL_6:
  v14 = v12;
  v16 = v10;
  v17[0] = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [(MPConcreteMediaEntityPropertiesCache *)self _cacheValues:v15 persistValueInBackgroundBlock:v11];
}

- (void)cachePropertyValues:(id)a3 forProperties:(id)a4 persistValueInBackgroundBlock:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v7 objectForKey:{v15, v18}];

        if (!v16)
        {
          v17 = [MEMORY[0x1E695DFB0] null];
          [v9 setObject:v17 forKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(MPConcreteMediaEntityPropertiesCache *)self _cacheValues:v9 persistValueInBackgroundBlock:0];
}

- (void)_cacheValues:(id)a3 persistValueInBackgroundBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke;
  v9[3] = &unk_1E7679A20;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  os_unfair_lock_unlock(&self->_lock);
}

void __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) setObject:v6 forKey:v5];
  if (*(a1 + 40))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke_2;
    v16[3] = &unk_1E7681568;
    v17 = v6;
    v19 = *(a1 + 40);
    v8 = v5;
    v18 = v8;
    v9 = [v16 copy];
    v10 = *(*(a1 + 32) + 32);
    v11 = _Block_copy(v9);
    [v10 setObject:v11 forKey:v8];

    v12 = *(a1 + 32);
    v13 = *(v12 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke_3;
    block[3] = &unk_1E76823C0;
    block[4] = v12;
    v15 = v8;
    dispatch_async(v13, block);
  }

  objc_autoreleasePoolPop(v7);
}

void __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFB0] null];
  if ([v2 isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  (*(*(a1 + 48) + 16))();
}

void __83__MPConcreteMediaEntityPropertiesCache__cacheValues_persistValueInBackgroundBlock___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v3 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
    v2 = v3;
  }
}

- (id)valueForProperty:(id)a3 isCached:(BOOL *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_properties objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v8 = [MEMORY[0x1E695DFB0] null];

    if (v7 == v8)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (MPConcreteMediaEntityPropertiesCache)initWithLibraryDataProvider:(id)a3 dataProviderEntityClass:(Class)a4 identifier:(int64_t)a5
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MPConcreteMediaEntityPropertiesCache;
  v8 = [(MPConcreteMediaEntityPropertiesCache *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataProvider, v7);
    v9->_dataProviderEntityClass = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v9->_properties;
    v9->_properties = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    valuePersistenceBlocks = v9->_valuePersistenceBlocks;
    v9->_valuePersistenceBlocks = v12;

    v14 = dispatch_queue_create("com.apple.mediaplayer.EntityProperty.calloutQueue", 0);
    calloutQueue = v9->_calloutQueue;
    v9->_calloutQueue = v14;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

@end