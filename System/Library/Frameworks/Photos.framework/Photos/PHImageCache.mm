@interface PHImageCache
- (BOOL)pinEntryForKey:(id)key requestID:(int)d inFlightRequestID:(int *)iD;
- (BOOL)populateEntryWithImage:(CGImage *)image requestID:(int)d forKey:(id)key additionalInfo:(id)info;
- (PHImageCache)init;
- (PHImageCacheDelegate)delegate;
- (void)_removeEntry:(id)entry;
- (void)commitChangesWithQueueToProcessDeletes:(id)deletes;
- (void)queryEntryForKey:(id)key didWaitForInFlightRequest:(BOOL *)request didFindImage:(BOOL *)image entryIsValidBlock:(id)block resultHandler:(id)handler;
- (void)removeAllEntries;
- (void)removeEntriesForKeys:(id)keys;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = DCIM_applicationDidReceiveMemoryWarningNotificationName();
    [defaultCenter addObserver:v2 selector:sel__didReceiveMemoryWarningNotification_ name:v12 object:0];
  }

  return v2;
}

- (PHImageCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)commitChangesWithQueueToProcessDeletes:(id)deletes
{
  deletesCopy = deletes;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_backingDictionary addEntriesFromDictionary:self->_uncommittedInserts];
  backingDictionary = self->_backingDictionary;
  allKeys = [(NSMutableDictionary *)self->_uncommittedDeletes allKeys];
  [(NSMutableDictionary *)backingDictionary removeObjectsForKeys:allKeys];

  v7 = [(NSMutableDictionary *)self->_uncommittedDeletes copy];
  [(NSMutableDictionary *)self->_uncommittedDeletes removeAllObjects];
  [(NSMutableDictionary *)self->_uncommittedInserts removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PHImageCache_commitChangesWithQueueToProcessDeletes___block_invoke;
  v9[3] = &unk_1E75AAEB0;
  v10 = v7;
  selfCopy = self;
  v8 = v7;
  dispatch_async(deletesCopy, v9);
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

- (void)removeEntriesForKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keysCopy);
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
      v6 = [keysCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)queryEntryForKey:(id)key didWaitForInFlightRequest:(BOOL *)request didFindImage:(BOOL *)image entryIsValidBlock:(id)block resultHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:keyCopy];

  if (blockCopy)
  {
    additionalInfo = [v14 additionalInfo];
    v16 = blockCopy[2](blockCopy, additionalInfo);
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

  createImageRef = [v14 createImageRef];
  v19 = createImageRef;
  if (request && !createImageRef)
  {
    [v14 addNotifyHandler:handlerCopy];
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
    if (!request)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (*(handlerCopy + 2))(handlerCopy, v19, 0, 0);
  CGImageRelease(v19);
  LOBYTE(v17) = 0;
  v20 = 1;
  if (request)
  {
LABEL_10:
    *request = v17;
  }

LABEL_11:
  if (image)
  {
    *image = v20;
  }
}

- (BOOL)populateEntryWithImage:(CGImage *)image requestID:(int)d forKey:(id)key additionalInfo:(id)info
{
  keyCopy = key;
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:keyCopy];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_uncommittedInserts objectForKey:keyCopy];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  imageRequestIDForPopulatingCache = [v13 imageRequestIDForPopulatingCache];
  if (imageRequestIDForPopulatingCache != d)
  {
    if (!imageRequestIDForPopulatingCache)
    {
      hasImageRef = [v13 hasImageRef];

      if (image && (hasImageRef & 1) == 0)
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
  [v13 populateWithImageRef:image additionalInfo:infoCopy error:0 executeBeforeNotifyingWaitersBlock:v18];
  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)pinEntryForKey:(id)key requestID:(int)d inFlightRequestID:(int *)iD
{
  v6 = *&d;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:keyCopy];
  v10 = v9;
  if (v9)
  {
    imageRequestIDForPopulatingCache = [v9 imageRequestIDForPopulatingCache];
    if (!imageRequestIDForPopulatingCache)
    {
      [v10 setImageRequestIDForPopulatingCache:v6];
    }

    dequeueRecyclableObject = v10;
  }

  else
  {
    dequeueRecyclableObject = [(PHRecyclableObjectVendor *)self->_entryVendor dequeueRecyclableObject];
    [dequeueRecyclableObject setImageRequestIDForPopulatingCache:v6];
    [(NSMutableDictionary *)self->_uncommittedInserts setObject:dequeueRecyclableObject forKeyedSubscript:keyCopy];
    imageRequestIDForPopulatingCache = 0;
  }

  [(NSMutableDictionary *)self->_uncommittedDeletes removeObjectForKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (iD)
  {
    *iD = imageRequestIDForPopulatingCache;
  }

  return v10 == 0;
}

- (void)_removeEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    delegate = [(PHImageCache *)self delegate];
    [delegate imageCache:self didEvictCacheEntry:entryCopy];

    [entryCopy cancel];
    [(PHRecyclableObjectVendor *)self->_entryVendor recycleObject:entryCopy];
  }
}

@end