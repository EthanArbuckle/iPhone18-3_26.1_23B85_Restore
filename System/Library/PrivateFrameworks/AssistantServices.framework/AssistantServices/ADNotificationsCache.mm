@interface ADNotificationsCache
- (ADNotificationsCache)init;
- (id)allBulletins;
- (id)appendItemWithBulletin:(id)bulletin;
- (id)bulletinForInternalID:(id)d;
- (id)bulletinWithNotificationID:(id)d;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)enumerateBulletinsAfterBulletinWithNotificationID:(id)d usingBlock:(id)block;
- (void)removeBulletinFromCacheWithInternalID:(id)d;
- (void)removeBulletinItem:(id)item;
- (void)removeBulletinWithInternalID:(id)d;
- (void)setBulletin:(id)bulletin forInternalID:(id)d;
@end

@implementation ADNotificationsCache

- (void)removeBulletinItem:(id)item
{
  itemCopy = item;
  orderedBulletinsHead = self->_orderedBulletinsHead;
  v11 = itemCopy;
  if (orderedBulletinsHead == itemCopy)
  {
    nextItem = [(AFLinkedListItem *)orderedBulletinsHead nextItem];
    v7 = self->_orderedBulletinsHead;
    self->_orderedBulletinsHead = nextItem;

    itemCopy = v11;
  }

  orderedBulletinsTail = self->_orderedBulletinsTail;
  if (orderedBulletinsTail == itemCopy)
  {
    previousItem = [(AFLinkedListItem *)orderedBulletinsTail previousItem];
    v10 = self->_orderedBulletinsTail;
    self->_orderedBulletinsTail = previousItem;

    itemCopy = v11;
  }

  [(AFLinkedListItem *)itemCopy removeFromList];
}

- (id)appendItemWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v5 = [[AFLinkedListItem alloc] initWithObject:bulletinCopy];

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

- (void)enumerateBulletinsAfterBulletinWithNotificationID:(id)d usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = self->_orderedBulletinsHead;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        object = [v8 object];
        v11 = object;
        if (v9)
        {
          blockCopy[2](blockCopy, object);
          v9 = 1;
        }

        else
        {
          publisherBulletinID = [object publisherBulletinID];
          v9 = [publisherBulletinID isEqualToString:dCopy];
        }

        nextItem = [v8 nextItem];

        v8 = nextItem;
      }

      while (nextItem);
    }
  }
}

- (void)removeBulletinWithInternalID:(id)d
{
  dCopy = d;
  v5 = [(NSCache *)self->_allBulletins objectForKey:dCopy];
  if (v5)
  {
    [(ADNotificationsCache *)self removeBulletinItem:v5];
  }

  [(NSCache *)self->_allBulletins removeObjectForKey:dCopy];
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

  [(ADNotificationsCache *)self removeBulletinFromCacheWithInternalID:dCopy];
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

- (void)removeBulletinFromCacheWithInternalID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->cacheKeysLock);
  [(NSMutableArray *)self->cacheKeys removeObject:dCopy];

  os_unfair_lock_unlock(&self->cacheKeysLock);
}

- (void)setBulletin:(id)bulletin forInternalID:(id)d
{
  bulletinCopy = bulletin;
  dCopy = d;
  v7 = [(ADNotificationsCache *)self bulletinForInternalID:dCopy];

  if (v7)
  {
    [(ADNotificationsCache *)self removeBulletinWithInternalID:dCopy];
  }

  v8 = [(ADNotificationsCache *)self appendItemWithBulletin:bulletinCopy];
  [(NSCache *)self->_allBulletins setObject:v8 forKey:dCopy];
  os_unfair_lock_lock(&self->cacheKeysLock);
  if (([(NSMutableArray *)self->cacheKeys containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->cacheKeys addObject:dCopy];
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
        object = [v10 object];

        if (object)
        {
          object2 = [v10 object];
          [v3 addObject:object2];
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

- (id)bulletinWithNotificationID:(id)d
{
  dCopy = d;
  v5 = self->_orderedBulletinsHead;
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      object = [(AFLinkedListItem *)v6 object];
      publisherBulletinID = [object publisherBulletinID];
      v9 = [publisherBulletinID isEqualToString:dCopy];

      if (v9)
      {
        break;
      }

      nextItem = [(AFLinkedListItem *)v6 nextItem];

      v6 = nextItem;
      if (!nextItem)
      {
        goto LABEL_8;
      }
    }

    nextItem = [(AFLinkedListItem *)v6 object];
  }

  else
  {
    nextItem = 0;
  }

LABEL_8:

  return nextItem;
}

- (id)bulletinForInternalID:(id)d
{
  v3 = [(NSCache *)self->_allBulletins objectForKey:d];
  object = [v3 object];

  return object;
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  objectCopy = object;
  object = [objectCopy object];
  bulletinID = [object bulletinID];
  v8 = [AFBulletin internalIDForBBBulletinID:bulletinID];
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
  if (objectCopy)
  {
    [(ADNotificationsCache *)self removeBulletinItem:objectCopy];
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