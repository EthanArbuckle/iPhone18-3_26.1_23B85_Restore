@interface PHImageCache
- (BOOL)pinEntryForKey:(id)a3 requestID:(int)a4 inFlightRequestID:(int *)a5;
- (BOOL)populateEntryWithImage:(CGImage *)a3 requestID:(int)a4 forKey:(id)a5 additionalInfo:(id)a6;
- (PHImageCache)init;
- (PHImageCacheDelegate)delegate;
- (void)_removeEntry:(id)a3;
- (void)commitChangesWithQueueToProcessDeletes:(id)a3;
- (void)queryEntryForKey:(id)a3 didWaitForInFlightRequest:(BOOL *)a4 didFindImage:(BOOL *)a5 entryIsValidBlock:(id)a6 resultHandler:(id)a7;
- (void)removeAllEntries;
- (void)removeEntriesForKeys:(id)a3;
@end

@implementation PHImageCache

- (PHImageCache)init
{
  v14.receiver = self;
  v14.super_class = PHImageCache;
  v2 = [(PHImageCache *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uncommittedInserts = v2->_uncommittedInserts;
    v2->_uncommittedInserts = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uncommittedDeletes = v2->_uncommittedDeletes;
    v2->_uncommittedDeletes = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
    v9 = [[PHRecyclableObjectVendor alloc] initWithTargetClass:objc_opt_class() requiresThreadSafety:1 initialPoolSize:50];
    entryVendor = v2->_entryVendor;
    v2->_entryVendor = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = DCIM_applicationDidReceiveMemoryWarningNotificationName();
    [v11 addObserver:v2 selector:sel__didReceiveMemoryWarningNotification_ name:v12 object:0];
  }

  return v2;
}

- (PHImageCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)commitChangesWithQueueToProcessDeletes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_backingDictionary addEntriesFromDictionary:self->_uncommittedInserts];
  backingDictionary = self->_backingDictionary;
  v6 = [(NSMutableDictionary *)self->_uncommittedDeletes allKeys];
  [(NSMutableDictionary *)backingDictionary removeObjectsForKeys:v6];

  v7 = [(NSMutableDictionary *)self->_uncommittedDeletes copy];
  [(NSMutableDictionary *)self->_uncommittedDeletes removeAllObjects];
  [(NSMutableDictionary *)self->_uncommittedInserts removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PHImageCache_commitChangesWithQueueToProcessDeletes___block_invoke;
  v9[3] = &unk_1E75AAEB0;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(v4, v9);
}

uint64_t __55__PHImageCache_commitChangesWithQueueToProcessDeletes___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PHImageCache_commitChangesWithQueueToProcessDeletes___block_invoke_2;
  v3[3] = &unk_1E75A3938;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)removeAllEntries
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_uncommittedDeletes addEntriesFromDictionary:self->_backingDictionary];
  [(NSMutableDictionary *)self->_uncommittedDeletes addEntriesFromDictionary:self->_uncommittedInserts];
  [(NSMutableDictionary *)self->_uncommittedInserts removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeEntriesForKeys:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        os_unfair_lock_lock(&self->_lock);
        v10 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:v9];
        if (v10 || ([(NSMutableDictionary *)self->_uncommittedInserts objectForKeyedSubscript:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          [(NSMutableDictionary *)self->_uncommittedDeletes setObject:v10 forKeyedSubscript:v9];
        }

        [(NSMutableDictionary *)self->_uncommittedInserts removeObjectForKey:v9];
        os_unfair_lock_unlock(&self->_lock);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)queryEntryForKey:(id)a3 didWaitForInFlightRequest:(BOOL *)a4 didFindImage:(BOOL *)a5 entryIsValidBlock:(id)a6 resultHandler:(id)a7
{
  v21 = a6;
  v12 = a7;
  v13 = a3;
  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:v13];

  if (v21)
  {
    v15 = [v14 additionalInfo];
    v16 = v21[2](v21, v15);
  }

  else
  {
    v16 = 1;
  }

  v17 = (v14 != 0) & v16;
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = [v14 createImageRef];
  v19 = v18;
  if (a4 && !v18)
  {
    [v14 addNotifyHandler:v12];
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!v19)
  {
    LOBYTE(v17) = 0;
LABEL_9:
    v20 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (*(v12 + 2))(v12, v19, 0, 0);
  CGImageRelease(v19);
  LOBYTE(v17) = 0;
  v20 = 1;
  if (a4)
  {
LABEL_10:
    *a4 = v17;
  }

LABEL_11:
  if (a5)
  {
    *a5 = v20;
  }
}

- (BOOL)populateEntryWithImage:(CGImage *)a3 requestID:(int)a4 forKey:(id)a5 additionalInfo:(id)a6
{
  v10 = a5;
  v11 = a6;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:v10];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_uncommittedInserts objectForKey:v10];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v14 = [v13 imageRequestIDForPopulatingCache];
  if (v14 != a4)
  {
    if (!v14)
    {
      v17 = [v13 hasImageRef];

      if (a3 && (v17 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      v15 = 0;
      goto LABEL_10;
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_6:
  [v13 setImageRequestIDForPopulatingCache:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__PHImageCache_populateEntryWithImage_requestID_forKey_additionalInfo___block_invoke;
  v18[3] = &unk_1E75AB270;
  v18[4] = self;
  [v13 populateWithImageRef:a3 additionalInfo:v11 error:0 executeBeforeNotifyingWaitersBlock:v18];
  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)pinEntryForKey:(id)a3 requestID:(int)a4 inFlightRequestID:(int *)a5
{
  v6 = *&a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 imageRequestIDForPopulatingCache];
    if (!v11)
    {
      [v10 setImageRequestIDForPopulatingCache:v6];
    }

    v12 = v10;
  }

  else
  {
    v12 = [(PHRecyclableObjectVendor *)self->_entryVendor dequeueRecyclableObject];
    [v12 setImageRequestIDForPopulatingCache:v6];
    [(NSMutableDictionary *)self->_uncommittedInserts setObject:v12 forKeyedSubscript:v8];
    v11 = 0;
  }

  [(NSMutableDictionary *)self->_uncommittedDeletes removeObjectForKey:v8];
  os_unfair_lock_unlock(&self->_lock);
  if (a5)
  {
    *a5 = v11;
  }

  return v10 == 0;
}

- (void)_removeEntry:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = [(PHImageCache *)self delegate];
    [v4 imageCache:self didEvictCacheEntry:v5];

    [v5 cancel];
    [(PHRecyclableObjectVendor *)self->_entryVendor recycleObject:v5];
  }
}

@end