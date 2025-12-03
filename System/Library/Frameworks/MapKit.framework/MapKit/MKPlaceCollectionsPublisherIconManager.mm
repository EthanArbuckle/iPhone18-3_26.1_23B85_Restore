@interface MKPlaceCollectionsPublisherIconManager
+ (id)sharedInstance;
- (MKPlaceCollectionsPublisherIconManager)init;
- (id)_iconForPublisherNamed:(id)named usingId:(unsigned int)id usingContentScale:(double)scale usingSizeGroup:(unint64_t)group isNightMode:(BOOL)mode;
- (id)iconForPublisherNamed:(id)named usingId:(unsigned int)id usingContentScale:(double)scale usingSizeGroup:(unint64_t)group isNightMode:(BOOL)mode;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)iconForPublisherNamed:(id)named usingId:(unsigned int)id contentScale:(double)scale onCompletion:(id)completion;
@end

@implementation MKPlaceCollectionsPublisherIconManager

- (void)cache:(id)cache willEvictObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = objectCopy;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "[!]Publisher Cache is evicting: %@", &v6, 0xCu);
  }
}

- (id)_iconForPublisherNamed:(id)named usingId:(unsigned int)id usingContentScale:(double)scale usingSizeGroup:(unint64_t)group isNightMode:(BOOL)mode
{
  v9 = *&id;
  v28 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  group = [MEMORY[0x1E696AEC0] stringWithFormat:@"Logo: %d. Size:%lu", v9, group];
  v13 = [(NSCache *)self->_publisherIconCache objectForKey:group];
  v14 = MKGetCuratedCollectionsLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v15)
    {
      publisherImage = [v13 publisherImage];
      v17 = [publisherImage description];
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_DEBUG, "[✔]Publisher Icon Cache Hit. Returning image:%@", buf, 0xCu);
    }

    publisherImage2 = [v13 publisherImage];
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_DEBUG, "[X]Publisher Icon Cache Miss. Fetching image from icon pack.", buf, 2u);
    }

    v19 = [MKIconManager imageForIconID:v9 contentScale:group sizeGroup:0 nightMode:scale];
    [v19 setAccessibilityLabel:namedCopy];
    v20 = [[MKPublisherIcon alloc] initUsingName:namedCopy andImage:v19];
    v21 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      publisherImage3 = [v20 publisherImage];
      v23 = [publisherImage3 description];
      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_DEBUG, "[✔]Publisher Icon Cache Updated. Returning image:%@", buf, 0xCu);
    }

    publisherIconCache = [(MKPlaceCollectionsPublisherIconManager *)self publisherIconCache];
    [publisherIconCache setObject:v20 forKey:group];

    publisherImage2 = [v20 publisherImage];
  }

  return publisherImage2;
}

- (id)iconForPublisherNamed:(id)named usingId:(unsigned int)id usingContentScale:(double)scale usingSizeGroup:(unint64_t)group isNightMode:(BOOL)mode
{
  namedCopy = named;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__39689;
  v28 = __Block_byref_object_dispose__39690;
  v29 = 0;
  objc_initWeak(&location, self);
  publisherLogoImageQueue = self->_publisherLogoImageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__MKPlaceCollectionsPublisherIconManager_iconForPublisherNamed_usingId_usingContentScale_usingSizeGroup_isNightMode___block_invoke;
  block[3] = &unk_1E76CCEE0;
  v19 = &v24;
  objc_copyWeak(v20, &location);
  v18 = namedCopy;
  idCopy = id;
  v20[1] = *&scale;
  v20[2] = group;
  modeCopy = mode;
  v14 = namedCopy;
  dispatch_sync(publisherLogoImageQueue, block);
  v15 = v25[5];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __117__MKPlaceCollectionsPublisherIconManager_iconForPublisherNamed_usingId_usingContentScale_usingSizeGroup_isNightMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _iconForPublisherNamed:*(a1 + 32) usingId:*(a1 + 72) usingContentScale:*(a1 + 64) usingSizeGroup:*(a1 + 76) isNightMode:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)iconForPublisherNamed:(id)named usingId:(unsigned int)id contentScale:(double)scale onCompletion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  objc_initWeak(&location, self);
  publisherLogoImageQueue = self->_publisherLogoImageQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__MKPlaceCollectionsPublisherIconManager_iconForPublisherNamed_usingId_contentScale_onCompletion___block_invoke;
  v15[3] = &unk_1E76CCEB8;
  objc_copyWeak(v18, &location);
  idCopy = id;
  v18[1] = *&scale;
  v16 = namedCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = namedCopy;
  dispatch_async(publisherLogoImageQueue, v15);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __98__MKPlaceCollectionsPublisherIconManager_iconForPublisherNamed_usingId_contentScale_onCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _iconForPublisherNamed:*(a1 + 32) usingId:*(a1 + 64) usingContentScale:1 usingSizeGroup:0 isNightMode:*(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

- (MKPlaceCollectionsPublisherIconManager)init
{
  v9.receiver = self;
  v9.super_class = MKPlaceCollectionsPublisherIconManager;
  v2 = [(MKPlaceCollectionsPublisherIconManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MapKit.MKPlaceCollectionsPublisherIconManager", v3);
    publisherLogoImageQueue = v2->_publisherLogoImageQueue;
    v2->_publisherLogoImageQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    publisherIconCache = v2->_publisherIconCache;
    v2->_publisherIconCache = v6;

    [(NSCache *)v2->_publisherIconCache setDelegate:v2];
    [(NSCache *)v2->_publisherIconCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v2->_publisherIconCache setCountLimit:50];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_39696 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_39696, &__block_literal_global_39697);
  }

  v3 = sharedInstance_iconProvider;

  return v3;
}

void __56__MKPlaceCollectionsPublisherIconManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MKPlaceCollectionsPublisherIconManager);
  v1 = sharedInstance_iconProvider;
  sharedInstance_iconProvider = v0;
}

@end