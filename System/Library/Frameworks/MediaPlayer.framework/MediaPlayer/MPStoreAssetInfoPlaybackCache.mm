@interface MPStoreAssetInfoPlaybackCache
+ (MPStoreAssetInfoPlaybackCache)sharedCache;
- (id)_init;
- (id)cachedResponseForRequest:(id)a3;
- (void)addCachedResponse:(id)a3 forRequest:(id)a4;
- (void)updateForPlaybackOfFileAsset:(id)a3 fromResponse:(id)a4;
- (void)withSyncLock:(id)a3;
@end

@implementation MPStoreAssetInfoPlaybackCache

- (void)updateForPlaybackOfFileAsset:(id)a3 fromResponse:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__MPStoreAssetInfoPlaybackCache_updateForPlaybackOfFileAsset_fromResponse___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(MPStoreAssetInfoPlaybackCache *)self withSyncLock:v7];
}

void __75__MPStoreAssetInfoPlaybackCache_updateForPlaybackOfFileAsset_fromResponse___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__49133;
  v19 = __Block_byref_object_dispose__49134;
  v20 = 0;
  v2 = *(*(a1 + 32) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MPStoreAssetInfoPlaybackCache_updateForPlaybackOfFileAsset_fromResponse___block_invoke_2;
  v12[3] = &unk_1E76800C8;
  v13 = *(a1 + 40);
  v14 = &v15;
  [v2 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v16[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v21 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [*(*(a1 + 32) + 24) removeObjectForKey:{v7, v8}];
        [*(*(a1 + 32) + 16) removeObject:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v21 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v15, 8);
}

void __75__MPStoreAssetInfoPlaybackCache_updateForPlaybackOfFileAsset_fromResponse___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 fileAssetInfoList];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 addObject:v11];
  }
}

- (id)cachedResponseForRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__49133;
  v15 = __Block_byref_object_dispose__49134;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MPStoreAssetInfoPlaybackCache_cachedResponseForRequest___block_invoke;
  v8[3] = &unk_1E7681330;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(MPStoreAssetInfoPlaybackCache *)self withSyncLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __58__MPStoreAssetInfoPlaybackCache_cachedResponseForRequest___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[6] + 8) + 40);
  if (v5)
  {
    v6 = [v5 expirationDate];
    v7 = v6;
    if (v6)
    {
      [v6 timeIntervalSinceNow];
      if (v8 < 10.0)
      {
        [*(a1[4] + 24) removeObjectForKey:a1[5]];
        v9 = *(a1[6] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
      }
    }
  }

  [*(a1[4] + 16) removeObject:a1[5]];
  v11 = a1[5];
  v12 = *(a1[4] + 16);

  return [v12 insertObject:v11 atIndex:0];
}

- (void)addCachedResponse:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MPStoreAssetInfoPlaybackCache_addCachedResponse_forRequest___block_invoke;
  v10[3] = &unk_1E76800A0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MPStoreAssetInfoPlaybackCache *)self withSyncLock:v10];
}

void __62__MPStoreAssetInfoPlaybackCache_addCachedResponse_forRequest___block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v2 = [v7 expirationDate];
  if (!v2 || ([*(a1 + 48) expirationDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "laterDate:", v3), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4 == v3))
  {
    [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKey:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 16) insertObject:*(a1 + 40) atIndex:0];
  if ([*(*(a1 + 32) + 16) count] >= 0x33)
  {
    do
    {
      v5 = [*(*(a1 + 32) + 16) count] - 1;
      v6 = [*(*(a1 + 32) + 16) objectAtIndex:v5];
      [*(*(a1 + 32) + 24) removeObjectForKey:v6];
      [*(*(a1 + 32) + 16) removeObjectAtIndex:v5];
    }

    while ([*(*(a1 + 32) + 16) count] > 0x32);
  }
}

- (void)withSyncLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = MPStoreAssetInfoPlaybackCache;
  v2 = [(MPStoreAssetInfoPlaybackCache *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accessOrderedRequests = v3->_accessOrderedRequests;
    v3->_accessOrderedRequests = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestToCachedResponse = v3->_requestToCachedResponse;
    v3->_requestToCachedResponse = v6;
  }

  return v3;
}

+ (MPStoreAssetInfoPlaybackCache)sharedCache
{
  if (sharedCache_sOnceToken != -1)
  {
    dispatch_once(&sharedCache_sOnceToken, &__block_literal_global_49146);
  }

  v3 = sharedCache_sSharedCache;

  return v3;
}

void __44__MPStoreAssetInfoPlaybackCache_sharedCache__block_invoke()
{
  v0 = [[MPStoreAssetInfoPlaybackCache alloc] _init];
  v1 = sharedCache_sSharedCache;
  sharedCache_sSharedCache = v0;
}

@end