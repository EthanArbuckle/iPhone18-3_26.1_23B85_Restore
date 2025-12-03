@interface PHApplicationServices
+ (id)sharedInstance;
- (BOOL)isInitializationBlockQueued;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (CNGeminiManager)contactGeminiManager;
- (PHApplicationServices)init;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (void)setCallProviderManager:(id)manager;
- (void)setContactGeminiManager:(id)manager;
- (void)setContactStore:(id)store;
- (void)setInitializationBlockQueued:(BOOL)queued;
- (void)setMetadataCache:(id)cache;
- (void)setSuggestedContactStore:(id)store;
@end

@implementation PHApplicationServices

- (PHApplicationServices)init
{
  v11.receiver = self;
  v11.super_class = PHApplicationServices;
  v2 = [(PHApplicationServices *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, 2u, 0);
    v5 = dispatch_queue_create("PHApplicationServices.serialQueue", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    [(PHApplicationServices *)v3 setInitializationBlockQueued:1];
    dispatchQueue = [(PHApplicationServices *)v3 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000361C;
    block[3] = &unk_10010AD48;
    v10 = v3;
    dispatch_async(dispatchQueue, block);
  }

  return v3;
}

- (TUCallProviderManager)callProviderManager
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008438;
  v17[3] = &unk_10010B330;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10002DEB8;
  v15 = sub_10002DEC8;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    dispatchQueue = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002DED0;
    block[3] = &unk_10010B080;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(dispatchQueue, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (CNContactStore)contactStore
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100008674;
  v19[3] = &unk_10010B358;
  v19[4] = self;
  v3 = objc_retainBlock(v19);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10002DEB8;
  v17 = sub_10002DEC8;
  v18 = (v3[2])();
  if (!v14[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    dispatchQueue = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E084;
    block[3] = &unk_10010B080;
    v12 = &v13;
    v5 = v3;
    v11 = v5;
    dispatch_sync(dispatchQueue, block);

    v6 = (v3[2])(v5);
    v7 = v14[5];
    v14[5] = v6;
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (CNContactStore)suggestedContactStore
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008884;
  v16[3] = &unk_10010B358;
  v16[4] = self;
  v3 = objc_retainBlock(v16);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10002DEB8;
  v14 = sub_10002DEC8;
  v15 = (v3[2])();
  if (!v11[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    dispatchQueue = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E14C;
    block[3] = &unk_10010B080;
    v9 = &v10;
    v8 = v3;
    dispatch_sync(dispatchQueue, block);
  }

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (TUMetadataCache)metadataCache
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008A88;
  v17[3] = &unk_10010B380;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10002DEB8;
  v15 = sub_10002DEC8;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    dispatchQueue = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E214;
    block[3] = &unk_10010B080;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(dispatchQueue, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DDF8;
  block[3] = &unk_10010AF00;
  block[4] = self;
  if (qword_1001269B0 != -1)
  {
    dispatch_once(&qword_1001269B0, block);
  }

  v2 = qword_1001269A8;

  return v2;
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (void)setInitializationBlockQueued:(BOOL)queued
{
  queuedCopy = queued;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != queuedCopy)
  {
    self->_initializationBlockQueued = queuedCopy;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setCallProviderManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_callProviderManager != managerCopy)
  {
    objc_storeStrong(&self->_callProviderManager, manager);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CNGeminiManager)contactGeminiManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  contactGeminiManager = self->_contactGeminiManager;
  if (!contactGeminiManager)
  {
    v4 = [[CNGeminiManager alloc] initWithCallProviderManager:self->_callProviderManager];
    v5 = self->_contactGeminiManager;
    self->_contactGeminiManager = v4;

    contactGeminiManager = self->_contactGeminiManager;
  }

  v6 = contactGeminiManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (void)setContactGeminiManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_contactGeminiManager != managerCopy)
  {
    objc_storeStrong(&self->_contactGeminiManager, manager);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setContactStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_contactStore != storeCopy)
  {
    objc_storeStrong(&self->_contactStore, store);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSuggestedContactStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_suggestedContactStore != storeCopy)
  {
    objc_storeStrong(&self->_suggestedContactStore, store);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setMetadataCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_metadataCache != cacheCopy)
  {
    objc_storeStrong(&self->_metadataCache, cache);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

@end