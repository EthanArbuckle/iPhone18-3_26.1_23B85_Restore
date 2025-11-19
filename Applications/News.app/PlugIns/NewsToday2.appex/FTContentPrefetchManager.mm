@interface FTContentPrefetchManager
+ (void)initialize;
- (FTContentPrefetchManager)init;
- (void)prefetchContentForBanner:(id)a3 withQualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)prefetchContentForHeadlines:(id)a3 withQualityOfService:(int64_t)a4 completionHandler:(id)a5;
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
    v5 = [v4 path];
    v6 = +[FCNetworkReachability sharedNetworkReachability];
    v7 = [v3 initWithName:@"widget-assets" directory:v5 keyManager:0 avAssetFactory:0 resourceURLGenerator:0 networkBehaviorMonitor:0 networkReachability:v6];

    assetManager = v2->_assetManager;
    v2->_assetManager = v7;
    v9 = v7;

    [(FCAssetManager *)v9 enableFlushingWithFlushingThreshold:1];
  }

  return v2;
}

- (void)prefetchContentForBanner:(id)a3 withQualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = PrefetchLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "prefetching content for widget banner", buf, 2u);
  }

  v10 = dispatch_group_create();
  if ([v7 imageMethod] == 2 && (objc_msgSend(v7, "imageURL"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v7 imageURL];
    v13 = [(FTContentPrefetchManager *)self assetManager];
    v14 = [v13 assetHandleForCKAssetURL:v12 lifetimeHint:0];

    dispatch_group_enter(v10);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100011B48;
    v23[3] = &unk_10010BF00;
    v15 = v14;
    v24 = v15;
    v25 = v7;
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
  v20[2] = sub_100011C50;
  v20[3] = &unk_10010BF28;
  v21 = v15;
  v22 = v8;
  v20[4] = self;
  v18 = v15;
  v19 = v8;
  dispatch_group_notify(v10, v17, v20);
}

- (void)prefetchContentForHeadlines:(id)a3 withQualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v23 = a4;
  v6 = a3;
  v24 = a5;
  v7 = PrefetchLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v40 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "prefetching content for %zd headlines", buf, 0xCu);
  }

  v25 = objc_opt_new();
  v8 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
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
        v15 = [v14 flintDocumentURL];
        if (v15)
        {
          v16 = [(FTContentPrefetchManager *)self assetManager];
          v17 = [v16 assetHandleForCKAssetURL:v15 lifetimeHint:0];

          [v25 setObject:v17 forKeyedSubscript:v15];
          dispatch_group_enter(v8);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100011FC0;
          v30[3] = &unk_10010BF00;
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
  block[2] = sub_1000120C8;
  block[3] = &unk_10010BF28;
  block[4] = self;
  v28 = v25;
  v29 = v24;
  v21 = v25;
  v22 = v24;
  dispatch_group_notify(v8, v20, block);
}

@end