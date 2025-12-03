@interface AEBookProtocolCacheItemProvider
+ (AEBookProtocolCacheItemProvider)sharedInstance;
- (AEBookProtocolCacheItemProvider)init;
- (id)cacheItemForDatabaseKey:(id)key;
- (void)_performWithLock:(id)lock;
- (void)clearCache;
- (void)clearCacheForDatabaseKey:(id)key;
- (void)clearCacheForDatabaseKeys:(id)keys;
@end

@implementation AEBookProtocolCacheItemProvider

+ (AEBookProtocolCacheItemProvider)sharedInstance
{
  os_unfair_lock_lock(&unk_22D068);
  WeakRetained = objc_loadWeakRetained(&qword_22D070);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(&qword_22D070);
  }

  else
  {
    v3 = objc_alloc_init(AEBookProtocolCacheItemProvider);
    objc_storeWeak(&qword_22D070, v3);
  }

  os_unfair_lock_unlock(&unk_22D068);

  return v3;
}

- (AEBookProtocolCacheItemProvider)init
{
  v6.receiver = self;
  v6.super_class = AEBookProtocolCacheItemProvider;
  v2 = [(AEBookProtocolCacheItemProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    bookCache = v2->_bookCache;
    v2->_bookCache = v3;

    v2->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)clearCache
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_904C0;
  v2[3] = &unk_1E2BD0;
  v2[4] = self;
  [(AEBookProtocolCacheItemProvider *)self _performWithLock:v2];
}

- (void)clearCacheForDatabaseKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_9056C;
    v5[3] = &unk_1E3F50;
    v5[4] = self;
    v6 = keyCopy;
    [(AEBookProtocolCacheItemProvider *)self _performWithLock:v5];
  }
}

- (void)clearCacheForDatabaseKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_90618;
    v5[3] = &unk_1E3F50;
    v5[4] = self;
    v6 = keysCopy;
    [(AEBookProtocolCacheItemProvider *)self _performWithLock:v5];
  }
}

- (id)cacheItemForDatabaseKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_90760;
    v14 = sub_90770;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_90778;
    v7[3] = &unk_1E4E80;
    v9 = &v10;
    v7[4] = self;
    v8 = keyCopy;
    [(AEBookProtocolCacheItemProvider *)self _performWithLock:v7];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    sub_1383BC();
    v5 = 0;
  }

  return v5;
}

- (void)_performWithLock:(id)lock
{
  if (lock)
  {
    lockCopy = lock;
    os_unfair_lock_lock(&self->_unfairLock);
    lockCopy[2](lockCopy);

    os_unfair_lock_unlock(&self->_unfairLock);
  }
}

@end