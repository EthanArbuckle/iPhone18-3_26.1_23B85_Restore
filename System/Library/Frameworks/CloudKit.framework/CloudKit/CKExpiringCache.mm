@interface CKExpiringCache
- (CKExpiringCache)init;
- (NSCacheDelegate)delegate;
- (id)_entryForKey:(id)key;
- (id)objectForKey:(id)key;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost expirationDate:(id)date;
@end

@implementation CKExpiringCache

- (CKExpiringCache)init
{
  v12.receiver = self;
  v12.super_class = CKExpiringCache;
  v3 = [(CKExpiringCache *)&v12 init];
  if (v3)
  {
    v4 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x1E696AD18], v2, 517, 0);
    entries = v3->_entries;
    v3->_entries = v4;

    v8 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], v6, v7);
    weakCache = v3->_weakCache;
    v3->_weakCache = v8;

    v11.receiver = v3;
    v11.super_class = CKExpiringCache;
    [(CKExpiringCache *)&v11 setDelegate:v3];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v69 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v13 = objectCopy;
  if (qword_1EA911438 == context)
  {
    if (!objc_msgSend_isExpired(objectCopy, v11, v12))
    {
      goto LABEL_31;
    }

    v56 = v13;
    v14 = v13;
    if (!self)
    {
LABEL_30:

      v13 = v56;
      goto LABEL_31;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = objc_msgSend_object(v14, v16, v17);
    if (v20)
    {
      if (objc_msgSend_supportsDeferral(v14, v18, v19))
      {
        v23 = objc_msgSend_delegate(selfCopy, v21, v22);
        if (objc_msgSend_conformsToProtocol_(v23, v24, &unk_1EFAC8D40) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          shouldEvictExpiredObject = objc_msgSend_cache_shouldEvictExpiredObject_(v23, v25, selfCopy, v20);

          if ((shouldEvictExpiredObject & 1) == 0)
          {
            objc_msgSend_defer(v14, v27, v28);
            goto LABEL_29;
          }
        }

        else
        {
        }
      }

      v54 = v20;
      v55 = v14;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = v20;
      v32 = objc_msgSend_set(MEMORY[0x1E695DFA8], v30, v31);
      v66 = 0u;
      v67 = 0u;
      v64 = 0;
      v65 = 0u;
      v35 = objc_msgSend_mapTableRepresentation(selfCopy, v33, v34);
      v38 = objc_msgSend_keyEnumerator(v35, v36, v37);

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v64, v68, 16);
      v57 = v32;
      if (v40)
      {
        v41 = *v65;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v65 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(v64.super_class + i);
            v63.receiver = selfCopy;
            v63.super_class = CKExpiringCache;
            v44 = [(CKExpiringCache *)&v63 objectForKey:v43, v54, v55];
            v45 = v44 == v29;

            if (v45)
            {
              objc_msgSend_addObject_(v32, v46, v43);
            }
          }

          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v46, &v64, v68, 16);
        }

        while (v40);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v47, &v59, v68, 16);
      if (v48)
      {
        v49 = *v60;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v60 != v49)
            {
              objc_enumerationMutation(v57);
            }

            v51 = *(*(&v59 + 1) + 8 * j);
            v64.receiver = selfCopy;
            v64.super_class = CKExpiringCache;
            [(CKExpiringCache *)&v64 removeObjectForKey:v51, v54, v55];
          }

          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v52, &v59, v68, 16);
        }

        while (v48);
      }

      v20 = v54;
      v14 = v55;
    }

LABEL_29:

    objc_sync_exit(selfCopy);
    goto LABEL_30;
  }

  v58.receiver = self;
  v58.super_class = CKExpiringCache;
  [(CKExpiringCache *)&v58 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
LABEL_31:

  v53 = *MEMORY[0x1E69E9840];
}

- (id)_entryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13.receiver = selfCopy;
  v13.super_class = CKExpiringCache;
  v8 = [(CKExpiringCache *)&v13 objectForKey:keyCopy];
  if (v8)
  {
    v9 = objc_msgSend_entries(selfCopy, v6, v7);
    v11 = objc_msgSend_objectForKey_(v9, v10, v8);
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15.receiver = selfCopy;
  v15.super_class = CKExpiringCache;
  v8 = [(CKExpiringCache *)&v15 objectForKey:keyCopy];
  if (v8)
  {
    v9 = objc_msgSend_entries(selfCopy, v6, v7);
    v11 = objc_msgSend_objectForKey_(v9, v10, v8);
    objc_msgSend_defer(v11, v12, v13);
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost expirationDate:(id)date
{
  objectCopy = object;
  keyCopy = key;
  dateCopy = date;
  if (!dateCopy)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKExpiringCache.m", 359, @"Invalid parameter not satisfying: %@", @"expirationDate");
  }

  v15 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v12, v13);
  isEqual = objc_msgSend_isEqual_(dateCopy, v16, v15);

  v20 = 0.0;
  if ((isEqual & 1) != 0 || (objc_msgSend_timeIntervalSinceNow(dateCopy, v18, v19, 0.0), v20 >= 0.0))
  {
    objc_msgSend__setObject_forKey_cost_expiration_supportsDeferrals_preserveExpiration_(self, v18, objectCopy, keyCopy, cost, 0, 0, v20);
  }

  else
  {
    v22 = objc_msgSend_delegate(self, v18, v21);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_cache_willEvictObject_(v22, v23, self, objectCopy);
    }
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = CKExpiringCache;
  [(CKExpiringCache *)&v10 removeObjectForKey:keyCopy];
  v8 = objc_msgSend_weakCache(selfCopy, v6, v7);
  objc_msgSend_removeObjectForKey_(v8, v9, keyCopy);

  objc_sync_exit(selfCopy);
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_entries(selfCopy, v8, v9);
  objc_msgSend_removeObjectForKey_(v10, v11, objectCopy);

  objc_sync_exit(selfCopy);
  v14 = objc_msgSend_delegate(selfCopy, v12, v13);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cache_willEvictObject_(v14, v15, selfCopy, objectCopy);
  }
}

- (NSCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end