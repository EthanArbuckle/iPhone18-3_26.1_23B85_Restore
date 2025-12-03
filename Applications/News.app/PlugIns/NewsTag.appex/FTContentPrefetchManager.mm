@interface FTContentPrefetchManager
+ (void)initialize;
- (FTContentPrefetchManager)init;
- (void)prefetchContentForBanner:(id)banner withQualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)prefetchContentForHeadlines:(id)headlines withQualityOfService:(int64_t)service completionHandler:(id)handler;
@end

@implementation FTContentPrefetchManager

+ (void)initialize
{
  v3 = +[NSFileManager defaultManager];
  v2 = FCURLForLegacyWidgetReferralItems();
  [v3 removeItemAtURL:v2 error:0];
}

- (FTContentPrefetchManager)init
{
  v11.receiver = self;
  v11.super_class = FTContentPrefetchManager;
  v2 = [(FTContentPrefetchManager *)&v11 init];
  if (v2)
  {
    v3 = [FCAssetManager alloc];
    v4 = FCURLForContainerizedUserAccountCachesDirectory();
    path = [v4 path];
    v6 = +[FCNetworkReachability sharedNetworkReachability];
    v7 = [v3 initWithName:@"widget-assets" directory:path keyManager:0 avAssetFactory:0 resourceURLGenerator:0 networkBehaviorMonitor:0 networkReachability:v6];

    assetManager = v2->_assetManager;
    v2->_assetManager = v7;
    v9 = v7;

    [(FCAssetManager *)v9 enableFlushingWithFlushingThreshold:1];
  }

  return v2;
}

- (void)prefetchContentForBanner:(id)banner withQualityOfService:(int64_t)service completionHandler:(id)handler
{
  bannerCopy = banner;
  handlerCopy = handler;
  v9 = PrefetchLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "prefetching content for widget banner", buf, 2u);
  }

  v10 = dispatch_group_create();
  if ([bannerCopy imageMethod] == 2 && (objc_msgSend(bannerCopy, "imageURL"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    imageURL = [bannerCopy imageURL];
    assetManager = [(FTContentPrefetchManager *)self assetManager];
    v14 = [assetManager assetHandleForCKAssetURL:imageURL lifetimeHint:0];

    dispatch_group_enter(v10);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100011EA8;
    v23[3] = &unk_1000D7298;
    v15 = v14;
    v24 = v15;
    v25 = bannerCopy;
    v26 = v10;
    v16 = [v15 downloadIfNeededWithCompletion:v23];
  }

  else
  {
    v15 = 0;
  }

  v17 = FCDispatchQueueForQualityOfService();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100011FB0;
  v20[3] = &unk_1000D72C0;
  v21 = v15;
  v22 = handlerCopy;
  v20[4] = self;
  v18 = v15;
  v19 = handlerCopy;
  dispatch_group_notify(v10, v17, v20);
}

- (void)prefetchContentForHeadlines:(id)headlines withQualityOfService:(int64_t)service completionHandler:(id)handler
{
  serviceCopy = service;
  headlinesCopy = headlines;
  handlerCopy = handler;
  v7 = PrefetchLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v40 = [headlinesCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "prefetching content for %zd headlines", buf, 0xCu);
  }

  v25 = objc_opt_new();
  v8 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = headlinesCopy;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        flintDocumentURL = [v14 flintDocumentURL];
        if (flintDocumentURL)
        {
          assetManager = [(FTContentPrefetchManager *)self assetManager];
          v17 = [assetManager assetHandleForCKAssetURL:flintDocumentURL lifetimeHint:0];

          [v25 setObject:v17 forKeyedSubscript:flintDocumentURL];
          dispatch_group_enter(v8);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100012320;
          v30[3] = &unk_1000D7298;
          v31 = v17;
          v32 = v14;
          v33 = v8;
          v18 = v17;
          v19 = [v18 downloadIfNeededWithCompletion:v30];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  v20 = FCDispatchQueueForQualityOfService();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012428;
  block[3] = &unk_1000D72C0;
  block[4] = self;
  v28 = v25;
  v29 = handlerCopy;
  v21 = v25;
  v22 = handlerCopy;
  dispatch_group_notify(v8, v20, block);
}

@end