@interface NSSQLRowCache
- (NSSQLRowCache)initWithPersistentStore:(id)store;
- (void)dealloc;
@end

@implementation NSSQLRowCache

- (void)dealloc
{
  if (self->_sqlCore)
  {
    self->_sqlCore = 0;
    externalData = self->super._externalData;
    Count = CFDictionaryGetCount(externalData);
    v5 = 0;
    v6 = 0;
    if (Count >= 0x12C)
    {
      v7 = Count;
      v8 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v8 = malloc_default_zone();
      }

      v9 = malloc_type_zone_malloc(v8, 8 * v7, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(externalData, 0, v9);
      v10 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v10 = malloc_default_zone();
      }

      v6 = malloc_type_zone_malloc(v10, 0x20uLL, 0x100004000313F17uLL);
      *v6 = v9;
      v6[1] = v7;
      v6[2] = 0;
      v5 = [[_PFTask alloc] initWithFunction:_deallocateSQLRowCacheOnBackgroundThread withArgument:v6 andPriority:0];
      do
      {
        v11 = *v9++;
        atomic_store(1u, v11 + 21);
        --v7;
      }

      while (v7);
    }

    v13.receiver = self;
    v13.super_class = NSSQLRowCache;
    [(NSPersistentStoreCache *)&v13 dealloc];
    if (v5)
    {
      pthread_mutex_lock(&v5->lock);
      v6[2] = 1;
      pthread_cond_broadcast(&v5->condition);
      pthread_mutex_unlock(&v5->lock);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSSQLRowCache;
    [(NSPersistentStoreCache *)&v12 dealloc];
  }
}

- (NSSQLRowCache)initWithPersistentStore:(id)store
{
  v6[0] = 0;
  v6[1] = _PFfastRowRetain;
  v6[2] = _PFfastRowRelease;
  v7 = *(MEMORY[0x1E695E9E8] + 24);
  v5.receiver = self;
  v5.super_class = NSSQLRowCache;
  result = [(NSPersistentStoreCache *)&v5 initWithValueCallbacks:v6 preserveToManyRelationships:1];
  if (result)
  {
    result->_sqlCore = store;
  }

  return result;
}

@end