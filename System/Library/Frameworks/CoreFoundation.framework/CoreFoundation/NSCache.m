@interface NSCache
- (NSCache)init;
- (NSString)name;
- (id)allObjects;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setCountLimit:(NSUInteger)countLimit;
- (void)setDelegate:(id)delegate;
- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)a3;
- (void)setEvictsObjectsWithDiscardedContent:(BOOL)evictsObjectsWithDiscardedContent;
- (void)setMinimumObjectCount:(unint64_t)a3;
- (void)setName:(NSString *)name;
- (void)setObject:(id)obj forKey:(id)key;
- (void)setObject:(id)obj forKey:(id)key cost:(NSUInteger)g;
- (void)setTotalCostLimit:(NSUInteger)totalCostLimit;
@end

@implementation NSCache

- (NSCache)init
{
  v2 = self;
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  *(&attrs.version + 1) = 0;
  attrs.version = 2;
  attrs.key_hash_cb = __NSCacheKeyHash;
  attrs.key_is_equal_cb = __NSCacheKeyEqual;
  attrs.key_retain_cb = __NSCacheKeyRetain;
  attrs.key_release_cb = __NSCacheKeyRelease;
  attrs.value_release_cb = __NSCacheValueRelease;
  attrs.value_make_nonpurgeable_cb = 0;
  attrs.value_make_purgeable_cb = 0;
  attrs.user_data = self;
  attrs.value_retain_cb = __NSCacheValueRetain;
  if (cache_create("", &attrs, &v5))
  {

    v2 = 0;
  }

  else
  {
    v2->_cache = v5;
    v2->_evictsDiscarded = 1;
    v2->_notificationLock._os_unfair_lock_opaque = 0;
    [(NSCache *)v2 setEvictsObjectsWhenApplicationEntersBackground:1];
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)removeAllObjects
{
  __NSCheckReentrancy(self, a2);
  cache = self->_cache;

  cache_remove_all(cache);
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_notificationLock);
  if (self->_observesNotification)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    _CFXNotificationCancelToken(LocalCenter, self->_notificationToken);
  }

  os_unfair_lock_unlock(&self->_notificationLock);
  self->_moribund = 1;
  cache = self->_cache;
  if (cache)
  {
    cache_remove_all(cache);
    while (cache_destroy(self->_cache) == 35)
    {
      sleep(1u);
    }
  }

  self->_cache = 0;
  v6.receiver = self;
  v6.super_class = NSCache;
  [(NSCache *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)allObjects
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[(NSArray *)NSMutableArray];
  cache = self->_cache;
  v7 = MEMORY[0x1E69E9820];
  cache_invoke();
  result = [(NSArray *)v3 copy:v7];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setName:(NSString *)name
{
  maxBufLen[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = &stru_1EF068AA8;
  }

  maxBufLen[0] = 0;
  v9.length = CFStringGetLength(v4);
  v9.location = 0;
  CFStringGetBytes(v4, v9, 0x8000100u, 0, 0, 0, 0, maxBufLen);
  v5 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
  v10.length = CFStringGetLength(v4);
  v10.location = 0;
  CFStringGetBytes(v4, v10, 0x8000100u, 0, 0, v5, maxBufLen[0], 0);
  v5[maxBufLen[0]] = 0;
  cache = self->_cache;
  cache_set_name();
  free(v5);
  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)name
{
  cache = self->_cache;
  name = cache_get_name();
  v4 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, name, 0x8000100u);

  return _CFAutoreleasePoolAddObject(0, v4);
}

- (void)setDelegate:(id)delegate
{
  self->_cacheDelegate = delegate;
  v4 = [delegate conformsToProtocol:&unk_1EF1C5F20];
  if (v4)
  {
    cacheDelegate = self->_cacheDelegate;
    LOBYTE(v4) = objc_opt_respondsToSelector();
  }

  self->_doDelegateWillEvictValue = v4 & 1;
}

- (id)objectForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  if (key)
  {
    cache = self->_cache;
    cache_get();
    v4 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __24__NSCache_objectForKey___block_invoke(uint64_t a1, id a2, _BYTE *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  if ([*(a1 + 32) evictsObjectsWithDiscardedContent])
  {
    v5 = *(*(a1 + 32) + 24);
    if (v5 == 255 || v5 == 2 && (v6 = *(*(*(a1 + 40) + 8) + 40), (objc_opt_respondsToSelector() & 1) != 0) && (v7 = *(*(*(a1 + 40) + 8) + 40), (objc_opt_respondsToSelector() & 1) != 0) && (v8 = *(*(*(a1 + 40) + 8) + 40), (objc_opt_respondsToSelector() & 1) != 0) && (v9 = *(*(*(a1 + 40) + 8) + 40), (objc_opt_respondsToSelector() & 1) != 0))
    {
      if ([*(*(*(a1 + 40) + 8) + 40) isContentDiscarded])
      {

        *(*(*(a1 + 40) + 8) + 40) = 0;
        *a3 = 1;
      }
    }
  }
}

- (void)setObject:(id)obj forKey:(id)key
{
  __NSCheckReentrancy(self, a2);

  [(NSCache *)self setObject:obj forKey:key cost:0];
}

- (void)setObject:(id)obj forKey:(id)key cost:(NSUInteger)g
{
  __NSCheckReentrancy(self, a2);
  if (!key)
  {
    return;
  }

  if (!obj)
  {
    v13 = __CFExceptionProem(self, a2);
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: attempt to insert nil value (key: %@)", v13, key);
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14), 0];
    objc_exception_throw(v15);
  }

  discardableContentState = self->_discardableContentState;
  if (!self->_evictsDiscarded)
  {
    if (discardableContentState != 255)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (discardableContentState == 255)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      goto LABEL_27;
    }

LABEL_14:
    v11 = 2;
LABEL_26:
    self->_discardableContentState = v11;
    goto LABEL_27;
  }

  if (discardableContentState != 1)
  {
    if (self->_discardableContentState)
    {
      goto LABEL_27;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_26;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!cache_set_and_retain(self->_cache, key, obj, g))
  {
    cache = self->_cache;

    cache_release_value(cache, obj);
  }
}

- (void)removeObjectForKey:(id)key
{
  __NSCheckReentrancy(self, a2);
  if (key)
  {
    cache = self->_cache;

    cache_remove(cache, key);
  }
}

- (void)setTotalCostLimit:(NSUInteger)totalCostLimit
{
  __NSCheckReentrancy(self, a2);
  cache = self->_cache;

  MEMORY[0x1EEE6EB70](cache, totalCostLimit);
}

- (void)setCountLimit:(NSUInteger)countLimit
{
  __NSCheckReentrancy(self, a2);
  cache = self->_cache;

  MEMORY[0x1EEE6EB78](cache, countLimit);
}

- (void)setMinimumObjectCount:(unint64_t)a3
{
  __NSCheckReentrancy(self, a2);
  cache = self->_cache;

  MEMORY[0x1EEE6EB80](cache, a3);
}

- (void)setEvictsObjectsWithDiscardedContent:(BOOL)evictsObjectsWithDiscardedContent
{
  if (evictsObjectsWithDiscardedContent)
  {
    self->_discardableContentState = 2;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  self->_evictsDiscarded = v3;
}

- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)a3
{
  if (self->_evictOnSuspension == a3)
  {
    return;
  }

  v4 = a3;
  self->_evictOnSuspension = a3;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  os_unfair_lock_lock(&self->_notificationLock);
  if (v4)
  {
    if (!self->_observesNotification)
    {
      self->_notificationToken = _CFXNotificationRegisterObserver(LocalCenter, @"UIApplicationDidEnterBackgroundNotification", @"kCFNotificationAnyObject", 0x80002uLL, self, __NSCacheApplicationDidEnterBackgroundCallBack, 0);
      v7 = 1;
LABEL_7:
      self->_observesNotification = v7;
    }
  }

  else if (self->_observesNotification)
  {
    _CFXNotificationCancelToken(LocalCenter, self->_notificationToken);
    v7 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(&self->_notificationLock);
}

@end