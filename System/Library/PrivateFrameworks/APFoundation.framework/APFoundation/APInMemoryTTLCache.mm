@interface APInMemoryTTLCache
- (APInMemoryTTLCache)initWithExpirationInterval:(double)interval flushQueue:(id)queue;
- (BOOL)_updateMostRecentAccessForIdentifier:(id)identifier;
- (id)getObjectForIdentifier:(id)identifier;
- (void)_flushCacheStorage;
- (void)_startFlushCacheTimer;
- (void)_stopFlushCacheTimer;
- (void)dealloc;
- (void)recentlyAccessedObject:(id)object;
- (void)setObject:(id)object;
@end

@implementation APInMemoryTTLCache

- (void)_startFlushCacheTimer
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_flushCacheTimer(selfCopy, v3, v4, v5);
  if (!v6)
  {
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_flushQueue);
    objc_msgSend_setFlushCacheTimer_(selfCopy, v7, v6, v8);
    if (v6)
    {
      objc_initWeak(&location, selfCopy);
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = sub_1BADC6CC8;
      v24 = &unk_1E7F1CF68;
      objc_copyWeak(&v25, &location);
      v9 = _Block_copy(&v21);
      dispatch_source_set_timer(v6, 0, 0xDF8475800uLL, 0x37E11D600uLL);
      dispatch_source_set_event_handler(v6, v9);
      dispatch_resume(v6);
      v10 = APLogForCategory(0x15uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_msgSend_queueLabel(selfCopy, v11, v12, v13, v21, v22, v23, v24);
        *buf = 138543362;
        v28 = v14;
        _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] Starting Cache Eviction Timer", buf, 0xCu);
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = APLogForCategory(0x15uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_msgSend_queueLabel(selfCopy, v16, v17, v18);
        *buf = 138543362;
        v28 = v19;
        _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Error: Could not create eviction timer!", buf, 0xCu);
      }

      APSimulateCrash(5, @"Could not create eviction timer!", 0);
      v6 = 0;
    }
  }

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_flushCacheStorage
{
  v123 = *MEMORY[0x1E69E9840];
  v107 = os_transaction_create();
  v108 = objc_msgSend_lock(self, v3, v4, v5);
  objc_msgSend_lock(v108, v6, v7, v8);
  v9 = APLogForCategory(0x15uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = objc_msgSend_queueLabel(self, v10, v11, v12);
    v17 = objc_msgSend_weakEntryRefs(self, v14, v15, v16);
    *buf = 138543619;
    v120 = v13;
    v121 = 2049;
    v122 = objc_msgSend_count(v17, v18, v19, v20);
    _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Attempting to evict objects from cache. %{private}lu entries remain", buf, 0x16u);
  }

  v24 = objc_msgSend_date(MEMORY[0x1E695DF00], v21, v22, v23);
  objc_msgSend_timeIntervalSinceReferenceDate(v24, v25, v26, v27);
  v29 = v28;

  v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v35 = objc_msgSend_weakEntryRefs(self, v32, v33, v34);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v113, v118, 16);
  if (v37)
  {
    v41 = v37;
    v42 = *v114;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v114 != v42)
        {
          objc_enumerationMutation(v35);
        }

        v44 = *(*(&v113 + 1) + 8 * i);
        objc_msgSend_timestamp(v44, v38, v39, v40);
        v46 = v29 - v45;
        objc_msgSend_timeout(self, v47, v48, v49);
        if (v46 > v50)
        {
          v51 = objc_msgSend_object(v44, v38, v39, v40);
          v55 = objc_msgSend_identifier(v51, v52, v53, v54);

          v59 = objc_msgSend_storage(self, v56, v57, v58);
          objc_msgSend_removeObjectForKey_(v59, v60, v55, v61);

          objc_msgSend_addObject_(v30, v62, v44, v63);
          objc_msgSend_addObject_(v31, v64, v55, v65);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v113, v118, 16);
    }

    while (v41);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v66 = v30;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v109, v117, 16);
  if (v68)
  {
    v72 = v68;
    v73 = *v110;
    do
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v110 != v73)
        {
          objc_enumerationMutation(v66);
        }

        v75 = *(*(&v109 + 1) + 8 * j);
        v76 = objc_msgSend_weakEntryRefs(self, v69, v70, v71);
        objc_msgSend_removeObject_(v76, v77, v75, v78);
      }

      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v109, v117, 16);
    }

    while (v72);
  }

  v79 = APLogForCategory(0x15uLL);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    v83 = objc_msgSend_queueLabel(self, v80, v81, v82);
    v87 = objc_msgSend_count(v66, v84, v85, v86);
    *buf = 138543619;
    v120 = v83;
    v121 = 2049;
    v122 = v87;
    _os_log_impl(&dword_1BADC1000, v79, OS_LOG_TYPE_INFO, "[%{public}@] Cache evicted %{private}lu entries due to expiration", buf, 0x16u);
  }

  v91 = objc_msgSend_weakEntryRefs(self, v88, v89, v90);
  v95 = objc_msgSend_allObjects(v91, v92, v93, v94);
  v99 = objc_msgSend_count(v95, v96, v97, v98);

  if (v99)
  {
    objc_msgSend__startFlushCacheTimer(self, v100, v101, v102);
  }

  else
  {
    objc_msgSend__stopFlushCacheTimer(self, v100, v101, v102);
  }

  objc_msgSend_unlock(v108, v103, v104, v105);

  v106 = *MEMORY[0x1E69E9840];
}

- (void)_stopFlushCacheTimer
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_flushCacheTimer(selfCopy, v3, v4, v5);
  v7 = v6;
  if (v6)
  {
    dispatch_source_cancel(v6);
    objc_msgSend_setFlushCacheTimer_(selfCopy, v8, 0, v9);
    v10 = APLogForCategory(0x15uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_msgSend_queueLabel(selfCopy, v11, v12, v13);
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] Stopping Cache Eviction Timer", &v16, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (APInMemoryTTLCache)initWithExpirationInterval:(double)interval flushQueue:(id)queue
{
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = APInMemoryTTLCache;
  v8 = [(APInMemoryTTLCache *)&v29 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    storage = v8->_storage;
    v8->_storage = v9;

    v14 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v11, v12, v13);
    weakEntryRefs = v8->_weakEntryRefs;
    v8->_weakEntryRefs = v14;

    v16 = [APUnfairLock alloc];
    v19 = objc_msgSend_initWithOptions_(v16, v17, 0, v18);
    lock = v8->_lock;
    v8->_lock = v19;

    intervalCopy = 0.0;
    if (interval >= 0.0)
    {
      intervalCopy = interval;
    }

    v8->_timeout = intervalCopy;
    objc_storeStrong(&v8->_flushQueue, queue);
    v22 = MEMORY[0x1E696AEC0];
    label = dispatch_queue_get_label(queueCopy);
    v26 = objc_msgSend_stringWithFormat_(v22, v24, @"%s", v25, label);
    queueLabel = v8->_queueLabel;
    v8->_queueLabel = v26;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend__stopFlushCacheTimer(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = APInMemoryTTLCache;
  [(APInMemoryTTLCache *)&v5 dealloc];
}

- (id)getObjectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = objc_msgSend_objectForKey_(self->_storage, v5, identifierCopy, v6);
  if (v9 && objc_msgSend__updateMostRecentAccessForIdentifier_(self, v7, identifierCopy, v8))
  {
    v13 = objc_msgSend_object(v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  v5 = [APPurgeableCacheEntry alloc];
  v40 = objc_msgSend_initWithObject_(v5, v6, objectCopy, v7);
  v11 = objc_msgSend_storage(self, v8, v9, v10);
  v15 = objc_msgSend_identifier(objectCopy, v12, v13, v14);

  objc_msgSend_setObject_forKey_(v11, v16, v40, v15);
  v20 = objc_msgSend_lock(self, v17, v18, v19);
  objc_msgSend_lock(v20, v21, v22, v23);
  v27 = objc_msgSend_weakEntryRefs(self, v24, v25, v26);
  objc_msgSend_addObject_(v27, v28, v40, v29);

  objc_msgSend_unlock(v20, v30, v31, v32);
  objc_msgSend_timeout(self, v33, v34, v35);
  if (v39 > 0.0)
  {
    objc_msgSend__startFlushCacheTimer(self, v36, v37, v38);
  }
}

- (void)recentlyAccessedObject:(id)object
{
  v7 = objc_msgSend_identifier(object, a2, object, v3);
  objc_msgSend__updateMostRecentAccessForIdentifier_(self, v5, v7, v6);
}

- (BOOL)_updateMostRecentAccessForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6, v7);
  objc_msgSend_timeIntervalSinceReferenceDate(v8, v9, v10, v11);
  v13 = v12;

  v16 = objc_msgSend_objectForKey_(self->_storage, v14, identifierCopy, v15);
  v20 = v16;
  if (!v16)
  {
    goto LABEL_6;
  }

  if (self->_timeout > 0.0)
  {
    objc_msgSend_timestamp(v16, v17, v18, v19);
    if (v13 - v21 >= self->_timeout)
    {
      v23 = objc_msgSend_storage(self, v17, v18, v19);
      objc_msgSend_removeObjectForKey_(v23, v24, identifierCopy, v25);

LABEL_6:
      v22 = 0;
      goto LABEL_7;
    }
  }

  objc_msgSend_setTimestamp_(v20, v17, v18, v19, v13);
  v22 = 1;
LABEL_7:

  return v22;
}

@end