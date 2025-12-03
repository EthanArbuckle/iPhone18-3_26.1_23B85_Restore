@interface HMCache
+ (id)shortDescription;
- (HMCache)initWithCachedObjects:(id)objects name:(id)name;
- (HMCacheDelegate)delegate;
- (NSDictionary)cachedObjects;
- (id)dataForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)_setData:(id)data forKey:(id)key;
- (void)setData:(id)data forKey:(id)key;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation HMCache

- (HMCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:stringCopy requiringSecureCoding:1 error:0];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"String cannot be nil" userInfo:0];
    objc_exception_throw(v9);
  }

  v8 = v7;
  [(HMCache *)self setData:v7 forKey:keyCopy];
}

- (id)stringForKey:(id)key
{
  v3 = [(HMCache *)self dataForKey:key];
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

- (void)setNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:numberCopy requiringSecureCoding:1 error:0];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Number cannot be nil" userInfo:0];
    objc_exception_throw(v9);
  }

  v8 = v7;
  [(HMCache *)self setData:v7 forKey:keyCopy];
}

- (id)numberForKey:(id)key
{
  v3 = [(HMCache *)self dataForKey:key];
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

- (void)_setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    v7 = [HMCacheEntry alloc];
    date = [MEMORY[0x1E695DF00] date];
    v9 = [(HMCacheEntry *)v7 initWithData:dataCopy lastModificationDate:date];

    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_cachedItems setObject:v9 forKeyedSubscript:keyCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:keyCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  delegate = [(HMCache *)self delegate];
  [delegate cacheDidUpdate:self];
}

- (void)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (!dataCopy)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Data cannot be nil" userInfo:0];
    objc_exception_throw(v7);
  }

  [(HMCache *)self _setData:dataCopy forKey:keyCopy];
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5 && [v5 isExpired])
  {
    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HMCache *)self delegate];
    [delegate cacheDidUpdate:self];

    v6 = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  data = [v6 data];

  return data;
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
        isExpired = [v9 isExpired];

        cachedItems = self->_cachedItems;
        if (isExpired)
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
      delegate = [(HMCache *)self delegate];
      [delegate cacheDidUpdate:self];
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

- (HMCache)initWithCachedObjects:(id)objects name:(id)name
{
  objectsCopy = objects;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = HMCache;
  v8 = [(HMCache *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [objectsCopy mutableCopy];
    cachedItems = v9->_cachedItems;
    v9->_cachedItems = v10;

    objc_storeStrong(&v9->_cacheName, name);
  }

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end