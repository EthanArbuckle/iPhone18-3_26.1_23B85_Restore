@interface AMSLRUCache
- (AMSLRUCache)initWithMaxSize:(unint64_t)size;
- (id)allObjectsAndKeys;
- (id)description;
- (id)objectForKey:(id)key canLogCacheMisses:(BOOL)misses;
- (id)objectForKey:(id)key withCreationBlock:(id)block;
- (unint64_t)_count;
- (unint64_t)count;
- (void)_addObject:(id)object forKey:(id)key;
- (void)_removeObjectForKey:(id)key;
- (void)performExclusively:(id)exclusively;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation AMSLRUCache

- (unint64_t)_count
{
  os_unfair_lock_assert_owner(&self->_lock);
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  v4 = [backingDictionary count];

  return v4;
}

- (AMSLRUCache)initWithMaxSize:(unint64_t)size
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
    v4->_maxSize = size;
  }

  return v4;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  _count = [(AMSLRUCache *)self _count];
  os_unfair_lock_unlock(&self->_lock);
  return _count;
}

- (id)allObjectsAndKeys
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock_with_options();
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__AMSLRUCache_allObjectsAndKeys__block_invoke;
  v7[3] = &unk_1E73B8B58;
  v5 = v3;
  v8 = v5;
  [backingDictionary enumerateKeysAndObjectsUsingBlock:v7];

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

- (id)objectForKey:(id)key canLogCacheMisses:(BOOL)misses
{
  missesCopy = misses;
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  v8 = [backingDictionary objectForKey:keyCopy];

  if (v8)
  {
    backingList = [(AMSLRUCache *)self backingList];
    [backingList removeNode:v8];

    backingList2 = [(AMSLRUCache *)self backingList];
    [backingList2 insertNode:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
  object = [v8 object];
  v12 = object;
  if (missesCopy && !object)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 138412546;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2112;
      *&v18[14] = keyCopy;
      v15 = *&v18[4];
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%@: %@ resulted in a cache miss.", v18, 0x16u);
    }
  }

  object2 = [v12 object];

  return object2;
}

- (id)objectForKey:(id)key withCreationBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  v9 = [backingDictionary objectForKey:keyCopy];

  if (!v9)
  {
    v10 = blockCopy[2](blockCopy, keyCopy);
    [(AMSLRUCache *)self _addObject:v10 forKey:keyCopy];

    backingDictionary2 = [(AMSLRUCache *)self backingDictionary];
    v9 = [backingDictionary2 objectForKey:keyCopy];
  }

  backingList = [(AMSLRUCache *)self backingList];
  [backingList removeNode:v9];

  backingList2 = [(AMSLRUCache *)self backingList];
  [backingList2 insertNode:v9];

  os_unfair_lock_unlock(&self->_lock);
  object = [v9 object];
  v14Object = [object object];

  return v14Object;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  [backingDictionary removeAllObjects];

  backingList = [(AMSLRUCache *)self backingList];
  [backingList removeAllNodes];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  if (objectCopy)
  {
    [(AMSLRUCache *)self _addObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [(AMSLRUCache *)self _removeObjectForKey:keyCopy];
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
  backingList = [(AMSLRUCache *)self backingList];
  allNodes = [backingList allNodes];

  v7 = [allNodes countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(allNodes);
        }

        object = [*(*(&v16 + 1) + 8 * i) object];
        v12 = object;
        if (object)
        {
          v13 = [object key];
          object2 = [v12 object];
          [v3 appendFormat:@"\n%@: %@, ", v13, object2];
        }
      }

      v8 = [allNodes countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendString:@"\n}"];

  return v3;
}

- (void)_addObject:(id)object forKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_assert_owner(&self->_lock);
  if (keyCopy)
  {
    backingDictionary = [(AMSLRUCache *)self backingDictionary];
    v9 = [backingDictionary objectForKey:keyCopy];

    if (v9)
    {
      backingList = [(AMSLRUCache *)self backingList];
      [backingList removeNode:v9];
    }

    v11 = [[AMSLRUCacheItem alloc] initWithKey:keyCopy object:objectCopy];
    backingList2 = [(AMSLRUCache *)self backingList];
    v13 = [backingList2 insertObject:v11];

    backingDictionary2 = [(AMSLRUCache *)self backingDictionary];
    [backingDictionary2 setObject:v13 forKey:keyCopy];

    _count = [(AMSLRUCache *)self _count];
    if (_count > [(AMSLRUCache *)self maxSize])
    {
      v16 = +[AMSLogConfig sharedConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v23 = 138412290;
        v24 = objc_opt_class();
        v18 = v24;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%@: Cache is full. The oldest object will be evicted.", &v23, 0xCu);
      }

      backingList3 = [(AMSLRUCache *)self backingList];
      tail = [backingList3 tail];

      object = [tail object];
      v22 = [object key];
      [(AMSLRUCache *)self _removeObjectForKey:v22];
    }
  }
}

- (void)_removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_assert_owner(&self->_lock);
  backingDictionary = [(AMSLRUCache *)self backingDictionary];
  v5 = [backingDictionary objectForKey:keyCopy];

  if (v5)
  {
    backingList = [(AMSLRUCache *)self backingList];
    [backingList removeNode:v5];

    backingDictionary2 = [(AMSLRUCache *)self backingDictionary];
    [backingDictionary2 removeObjectForKey:keyCopy];
  }
}

- (void)performExclusively:(id)exclusively
{
  exclusivelyCopy = exclusively;
  os_unfair_lock_lock(&self->_lock);
  exclusivelyCopy[2](exclusivelyCopy);

  os_unfair_lock_unlock(&self->_lock);
}

@end