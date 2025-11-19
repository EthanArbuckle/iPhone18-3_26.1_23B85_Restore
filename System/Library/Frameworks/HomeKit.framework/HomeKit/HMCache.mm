@interface HMCache
+ (id)shortDescription;
- (HMCache)initWithCachedObjects:(id)a3 name:(id)a4;
- (HMCacheDelegate)delegate;
- (NSDictionary)cachedObjects;
- (id)dataForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)_setData:(id)a3 forKey:(id)a4;
- (void)setData:(id)a3 forKey:(id)a4;
- (void)setNumber:(id)a3 forKey:(id)a4;
- (void)setString:(id)a3 forKey:(id)a4;
@end

@implementation HMCache

- (HMCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"String cannot be nil" userInfo:0];
    objc_exception_throw(v9);
  }

  v8 = v7;
  [(HMCache *)self setData:v7 forKey:v6];
}

- (id)stringForKey:(id)a3
{
  v3 = [(HMCache *)self dataForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNumber:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Number cannot be nil" userInfo:0];
    objc_exception_throw(v9);
  }

  v8 = v7;
  [(HMCache *)self setData:v7 forKey:v6];
}

- (id)numberForKey:(id)a3
{
  v3 = [(HMCache *)self dataForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setData:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [HMCacheEntry alloc];
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(HMCacheEntry *)v7 initWithData:v11 lastModificationDate:v8];

    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_cachedItems setObject:v9 forKeyedSubscript:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = [(HMCache *)self delegate];
  [v10 cacheDidUpdate:self];
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v8)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Data cannot be nil" userInfo:0];
    objc_exception_throw(v7);
  }

  [(HMCache *)self _setData:v8 forKey:v6];
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5 && [v5 isExpired])
  {
    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:v4];

    os_unfair_lock_unlock(&self->_lock);
    v7 = [(HMCache *)self delegate];
    [v7 cacheDidUpdate:self];

    v6 = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v8 = [v6 data];

  return v8;
}

- (NSDictionary)cachedObjects
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 8;
  os_unfair_lock_lock_with_options();
  v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_cachedItems, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(NSMutableDictionary *)self->_cachedItems copy];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v8, v17];
        v10 = [v9 isExpired];

        cachedItems = self->_cachedItems;
        if (v10)
        {
          [(NSMutableDictionary *)cachedItems setObject:0 forKeyedSubscript:v8];
          v5 = 1;
        }

        else
        {
          v12 = [(NSMutableDictionary *)cachedItems objectForKeyedSubscript:v8];
          [v18 setObject:v12 forKeyedSubscript:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);

    os_unfair_lock_unlock((self + v17));
    if (v5)
    {
      v13 = [(HMCache *)self delegate];
      [v13 cacheDidUpdate:self];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = [v18 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (HMCache)initWithCachedObjects:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMCache;
  v8 = [(HMCache *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 mutableCopy];
    cachedItems = v9->_cachedItems;
    v9->_cachedItems = v10;

    objc_storeStrong(&v9->_cacheName, a4);
  }

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end