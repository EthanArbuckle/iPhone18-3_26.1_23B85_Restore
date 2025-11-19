@interface PHApplicationServices
+ (id)sharedInstance;
- (BOOL)isInitializationBlockQueued;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (CNGeminiManager)contactGeminiManager;
- (PHApplicationServices)init;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (void)setCallProviderManager:(id)a3;
- (void)setContactGeminiManager:(id)a3;
- (void)setContactStore:(id)a3;
- (void)setInitializationBlockQueued:(BOOL)a3;
- (void)setMetadataCache:(id)a3;
- (void)setSuggestedContactStore:(id)a3;
@end

@implementation PHApplicationServices

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CA4;
  block[3] = &unk_1000B1B58;
  block[4] = a1;
  if (qword_1000C6048 != -1)
  {
    dispatch_once(&qword_1000C6048, block);
  }

  v2 = qword_1000C6040;

  return v2;
}

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
    v7 = [(PHApplicationServices *)v3 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002DEC;
    block[3] = &unk_1000B1B80;
    v10 = v3;
    dispatch_async(v7, block);
  }

  return v3;
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (void)setInitializationBlockQueued:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != v3)
  {
    self->_initializationBlockQueued = v3;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (TUCallProviderManager)callProviderManager
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000031F4;
  v17[3] = &unk_1000B1BA8;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003250;
  v15 = sub_100003260;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    v5 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003268;
    block[3] = &unk_1000B1BD0;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(v5, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)setCallProviderManager:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_callProviderManager != v5)
  {
    objc_storeStrong(&self->_callProviderManager, a3);
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

- (void)setContactGeminiManager:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_contactGeminiManager != v5)
  {
    objc_storeStrong(&self->_contactGeminiManager, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CNContactStore)contactStore
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000035FC;
  v19[3] = &unk_1000B1BF8;
  v19[4] = self;
  v3 = objc_retainBlock(v19);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003250;
  v17 = sub_100003260;
  v18 = (v3[2])();
  if (!v14[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    v4 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003658;
    block[3] = &unk_1000B1BD0;
    v12 = &v13;
    v5 = v3;
    v11 = v5;
    dispatch_sync(v4, block);

    v6 = (v3[2])(v5);
    v7 = v14[5];
    v14[5] = v6;
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setContactStore:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_contactStore != v5)
  {
    objc_storeStrong(&self->_contactStore, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CNContactStore)suggestedContactStore
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000038D4;
  v16[3] = &unk_1000B1BF8;
  v16[4] = self;
  v3 = objc_retainBlock(v16);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100003250;
  v14 = sub_100003260;
  v15 = (v3[2])();
  if (!v11[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    v4 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003930;
    block[3] = &unk_1000B1BD0;
    v9 = &v10;
    v8 = v3;
    dispatch_sync(v4, block);
  }

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)setSuggestedContactStore:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_suggestedContactStore != v5)
  {
    objc_storeStrong(&self->_suggestedContactStore, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (TUMetadataCache)metadataCache
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003BA0;
  v17[3] = &unk_1000B1C20;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003250;
  v15 = sub_100003260;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    v5 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003BFC;
    block[3] = &unk_1000B1BD0;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(v5, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)setMetadataCache:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_metadataCache != v5)
  {
    objc_storeStrong(&self->_metadataCache, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

@end