@interface EKImageCache
- (EKImageCache)init;
- (id)persistentImageForSourceID:(id)a3 identifier:(id)a4;
- (void)uncacheImage:(id)a3;
- (void)updateToCachedVersionOrCacheImage:(id)a3;
@end

@implementation EKImageCache

- (EKImageCache)init
{
  v7.receiver = self;
  v7.super_class = EKImageCache;
  v2 = [(EKImageCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v3->_cache;
    v3->_cache = v4;
  }

  return v3;
}

- (void)updateToCachedVersionOrCacheImage:(id)a3
{
  v11 = a3;
  v4 = [EKImageKey alloc];
  v5 = [v11 source];
  v6 = [v5 objectID];
  v7 = [v11 identifier];
  v8 = [(EKImageKey *)v4 initWithSourceID:v6 identifier:v7];

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
  if (v9)
  {
    os_unfair_lock_unlock(&self->_lock);
    [v11 setBackingObject:v9];
    [v11 _resetAfterUpdatingChangeSetOrBackingObject];
    [v11 markAsSaved];
  }

  else
  {
    v10 = [v11 persistentObject];
    [(NSMutableDictionary *)self->_cache setObject:v10 forKeyedSubscript:v8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)persistentImageForSourceID:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[EKImageKey alloc] initWithSourceID:v7 identifier:v6];

  lock._os_unfair_lock_opaque = 0;
  v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
  os_unfair_lock_unlock(&lock);

  return v9;
}

- (void)uncacheImage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cache;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v10, v13];

        if (v11 == v4)
        {
          [(NSMutableDictionary *)self->_cache removeObjectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x1E69E9840];
}

@end