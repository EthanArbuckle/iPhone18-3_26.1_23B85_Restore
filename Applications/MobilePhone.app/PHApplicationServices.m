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
  block[2] = __39__PHApplicationServices_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sApplicationServices;

  return v2;
}

uint64_t __39__PHApplicationServices_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sApplicationServices = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
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
    block[2] = __29__PHApplicationServices_init__block_invoke;
    block[3] = &unk_100284FD0;
    v10 = v3;
    dispatch_async(v7, block);
  }

  return v3;
}

void __29__PHApplicationServices_init__block_invoke(uint64_t a1)
{
  +[TUCallCapabilities initializeCachedValues];
  v2 = objc_alloc_init(TUCallProviderManager);
  [*(a1 + 32) setCallProviderManager:v2];
  v3 = +[CNContactStore contactStore];
  [*(a1 + 32) setContactStore:v3];

  v4 = +[CNContactStore suggestedContactStore];
  [*(a1 + 32) setSuggestedContactStore:v4];

  v5 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
  v14[0] = v5;
  v6 = objc_alloc_init(TUMapsMetadataCacheDataProvider);
  v14[1] = v6;
  v7 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
  v14[2] = v7;
  v8 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
  v14[3] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:4];

  v10 = [[TUMetadataCache alloc] initWithDataProviders:v9];
  [*(a1 + 32) setMetadataCache:v10];

  if (+[PHDevice isGeminiCapable])
  {
    v11 = [v2 telephonyProvider];
    v12 = [v11 identifier];
    v13 = [v2 providerWithIdentifier:v12];
  }

  [*(a1 + 32) setInitializationBlockQueued:0];
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
  v17[2] = __44__PHApplicationServices_callProviderManager__block_invoke;
  v17[3] = &unk_100285020;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    v5 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __44__PHApplicationServices_callProviderManager__block_invoke_106;
    block[3] = &unk_100285048;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(v5, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

id __44__PHApplicationServices_callProviderManager__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t __44__PHApplicationServices_callProviderManager__block_invoke_106(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
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
  v19[2] = __37__PHApplicationServices_contactStore__block_invoke;
  v19[3] = &unk_100285070;
  v19[4] = self;
  v3 = objc_retainBlock(v19);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = (v3[2])();
  if (!v14[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    v4 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__PHApplicationServices_contactStore__block_invoke_2;
    block[3] = &unk_100285048;
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

id __37__PHApplicationServices_contactStore__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t __37__PHApplicationServices_contactStore__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
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
  v16[2] = __46__PHApplicationServices_suggestedContactStore__block_invoke;
  v16[3] = &unk_100285070;
  v16[4] = self;
  v3 = objc_retainBlock(v16);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = (v3[2])();
  if (!v11[5] && [(PHApplicationServices *)self isInitializationBlockQueued])
  {
    v4 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __46__PHApplicationServices_suggestedContactStore__block_invoke_2;
    block[3] = &unk_100285048;
    v9 = &v10;
    v8 = v3;
    dispatch_sync(v4, block);
  }

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

id __46__PHApplicationServices_suggestedContactStore__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t __46__PHApplicationServices_suggestedContactStore__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
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
  v17[2] = __38__PHApplicationServices_metadataCache__block_invoke;
  v17[3] = &unk_100285098;
  v17[4] = self;
  v3 = objc_retainBlock(v17);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = (v3[2])();
  v4 = v12[5];
  if (!v4)
  {
    v5 = [(PHApplicationServices *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __38__PHApplicationServices_metadataCache__block_invoke_2;
    block[3] = &unk_100285048;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(v5, block);

    v4 = v12[5];
  }

  v6 = v4;
  _Block_object_dispose(&v11, 8);

  return v6;
}

id __38__PHApplicationServices_metadataCache__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 32);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t __38__PHApplicationServices_metadataCache__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
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