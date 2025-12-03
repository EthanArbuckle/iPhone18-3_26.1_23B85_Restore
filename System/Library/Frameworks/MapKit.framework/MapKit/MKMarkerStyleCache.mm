@interface MKMarkerStyleCache
+ (id)sharedCache;
- (id)_selectedStyleCache;
- (id)_unselectedStyleCache;
- (id)cachedStyleForConfiguration:(id)configuration;
- (void)_purge;
- (void)cacheStyle:(id)style forConfiguration:(id)configuration;
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

- (void)cacheStyle:(id)style forConfiguration:(id)configuration
{
  configurationCopy = configuration;
  styleCopy = style;
  if ([configurationCopy selected])
  {
    [(MKMarkerStyleCache *)self _selectedStyleCache];
  }

  else
  {
    [(MKMarkerStyleCache *)self _unselectedStyleCache];
  }
  v8 = ;
  [v8 setObject:styleCopy forKey:configurationCopy];
}

- (id)cachedStyleForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy selected])
  {
    [(MKMarkerStyleCache *)self _selectedStyleCache];
  }

  else
  {
    [(MKMarkerStyleCache *)self _unselectedStyleCache];
  }
  v5 = ;
  v6 = [v5 objectForKey:configurationCopy];

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