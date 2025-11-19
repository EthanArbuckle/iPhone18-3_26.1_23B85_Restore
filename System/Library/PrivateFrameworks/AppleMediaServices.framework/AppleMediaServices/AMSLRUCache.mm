@interface AMSLRUCache
- (AMSLRUCache)initWithMaxSize:(unint64_t)a3;
- (id)allObjectsAndKeys;
- (id)description;
- (id)objectForKey:(id)a3 canLogCacheMisses:(BOOL)a4;
- (id)objectForKey:(id)a3 withCreationBlock:(id)a4;
- (unint64_t)_count;
- (unint64_t)count;
- (void)_addObject:(id)a3 forKey:(id)a4;
- (void)_removeObjectForKey:(id)a3;
- (void)performExclusively:(id)a3;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation AMSLRUCache

- (unint64_t)_count
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(AMSLRUCache *)self backingDictionary];
  v4 = [v3 count];

  return v4;
}

- (AMSLRUCache)initWithMaxSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = AMSLRUCache;
  v4 = [(AMSLRUCache *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backingDictionary = v4->_backingDictionary;
    v4->_backingDictionary = v5;

    v7 = objc_alloc_init(AMSDoubleLinkedList);
    backingList = v4->_backingList;
    v4->_backingList = v7;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_maxSize = a3;
  }

  return v4;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  v3 = [(AMSLRUCache *)self _count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)allObjectsAndKeys
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock_with_options();
  v4 = [(AMSLRUCache *)self backingDictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__AMSLRUCache_allObjectsAndKeys__block_invoke;
  v7[3] = &unk_1E73B8B58;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __32__AMSLRUCache_allObjectsAndKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 object];

  if (v7)
  {
    v8 = [v5 object];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)objectForKey:(id)a3 canLogCacheMisses:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v7 = [(AMSLRUCache *)self backingDictionary];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(AMSLRUCache *)self backingList];
    [v9 removeNode:v8];

    v10 = [(AMSLRUCache *)self backingList];
    [v10 insertNode:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v8 object];
  v12 = v11;
  if (v4 && !v11)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 138412546;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2112;
      *&v18[14] = v6;
      v15 = *&v18[4];
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEBUG, "%@: %@ resulted in a cache miss.", v18, 0x16u);
    }
  }

  v16 = [v12 object];

  return v16;
}

- (id)objectForKey:(id)a3 withCreationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(AMSLRUCache *)self backingDictionary];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    v10 = v7[2](v7, v6);
    [(AMSLRUCache *)self _addObject:v10 forKey:v6];

    v11 = [(AMSLRUCache *)self backingDictionary];
    v9 = [v11 objectForKey:v6];
  }

  v12 = [(AMSLRUCache *)self backingList];
  [v12 removeNode:v9];

  v13 = [(AMSLRUCache *)self backingList];
  [v13 insertNode:v9];

  os_unfair_lock_unlock(&self->_lock);
  v14 = [v9 object];
  v15 = [v14 object];

  return v15;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  v3 = [(AMSLRUCache *)self backingDictionary];
  [v3 removeAllObjects];

  v4 = [(AMSLRUCache *)self backingList];
  [v4 removeAllNodes];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if (v7)
  {
    [(AMSLRUCache *)self _addObject:v7 forKey:v6];
  }

  else
  {
    [(AMSLRUCache *)self _removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v20.receiver = self;
  v20.super_class = AMSLRUCache;
  v4 = [(AMSLRUCache *)&v20 description];
  [v3 appendString:v4];

  [v3 appendString:@" {"];
  os_unfair_lock_lock_with_options();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AMSLRUCache *)self backingList];
  v6 = [v5 allNodes];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) object];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 key];
          v14 = [v12 object];
          [v3 appendFormat:@"\n%@: %@, ", v13, v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendString:@"\n}"];

  return v3;
}

- (void)_addObject:(id)a3 forKey:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v7)
  {
    v8 = [(AMSLRUCache *)self backingDictionary];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v10 = [(AMSLRUCache *)self backingList];
      [v10 removeNode:v9];
    }

    v11 = [[AMSLRUCacheItem alloc] initWithKey:v7 object:v6];
    v12 = [(AMSLRUCache *)self backingList];
    v13 = [v12 insertObject:v11];

    v14 = [(AMSLRUCache *)self backingDictionary];
    [v14 setObject:v13 forKey:v7];

    v15 = [(AMSLRUCache *)self _count];
    if (v15 > [(AMSLRUCache *)self maxSize])
    {
      v16 = +[AMSLogConfig sharedConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = 138412290;
        v24 = objc_opt_class();
        v18 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEBUG, "%@: Cache is full. The oldest object will be evicted.", &v23, 0xCu);
      }

      v19 = [(AMSLRUCache *)self backingList];
      v20 = [v19 tail];

      v21 = [v20 object];
      v22 = [v21 key];
      [(AMSLRUCache *)self _removeObjectForKey:v22];
    }
  }
}

- (void)_removeObjectForKey:(id)a3
{
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [(AMSLRUCache *)self backingDictionary];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [(AMSLRUCache *)self backingList];
    [v6 removeNode:v5];

    v7 = [(AMSLRUCache *)self backingDictionary];
    [v7 removeObjectForKey:v8];
  }
}

- (void)performExclusively:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

@end