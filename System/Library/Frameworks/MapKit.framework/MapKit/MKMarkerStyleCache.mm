@interface MKMarkerStyleCache
+ (id)sharedCache;
- (id)_selectedStyleCache;
- (id)_unselectedStyleCache;
- (id)cachedStyleForConfiguration:(id)a3;
- (void)_purge;
- (void)cacheStyle:(id)a3 forConfiguration:(id)a4;
- (void)decrementLiveMarkerCount;
@end

@implementation MKMarkerStyleCache

- (void)decrementLiveMarkerCount
{
  v2 = self->_liveMarkerCount - 1;
  self->_liveMarkerCount = v2;
  if (!v2)
  {
    [(MKMarkerStyleCache *)self _purge];
  }
}

- (void)cacheStyle:(id)a3 forConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 selected])
  {
    [(MKMarkerStyleCache *)self _selectedStyleCache];
  }

  else
  {
    [(MKMarkerStyleCache *)self _unselectedStyleCache];
  }
  v8 = ;
  [v8 setObject:v7 forKey:v6];
}

- (id)cachedStyleForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 selected])
  {
    [(MKMarkerStyleCache *)self _selectedStyleCache];
  }

  else
  {
    [(MKMarkerStyleCache *)self _unselectedStyleCache];
  }
  v5 = ;
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_selectedStyleCache
{
  selectedCache = self->_selectedCache;
  if (!selectedCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_selectedCache;
    self->_selectedCache = v4;

    [(NSCache *)self->_selectedCache setCountLimit:5];
    selectedCache = self->_selectedCache;
  }

  return selectedCache;
}

- (id)_unselectedStyleCache
{
  unselectedCache = self->_unselectedCache;
  if (!unselectedCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_unselectedCache;
    self->_unselectedCache = v4;

    [(NSCache *)self->_unselectedCache setCountLimit:50];
    unselectedCache = self->_unselectedCache;
  }

  return unselectedCache;
}

- (void)_purge
{
  if (MKGetMarkerStyleCacheLog_onceToken != -1)
  {
    dispatch_once(&MKGetMarkerStyleCacheLog_onceToken, &__block_literal_global_49);
  }

  v3 = MKGetMarkerStyleCacheLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "Purging marker style cache", v4, 2u);
  }

  [(NSCache *)self->_unselectedCache removeAllObjects];
  [(NSCache *)self->_selectedCache removeAllObjects];
}

+ (id)sharedCache
{
  if (sharedCache_once != -1)
  {
    dispatch_once(&sharedCache_once, &__block_literal_global_28854);
  }

  v3 = sharedCache_cache;

  return v3;
}

void __33__MKMarkerStyleCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(MKMarkerStyleCache);
  v1 = sharedCache_cache;
  sharedCache_cache = v0;
}

@end