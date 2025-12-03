@interface NSGenerationalRowCache
- (NSGenerationalRowCache)initWithStore:(id)store;
- (id)rowCacheForGeneration:(uint64_t)generation;
- (void)dealloc;
- (void)forgetAllGenerationalExternalData;
- (void)removeRowCacheForGenerationWithIdentifier:(uint64_t)identifier;
@end

@implementation NSGenerationalRowCache

- (void)dealloc
{
  self->_primaryCache = 0;

  self->_rowCachesByGenerationToken = 0;
  v3.receiver = self;
  v3.super_class = NSGenerationalRowCache;
  [(NSGenerationalRowCache *)&v3 dealloc];
}

- (NSGenerationalRowCache)initWithStore:(id)store
{
  v7.receiver = self;
  v7.super_class = NSGenerationalRowCache;
  v4 = [(NSGenerationalRowCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_store = store;
    v4->_primaryCache = [objc_alloc(objc_msgSend(objc_opt_class() "rowCacheClass"))];
    v5->_rowCachesByGenerationToken = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (id)rowCacheForGeneration:(uint64_t)generation
{
  v15 = *MEMORY[0x1E69E9840];
  if (!generation)
  {
    goto LABEL_10;
  }

  if ([a2 _isEnabled])
  {
    v4 = [(_NSQueryGenerationToken *)a2 _generationalComponentForStore:?];
    if (v4)
    {
      v5 = *(v4 + 3);
      if (v5)
      {
        os_unfair_lock_lock_with_options();
        v6 = [*(generation + 24) objectForKey:v5];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v12 = *(generation + 8);
          v7 = [objc_alloc(objc_msgSend(objc_opt_class() "rowCacheClass"))];
          [*(generation + 24) setObject:v7 forKey:v5];
        }

        os_unfair_lock_unlock((generation + 32));
        v13 = v7;
        goto LABEL_13;
      }
    }

LABEL_10:
    v7 = 0;
LABEL_13:
    v14 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v9 = *(generation + 16);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)removeRowCacheForGenerationWithIdentifier:(uint64_t)identifier
{
  if (identifier && a2)
  {
    os_unfair_lock_lock_with_options();
    [*(identifier + 24) removeObjectForKey:a2];

    os_unfair_lock_unlock((identifier + 32));
  }
}

- (void)forgetAllGenerationalExternalData
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = objc_autoreleasePoolPush();
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [*(self + 24) allValues];
    v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [(NSPersistentStoreCache *)*(*(&v8 + 1) + 8 * v6++) forgetAllExternalData];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    objc_autoreleasePoolPop(v2);
    os_unfair_lock_unlock((self + 32));
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end