@interface _CKExpiringCacheEntry
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)supportsDeferral;
- (CKCoalescer)coalescer;
- (_CKExpiringCacheEntry)initWithObject:(id)object;
- (double)expiration;
- (id)object;
- (void)dealloc;
- (void)defer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setExpiration:(double)expiration;
- (void)setSupportsDeferral:(BOOL)deferral;
- (void)startObserving:(id)observing;
- (void)stopObserving:(id)observing;
@end

@implementation _CKExpiringCacheEntry

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v22[0] = key;
  v22[1] = @"expired";
  v5 = MEMORY[0x1E695DEC8];
  keyCopy = key;
  v8 = objc_msgSend_arrayWithObjects_count_(v5, v7, v22, 2);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  if (objc_msgSend_containsObject_(v13, v14, keyCopy))
  {
    v16 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v15, keyCopy);

    objc_msgSend_minusSet_(v13, v17, v16);
    v18 = v13;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = &OBJC_METACLASS____CKExpiringCacheEntry;
    v18 = objc_msgSendSuper2(&v21, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (_CKExpiringCacheEntry)initWithObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKExpiringCache.m", 78, @"Invalid parameter not satisfying: %@", @"object");
  }

  v14.receiver = self;
  v14.super_class = _CKExpiringCacheEntry;
  v8 = [(_CKExpiringCacheEntry *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, objectCopy);
    objc_msgSend_startObserving_(v9, v10, objectCopy);
  }

  return v9;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(self, a2, v2);
  objc_msgSend_stopObserving_(self, v5, v4);

  v7.receiver = self;
  v7.super_class = _CKExpiringCacheEntry;
  [(_CKExpiringCacheEntry *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_1EA9113D0 == context)
  {

    objc_msgSend_defer(self, a2, path, object, change);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = _CKExpiringCacheEntry;
    [(_CKExpiringCacheEntry *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)startObserving:(id)observing
{
  observingCopy = observing;
  if (objc_msgSend_conformsToProtocol_(observingCopy, v4, &unk_1EFAC8CE0))
  {
    v5 = NSStringFromSelector(sel_isContentAccessed);
    objc_msgSend_addObserver_forKeyPath_options_context_(observingCopy, v6, self, v5, 0, qword_1EA9113D0);
  }
}

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  if (objc_msgSend_conformsToProtocol_(observingCopy, v4, &unk_1EFAC8CE0))
  {
    v5 = NSStringFromSelector(sel_isContentAccessed);
    objc_msgSend_removeObserver_forKeyPath_context_(observingCopy, v6, self, v5, qword_1EA9113D0);
  }
}

- (BOOL)supportsDeferral
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportsDeferral = selfCopy->_supportsDeferral;
  objc_sync_exit(selfCopy);

  return supportsDeferral;
}

- (void)setSupportsDeferral:(BOOL)deferral
{
  obj = self;
  objc_sync_enter(obj);
  obj->_supportsDeferral = deferral;
  objc_sync_exit(obj);
}

- (double)expiration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  expiration = selfCopy->_expiration;
  objc_sync_exit(selfCopy);

  return expiration;
}

- (void)setExpiration:(double)expiration
{
  if (expiration < 0.0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKExpiringCache.m", 155, @"Invalid parameter not satisfying: %@", @"expiration >= 0.0");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_expiration != expiration)
  {
    selfCopy->_expiration = expiration;
    if (expiration == 0.0)
    {
      coalescer = selfCopy->_coalescer;
      selfCopy->_coalescer = 0;

      objc_msgSend_setExpired_(selfCopy, v10, 0);
    }

    else
    {
      v12 = objc_msgSend_coalescer(selfCopy, v7, v8);

      if (v12)
      {
        v15 = objc_msgSend_coalescer(selfCopy, v13, v14);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = sub_1886B2270;
        v27[3] = &unk_1E70BF2B8;
        v27[4] = selfCopy;
        *&v27[5] = expiration;
        objc_msgSend_mutate_(v15, v16, v27);
      }

      else
      {
        objc_initWeak(&location, selfCopy);
        v17 = [CKCoalescer alloc];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_1886B22D4;
        v24[3] = &unk_1E70C1CE0;
        objc_copyWeak(&v25, &location);
        v19 = objc_msgSend_initWithActivityDelay_maxActivityDelay_coalescingInterval_processingDelay_notifyBlock_(v17, v18, (expiration * 1000000000.0), 0, 0, 0, v24);
        v20 = selfCopy->_coalescer;
        selfCopy->_coalescer = v19;

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }

    objc_msgSend_coalesce_(selfCopy->_coalescer, v11, 0);
  }

  objc_sync_exit(selfCopy);
}

- (CKCoalescer)coalescer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_coalescer;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)defer
{
  if (objc_msgSend_supportsDeferral(self, a2, v2))
  {
    objc_msgSend_setExpired_(self, v4, 0);
    v8 = objc_msgSend_coalescer(self, v5, v6);
    objc_msgSend_coalesce_(v8, v7, 0);
  }
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end