@interface MPAbstractNetworkArtworkDataSource
+ (void)_applyImageURLCachePolicy:(unint64_t)a3 cacheDiskPath:(id)a4 toConfiguration:(id)a5;
+ (void)_applyVideoCacheURL:(id)a3 toConfiguration:(id)a4;
- (BOOL)_isRepresentationSize:(CGSize)a3 validForCatalog:(id)a4;
- (BOOL)_subclassImplementsSelector:(SEL)a3;
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGSize)_bestAvailableSizeForCatalog:(id)a3 kind:(int64_t)a4;
- (CGSize)bestAvailableSizeForCatalog:(id)a3;
- (MPAbstractNetworkArtworkDataSource)init;
- (NSCache)fallbackImageArtworkRepresentationCache;
- (NSURLCache)videoURLCache;
- (NSURLSessionDataDelegate)URLSessionDataDelegateProxy;
- (id)_artworkRepresentationWithImageFromData:(id)a3 forURLResponse:(id)a4 catalog:(id)a5 size:(CGSize)a6 immediateImageDecompressionAllowed:(BOOL)a7;
- (id)_bestVideoArtworkRepresentationForCatalog:(id)a3;
- (id)_cacheKeyForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5;
- (id)_existingRepresentationFromURLCacheForArtworkCatalog:(id)a3 immediateImageDecompressionAllowed:(BOOL)a4;
- (id)_existingRepresentativeObjectForArtworkCatalog:(id)a3 kind:(int64_t)a4 handler:(id)a5;
- (id)_requestForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5;
- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4;
- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5;
- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4;
- (id)requestForCatalog:(id)a3 size:(CGSize)a4;
- (id)supportedSizesForCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_disableVideoCache;
- (void)_onImageAccessQueue_cancelLoadingContextForCatalogUUID:(id)a3 withLoadingURL:(id)a4;
- (void)_performSyncBlockOnQueue:(id)a3 block:(id)a4;
- (void)_reEnableVideoCache;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)dealloc;
- (void)loadArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5 systemEffectHandler:(id)a6 completionHandler:(id)a7;
- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5;
- (void)prewarmURLSessionWithCompletion:(id)a3;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
- (void)setVideoArtworkCacheURL:(id)a3;
- (void)startListeningForMemoryPressureNotifications;
- (void)stopListeningForMemoryPressureNotifications;
- (void)updateURLSessionWithCachePolicy:(unint64_t)a3 cachePath:(id)a4;
@end

@implementation MPAbstractNetworkArtworkDataSource

- (MPAbstractNetworkArtworkDataSource)init
{
  v32.receiver = self;
  v32.super_class = MPAbstractNetworkArtworkDataSource;
  v2 = [(MPAbstractNetworkArtworkDataSource *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaplayer.MPAbstractNetworkArtworkDataSource.imageAccessQueue", MEMORY[0x1E69E96A8]);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    dispatch_queue_set_specific(*(v2 + 4), _MPAbstractNetworkArtworkDataSourceQueueSpecificIsAccessQueue, _MPAbstractNetworkArtworkDataSourceQueueSpecificIsAccessQueue, 0);
    v5 = dispatch_queue_create("com.apple.mediaplayer.MPAbstractNetworkArtworkDataSource.videoAccessQueue", 0);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    v7 = dispatch_queue_create("com.apple.mediaplayer.MPAbstractNetworkArtworkDataSource.callbackQueue", 0);
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v10 = *(v2 + 9);
    *(v2 + 9) = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(v2 + 10);
    *(v2 + 10) = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = *(v2 + 11);
    *(v2 + 11) = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = *(v2 + 12);
    *(v2 + 12) = v17;

    if (([v2 _subclassImplementsSelector:sel_cacheKeyForCatalog_kind_size_] & 1) != 0 || objc_msgSend(v2, "_subclassImplementsSelector:", sel_cacheKeyForCatalog_size_))
    {
      *(v2 + 8) = 1;
      v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v20 = *(v2 + 7);
      *(v2 + 7) = v19;
    }

    v21 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    [objc_opt_class() _applyImageURLCachePolicy:0 cacheDiskPath:0 toConfiguration:v21];
    v22 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v21];
    v23 = *(v2 + 13);
    *(v2 + 13) = v22;

    v24 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    [objc_opt_class() _applyVideoCacheURL:0 toConfiguration:v24];
    v25 = [v24 URLCache];
    objc_storeWeak(v2 + 15, v25);

    v26 = [MEMORY[0x1E69B14E8] proxyWithObject:v2 protocol:&unk_1F150FD68];
    objc_storeWeak(v2 + 16, v26);
    v27 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v24 delegate:v26 delegateQueue:0];
    v28 = *(v2 + 14);
    *(v2 + 14) = v27;

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v2 selector:sel__didReceiveMemoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v2 selector:sel__didReceiveWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v2;
}

- (NSURLSessionDataDelegate)URLSessionDataDelegateProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_URLSessionDataDelegateProxy);

  return WeakRetained;
}

- (NSURLCache)videoURLCache
{
  WeakRetained = objc_loadWeakRetained(&self->_videoURLCache);

  return WeakRetained;
}

- (void)stopListeningForMemoryPressureNotifications
{
  v3 = [(MPAbstractNetworkArtworkDataSource *)self memoryPressureNotificationSource];

  if (v3)
  {
    v4 = [(MPAbstractNetworkArtworkDataSource *)self memoryPressureNotificationSource];
    dispatch_source_cancel(v4);

    [(MPAbstractNetworkArtworkDataSource *)self setMemoryPressureNotificationSource:0];
  }
}

- (void)startListeningForMemoryPressureNotifications
{
  v3 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, MEMORY[0x1E69E96A0]);
  [(MPAbstractNetworkArtworkDataSource *)self setMemoryPressureNotificationSource:v3];

  v4 = [(MPAbstractNetworkArtworkDataSource *)self memoryPressureNotificationSource];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(MPAbstractNetworkArtworkDataSource *)self memoryPressureNotificationSource];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __82__MPAbstractNetworkArtworkDataSource_startListeningForMemoryPressureNotifications__block_invoke;
    v10 = &unk_1E76825E8;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v5, &v7);

    v6 = [(MPAbstractNetworkArtworkDataSource *)self memoryPressureNotificationSource:v7];
    dispatch_resume(v6);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __82__MPAbstractNetworkArtworkDataSource_startListeningForMemoryPressureNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained memoryPressureNotificationSource];
    data = dispatch_source_get_data(v2);

    WeakRetained = v5;
    if (data != currentMemoryPressureLevel)
    {
      v4 = objc_autoreleasePoolPush();
      if (data == 4 || data == 2)
      {
        [v5 _disableVideoCache];
      }

      else if (data == 1 && (currentMemoryPressureLevel == 4 || currentMemoryPressureLevel == 2))
      {
        [v5 _reEnableVideoCache];
      }

      currentMemoryPressureLevel = data;
      objc_autoreleasePoolPop(v4);
      WeakRetained = v5;
    }
  }
}

- (void)_reEnableVideoCache
{
  v2 = [(MPAbstractNetworkArtworkDataSource *)self videoURLCache];
  if (![v2 memoryCapacity])
  {
    [v2 setMemoryCapacity:83886080];
    v3 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "MPAbstractNetworkArtworkDataSource: _reEnableVideoCache: Increasing video URLCache memory capacity from 0 to default capacity.", v4, 2u);
    }
  }
}

- (void)_disableVideoCache
{
  v2 = [(MPAbstractNetworkArtworkDataSource *)self videoURLCache];
  [v2 _CFURLCache];
  _CFURLCachePurgeMemoryCache();
  [v2 setMemoryCapacity:0];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "MPAbstractNetworkArtworkDataSource: _disableVideoCache: Reducing video URLCache memory capacity to 0.", v4, 2u);
  }
}

- (BOOL)_subclassImplementsSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodForSelector:a3];
  if (v4)
  {
    LOBYTE(v4) = [objc_opt_class() instanceMethodForSelector:a3] != v4;
  }

  return v4;
}

- (CGSize)_bestAvailableSizeForCatalog:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(MPAbstractNetworkArtworkDataSource *)self bestAvailableSizeForCatalog:v6];
    v8 = v7;
    v10 = v9;
  }

  else if (a4)
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v11 = [(MPAbstractNetworkArtworkDataSource *)self sortedSupportedSizesForCatalog:v6];
    if (!v11)
    {
      v12 = [(MPAbstractNetworkArtworkDataSource *)self supportedSizesForCatalog:v6];
      v11 = [v12 sortedArrayUsingComparator:&__block_literal_global_390];
    }

    [v6 scaledFittingSize];
    v8 = MPArtworkRepresentationBestSizeMatchingSize(v11, v13, v14);
    v10 = v15;
  }

  v16 = v8;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)_cacheKeyForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(MPAbstractNetworkArtworkDataSource *)self cacheKeyForCatalog:v9 kind:a4 size:width, height];
  }

  else
  {
    if (a4)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [(MPAbstractNetworkArtworkDataSource *)self cacheKeyForCatalog:v9 size:width, height];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

- (id)_bestVideoArtworkRepresentationForCatalog:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__MPAbstractNetworkArtworkDataSource__bestVideoArtworkRepresentationForCatalog___block_invoke;
  v8[3] = &unk_1E7675B20;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(MPAbstractNetworkArtworkDataSource *)self _existingRepresentativeObjectForArtworkCatalog:v5 kind:1 handler:v8];

  return v6;
}

id __80__MPAbstractNetworkArtworkDataSource__bestVideoArtworkRepresentationForCatalog___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) _requestForCatalog:*(a1 + 40) kind:1 size:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URL];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "allowsVideoConstrainedNetworkAccess")}];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6987B20]];

    v11 = MEMORY[0x1E695E118];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6987BF8]];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6987BB0]];
    [v9 setObject:&unk_1F1509628 forKeyedSubscript:*MEMORY[0x1E6987BF0]];
    v12 = [MEMORY[0x1E6988168] URLAssetWithURL:v8 options:v9];
    v13 = [v12 resourceLoader];
    v14 = *(a1 + 32);
    v15 = [v14 videoAccessQueue];
    [v13 setDelegate:v14 queue:v15];

    v16 = *(a1 + 32);
    v17 = [v16 videoAccessQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__MPAbstractNetworkArtworkDataSource__bestVideoArtworkRepresentationForCatalog___block_invoke_238;
    v24[3] = &unk_1E76800A0;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v25 = v18;
    v26 = v19;
    v27 = v13;
    v20 = v13;
    [v16 _performSyncBlockOnQueue:v17 block:v24];
  }

  else
  {
    v12 = 0;
  }

  v21 = [*(a1 + 40) visualIdenticalityIdentifier];
  v22 = [MPArtworkRepresentation representationForVisualIdentity:v21 withSize:v12 video:a2, a3];

  return v22;
}

void __80__MPAbstractNetworkArtworkDataSource__bestVideoArtworkRepresentationForCatalog___block_invoke_238(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "videoCacheStoragePolicy")}];
  v2 = [*(a1 + 40) resourceLoaderStoragePolicyMap];
  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)_performSyncBlockOnQueue:(id)a3 block:(id)a4
{
  queue = a3;
  v6 = a4;
  v7 = queue;
  v8 = v6;
  if (self->_imageAccessQueue == queue && (specific = dispatch_get_specific(_MPAbstractNetworkArtworkDataSourceQueueSpecificIsAccessQueue), v7 = queue, specific))
  {
    if (v8)
    {
      v8[2](v8, queue);
    }
  }

  else
  {
    dispatch_sync(v7, v8);
  }
}

- (id)_requestForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(MPAbstractNetworkArtworkDataSource *)self requestForCatalog:v9 kind:a4 size:width, height];
  }

  else
  {
    if (a4)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [(MPAbstractNetworkArtworkDataSource *)self requestForCatalog:v9 size:width, height];
  }

  v11 = v10;
LABEL_7:
  if (_requestForCatalog_kind_size__onceToken != -1)
  {
    dispatch_once(&_requestForCatalog_kind_size__onceToken, &__block_literal_global_230);
  }

  v12 = [v11 mutableCopy];
  [v12 setValue:_requestForCatalog_kind_size__userAgent forHTTPHeaderField:*MEMORY[0x1E69E41B0]];
  v13 = v12;

  return v12;
}

void __67__MPAbstractNetworkArtworkDataSource__requestForCatalog_kind_size___block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E69E4588]) initWithBlock:&__block_literal_global_234];
  v0 = [v2 userAgent];
  v1 = _requestForCatalog_kind_size__userAgent;
  _requestForCatalog_kind_size__userAgent = v0;
}

- (id)_existingRepresentativeObjectForArtworkCatalog:(id)a3 kind:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(MPAbstractNetworkArtworkDataSource *)self _bestAvailableSizeForCatalog:v8 kind:a4];
  v11 = v10;
  v13 = v12;
  v28 = 0;
  v14 = v9[2](v9, &v28);
  v15 = v14;
  if (a4 || v14)
  {
    goto LABEL_16;
  }

  if (v28 && ![(MPAbstractNetworkArtworkDataSource *)self shouldLookForLargerImageRepresentationsWhenBestRepresentationIsUnavailable])
  {
    v15 = 0;
    goto LABEL_16;
  }

  v16 = [(MPAbstractNetworkArtworkDataSource *)self sortedSupportedSizesForCatalog:v8];
  if (!v16)
  {
    v17 = [(MPAbstractNetworkArtworkDataSource *)self supportedSizesForCatalog:v8];
    v16 = [v17 sortedArrayUsingComparator:&__block_literal_global_390];
  }

  v18 = [MEMORY[0x1E696B098] valueWithCGSize:{v11, v13}];
  v19 = [v16 indexOfObject:v18];

  v20 = v19 + 1;
  if (v19 + 1 >= [v16 count])
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  while (1)
  {
    v21 = [v16 objectAtIndexedSubscript:v20];
    [v21 CGSizeValue];
    v23 = v22;
    v25 = v24;

    if (![(MPAbstractNetworkArtworkDataSource *)self _isRepresentationSize:v8 validForCatalog:v23, v25])
    {
      goto LABEL_12;
    }

    v28 = 1;
    v26 = (v9[2])(v9, &v28, v23, v25);
    if (v26)
    {
      break;
    }

    if (v28 && ![(MPAbstractNetworkArtworkDataSource *)self shouldLookForLargerImageRepresentationsWhenBestRepresentationIsUnavailable])
    {
      goto LABEL_13;
    }

LABEL_12:
    if (++v20 >= [v16 count])
    {
      goto LABEL_13;
    }
  }

  v15 = v26;
LABEL_14:

LABEL_16:

  return v15;
}

- (BOOL)_isRepresentationSize:(CGSize)a3 validForCatalog:(id)a4
{
  height = a3.height;
  width = a3.width;
  [a4 scaledFittingSize];
  return height <= v7 + v7 && width <= v6 + v6;
}

- (id)_existingRepresentationFromURLCacheForArtworkCatalog:(id)a3 immediateImageDecompressionAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __126__MPAbstractNetworkArtworkDataSource__existingRepresentationFromURLCacheForArtworkCatalog_immediateImageDecompressionAllowed___block_invoke;
  v19 = &unk_1E7675AD8;
  v20 = self;
  v21 = v6;
  v7 = v6;
  v8 = [(MPAbstractNetworkArtworkDataSource *)self _existingRepresentativeObjectForArtworkCatalog:v7 kind:0 handler:&v16];
  v9 = [v8 data];
  v10 = [v8 response];
  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"representationSize"];
  v13 = CGSizeFromString(v12);
  v14 = [(MPAbstractNetworkArtworkDataSource *)self _artworkRepresentationWithImageFromData:v9 forURLResponse:v10 catalog:v7 size:v4 immediateImageDecompressionAllowed:v13.width, v13.height];

  return v14;
}

id __126__MPAbstractNetworkArtworkDataSource__existingRepresentationFromURLCacheForArtworkCatalog_immediateImageDecompressionAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestForCatalog:*(a1 + 40) kind:0 size:?];
  if (v2)
  {
    v3 = [*(a1 + 32) imageURLSession];
    v4 = [v3 configuration];
    v5 = [v4 URLCache];
    v6 = [v5 cachedResponseForRequest:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_onImageAccessQueue_cancelLoadingContextForCatalogUUID:(id)a3 withLoadingURL:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_barrier(self->_imageAccessQueue);
  v8 = [(NSMutableDictionary *)self->_loadingContexts objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 catalogIdentifierToCompletionHandlerMap];
    v11 = [v10 objectForKey:v6];

    if (v11)
    {
      v12 = [v9 catalogIdentifierToCompletionHandlerMap];
      [v12 removeObjectForKey:v6];

      v13 = [(MPAbstractNetworkArtworkDataSource *)self callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __108__MPAbstractNetworkArtworkDataSource__onImageAccessQueue_cancelLoadingContextForCatalogUUID_withLoadingURL___block_invoke;
      block[3] = &unk_1E7682370;
      v20 = v11;
      dispatch_async(v13, block);
    }

    v14 = [v9 catalogIdentifierToCompletionHandlerMap];
    v15 = [v14 count];

    if (!v15)
    {
      v16 = [v9 dataTask];
      [v16 cancel];

      [(NSMutableDictionary *)self->_loadingContexts removeObjectForKey:v7];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412802;
      v22 = v18;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "<%@: %p> _cancelLoadingContextForCatalogUUID:withLoadingURL: No loading context for url=%@", buf, 0x20u);
    }
  }
}

void __108__MPAbstractNetworkArtworkDataSource__onImageAccessQueue_cancelLoadingContextForCatalogUUID_withLoadingURL___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPAbstractNetworkArtworkDataSourceErrorDomain" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_artworkRepresentationWithImageFromData:(id)a3 forURLResponse:(id)a4 catalog:(id)a5 size:(CGSize)a6 immediateImageDecompressionAllowed:(BOOL)a7
{
  v7 = a7;
  height = a6.height;
  width = a6.width;
  v12 = a5;
  if (a3)
  {
    v13 = [MEMORY[0x1E69DCAB8] imageWithData:a3];
    v14 = [v12 visualIdenticalityIdentifier];
    v15 = [MPArtworkRepresentation representationForVisualIdentity:v14 withSize:v13 image:width, height];

    if (v7 && [(MPAbstractNetworkArtworkDataSource *)self wantsBackgroundImageDecompression])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __141__MPAbstractNetworkArtworkDataSource__artworkRepresentationWithImageFromData_forURLResponse_catalog_size_immediateImageDecompressionAllowed___block_invoke;
      v17[3] = &unk_1E7675AB0;
      v17[4] = self;
      v18 = v12;
      v20 = width;
      v21 = height;
      v19 = v15;
      [v13 prepareForDisplayWithCompletionHandler:v17];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __141__MPAbstractNetworkArtworkDataSource__artworkRepresentationWithImageFromData_forURLResponse_catalog_size_immediateImageDecompressionAllowed___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = a2;
    v10 = [v3 _cacheKeyForCatalog:v4 kind:0 size:{v5, v6}];
    v8 = [*(a1 + 48) representationWithPreparedImage:v7];

    v9 = [*(a1 + 40) cache];
    [v9 setObject:v8 forKey:v10];
  }
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1554;
    v25 = __Block_byref_object_dispose__1555;
    v26 = 0;
    v9 = [(MPAbstractNetworkArtworkDataSource *)self videoTaskToResourceLoadingRequest];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__MPAbstractNetworkArtworkDataSource_resourceLoader_didCancelLoadingRequest___block_invoke;
    v18 = &unk_1E7675A88;
    v10 = v7;
    v19 = v10;
    v20 = &v21;
    [v9 enumerateKeysAndObjectsUsingBlock:&v15];

    v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v22[5];
      v13 = [v10 request];
      v14 = [v13 URL];
      *buf = 138543874;
      v28 = v12;
      v29 = 2048;
      v30 = v10;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "MPAbstractNetworkArtworkDataSource: -resourceLoader:didCancelLoadingRequest: canceled data task: %{public}@. loadingRequest=%p URL=%{public}@", buf, 0x20u);
    }

    [v22[5] cancel];
    _Block_object_dispose(&v21, 8);
  }
}

void __77__MPAbstractNetworkArtworkDataSource_resourceLoader_didCancelLoadingRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [v7 request];
    v10 = [v9 mutableCopy];

    [v10 setValue:0 forHTTPHeaderField:@"Range"];
    [v10 setCachePolicy:2];
    v11 = [(MPAbstractNetworkArtworkDataSource *)self videoURLSession];
    v12 = [v10 copy];
    v13 = [v11 dataTaskWithRequest:v12];

    v14 = [(MPAbstractNetworkArtworkDataSource *)self videoTaskToResourceLoadingRequest];
    [v14 setObject:v7 forKey:v13];

    v15 = [(MPAbstractNetworkArtworkDataSource *)self resourceLoaderStoragePolicyMap];
    v16 = [v15 objectForKey:v6];

    v17 = [(MPAbstractNetworkArtworkDataSource *)self videoTaskToCacheStoragePolicy];
    [v17 setObject:v16 forKey:v13];

    v18 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v7 request];
      v20 = [v19 URL];
      v22 = 138543874;
      v23 = v13;
      v24 = 2048;
      v25 = v7;
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -resourceLoader:shouldWaitForLoadingOfRequestedResource: starting data task: %{public}@. loadingRequest=%p URL=%{public}@", &v22, 0x20u);
    }

    [v13 resume];
  }

  return 1;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__MPAbstractNetworkArtworkDataSource_URLSession_task_didCompleteWithError___block_invoke;
    v11[3] = &unk_1E767C7D0;
    v12 = v8;
    v13 = v9;
    v14 = self;
    v15 = v13;
    [(MPAbstractNetworkArtworkDataSource *)self _performSyncBlockOnQueue:v10 block:v11];
  }
}

void __75__MPAbstractNetworkArtworkDataSource_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v17 = 138543618;
      v18 = v3;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "MPAbstractNetworkArtworkDataSource: -URLSession:task:didCompleteWithError: task finished with error: %{public}@ dataTask=%{public}@", &v17, 0x16u);
    }

    v5 = [*(a1 + 48) videoTaskToResourceLoadingRequest];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 56)];

    [v6 finishLoadingWithError:*(a1 + 32)];
  }

  else
  {
    v7 = [*(a1 + 48) videoTaskToResourceLoadingRequest];
    v6 = [v7 objectForKey:*(a1 + 56)];

    v8 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v6 request];
        v11 = [v10 URL];
        v12 = *(a1 + 56);
        v17 = 134218498;
        v18 = v6;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -URLSession:task:didCompleteWithError: finished loading request: %p. URL=%{public}@ dataTask=%{public}@", &v17, 0x20u);
      }

      [v6 finishLoading];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v13 = *(a1 + 56);
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_FAULT, "MPAbstractNetworkArtworkDataSource: -URLSession:task:didCompleteWithError: ignoring data [no loading request associated with data task] task=%{public}@", &v17, 0xCu);
      }

      v6 = 0;
    }
  }

  v14 = [*(a1 + 48) videoTaskToResourceLoadingRequest];
  [v14 removeObjectForKey:*(a1 + 56)];

  v15 = [*(a1 + 48) videoTaskToData];
  [v15 removeObjectForKey:*(a1 + 56)];

  v16 = [*(a1 + 48) videoTaskToCacheStoragePolicy];
  [v16 removeObjectForKey:*(a1 + 56)];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke;
  v16[3] = &unk_1E7681770;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [(MPAbstractNetworkArtworkDataSource *)self _performSyncBlockOnQueue:v12 block:v16];
}

void __94__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) videoTaskToCacheStoragePolicy];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = [v3 unsignedIntegerValue];

  if (v4 == [*(a1 + 48) storagePolicy])
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E696AAF8]);
    v7 = [*(a1 + 48) response];
    v8 = [*(a1 + 48) data];
    v9 = [*(a1 + 48) userInfo];
    v5 = [v6 initWithResponse:v7 data:v8 userInfo:v9 storagePolicy:v4];

    v10 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 48) storagePolicy];
      v12 = [v5 storagePolicy];
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) response];
      v15 = [v14 URL];
      v21 = 134218754;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_INFO, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:willCacheResponse:completionHandler: Updating storage policy from %lu to %lu for dataTask: %{public}@. URL=%{public}@.", &v21, 0x2Au);
    }
  }

  v16 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v5 storagePolicy];
    v18 = *(a1 + 40);
    v19 = [v5 response];
    v20 = [v19 URL];
    v21 = 134218498;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:willCacheResponse:completionHandler: Decided on storage policy %lu for dataTask=%{public}@. responseURL=%{public}@", &v21, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_didReceiveData___block_invoke;
  v12[3] = &unk_1E76800A0;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  [(MPAbstractNetworkArtworkDataSource *)self _performSyncBlockOnQueue:v9 block:v12];
}

void __73__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) videoTaskToData];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  if (v4)
  {
    v5 = [v2 _createDispatchData];
    v6 = [v4 _createDispatchData];
    concat = dispatch_data_create_concat(v6, v5);
  }

  else
  {
    concat = *(a1 + 32);
  }

  v8 = [*(a1 + 40) videoTaskToData];
  [v8 setObject:concat forKeyedSubscript:*(a1 + 48)];

  v9 = [*(a1 + 40) videoTaskToResourceLoadingRequest];
  v10 = [v9 objectForKey:*(a1 + 48)];

  if (v10)
  {
    v11 = [v10 dataRequest];
    if (([v11 requestsAllDataToEndOfResource]& 1) != 0 || (v12 = [concat length], v13 = [v11 requestedOffset], v12 < [v11 requestedLength]+ v13))
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 48);
        v28 = 134219266;
        v29 = v11;
        v30 = 2114;
        v31 = v15;
        v32 = 2048;
        v33 = [v11 currentOffset];
        v34 = 2048;
        v35 = [v11 requestedLength];
        v36 = 2048;
        v37 = [v11 requestedOffset];
        v38 = 2048;
        v39 = [concat length];
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveData: creating data task using accumulatedData.length. %p dataTask=%{public}@ currentOffset=%lld, requestedLength=%ld requestedOffset=%lld accumulatedData.length=%lu", &v28, 0x3Eu);
      }

      v16 = [concat length];
    }

    else
    {
      v18 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 48);
        v28 = 134219266;
        v29 = v11;
        v30 = 2114;
        v31 = v19;
        v32 = 2048;
        v33 = [v11 currentOffset];
        v34 = 2048;
        v35 = [v11 requestedLength];
        v36 = 2048;
        v37 = [v11 requestedOffset];
        v38 = 2048;
        v39 = [v11 requestedLength];
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveData: creating data task using dataRequest.requestedLength. %p dataTask=%{public}@ currentOffset=%lld, requestedLength=%ld requestedOffset=%lld dataRequest.requestedLength=%lu", &v28, 0x3Eu);
      }

      v16 = [v11 requestedLength];
    }

    v20 = v16;
    if (v16 >= [v11 currentOffset])
    {
      v26 = [concat bytes];
      v27 = [v11 currentOffset];
      v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v26 + v27 length:{v20 - -[NSObject currentOffset](v11, "currentOffset")}];
      [v11 respondWithData:v21];
    }

    else
    {
      v21 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 48);
        v23 = [v11 currentOffset];
        v24 = [v11 requestedLength];
        v25 = [v11 requestedOffset];
        v28 = 138544130;
        v29 = v22;
        v30 = 2048;
        v31 = v23;
        v32 = 2048;
        v33 = v24;
        v34 = 2048;
        v35 = v25;
        _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_INFO, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveData: not responding with data [currentOffset was greater than length] task=%{public}@ currentOffset=%lld, requestedLength=%ld requestedOffset=%lld", &v28, 0x2Au);
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v17 = *(a1 + 48);
      v28 = 138543362;
      v29 = v17;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_FAULT, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveData: ignoring data [no loading request associated with data task] task=%{public}@", &v28, 0xCu);
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MPAbstractNetworkArtworkDataSource *)self videoAccessQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v16[3] = &unk_1E7681770;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [(MPAbstractNetworkArtworkDataSource *)self _performSyncBlockOnQueue:v12 block:v16];
}

void __95__MPAbstractNetworkArtworkDataSource_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) countOfBytesExpectedToReceive];
  v3 = [*(a1 + 40) videoURLCache];
  v4 = [v3 diskCapacity];
  v5 = v4 - [v3 currentDiskUsage];
  v6 = [v3 memoryCapacity];
  v7 = v6 - [v3 currentMemoryUsage];
  v8 = [*(a1 + 40) videoTaskToCacheStoragePolicy];
  v9 = [v8 objectForKey:*(a1 + 32)];
  v10 = [v9 unsignedIntegerValue];

  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  if (v10 != 2)
  {
    if (v10 == 1)
    {
      if ([v3 memoryCapacity] < v2)
      {
        v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v13 = [*(a1 + 48) URL];
          v25 = 138544130;
          v26 = v15;
          v27 = 2114;
          v28 = v13;
          v29 = 2048;
          v30 = v2;
          v31 = 2048;
          v32 = [v3 memoryCapacity];
          v14 = "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveResponse:completionHandler: canceled data task [expectedEntrySize > memoryCapacity] dataTask=%{public}@ URL=%{public}@ expectedEntrySize=%lld memoryCapacity=%lu";
          goto LABEL_11;
        }

LABEL_12:

        goto LABEL_13;
      }

      if (v7 < v2)
      {
        v17 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          v19 = [*(a1 + 48) URL];
          v25 = 138544130;
          v26 = v18;
          v27 = 2114;
          v28 = v19;
          v29 = 2048;
          v30 = v2;
          v31 = 2048;
          v32 = v7;
          v20 = "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveResponse:completionHandler: expecting eviction in memory cache [expectedEntrySize > memoryCacheAvailableSize] dataTask=%{public}@ URL=%{public}@ expectedEntrySize=%lld memoryCacheAvailableSize=%lld";
LABEL_20:
          _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, v20, &v25, 0x2Au);
        }

LABEL_21:
      }
    }

    else
    {
      if (v10)
      {
LABEL_13:
        v16 = 0;
        goto LABEL_23;
      }

      if ([v3 diskCapacity] < v2)
      {
        v11 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 32);
          v13 = [*(a1 + 48) URL];
          v25 = 138544130;
          v26 = v12;
          v27 = 2114;
          v28 = v13;
          v29 = 2048;
          v30 = v2;
          v31 = 2048;
          v32 = [v3 diskCapacity];
          v14 = "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveResponse:completionHandler: canceled data task [expectedEntrySize > diskCapacity] dataTask=%{public}@ URL=%{public}@ expectedEntrySize=%lld diskCapacity=%lu";
LABEL_11:
          _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, v14, &v25, 0x2Au);

          goto LABEL_12;
        }

        goto LABEL_12;
      }

      if (v5 < v2)
      {
        v17 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v19 = [*(a1 + 48) URL];
          v25 = 138544130;
          v26 = v21;
          v27 = 2114;
          v28 = v19;
          v29 = 2048;
          v30 = v2;
          v31 = 2048;
          v32 = v5;
          v20 = "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveResponse:completionHandler: expecting eviction in disk cache - cache will be purged [expectedEntrySize > diskCacheAvailableSize] dataTask=%{public}@ URL=%{public}@ expectedEntrySize=%lld diskCacheAvailableSize=%lld";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }
  }

  v16 = 1;
LABEL_23:
  v22 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 32);
    v24 = [*(a1 + 48) URL];
    v25 = 134219522;
    v26 = v16;
    v27 = 2114;
    v28 = v23;
    v29 = 2114;
    v30 = v24;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v2;
    v35 = 2048;
    v36 = v5;
    v37 = 2048;
    v38 = v7;
    _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEBUG, "MPAbstractNetworkArtworkDataSource: -URLSession:dataTask:didReceiveResponse:completionHandler: Decided on disposition %ld for dataTask: %{public}@. URL=%{public}@.storagePolicy=%lu expectedEntrySize=%lld diskCacheAvailableSize=%lld memoryCacheAvailableSize=%lld", &v25, 0x48u);
  }

  (*(*(a1 + 56) + 16))();
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_isEqual(a3, sel_areRepresentationsOfKind_availableForCatalog_) || sel_isEqual(a3, sel_requestForCatalog_kind_size_) || sel_isEqual(a3, sel_cacheKeyForCatalog_kind_size_) || sel_isEqual(a3, sel_bestAvailableSizeForCatalog_))
  {

    return [(MPAbstractNetworkArtworkDataSource *)self _subclassImplementsSelector:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MPAbstractNetworkArtworkDataSource;
    return [(MPAbstractNetworkArtworkDataSource *)&v6 respondsToSelector:a3];
  }
}

- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v61 = self;
    v62 = 2048;
    v63 = a3;
    v64 = 2114;
    v65 = v8;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Calling loadRepresentationOfKind: %ld, for artwork catalog: %{public}@", buf, 0x20u);
  }

  if (a3 == 1)
  {
    v11 = [(MPAbstractNetworkArtworkDataSource *)self _bestVideoArtworkRepresentationForCatalog:v8];
    v12 = [v8 videoCache];
    if (v12)
    {
      [v11 representationSize];
      v13 = [(MPAbstractNetworkArtworkDataSource *)self _cacheKeyForCatalog:v8 kind:1 size:?];
      if (v13)
      {
        if (v11)
        {
          [v12 setObject:v11 forKey:v13];
        }

        else
        {
          v37 = [MEMORY[0x1E695DFB0] null];
          [v12 setObject:v37 forKey:v13];
        }
      }
    }

    v9[2](v9, v11, 0);
    goto LABEL_41;
  }

  v14 = [v8 cache];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [(MPAbstractNetworkArtworkDataSource *)self fallbackImageArtworkRepresentationCache];
  }

  v11 = v16;

  v17 = [(MPAbstractNetworkArtworkDataSource *)self _existingRepresentationFromURLCacheForArtworkCatalog:v8 immediateImageDecompressionAllowed:1];
  if (!v17)
  {
    [(MPAbstractNetworkArtworkDataSource *)self _bestAvailableSizeForCatalog:v8 kind:a3];
    v26 = *&v24;
    v27 = *&v25;
    if (v24 == *MEMORY[0x1E695F060] && v25 == *(MEMORY[0x1E695F060] + 8))
    {
      v31 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v61 = self;
        v62 = 2114;
        v63 = v8;
        v64 = 2048;
        v65 = a3;
        _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_FAULT, "%{public}@ Artwork request cannot have a size of zero, catalog: %{public}@, representation kind: %ld", buf, 0x20u);
      }

      v32 = 0;
    }

    else
    {
      v29 = [(MPAbstractNetworkArtworkDataSource *)self _requestForCatalog:v8 kind:a3 size:v24, v25];
      v30 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v61 = self;
        v62 = 2048;
        v63 = v26;
        v64 = 2048;
        v65 = v27;
        _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Created request for size: %f, %f", buf, 0x20u);
      }

      v31 = [v29 mutableCopy];
      [v31 setAttribution:1];
      v32 = [v31 copy];
    }

    v33 = [v32 URL];
    v34 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v61 = self;
      v62 = 2114;
      v63 = v33;
      _os_log_impl(&dword_1A238D000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting artwork request for url: %{public}@", buf, 0x16u);
    }

    if (v33)
    {
      imageAccessQueue = self->_imageAccessQueue;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke;
      v46[3] = &unk_1E7675A60;
      v47 = v8;
      v48 = v33;
      v49 = self;
      v52 = v9;
      v53 = v26;
      v54 = v27;
      v50 = v32;
      v55 = v11 != 0;
      v51 = v11;
      [(MPAbstractNetworkArtworkDataSource *)self _performAsyncBarrierBlockOnQueue:imageAccessQueue block:v46];

      v36 = v47;
    }

    else if (v32)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Artwork request must have a non-nil URL. catalog=%@", v8];
      v39 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v61 = self;
        v62 = 2114;
        v63 = v36;
        _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_FAULT, "%{public}@ -loadRepresentationOfKind:forArtworkCatalog:completionHandler: %{public}@", buf, 0x16u);
      }

      if (v9)
      {
        v40 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A278];
        v59 = v36;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v42 = [v40 errorWithDomain:@"MPAbstractNetworkArtworkDataSourceErrorDomain" code:1 userInfo:v41];

        (v9)[2](v9, 0, v42);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_32;
      }

      v43 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A278];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create URL request for catalog: %@", v8];
      v57 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v36 = [v43 errorWithDomain:@"MPAbstractNetworkArtworkDataSource" code:0 userInfo:v45];

      (v9)[2](v9, 0, v36);
    }

LABEL_32:
    v12 = 0;
    goto LABEL_41;
  }

  v12 = v17;
  v18 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v61 = self;
    v62 = 2114;
    v63 = v12;
    v64 = 2114;
    v65 = v8;
    _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Found existing representation: %{public}@ from url cache for catalog: %{public}@", buf, 0x20u);
  }

  if (v11)
  {
    v19 = [v12 kind];
    [v12 representationSize];
    v20 = [(MPAbstractNetworkArtworkDataSource *)self _cacheKeyForCatalog:v8 kind:v19 size:?];
    v21 = [v8 cache];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [(MPAbstractNetworkArtworkDataSource *)self fallbackImageArtworkRepresentationCache];
    }

    v38 = v23;

    if (v20)
    {
      [v38 setObject:v12 forKey:v20];
    }
  }

  v9[2](v9, v12, 0);
LABEL_41:
}

void __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setLoadingKey:*(a1 + 40)];
  v2 = [*(*(a1 + 48) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) UUID];
      *buf = 138543618;
      v43 = v4;
      v44 = 2114;
      v45 = v5;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Found cached loading context for key: %{public}@", buf, 0x16u);
    }

    v6 = [(_MPAbstractNetworkArtworkLoadingContext *)v2 catalogIdentifierToCompletionHandlerMap];
    v7 = _Block_copy(*(a1 + 72));
    v8 = [*(a1 + 32) UUID];
    [v6 setObject:v7 forKey:v8];
  }

  else
  {
    v9 = objc_alloc_init(_MPAbstractNetworkArtworkLoadingContext);
    v10 = [(_MPAbstractNetworkArtworkLoadingContext *)v9 catalogIdentifierToCompletionHandlerMap];
    v11 = _Block_copy(*(a1 + 72));
    v12 = [*(a1 + 32) UUID];
    [v10 setObject:v11 forKey:v12];

    v13 = [*(a1 + 48) imageURLSession];
    v14 = [v13 configuration];
    v6 = [v14 URLCache];

    [v6 setRepresentationSize:*(a1 + 56) forRequest:{*(a1 + 80), *(a1 + 88)}];
    objc_initWeak(&location, *(a1 + 32));
    v15 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      *buf = 138543618;
      v43 = v16;
      v44 = 2114;
      v45 = v17;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating data task for request: %{public}@", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E695DF00] now];
    v19 = [*(a1 + 48) imageURLSession];
    v20 = *(a1 + 56);
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_178;
    v30 = &unk_1E7675A38;
    v21 = v18;
    v22 = *(a1 + 48);
    v31 = v21;
    v32 = v22;
    v33 = *(a1 + 32);
    v39 = *(a1 + 80);
    v34 = *(a1 + 56);
    v40 = *(a1 + 96);
    objc_copyWeak(&v38, &location);
    v35 = *(a1 + 64);
    v2 = v9;
    v36 = v2;
    v37 = *(a1 + 40);
    v23 = [v19 msv_dataTaskWithRequest:v20 completionHandler:&v27];

    [(_MPAbstractNetworkArtworkLoadingContext *)v2 setDataTask:v23, v27, v28, v29, v30];
    [*(*(a1 + 48) + 64) setObject:v2 forKey:*(a1 + 40)];
    v24 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      *buf = 138543874;
      v43 = v25;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = v26;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Created data task: %{public}@ for request: %{public}@", buf, 0x20u);
    }

    [v23 resume];
    objc_destroyWeak(&v38);

    objc_destroyWeak(&location);
  }
}

void __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_178(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v53 = [MEMORY[0x1E695DF00] now];
  [v53 timeIntervalSinceDate:*(a1 + 32)];
  v14 = v13;
  v15 = [*(a1 + 40) _artworkRepresentationWithImageFromData:v10 forURLResponse:v11 catalog:*(a1 + 48) size:1 immediateImageDecompressionAllowed:{*(a1 + 96), *(a1 + 104)}];
  v16 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    *buf = 138544386;
    v68 = v17;
    v69 = 2114;
    v70 = v15;
    v71 = 2114;
    v72 = v9;
    v73 = 2114;
    v74 = v18;
    v75 = 2048;
    v76 = v14;
    _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded image representation: %{public}@ with URLSessionDataTask: %{public}@ for request: %{public}@. It took %f seconds to complete", buf, 0x34u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      v51 = v10;
      v52 = v9;
      v20 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        v22 = *(a1 + 56);
        *buf = 138543874;
        v68 = v21;
        v69 = 2114;
        v70 = v11;
        v71 = 2114;
        v72 = v22;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "%{public}@ encountered unexpected NSURLResponse: %{public}@ for request: %{public}@", buf, 0x20u);
      }

      v23 = MEMORY[0x1E69B13D8];
      v24 = *MEMORY[0x1E69B1340];
      v64[0] = @"response";
      v25 = [v11 description];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"nil";
      }

      v64[1] = @"responseClass";
      v65[0] = v27;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = @"nil";
      }

      v65[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      v66 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [v23 snapshotWithDomain:v24 type:@"Bug" subType:@"MPAbstractNetworkArtworkDataSource" context:@"UnexpectedURLResponse" triggerThresholdValues:&stru_1F149ECA8 events:v33 completion:0];

      v19 = 0;
      v10 = v51;
      v9 = v52;
    }

    else
    {
      v19 = 0;
    }

LABEL_17:
    if ([v10 length])
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v19 = [v11 statusCode];
  if (v19 <= 399)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!v12)
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A978];
    v62 = @"response";
    v36 = v11;
    if (!v11)
    {
      v36 = [MEMORY[0x1E695DFB0] null];
    }

    v63 = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v12 = [v34 errorWithDomain:v35 code:v19 userInfo:v37];

    if (!v11)
    {
    }
  }

  v38 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a1 + 40);
    v40 = *(a1 + 56);
    *buf = 138544130;
    v68 = v39;
    v69 = 2114;
    v70 = v9;
    v71 = 2114;
    v72 = v12;
    v73 = 2114;
    v74 = v40;
    _os_log_impl(&dword_1A238D000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error while requesting artwork for NSURLSessionDataTask: %{public}@. %{public}@ for request: %{public}@", buf, 0x2Au);
  }

LABEL_26:
  if (*(a1 + 112) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v42 = [*(a1 + 40) _cacheKeyForCatalog:WeakRetained kind:objc_msgSend(v15 size:{"kind"), *(a1 + 96), *(a1 + 104)}];
    if (v42)
    {
      v43 = *(a1 + 64);
      if (v15)
      {
        [*(a1 + 64) setObject:v15 forKey:v42];
      }

      else
      {
        v44 = [MEMORY[0x1E695DFB0] null];
        [v43 setObject:v44 forKey:v42];
      }
    }
  }

  v45 = *(a1 + 40);
  v46 = v45[4];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_203;
  v54[3] = &unk_1E7675A10;
  v47 = *(a1 + 72);
  v48 = *(a1 + 40);
  v55 = v47;
  v56 = v48;
  v57 = *(a1 + 80);
  v58 = *(a1 + 48);
  v59 = v15;
  v60 = v12;
  v61 = *(a1 + 56);
  v49 = v12;
  v50 = v15;
  [v45 _performAsyncBarrierBlockOnQueue:v46 block:v54];
}

void __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_203(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 64) objectForKey:*(a1 + 48)];

  if (v2 == v3)
  {
    [*(*(a1 + 40) + 64) removeObjectForKey:*(a1 + 48)];
  }

  v4 = [*(a1 + 32) catalogIdentifierToCompletionHandlerMap];
  v5 = [v4 count];

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 56) UUID];
      *buf = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Completion handler for catalog id %{public}@ found in map", buf, 0x16u);
    }

    v9 = [*(a1 + 32) catalogIdentifierToCompletionHandlerMap];
    v10 = [v9 allValues];

    v11 = [*(a1 + 32) catalogIdentifierToCompletionHandlerMap];
    [v11 removeAllObjects];

    v12 = [*(a1 + 40) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_204;
    block[3] = &unk_1E767C780;
    v13 = *(a1 + 40);
    v16 = v10;
    v17 = v13;
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v14 = v10;
    dispatch_async(v12, block);
  }
}

void __99__MPAbstractNetworkArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_204(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);
          v11 = *(a1 + 56);
          v12 = *(a1 + 64);
          *buf = 138544130;
          v18 = v9;
          v19 = 2114;
          v20 = v10;
          v21 = 2114;
          v22 = v11;
          v23 = 2114;
          v24 = v12;
          _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Calling completion with loaded representation: %{public}@ and error: %{public}@ for request: %{public}@", buf, 0x2Au);
        }

        (*(v7 + 16))(v7, *(a1 + 48), *(a1 + 56));
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v4);
  }
}

- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    v11 = [v6 videoCache];
    if (v11)
    {
LABEL_10:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __85__MPAbstractNetworkArtworkDataSource_existingRepresentationOfKind_forArtworkCatalog___block_invoke;
      v17[3] = &unk_1E76759E8;
      v17[4] = self;
      v18 = v7;
      v20 = a3;
      v19 = v11;
      v12 = [(MPAbstractNetworkArtworkDataSource *)self _existingRepresentativeObjectForArtworkCatalog:v18 kind:a3 handler:v17];

      goto LABEL_11;
    }
  }

  else
  {
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_18;
    }

    v8 = [v6 cache];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(MPAbstractNetworkArtworkDataSource *)self fallbackImageArtworkRepresentationCache];
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_11:
  if (a3 == 1 && !v12)
  {
    v13 = [(MPAbstractNetworkArtworkDataSource *)self _bestVideoArtworkRepresentationForCatalog:v7];
    v12 = v13;
    if (v11)
    {
      if (v13)
      {
        v14 = [v13 kind];
        [v12 representationSize];
        v15 = [(MPAbstractNetworkArtworkDataSource *)self _cacheKeyForCatalog:v7 kind:v14 size:?];
        if (v15)
        {
          [v11 setObject:v12 forKey:v15];
        }
      }
    }
  }

LABEL_18:

  return v12;
}

id __85__MPAbstractNetworkArtworkDataSource_existingRepresentationOfKind_forArtworkCatalog___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) _cacheKeyForCatalog:*(a1 + 40) kind:*(a1 + 56) size:?];
  if (v4)
  {
    v5 = [*(a1 + 48) objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
  {

    v5 = 0;
    *a2 = 1;
  }

  return v5;
}

- (void)loadArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5 systemEffectHandler:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = MPArtworkCatalogOriginalSize;
  v13 = a6;
  v14 = [(MPAbstractNetworkArtworkDataSource *)self _requestForCatalog:a4 kind:0 size:v12];
  v15 = [v14 URL];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __129__MPAbstractNetworkArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke;
  v19[3] = &unk_1E76759C0;
  v21 = v11;
  v22 = a3;
  v20 = v15;
  v16 = v13[2];
  v17 = v11;
  v18 = v15;
  v16(v13, v19);
}

void __129__MPAbstractNetworkArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v106[0] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 3)
  {
    v7 = v5;
    if (!v7)
    {
LABEL_63:

      goto LABEL_64;
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v79 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];
    v80 = [v79 URLByAppendingPathComponent:@"Radiosity" isDirectory:1];
    v9 = [*(a1 + 32) absoluteString];
    v10 = *MEMORY[0x1E69B1360];
    v11 = v9;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v86[0] = xmmword_1A273DDA0;
    v86[1] = vaddq_s64(vdupq_n_s64(v10), xmmword_1A273DDB0);
    v87 = v10;
    v88 = v10 + 0x61C8864E7A143579;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    _MSV_XXH_XXH64_update(v86 + 8, [v11 UTF8String], objc_msgSend(v11, "length"));
    memset(&v102[8], 0, 64);
    *v102 = 3001;
    *&v102[8] = _MSV_XXH_XXH64_digest(v86 + 1);
    v103[0] = *v102;
    v103[1] = *&v102[16];
    v103[2] = *&v102[32];
    v103[3] = *&v102[48];
    v104 = *&v102[64];
    image = v7;
    if (*v102 > 3999)
    {
      v12 = v80;
      if (*v102 > 4255)
      {
        if (*v102 == 4256)
        {
          v54 = v103 + 8;
          v55 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v56 = v55;
          for (i = 0; i != 64; i += 2)
          {
            v58 = *v54++;
            v59 = &v55[i];
            *v59 = MSVFastHexStringFromBytes_hexCharacters_55966[v58 >> 4];
            v59[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v58 & 0xF];
          }

          v25 = objc_alloc(MEMORY[0x1E696AEC0]);
          v26 = v56;
          v27 = 64;
        }

        else
        {
          if (*v102 != 4512)
          {
            goto LABEL_67;
          }

          v32 = v103 + 8;
          v33 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v34 = v33;
          for (j = 0; j != 128; j += 2)
          {
            v36 = *v32++;
            v37 = &v33[j];
            *v37 = MSVFastHexStringFromBytes_hexCharacters_55966[v36 >> 4];
            v37[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v36 & 0xF];
          }

          v25 = objc_alloc(MEMORY[0x1E696AEC0]);
          v26 = v34;
          v27 = 128;
        }
      }

      else if (*v102 == 4000)
      {
        v44 = v103 + 8;
        v45 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v46 = v45;
        for (k = 0; k != 32; k += 2)
        {
          v48 = *v44++;
          v49 = &v45[k];
          *v49 = MSVFastHexStringFromBytes_hexCharacters_55966[v48 >> 4];
          v49[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v48 & 0xF];
        }

        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = v46;
        v27 = 32;
      }

      else
      {
        if (*v102 != 4001)
        {
          goto LABEL_67;
        }

        v19 = v103 + 8;
        v20 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v21 = v20;
        for (m = 0; m != 40; m += 2)
        {
          v23 = *v19++;
          v24 = &v20[m];
          *v24 = MSVFastHexStringFromBytes_hexCharacters_55966[v23 >> 4];
          v24[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v23 & 0xF];
        }

        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = v21;
        v27 = 40;
      }
    }

    else
    {
      v12 = v80;
      if (*v102 <= 2999)
      {
        if (*v102 == 1000)
        {
          v38 = *(&v103[0] + 1);
          if (*(&v103[0] + 1))
          {
            v39 = v106 + 1;
            quot = *(&v103[0] + 1);
            do
            {
              v41 = lldiv(quot, 10);
              quot = v41.quot;
              if (v41.rem >= 0)
              {
                LOBYTE(v42) = v41.rem;
              }

              else
              {
                v42 = -v41.rem;
              }

              *(v39 - 2) = v42 + 48;
              v18 = (v39 - 2);
              --v39;
            }

            while (v41.quot);
            if (v38 < 0)
            {
              *(v39 - 2) = 45;
              v18 = (v39 - 2);
            }

            v17 = (v106 - v18);
            goto LABEL_39;
          }

LABEL_68:
          v60 = @"0";
          goto LABEL_51;
        }

        if (*v102 == 2000)
        {
          v13 = DWORD2(v103[0]);
          if (DWORD2(v103[0]))
          {
            v14 = v106;
            do
            {
              v15 = ldiv(v13, 10);
              v13 = v15.quot;
              if (v15.rem >= 0)
              {
                LOBYTE(v16) = v15.rem;
              }

              else
              {
                v16 = -v15.rem;
              }

              *(v14 - 1) = v16 + 48;
              v14 = (v14 - 1);
            }

            while (v15.quot);
            v17 = (v106 - v14);
            v18 = v14;
LABEL_39:
            v43 = CFStringCreateWithBytes(0, v18, v17, 0x8000100u, 0);
LABEL_50:
            v60 = v43;
LABEL_51:

            v61 = [v12 URLByAppendingPathComponent:v60 isDirectory:0];
            v62 = [v61 path];
            v63 = [v8 fileExistsAtPath:v62];

            if ((v63 & 1) == 0)
            {
              v78 = a1;
              [v8 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];
              v64 = UIImagePNGRepresentation(image);
              [v64 writeToURL:v61 atomically:1];
              v101 = *MEMORY[0x1E695DAA8];
              v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
              v66 = [v8 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v65 options:1 error:0];

              if ([v66 count] >= 0x33)
              {
                v76 = v6;
                v77 = v5;
                v67 = [v66 sortedArrayUsingComparator:&__block_literal_global_1593];
                v68 = [v67 subarrayWithRange:{0, objc_msgSend(v67, "count") - 50}];
                v82 = 0u;
                v83 = 0u;
                v84 = 0u;
                v85 = 0u;
                v69 = [v68 countByEnumeratingWithState:&v82 objects:v100 count:16];
                if (v69)
                {
                  v70 = v69;
                  v71 = *v83;
                  do
                  {
                    for (n = 0; n != v70; ++n)
                    {
                      if (*v83 != v71)
                      {
                        objc_enumerationMutation(v68);
                      }

                      [v8 removeItemAtURL:*(*(&v82 + 1) + 8 * n) error:0];
                    }

                    v70 = [v68 countByEnumeratingWithState:&v82 objects:v100 count:16];
                  }

                  while (v70);
                }

                v6 = v76;
                v5 = v77;
              }

              a1 = v78;
              v12 = v80;
            }

            v7 = image;
            goto LABEL_63;
          }

          goto LABEL_68;
        }

LABEL_67:
        v74 = [MEMORY[0x1E696AAA8] currentHandler];
        v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [v74 handleFailureInFunction:v75 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v60 = &stru_1F149ECA8;
        goto LABEL_51;
      }

      if (*v102 == 3000)
      {
        LODWORD(v105[0]) = bswap32(DWORD2(v103[0]));
        v50 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v51 = 0;
        v52 = v50 + 1;
        do
        {
          v53 = *(v105 + v51);
          *(v52 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v53 >> 4];
          *v52 = MSVFastHexStringFromBytes_hexCharacters_55966[v53 & 0xF];
          v52 += 2;
          ++v51;
        }

        while (v51 != 4);
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = v50;
        v27 = 8;
      }

      else
      {
        if (*v102 != 3001)
        {
          goto LABEL_67;
        }

        v105[0] = bswap64(*(&v103[0] + 1));
        v28 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v29 = 0;
        v30 = v28 + 1;
        do
        {
          v31 = *(v105 + v29);
          *(v30 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v31 >> 4];
          *v30 = MSVFastHexStringFromBytes_hexCharacters_55966[v31 & 0xF];
          v30 += 2;
          ++v29;
        }

        while (v29 != 8);
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = v28;
        v27 = 16;
      }
    }

    v43 = [v25 initWithBytesNoCopy:v26 length:v27 encoding:4 freeWhenDone:1];
    goto LABEL_50;
  }

LABEL_64:
  v73 = *(a1 + 40);
  if (v73)
  {
    (*(v73 + 16))(v73, v5, v6);
  }
}

uint64_t __129__MPAbstractNetworkArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DAA8];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v6 compare:v9];
  return v7;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(MPAbstractNetworkArtworkDataSource *)self _requestForCatalog:v8 kind:0 size:MPArtworkCatalogOriginalSize];
  v11 = [v10 URL];

  v12 = 0;
  if (a3 == 3)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];

    v15 = [v14 URLByAppendingPathComponent:@"Radiosity" isDirectory:1];
    v16 = [v11 absoluteString];
    v17 = *MEMORY[0x1E69B1360];
    v18 = v16;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v72[0] = xmmword_1A273DDA0;
    v72[1] = vaddq_s64(vdupq_n_s64(v17), xmmword_1A273DDB0);
    v73 = v17;
    v74 = v17 + 0x61C8864E7A143579;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    _MSV_XXH_XXH64_update(v72 + 8, [v18 UTF8String], objc_msgSend(v18, "length"));
    memset(&v86[8], 0, 64);
    *v86 = 3001;
    *&v86[8] = _MSV_XXH_XXH64_digest(v72 + 1);
    v87[0] = *v86;
    v87[1] = *&v86[16];
    v87[2] = *&v86[32];
    v87[3] = *&v86[48];
    v88 = *&v86[64];
    if (*v86 > 3999)
    {
      if (*v86 > 4255)
      {
        if (*v86 == 4256)
        {
          v60 = v87 + 8;
          v61 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v62 = v61;
          for (i = 0; i != 64; i += 2)
          {
            v64 = *v60++;
            v65 = &v61[i];
            *v65 = MSVFastHexStringFromBytes_hexCharacters_55966[v64 >> 4];
            v65[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v64 & 0xF];
          }

          v31 = objc_alloc(MEMORY[0x1E696AEC0]);
          v32 = v62;
          v33 = 64;
        }

        else
        {
          if (*v86 != 4512)
          {
            goto LABEL_57;
          }

          v38 = v87 + 8;
          v39 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v40 = v39;
          for (j = 0; j != 128; j += 2)
          {
            v42 = *v38++;
            v43 = &v39[j];
            *v43 = MSVFastHexStringFromBytes_hexCharacters_55966[v42 >> 4];
            v43[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v42 & 0xF];
          }

          v31 = objc_alloc(MEMORY[0x1E696AEC0]);
          v32 = v40;
          v33 = 128;
        }
      }

      else if (*v86 == 4000)
      {
        v50 = v87 + 8;
        v51 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v52 = v51;
        for (k = 0; k != 32; k += 2)
        {
          v54 = *v50++;
          v55 = &v51[k];
          *v55 = MSVFastHexStringFromBytes_hexCharacters_55966[v54 >> 4];
          v55[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v54 & 0xF];
        }

        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = v52;
        v33 = 32;
      }

      else
      {
        if (*v86 != 4001)
        {
          goto LABEL_57;
        }

        v25 = v87 + 8;
        v26 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v27 = v26;
        for (m = 0; m != 40; m += 2)
        {
          v29 = *v25++;
          v30 = &v26[m];
          *v30 = MSVFastHexStringFromBytes_hexCharacters_55966[v29 >> 4];
          v30[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v29 & 0xF];
        }

        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = v27;
        v33 = 40;
      }
    }

    else
    {
      if (*v86 <= 2999)
      {
        if (*v86 == 1000)
        {
          v44 = *(&v87[0] + 1);
          if (*(&v87[0] + 1))
          {
            v45 = &v90 + 1;
            quot = *(&v87[0] + 1);
            do
            {
              v47 = lldiv(quot, 10);
              quot = v47.quot;
              if (v47.rem >= 0)
              {
                LOBYTE(v48) = v47.rem;
              }

              else
              {
                v48 = -v47.rem;
              }

              *(v45 - 2) = v48 + 48;
              v24 = (v45 - 2);
              --v45;
            }

            while (v47.quot);
            if (v44 < 0)
            {
              *(v45 - 2) = 45;
              v24 = (v45 - 2);
            }

            v23 = (&v90 - v24);
            goto LABEL_38;
          }

LABEL_58:
          v66 = @"0";
          goto LABEL_50;
        }

        if (*v86 == 2000)
        {
          v19 = DWORD2(v87[0]);
          if (DWORD2(v87[0]))
          {
            v20 = &v90;
            do
            {
              v21 = ldiv(v19, 10);
              v19 = v21.quot;
              if (v21.rem >= 0)
              {
                LOBYTE(v22) = v21.rem;
              }

              else
              {
                v22 = -v21.rem;
              }

              *(v20 - 1) = v22 + 48;
              v20 = (v20 - 1);
            }

            while (v21.quot);
            v23 = (&v90 - v20);
            v24 = v20;
LABEL_38:
            v49 = CFStringCreateWithBytes(0, v24, v23, 0x8000100u, 0);
LABEL_49:
            v66 = v49;
LABEL_50:

            v67 = [v15 URLByAppendingPathComponent:v66 isDirectory:0];
            v68 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v67];
            if ([v68 length])
            {
              v12 = [MEMORY[0x1E69DCAB8] imageWithData:v68];
            }

            else
            {
              v12 = 0;
            }

            goto LABEL_54;
          }

          goto LABEL_58;
        }

LABEL_57:
        v70 = [MEMORY[0x1E696AAA8] currentHandler];
        v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [v70 handleFailureInFunction:v71 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v66 = &stru_1F149ECA8;
        goto LABEL_50;
      }

      if (*v86 == 3000)
      {
        LODWORD(v89[0]) = bswap32(DWORD2(v87[0]));
        v56 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v57 = 0;
        v58 = v56 + 1;
        do
        {
          v59 = *(v89 + v57);
          *(v58 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v59 >> 4];
          *v58 = MSVFastHexStringFromBytes_hexCharacters_55966[v59 & 0xF];
          v58 += 2;
          ++v57;
        }

        while (v57 != 4);
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = v56;
        v33 = 8;
      }

      else
      {
        if (*v86 != 3001)
        {
          goto LABEL_57;
        }

        v89[0] = bswap64(*(&v87[0] + 1));
        v34 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v35 = 0;
        v36 = v34 + 1;
        do
        {
          v37 = *(v89 + v35);
          *(v36 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v37 >> 4];
          *v36 = MSVFastHexStringFromBytes_hexCharacters_55966[v37 & 0xF];
          v36 += 2;
          ++v35;
        }

        while (v35 != 8);
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = v34;
        v33 = 16;
      }
    }

    v49 = [v31 initWithBytesNoCopy:v32 length:v33 encoding:4 freeWhenDone:{1, v72[0]}];
    goto LABEL_49;
  }

LABEL_54:

  return v12;
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  v6 = [v5 conformsToProtocol:&unk_1F1511378];

  if (v6)
  {
    v7 = [v4 token];
  }

  else
  {
    v7 = objc_alloc_init(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier);
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v10 = [(MPAbstractNetworkArtworkDataSource *)self _requestForCatalog:v4 kind:0 size:*MEMORY[0x1E695F060], v9];
    v11 = [v10 URL];
    v12 = [v11 absoluteString];
    [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)v7 setImageArtworkIdentifier:v12];

    v13 = [(MPAbstractNetworkArtworkDataSource *)self _requestForCatalog:v4 kind:1 size:v8, v9];
    v14 = [v13 URL];
    v15 = [v14 absoluteString];
    [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)v7 setVideoArtworkIdentifier:v15];
  }

  return v7;
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [v4 loadingKey];
  [v4 setLoadingKey:0];

  if (v6)
  {
    imageAccessQueue = self->_imageAccessQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__MPAbstractNetworkArtworkDataSource_cancelLoadingRepresentationForArtworkCatalog___block_invoke;
    v8[3] = &unk_1E76800A0;
    v8[4] = self;
    v9 = v5;
    v10 = v6;
    [(MPAbstractNetworkArtworkDataSource *)self _performAsyncBarrierBlockOnQueue:imageAccessQueue block:v8];
  }
}

- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4
{
  v6 = a3;
  v7 = a4;
  -[MPAbstractNetworkArtworkDataSource _bestAvailableSizeForCatalog:kind:](self, "_bestAvailableSizeForCatalog:kind:", v7, [v6 kind]);
  v9 = v8;
  v11 = v10;

  if (!v6 && (v9 == *MEMORY[0x1E695F060] ? (v12 = v11 == *(MEMORY[0x1E695F060] + 8)) : (v12 = 0), v12))
  {
    v15 = 1;
  }

  else
  {
    [v6 representationSize];
    v15 = v14 == v11 && v13 == v9;
  }

  return v15;
}

- (CGSize)bestAvailableSizeForCatalog:(id)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MPAbstractNetworkArtworkDataSource *)self cacheKeyForCatalog:v7 kind:0 size:width, height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)requestForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(MPAbstractNetworkArtworkDataSource *)self requestForCatalog:v8 kind:0 size:width, height];
  }

  else
  {
    v10 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v10 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      [v12 handleFailureInMethod:a2 object:self file:@"MPAbstractNetworkArtworkDataSource.m" lineNumber:306 description:{@"Subclass %@ must implement -%@ defined in %@.", v14, v15, @"[MPAbstractNetworkArtworkDataSource class]"}];
    }

    v9 = 0;
  }

  return v9;
}

- (id)supportedSizesForCatalog:(id)a3
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"MPAbstractNetworkArtworkDataSource.m" lineNumber:297 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPAbstractNetworkArtworkDataSource class]"}];
  }

  return 0;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MPAbstractNetworkArtworkDataSource *)self areRepresentationsOfKind:0 availableForCatalog:v5];
  }

  else
  {
    v7 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      [v9 handleFailureInMethod:a2 object:self file:@"MPAbstractNetworkArtworkDataSource.m" lineNumber:291 description:{@"Subclass %@ must implement -%@ defined in %@.", v11, v12, @"[MPAbstractNetworkArtworkDataSource class]"}];
    }

    v6 = 0;
  }

  return v6;
}

- (void)setVideoArtworkCacheURL:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_videoArtworkCacheURL != v5)
  {
    objc_storeStrong(&self->_videoArtworkCacheURL, a3);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = 0;
      v7 = [(NSURL *)v5 path];
      v8 = [v6 fileExistsAtPath:v7 isDirectory:&v23];

      if (v8)
      {
        if ((v23 & 1) == 0)
        {
          v9 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = [(NSURL *)self->_videoArtworkCacheURL absoluteString];
            *buf = 134218242;
            v25 = self;
            v26 = 2114;
            v27 = v10;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "MPAbstractNetworkArtworkDataSource: %p setVideoArtworkCacheURL: Can't use videoArtworkCacheURL as cache directory [Non-directory file already exists at path] videoArtworkCacheURL=%{public}@", buf, 0x16u);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v22 = 0;
        [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v22];
        v11 = v22;
        if (v11)
        {
          v12 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [(MPAbstractNetworkArtworkDataSource *)self videoArtworkCacheURL];
            v14 = [v13 absoluteString];
            *buf = 134218242;
            v25 = self;
            v26 = 2114;
            v27 = v14;
            _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "MPAbstractNetworkArtworkDataSource: %p setVideoArtworkCacheURL: error creating directory at URL %{public}@", buf, 0x16u);
          }
        }
      }
    }

    v15 = [(MPAbstractNetworkArtworkDataSource *)self videoURLSession];
    v16 = [v15 configuration];
    v6 = [v16 copy];

    [objc_opt_class() _applyVideoCacheURL:v5 toConfiguration:v6];
    v17 = [v6 URLCache];
    [(MPAbstractNetworkArtworkDataSource *)self setVideoURLCache:v17];

    v18 = [(MPAbstractNetworkArtworkDataSource *)self videoURLSession];
    [v18 finishTasksAndInvalidate];

    v19 = MEMORY[0x1E696AF78];
    WeakRetained = objc_loadWeakRetained(&self->_URLSessionDataDelegateProxy);
    v21 = [v19 sessionWithConfiguration:v6 delegate:WeakRetained delegateQueue:0];
    [(MPAbstractNetworkArtworkDataSource *)self setVideoURLSession:v21];

LABEL_15:
  }
}

- (void)prewarmURLSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69E4618]);
  v6 = [MEMORY[0x1E69E4680] activeAccount];
  v7 = [v5 initWithIdentity:v6];

  v8 = [MEMORY[0x1E69E4658] sharedBagProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__MPAbstractNetworkArtworkDataSource_prewarmURLSessionWithCompletion___block_invoke;
  v11[3] = &unk_1E767D258;
  v11[4] = self;
  v12 = v7;
  v13 = v4;
  v9 = v4;
  v10 = v7;
  [v8 getBagForRequestContext:v10 withCompletionHandler:v11];
}

void __70__MPAbstractNetworkArtworkDataSource_prewarmURLSessionWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      *buf = 138543874;
      v27 = v8;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error: %{public}@ fetching the bag for preconnection with requestContext: %{public}@", buf, 0x20u);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v10 = *MEMORY[0x1E69E42F8];
    v11 = [v5 stringForBagKey:*MEMORY[0x1E69E42F8]];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v12];
        [v13 setCachePolicy:1];
        [v13 setAttribution:1];
        v14 = [a1[5] userAgent];
        [v13 setValue:v14 forHTTPHeaderField:*MEMORY[0x1E69E41B0]];

        v15 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = a1[4];
          *buf = 138543618;
          v27 = v16;
          v28 = 2114;
          v29 = v13;
          _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating data task for preconnection with request: %{public}@", buf, 0x16u);
        }

        v17 = [a1[4] imageURLSession];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__MPAbstractNetworkArtworkDataSource_prewarmURLSessionWithCompletion___block_invoke_139;
        v23[3] = &unk_1E7675998;
        v23[4] = a1[4];
        v24 = v13;
        v25 = a1[6];
        v18 = v13;
        v19 = [v17 msv_dataTaskWithRequest:v18 completionHandler:v23];

        [v19 set_preconnect:1];
        [v19 resume];
      }

      else
      {
        v21 = a1[6];
        v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPAbstractNetworkArtworkDataSourceErrorDomain" code:0 debugDescription:{@"Failed to create a valid URL from the value provided by Bag key %@: %@", v10, v11}];
        v21[2](v21, v22);
      }
    }

    else
    {
      v20 = a1[6];
      v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPAbstractNetworkArtworkDataSourceErrorDomain" code:0 debugDescription:{@"Missing key %@ from Bag: %@", v10, v5}];
      v20[2](v20, v12);
    }
  }
}

void __70__MPAbstractNetworkArtworkDataSource_prewarmURLSessionWithCompletion___block_invoke_139(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = a1[5];
      v23 = 138544130;
      v24 = v11;
      v25 = 2114;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = v12;
      v13 = "%{public}@ Encountered error preconnecting with NSURLSessionDataTask: %{public}@. %{public}@ for request: %{public}@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 42;
LABEL_6:
      _os_log_impl(&dword_1A238D000, v14, v15, v13, &v23, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a1[4];
    v18 = a1[5];
    v23 = 138543874;
    v24 = v17;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v18;
    v13 = "%{public}@ Succeeded preconnecting with NSURLSessionDataTask: %{public}@ for request: %{public}@.";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 32;
    goto LABEL_6;
  }

  (*(a1[6] + 16))(a1[6], v8, v19, v20, v21, v22);
}

- (NSCache)fallbackImageArtworkRepresentationCache
{
  if ([(MPAbstractNetworkArtworkDataSource *)self usesFallbackCache])
  {
    v3 = self->_fallbackImageArtworkRepresentationCache;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateURLSessionWithCachePolicy:(unint64_t)a3 cachePath:(id)a4
{
  v6 = a4;
  v7 = [(MPAbstractNetworkArtworkDataSource *)self imageURLSession];
  v8 = [v7 configuration];
  v11 = [v8 copy];

  [objc_opt_class() _applyImageURLCachePolicy:a3 cacheDiskPath:v6 toConfiguration:v11];
  [(NSURLSession *)self->_imageURLSession finishTasksAndInvalidate];
  v9 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v11];
  imageURLSession = self->_imageURLSession;
  self->_imageURLSession = v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v5.receiver = self;
  v5.super_class = MPAbstractNetworkArtworkDataSource;
  [(MPAbstractNetworkArtworkDataSource *)&v5 dealloc];
}

+ (void)_applyVideoCacheURL:(id)a3 toConfiguration:(id)a4
{
  v10 = a3;
  v5 = MEMORY[0x1E696AF18];
  v6 = a4;
  v7 = [v5 alloc];
  if (v10)
  {
    v8 = [v7 initWithMemoryCapacity:83886080 diskCapacity:104857600 directoryURL:v10];
  }

  else
  {
    v8 = [v7 initWithMemoryCapacity:83886080 diskCapacity:104857600 diskPath:0];
  }

  v9 = v8;
  [v8 set_maxCacheableEntrySizeRatio:1.0];
  [v6 setURLCache:v9];
}

+ (void)_applyImageURLCachePolicy:(unint64_t)a3 cacheDiskPath:(id)a4 toConfiguration:(id)a5
{
  v10 = a4;
  v7 = a5;
  [v7 setRequestCachePolicy:a3];
  if (v10)
  {
    v8 = [[_MPArtworkDataSourceURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:v10];
  }

  else
  {
    v8 = objc_alloc_init(_MPArtworkDataSourceURLCache);
  }

  v9 = v8;
  [(NSURLCache *)v8 setMemoryCapacity:0];
  [(NSURLCache *)v9 setDiskCapacity:419430400];
  [v7 setURLCache:v9];
}

@end