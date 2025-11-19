@interface INCache
+ (id)sharedCache;
- (id)_init;
- (id)cacheableObjectForIdentifier:(id)a3;
- (id)consumeCacheableObjectForIdentifier:(id)a3;
- (void)addCacheableObject:(id)a3;
- (void)removeCacheableObject:(id)a3;
@end

@implementation INCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_82377 != -1)
  {
    dispatch_once(&sharedCache_onceToken_82377, &__block_literal_global_82378);
  }

  v3 = sharedCache_sSharedCache;

  return v3;
}

uint64_t __22__INCache_sharedCache__block_invoke()
{
  sharedCache_sSharedCache = [[INCache alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = INCache;
  v2 = [(INCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    underlyingCache = v2->_underlyingCache;
    v2->_underlyingCache = v3;
  }

  return v2;
}

- (id)consumeCacheableObjectForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSCache *)self->_underlyingCache objectForKey:v4];
  if (v5)
  {
    [(NSCache *)self->_underlyingCache removeObjectForKey:v4];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[INCache consumeCacheableObjectForIdentifier:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Unable to find cacheable object with identifier %@ in cache for consuming.", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)cacheableObjectForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSCache *)self->_underlyingCache objectForKey:v4];
  if (!v5)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[INCache cacheableObjectForIdentifier:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Unable to find cacheable object with identifier %@ in cache.", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)removeCacheableObject:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cacheIdentifier];
  if (v5)
  {
    [(NSCache *)self->_underlyingCache removeObjectForKey:v5];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[INCache removeCacheableObject:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Unable to remove %@ from cache because there's no identifier.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addCacheableObject:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cacheIdentifier];
  if (v5)
  {
    [(NSCache *)self->_underlyingCache setObject:v4 forKey:v5];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[INCache addCacheableObject:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Unable to add %@ to cache because there's no identifier.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end