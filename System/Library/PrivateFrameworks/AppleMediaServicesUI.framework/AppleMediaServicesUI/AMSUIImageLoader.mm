@interface AMSUIImageLoader
+ (id)defaultLoader;
- (AMSUIImageLoader)init;
- (BOOL)_isURLBundleResource:(id)resource;
- (BOOL)_isURLEngagementContent:(id)content;
- (BOOL)_isURLSystemImage:(id)image;
- (id)_fetchImageFromCacheWithURL:(id)l;
- (id)_fetchImageWithURL:(id)l searchBundles:(id)bundles atPriority:(int64_t)priority;
- (id)_makeOperationForImageWithURL:(id)l searchBundles:(id)bundles error:(id *)error;
- (id)_makeSystemImageFetchOperationForSystemURL:(id)l error:(id *)error;
- (id)_performLowLatencyOperation:(id)operation;
- (id)fetchImageWithURL:(id)l searchBundles:(id)bundles;
- (void)_cacheImage:(id)image withURL:(id)l;
@end

@implementation AMSUIImageLoader

- (AMSUIImageLoader)init
{
  v17.receiver = self;
  v17.super_class = AMSUIImageLoader;
  v2 = [(AMSUIImageLoader *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSUIAssetQueue);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v5;

    v7 = MEMORY[0x1E696AF78];
    ams_imageConfiguration = [MEMORY[0x1E696AF80] ams_imageConfiguration];
    v9 = [v7 sessionWithConfiguration:ams_imageConfiguration];
    urlSession = v2->_urlSession;
    v2->_urlSession = v9;

    v11 = dispatch_queue_create("com.apple.AppleMediaServicesUI.ImageLoader.workQueue", MEMORY[0x1E69E96A8]);
    workQueue = v2->_workQueue;
    v2->_workQueue = v11;

    fetchQueue = [(AMSUIImageLoader *)v2 fetchQueue];
    [fetchQueue setName:@"com.apple.AppleMediaServicesUI.ImageLoader.fetchQueue"];

    fetchQueue2 = [(AMSUIImageLoader *)v2 fetchQueue];
    [fetchQueue2 setMaxConcurrentOperationCount:4];

    fetchQueue3 = [(AMSUIImageLoader *)v2 fetchQueue];
    [fetchQueue3 setQualityOfService:9];
  }

  return v2;
}

+ (id)defaultLoader
{
  if (defaultLoader_ams_once_token___COUNTER__ != -1)
  {
    +[AMSUIImageLoader defaultLoader];
  }

  v3 = defaultLoader_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __33__AMSUIImageLoader_defaultLoader__block_invoke()
{
  defaultLoader_ams_once_object___COUNTER__ = objc_alloc_init(AMSUIImageLoader);

  return MEMORY[0x1EEE66BB8]();
}

- (id)fetchImageWithURL:(id)l searchBundles:(id)bundles
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (bundles)
  {
    lCopy = l;
    v7 = [(AMSUIImageLoader *)self _fetchImageWithURL:lCopy searchBundles:bundles atPriority:0];
  }

  else
  {
    v8 = MEMORY[0x1E696AAE8];
    lCopy2 = l;
    mainBundle = [v8 mainBundle];
    v14[0] = mainBundle;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v7 = [(AMSUIImageLoader *)self _fetchImageWithURL:lCopy2 searchBundles:v11 atPriority:0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_fetchImageWithURL:(id)l searchBundles:(id)bundles atPriority:(int64_t)priority
{
  lCopy = l;
  bundlesCopy = bundles;
  v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  workQueue = [(AMSUIImageLoader *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke;
  block[3] = &unk_1E7F24E80;
  block[4] = self;
  v19 = lCopy;
  v12 = v10;
  v21 = bundlesCopy;
  priorityCopy = priority;
  v20 = v12;
  v13 = bundlesCopy;
  v14 = lCopy;
  dispatch_async(workQueue, block);

  v15 = v21;
  v16 = v12;

  return v12;
}

void __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _fetchImageFromCacheWithURL:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) finishWithResult:v2];
  }

  else
  {
    v3 = [*(a1 + 32) fetchQueue];
    v4 = [v3 operationWithKey:*(a1 + 40)];

    if (v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v5)
      {
        v5 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        *buf = 138543874;
        v25 = v8;
        v26 = 2114;
        v27 = v9;
        v28 = 2114;
        v29 = v4;
        _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Reprioritizing operation key %{public}@", buf, 0x20u);
      }

      if ([v4 queuePriority] < *(a1 + 64))
      {
        [v4 setQueuePriority:?];
      }

      v10 = *(a1 + 48);
      v11 = [v4 operationPromise];
      [v10 finishWithPromise:v11];
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      v23 = 0;
      v15 = [v12 _makeOperationForImageWithURL:v13 searchBundles:v14 error:&v23];
      v11 = v23;
      if (v11)
      {
        [*(a1 + 48) finishWithError:v11];
      }

      else
      {
        [v15 setOperationPromise:*(a1 + 48)];
        if ([v15 isLowLatency])
        {
          v16 = *(a1 + 48);
          v17 = [*(a1 + 32) _performLowLatencyOperation:v15];
          [v16 finishWithPromise:v17];
        }

        else
        {
          [v15 setQueuePriority:*(a1 + 64)];
          v17 = [*(a1 + 32) fetchQueue];
          [v17 addOperation:v15 withKey:*(a1 + 40)];
        }

        objc_initWeak(buf, *(a1 + 32));
        v18 = *(a1 + 48);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke_20;
        v20[3] = &unk_1E7F24E58;
        v20[4] = *(a1 + 32);
        objc_copyWeak(&v22, buf);
        v21 = *(a1 + 40);
        [v18 addSuccessBlock:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke_20(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke_2;
  block[3] = &unk_1E7F24E30;
  objc_copyWeak(&v9, a1 + 6);
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_barrier_async(v4, block);

  objc_destroyWeak(&v9);
}

void __64__AMSUIImageLoader__fetchImageWithURL_searchBundles_atPriority___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _cacheImage:*(a1 + 32) withURL:*(a1 + 40)];
}

- (id)_performLowLatencyOperation:(id)operation
{
  operationCopy = operation;
  workQueue = [(AMSUIImageLoader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  [operationCopy setOperationPromise:v6];
  [operationCopy main];

  return v6;
}

- (BOOL)_isURLBundleResource:(id)resource
{
  scheme = [resource scheme];
  v4 = [scheme isEqualToString:@"resource"];

  return v4;
}

- (BOOL)_isURLEngagementContent:(id)content
{
  scheme = [content scheme];
  v4 = [scheme isEqualToString:@"amsc"];

  return v4;
}

- (id)_makeSystemImageFetchOperationForSystemURL:(id)l error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(AMSUIImageLoader *)self _isURLSystemImage:lCopy])
  {
    host = [lCopy host];
    stringByRemovingPercentEncoding = [host stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
      v10 = v9;
      if (v9)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        queryItems = [v9 queryItems];
        v12 = [queryItems countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v25 = v10;
          v14 = *v27;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(queryItems);
              }

              v16 = *(*(&v26 + 1) + 8 * i);
              name = [v16 name];
              v18 = [name isEqualToString:@"variableValue"];

              if (v18)
              {
                v21 = objc_alloc(MEMORY[0x1E696AD98]);
                value = [v16 value];
                [value doubleValue];
                v19 = [v21 initWithDouble:?];

                goto LABEL_17;
              }
            }

            v13 = [queryItems countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v19 = 0;
LABEL_17:
          v10 = v25;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = [[AMSUISystemImageFetchOperation alloc] initWithSystemImageName:stringByRemovingPercentEncoding variableValue:v19 compatibleWithTraitCollection:0];
    }

    else if (error)
    {
      AMSError();
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_makeOperationForImageWithURL:(id)l searchBundles:(id)bundles error:(id *)error
{
  lCopy = l;
  bundlesCopy = bundles;
  if ([(AMSUIImageLoader *)self _isURLEngagementContent:lCopy])
  {
    v10 = [[AMSUIContentImageFetchOperation alloc] initWithURL:lCopy];
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__AMSUIImageLoader__makeOperationForImageWithURL_searchBundles_error___block_invoke;
    v22[3] = &unk_1E7F24EA8;
    objc_copyWeak(&v24, &location);
    v23 = bundlesCopy;
    [(AMSUIContentImageFetchOperation *)v10 setFallbackBlock:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  if ([(AMSUIImageLoader *)self _isURLSystemImage:lCopy])
  {
    v10 = [(AMSUIImageLoader *)self _makeSystemImageFetchOperationForSystemURL:lCopy error:error];
    goto LABEL_14;
  }

  if ([(AMSUIImageLoader *)self _isURLBundleResource:lCopy])
  {
    host = [lCopy host];
    stringByRemovingPercentEncoding = [host stringByRemovingPercentEncoding];

    if (!stringByRemovingPercentEncoding)
    {
      if (error)
      {
        AMSError();
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_13;
    }

    v13 = [[AMSUIBundleImageFetchOperation alloc] initWithImageName:stringByRemovingPercentEncoding searchBundles:bundlesCopy compatibleWithTraitCollection:0];
LABEL_12:
    v10 = v13;
LABEL_13:

    goto LABEL_14;
  }

  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {

LABEL_11:
    v17 = [AMSUINetworkImageFetchOperation alloc];
    stringByRemovingPercentEncoding = [(AMSUIImageLoader *)self urlSession];
    v13 = [(AMSUINetworkImageFetchOperation *)v17 initWithURL:lCopy URLSession:stringByRemovingPercentEncoding];
    goto LABEL_12;
  }

  scheme2 = [lCopy scheme];
  v16 = [scheme2 isEqualToString:@"https"];

  if (v16)
  {
    goto LABEL_11;
  }

  if (error)
  {
    v19 = MEMORY[0x1E696AEC0];
    scheme3 = [lCopy scheme];
    v21 = [v19 stringWithFormat:@"%@ scheme is unsupported", scheme3];
    *error = AMSError();
  }

  v10 = 0;
LABEL_14:

  return v10;
}

id __70__AMSUIImageLoader__makeOperationForImageWithURL_searchBundles_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _fetchImageWithURL:v3 searchBundles:*(a1 + 32) atPriority:0];

  return v5;
}

- (void)_cacheImage:(id)image withURL:(id)l
{
  lCopy = l;
  imageCopy = image;
  imageCache = [(AMSUIImageLoader *)self imageCache];
  [imageCache setObject:imageCopy forKey:lCopy];
}

- (id)_fetchImageFromCacheWithURL:(id)l
{
  lCopy = l;
  workQueue = [(AMSUIImageLoader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  imageCache = [(AMSUIImageLoader *)self imageCache];
  v7 = [imageCache objectForKey:lCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isURLSystemImage:(id)image
{
  scheme = [image scheme];
  v4 = [scheme isEqualToString:@"systemimage"];

  return v4;
}

@end