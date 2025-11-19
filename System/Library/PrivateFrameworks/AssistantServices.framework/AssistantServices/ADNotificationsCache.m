@interface ADNotificationsCache
- (ADNotificationsCache)init;
- (id)allBulletins;
- (id)appendItemWithBulletin:(id)a3;
- (id)bulletinForInternalID:(id)a3;
- (id)bulletinWithNotificationID:(id)a3;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)enumerateBulletinsAfterBulletinWithNotificationID:(id)a3 usingBlock:(id)a4;
- (void)removeBulletinFromCacheWithInternalID:(id)a3;
- (void)removeBulletinItem:(id)a3;
- (void)removeBulletinWithInternalID:(id)a3;
- (void)setBulletin:(id)a3 forInternalID:(id)a4;
@end

@implementation ADNotificationsCache

- (void)removeBulletinItem:(id)a3
{
  v4 = a3;
  orderedBulletinsHead = self->_orderedBulletinsHead;
  v11 = v4;
  if (orderedBulletinsHead == v4)
  {
    v6 = [(AFLinkedListItem *)orderedBulletinsHead nextItem];
    v7 = self->_orderedBulletinsHead;
    self->_orderedBulletinsHead = v6;

    v4 = v11;
  }

  orderedBulletinsTail = self->_orderedBulletinsTail;
  if (orderedBulletinsTail == v4)
  {
    v9 = [(AFLinkedListItem *)orderedBulletinsTail previousItem];
    v10 = self->_orderedBulletinsTail;
    self->_orderedBulletinsTail = v9;

    v4 = v11;
  }

  [(AFLinkedListItem *)v4 removeFromList];
}

- (id)appendItemWithBulletin:(id)a3
{
  v4 = a3;
  v5 = [[AFLinkedListItem alloc] initWithObject:v4];

  if (self->_orderedBulletinsHead)
  {
    [v5 insertAfterItem:self->_orderedBulletinsTail];
  }

  else
  {
    objc_storeStrong(&self->_orderedBulletinsHead, v5);
  }

  objc_storeStrong(&self->_orderedBulletinsTail, v5);

  return v5;
}

- (void)enumerateBulletinsAfterBulletinWithNotificationID:(id)a3 usingBlock:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = self->_orderedBulletinsHead;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [v8 object];
        v11 = v10;
        if (v9)
        {
          v6[2](v6, v10);
          v9 = 1;
        }

        else
        {
          v12 = [v10 publisherBulletinID];
          v9 = [v12 isEqualToString:v14];
        }

        v13 = [v8 nextItem];

        v8 = v13;
      }

      while (v13);
    }
  }
}

- (void)removeBulletinWithInternalID:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_allBulletins objectForKey:v4];
  if (v5)
  {
    [(ADNotificationsCache *)self removeBulletinItem:v5];
  }

  [(NSCache *)self->_allBulletins removeObjectForKey:v4];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    cacheKeys = self->cacheKeys;
    v9 = v6;
    v13 = 136315394;
    v14 = "[ADNotificationsCache removeBulletinWithInternalID:]";
    v15 = 2048;
    v16 = [(NSMutableArray *)cacheKeys count];
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s cachekeys count before = %lu", &v13, 0x16u);
  }

  [(ADNotificationsCache *)self removeBulletinFromCacheWithInternalID:v4];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = self->cacheKeys;
    v11 = v7;
    v12 = [(NSMutableArray *)v10 count];
    v13 = 136315394;
    v14 = "[ADNotificationsCache removeBulletinWithInternalID:]";
    v15 = 2048;
    v16 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s cachekeys count after = %lu", &v13, 0x16u);
  }
}

- (void)removeBulletinFromCacheWithInternalID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->cacheKeysLock);
  [(NSMutableArray *)self->cacheKeys removeObject:v4];

  os_unfair_lock_unlock(&self->cacheKeysLock);
}

- (void)setBulletin:(id)a3 forInternalID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ADNotificationsCache *)self bulletinForInternalID:v6];

  if (v7)
  {
    [(ADNotificationsCache *)self removeBulletinWithInternalID:v6];
  }

  v8 = [(ADNotificationsCache *)self appendItemWithBulletin:v9];
  [(NSCache *)self->_allBulletins setObject:v8 forKey:v6];
  os_unfair_lock_lock(&self->cacheKeysLock);
  if (([(NSMutableArray *)self->cacheKeys containsObject:v6]& 1) == 0)
  {
    [(NSMutableArray *)self->cacheKeys addObject:v6];
  }

  os_unfair_lock_unlock(&self->cacheKeysLock);
}

- (id)allBulletins
{
  v3 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->cacheKeysLock);
  v4 = [(NSMutableArray *)self->cacheKeys copy];
  os_unfair_lock_unlock(&self->cacheKeysLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSCache *)self->_allBulletins objectForKey:*(*(&v18 + 1) + 8 * i), v18];
        v11 = [v10 object];

        if (v11)
        {
          v12 = [v10 object];
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v16 = v13;
    v17 = [v3 count];
    *buf = 136315394;
    v23 = "[ADNotificationsCache allBulletins]";
    v24 = 2048;
    v25 = v17;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Bulletin count = %lu\n", buf, 0x16u);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)bulletinWithNotificationID:(id)a3
{
  v4 = a3;
  v5 = self->_orderedBulletinsHead;
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = [(AFLinkedListItem *)v6 object];
      v8 = [v7 publisherBulletinID];
      v9 = [v8 isEqualToString:v4];

      if (v9)
      {
        break;
      }

      v10 = [(AFLinkedListItem *)v6 nextItem];

      v6 = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v10 = [(AFLinkedListItem *)v6 object];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (id)bulletinForInternalID:(id)a3
{
  v3 = [(NSCache *)self->_allBulletins objectForKey:a3];
  v4 = [v3 object];

  return v4;
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v5 = a4;
  v6 = [v5 object];
  v7 = [v6 bulletinID];
  v8 = [AFBulletin internalIDForBBBulletinID:v7];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADNotificationsCache cache:willEvictObject:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s evicting %@", &v10, 0x16u);
  }

  os_unfair_lock_lock(&self->cacheKeysLock);
  [(NSMutableArray *)self->cacheKeys removeObject:v8];
  os_unfair_lock_unlock(&self->cacheKeysLock);
  if (v5)
  {
    [(ADNotificationsCache *)self removeBulletinItem:v5];
  }
}

- (ADNotificationsCache)init
{
  v8.receiver = self;
  v8.super_class = ADNotificationsCache;
  v2 = [(ADNotificationsCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    allBulletins = v2->_allBulletins;
    v2->_allBulletins = v3;

    [(NSCache *)v2->_allBulletins setDelegate:v2];
    [(NSCache *)v2->_allBulletins setCountLimit:1024];
    v5 = +[NSMutableArray array];
    cacheKeys = v2->cacheKeys;
    v2->cacheKeys = v5;

    v2->cacheKeysLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end