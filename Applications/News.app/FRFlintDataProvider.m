@interface FRFlintDataProvider
- (BOOL)areFontsLocallyAvailable;
- (BOOL)isDocumentLocallyAvailable;
- (BOOL)isThumbnailAvailableInDocument;
- (FRFlintDataProvider)initWithANFContent:(id)a3 headline:(id)a4 resourceManager:(id)a5 cloudContext:(id)a6 embedConfigurationManager:(id)a7;
- (id)_loadAssetURLsWithCompletionBlock:(id)a3;
- (id)_loadAssetsWithCompletionBlock:(id)a3;
- (id)_loadFontsWithCompletionBlock:(id)a3;
- (id)_loadJSONWithCompletionBlock:(id)a3;
- (id)_loadLinkedContentWithCompletionBlock:(id)a3;
- (id)_resourceIDFromResourceURL:(id)a3;
- (id)fallbackResourceForImageRequest:(id)a3 originalResource:(id)a4;
- (id)headlineForIdentifier:(id)a3;
- (id)imageResourceResponseForFileURL:(id)a3 perserveColorSpace:(BOOL)a4 withSize:(CGSize)a5 andQuality:(unint64_t)a6;
- (id)loadAssetURLsWithCompletionBlock:(id)a3;
- (id)loadAssetsWithCompletionBlock:(id)a3;
- (id)loadContextWithCompletionBlock:(id)a3;
- (id)loadFontsWithCompletionBlock:(id)a3;
- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4;
- (id)loadJSONWithCompletionBlock:(id)a3;
- (id)loadLinkedContentWithCompletionBlock:(id)a3;
- (id)translateURL:(id)a3;
- (void)dealloc;
- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5;
- (void)initializeLoadingGroup;
- (void)resetFailedDownloads;
- (void)setCurrentRelativePriority:(int64_t)a3;
@end

@implementation FRFlintDataProvider

- (FRFlintDataProvider)initWithANFContent:(id)a3 headline:(id)a4 resourceManager:(id)a5 cloudContext:(id)a6 embedConfigurationManager:(id)a7
{
  v34 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000708BC();
  }

  v35.receiver = self;
  v35.super_class = FRFlintDataProvider;
  v17 = [(FRFlintDataProvider *)&v35 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_anfContent, a3);
    objc_storeStrong(&v18->_headline, a4);
    objc_storeStrong(&v18->_resourceManager, a5);
    objc_storeStrong(&v18->_embedConfigurationManager, a7);
    v19 = [NUArticleResourceURLTranslator alloc];
    v20 = [v15 appConfigurationManager];
    v21 = [v19 initWithAppConfigurationManager:v20];
    resourceURLTranslator = v18->_resourceURLTranslator;
    v18->_resourceURLTranslator = v21;

    v23 = objc_alloc_init(NSOperationQueue);
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v23;

    [(NSOperationQueue *)v18->_operationQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v18->_operationQueue setQualityOfService:17];
    v25 = objc_alloc_init(NSMutableDictionary);
    resourcesByID = v18->_resourcesByID;
    v18->_resourcesByID = v25;

    v27 = [[NFUnfairLock alloc] initWithOptions:1];
    resourcesLock = v18->_resourcesLock;
    v18->_resourcesLock = v27;

    v29 = +[NSMutableArray array];
    fontResources = v18->_fontResources;
    v18->_fontResources = v29;

    v31 = +[NSMutableArray array];
    fontsToRegister = v18->_fontsToRegister;
    v18->_fontsToRegister = v31;

    objc_storeStrong(&v18->_cloudContext, a6);
    [(FRFlintDataProvider *)v18 initializeLoadingGroup];
  }

  return v18;
}

- (void)initializeLoadingGroup
{
  v9 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadJSONWithCompletionBlock:"];
  v3 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadFontsWithCompletionBlock:"];
  v4 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetURLsWithCompletionBlock:"];
  v5 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetsWithCompletionBlock:"];
  v6 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadLinkedContentWithCompletionBlock:"];
  v7 = [[FRFlintDataLoadingGroup alloc] initWithLoadJSONOnce:v9 loadFontsOnce:v3 loadAssetURLsOnce:v4 loadAssetsOnce:v5 loadLinkedContentOnce:v6];
  loadingGroup = self->_loadingGroup;
  self->_loadingGroup = v7;
}

- (void)dealloc
{
  v3 = [(FRFlintDataProvider *)self resourcesLock];
  [v3 lock];

  v4 = [(FRFlintDataProvider *)self fontResources];
  v5 = [v4 copy];

  v6 = [(FRFlintDataProvider *)self resourcesLock];
  [v6 unlock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 fileURL];
          [FRFont unregisterFontWithURL:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14.receiver = self;
  v14.super_class = FRFlintDataProvider;
  [(FRFlintDataProvider *)&v14 dealloc];
}

- (id)loadContextWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100043CF0;
  v30[3] = &unk_1000C18D0;
  v7 = v6;
  v31 = v7;
  v8 = [(FRFlintDataProvider *)self loadJSONWithCompletionBlock:v30];
  dispatch_group_enter(v7);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100043CF8;
  v28[3] = &unk_1000C1920;
  v28[4] = self;
  v9 = v7;
  v29 = v9;
  v10 = [(FRFlintDataProvider *)self loadFontsWithCompletionBlock:v28];
  dispatch_group_enter(v9);
  v11 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(FRFlintDataProvider *)self embedConfigurationManager];
    *buf = 134218240;
    v33 = self;
    v34 = 2048;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%p will fetch embed configuration from manager=%p", buf, 0x16u);
  }

  v14 = [(FRFlintDataProvider *)self embedConfigurationManager];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100043F94;
  v26[3] = &unk_1000C4A60;
  v26[4] = self;
  v15 = v9;
  v27 = v15;
  [v14 fetchEmbedConfigurationWithCompletion:v26];

  dispatch_group_enter(v15);
  v16 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%p will fetch linked content", buf, 0xCu);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100044044;
  v24[3] = &unk_1000C1920;
  v24[4] = self;
  v17 = v15;
  v25 = v17;
  v18 = [(FRFlintDataProvider *)self loadLinkedContentWithCompletionBlock:v24];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000440F4;
  block[3] = &unk_1000C1E48;
  block[4] = self;
  v23 = v4;
  v19 = v4;
  dispatch_group_notify(v17, &_dispatch_main_q, block);
  if (v8)
  {
    [v5 addObject:v8];
  }

  if (v10)
  {
    [v5 addObject:v10];
  }

  v20 = [FCGroupCancelHandler groupCancelHandlerWithCancelHandlers:v5];

  return v20;
}

- (id)loadJSONWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self loadingGroup];
  v6 = [v5 loadJSONOnce];
  v7 = [v6 executeWithCompletionHandler:v4];

  return v7;
}

- (id)loadFontsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self loadingGroup];
  v6 = [v5 loadFontsOnce];
  v7 = FCDispatchQueueForQualityOfService();
  v8 = [v6 executeWithCallbackQueue:v7 completionHandler:v4];

  return v8;
}

- (id)loadAssetURLsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self loadingGroup];
  v6 = [v5 loadJSONOnce];
  v7 = [v6 finishedExecuting];

  if (v7)
  {
    v8 = [v5 loadAssetURLsOnce];
    v9 = [v8 executeWithCompletionHandler:v4];
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v4);
    v9 = 0;
  }

  return v9;
}

- (id)loadAssetsWithCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100009BD8;
  v16[4] = sub_100009F40;
  v17 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004452C;
  v12[3] = &unk_1000C4A88;
  objc_copyWeak(&v15, &location);
  v5 = v4;
  v13 = v5;
  v14 = v16;
  [(FRFlintDataProvider *)self loadAssetURLsWithCompletionBlock:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004462C;
  v9[3] = &unk_1000C3550;
  v6 = v11 = v16;
  v10 = v6;
  v7 = [FCCancelHandler cancelHandlerWithBlock:v9];

  objc_destroyWeak(&v15);
  _Block_object_dispose(v16, 8);

  objc_destroyWeak(&location);

  return v7;
}

- (id)loadLinkedContentWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self loadingGroup];
  v6 = [v5 loadLinkedContentOnce];
  v7 = [v6 executeWithCompletionHandler:v4];

  return v7;
}

- (void)resetFailedDownloads
{
  +[NSThread isMainThread];
  v3 = [(FRFlintDataProvider *)self loadingGroup];
  v4 = [v3 loadJSONOnce];
  v5 = [v4 finishedExecutingWithFailure];

  v6 = [v3 loadFontsOnce];
  v7 = [v6 finishedExecutingWithFailure];

  v8 = [v3 loadAssetURLsOnce];
  v9 = [v8 finishedExecutingWithFailure];

  v10 = [v3 loadAssetsOnce];
  v11 = [v10 finishedExecutingWithFailure];

  v12 = [v3 loadLinkedContentOnce];
  v13 = [v12 finishedExecutingWithFailure];

  if ((v5 & 1) == 0 && (v7 & 1) == 0 && (v9 & 1) == 0 && !v11)
  {
    goto LABEL_17;
  }

  v37 = v13;
  v14 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(FRFlintDataProvider *)self anfContent];
    v17 = [v16 anfDocumentAssetHandles];
    v18 = [v17 firstObject];
    v19 = [v18 remoteURL];
    *buf = 134218242;
    v40 = self;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p retrying failed downloads for Flint article with JSON URL %@", buf, 0x16u);
  }

  v20 = [v3 loadJSONOnce];
  v38 = [v3 loadFontsOnce];
  v21 = [v3 loadAssetURLsOnce];
  v22 = [v3 loadAssetsOnce];
  v23 = [v3 loadLinkedContentOnce];
  if (v5)
  {
    v24 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadJSONWithCompletionBlock:"];
    v25 = v20;
    v26 = v5;
    v27 = v9;
    v28 = v22;
    v29 = v24;

    [(FRFlintDataProvider *)self setError:0];
    v30 = v29;
    v22 = v28;
    v9 = v27;
    v5 = v26;
    v20 = v30;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    v31 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadFontsWithCompletionBlock:"];

    v38 = v31;
  }

LABEL_12:
  if (v37)
  {
    v32 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadLinkedContentWithCompletionBlock:"];

    v23 = v32;
  }

  if ((v5 | v9))
  {
    v33 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetURLsWithCompletionBlock:"];

    v21 = v33;
  }

  v34 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetsWithCompletionBlock:"];

  v35 = [(FRFlintDataProvider *)self relativePriority];
  [v20 setRelativePriority:v35];
  [v38 setRelativePriority:v35];
  [v21 setRelativePriority:v35];
  [v34 setRelativePriority:v35];
  [v23 setRelativePriority:v35];
  v36 = [[FRFlintDataLoadingGroup alloc] initWithLoadJSONOnce:v20 loadFontsOnce:v38 loadAssetURLsOnce:v21 loadAssetsOnce:v34 loadLinkedContentOnce:v23];
  [(FRFlintDataProvider *)self setLoadingGroup:v36];

LABEL_17:
}

- (void)setCurrentRelativePriority:(int64_t)a3
{
  +[NSThread isMainThread];
  [(FRFlintDataProvider *)self setRelativePriority:a3];
  v5 = [(FRFlintDataProvider *)self loadingGroup];
  v6 = [v5 loadJSONOnce];
  [v6 setRelativePriority:a3];

  v7 = [(FRFlintDataProvider *)self loadingGroup];
  v8 = [v7 loadFontsOnce];
  [v8 setRelativePriority:a3];

  v9 = [(FRFlintDataProvider *)self loadingGroup];
  v10 = [v9 loadAssetURLsOnce];
  [v10 setRelativePriority:a3];

  v11 = [(FRFlintDataProvider *)self loadingGroup];
  v12 = [v11 loadAssetsOnce];
  [v12 setRelativePriority:a3];

  v14 = [(FRFlintDataProvider *)self loadingGroup];
  v13 = [v14 loadLinkedContentOnce];
  [v13 setRelativePriority:a3];
}

- (id)_loadJSONWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if ([(FRFlintDataProvider *)self isDocumentLocallyAvailable])
    {
      v7 = @"load cached";
    }

    else
    {
      v7 = @"download";
    }

    v8 = [(FRFlintDataProvider *)self anfContent];
    v9 = [v8 anfDocumentAssetHandles];
    v10 = [v9 firstObject];
    v11 = [v10 uniqueKey];
    *buf = 134218498;
    v20 = self;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p will %{public}@ JSON %{public}@", buf, 0x20u);
  }

  v12 = [(FRFlintDataProvider *)self anfContent];
  v13 = [(FRFlintDataProvider *)self relativePriority];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100044DE4;
  v17[3] = &unk_1000C4AD8;
  v17[4] = self;
  v18 = v4;
  v14 = v4;
  v15 = [v12 fetchANFDocumentDataProviderWithPriority:v13 completion:v17];

  return v15;
}

- (id)_loadFontsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(FRFlintDataProvider *)self areFontsLocallyAvailable];
    v8 = @"download";
    if (v7)
    {
      v8 = @"load cached";
    }

    *buf = 134218242;
    v24 = self;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p will %{public}@ fonts", buf, 0x16u);
  }

  v9 = [(FRFlintDataProvider *)self anfContent];
  v10 = [v9 fontResourceIDs];

  if ([v10 count])
  {
    v11 = [(FRFlintDataProvider *)self resourceManager];
    v12 = [(FRFlintDataProvider *)self relativePriority];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100045510;
    v20[3] = &unk_1000C4B68;
    v20[4] = self;
    v21 = v10;
    v22 = v4;
    v13 = v4;
    v14 = [v11 fetchFontResourcesWithIdentifiers:v21 downloadAssets:1 relativePriority:v12 completionBlock:v20];
  }

  else
  {
    v15 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p requires no fonts", buf, 0xCu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004582C;
    v18[3] = &unk_1000C3098;
    v19 = v4;
    v16 = v4;
    dispatch_async(&_dispatch_main_q, v18);

    v14 = 0;
  }

  return v14;
}

- (id)_loadAssetURLsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self context];

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070A28();
  }

  v6 = [(FRFlintDataProvider *)self context];

  v7 = FRArticleLog;
  if (v6)
  {
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p will load asset URLs", buf, 0xCu);
    }

    v8 = [(FRFlintDataProvider *)self resourceManager];
    v9 = [(FRFlintDataProvider *)self requiredResourceIDs];
    v10 = [(FRFlintDataProvider *)self relativePriority];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100045AE4;
    v20[3] = &unk_1000C4B90;
    v20[4] = self;
    v21 = v4;
    v11 = [v8 fetchResourcesWithIdentifiers:v9 downloadAssets:0 relativePriority:v10 callBackQueue:&_dispatch_main_q completionBlock:v20];
  }

  else
  {
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
    {
      sub_100070B08(self, v7);
    }

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100045D24;
    v18 = &unk_1000C3098;
    v19 = v4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100045D38;
    v13[3] = &unk_1000C3098;
    v14 = v19;
    dispatch_async(&_dispatch_main_q, v13);

    v11 = 0;
    v8 = v19;
  }

  return v11;
}

- (id)_loadAssetsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100009BD8;
  v25 = sub_100009F40;
  v26 = 0;
  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p will download assets", buf, 0xCu);
  }

  v6 = [(FRFlintDataProvider *)self resourcesLock];
  [v6 lock];

  v7 = [(FRFlintDataProvider *)self resourcesByID];
  v8 = [v7 copy];
  v9 = v22[5];
  v22[5] = v8;

  v10 = [(FRFlintDataProvider *)self resourcesLock];
  [v10 unlock];

  v11 = [v22[5] allValues];
  v12 = [v11 fc_arrayByTransformingWithBlock:&stru_1000C4BB0];

  v13 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v12];
  [v13 setPurpose:FCOperationPurposeArticle];
  [v13 setQualityOfService:25];
  [v13 setRelativePriority:{-[FRFlintDataProvider relativePriority](self, "relativePriority")}];
  v14 = &_dispatch_main_q;
  [v13 setFetchCompletionQueue:&_dispatch_main_q];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000460AC;
  v18[3] = &unk_1000C4BF8;
  v20 = &v21;
  v18[4] = self;
  v15 = v4;
  v19 = v15;
  [v13 setFetchCompletionBlock:v18];
  v16 = +[NSOperationQueue fc_sharedConcurrentQueue];
  [v16 addOperation:v13];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)_loadLinkedContentWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self headline];
  v6 = [v5 linkedArticleIDs];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [FCArticleHeadlinesFetchOperation alloc];
    v9 = [(FRFlintDataProvider *)self cloudContext];
    v10 = [(FRFlintDataProvider *)self headline];
    v11 = [v10 linkedArticleIDs];
    v12 = [v8 initWithContext:v9 articleIDs:v11 ignoreCacheForArticleIDs:0];

    [v12 setQualityOfService:17];
    [v12 setRelativePriority:1];
    [v12 setFetchCompletionQueue:&_dispatch_main_q];
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000465E4;
    v18 = &unk_1000C4C48;
    objc_copyWeak(&v20, &location);
    v19 = v4;
    [v12 setFetchCompletionBlock:&v15];
    v13 = [NSOperationQueue fc_sharedConcurrentQueue:v15];
    [v13 addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100046540;
    v22[3] = &unk_1000C4C20;
    v23 = v4;
    v12 = sub_100046540(v22);
  }

  return v12;
}

- (id)_resourceIDFromResourceURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"asset"])
  {
    v5 = [v3 host];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fileURLForURL:(id)a3 onCompletion:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:v8];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100046A34;
  v16[3] = &unk_1000C4C98;
  objc_copyWeak(&v21, &location);
  v12 = v10;
  v19 = v12;
  v13 = v11;
  v17 = v13;
  v18 = self;
  v14 = v9;
  v20 = v14;
  v15 = [(FRFlintDataProvider *)self loadAssetURLsWithCompletionBlock:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (id)translateURL:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self resourceURLTranslator];
  v6 = [v5 translateFileURLForURL:v4];

  return v6;
}

- (id)loadImagesForImageRequest:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  +[NSThread isMainThread];
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070B80();
  }

  v9 = +[NSMutableArray array];
  group = dispatch_group_create();
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = sub_100009BD8;
  v81[4] = sub_100009F40;
  v82 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10004745C;
  v73[3] = &unk_1000C4CC0;
  v75 = v81;
  v76 = &v77;
  v45 = v8;
  v74 = v45;
  v46 = objc_retainBlock(v73);
  v47 = [v7 qualities];
  if (([v7 qualities] & 2) != 0)
  {
    v11 = [(FRFlintDataProvider *)self thumbnailImage];
    if (v11 || ([(FRFlintDataProvider *)self thumbnailAssetHandle], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(FRFlintDataProvider *)self shouldReturnThumbnail];
      if (v11)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:
  v12 = [v7 imageIdentifier];
  v13 = [(FRFlintDataProvider *)self context];
  v14 = [v13 documentController];
  v15 = [v14 metadata];
  v16 = [v15 thumbnailImageIdentifier];
  v17 = [v12 isEqualToString:v16];

  v18 = [v7 URL];
  v19 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:v18];

  v20 = [(FRFlintDataProvider *)self resourcesByID];
  v21 = v9;
  v22 = [v20 objectForKey:v19];

  v23 = [v22 isOnDisk];
  if (((v10 & v17 | v23) & 1) != 0 && (v78[3] & 1) == 0)
  {
    [v7 size];
    v25 = v24;
    v27 = v26;
    if (v23)
    {
      v28 = [v22 fileURL];
      v29 = 4;
    }

    else
    {
      v28 = 0;
      v29 = 2;
    }

    v30 = +[FRAnimationHelpers synchronousImageLoadingEnabled];
    dispatch_group_enter(group);
    if (v30)
    {
      if ((v78[3] & 1) == 0)
      {
        if ((v29 & 2) != 0)
        {
          v31 = objc_alloc_init(SXImageResourceResponse);
          v33 = [(FRFlintDataProvider *)self thumbnailImage];
          [v31 setImage:v33];

          [v31 setImageQuality:v29];
        }

        else
        {
          v31 = -[FRFlintDataProvider imageResourceResponseForFileURL:perserveColorSpace:withSize:andQuality:](self, "imageResourceResponseForFileURL:perserveColorSpace:withSize:andQuality:", v28, [v7 preserveColorspace], v29, v25, v27);
        }

        if (v31)
        {
          [v21 addObject:v31];
        }

        v34 = [v7 loadingBlock];

        if (v34)
        {
          v35 = [v7 loadingBlock];
          (v35)[2](v35, v31);
        }
      }

      dispatch_group_leave(group);
    }

    else
    {
      v32 = [(FRFlintDataProvider *)self operationQueue];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000474D0;
      v64[3] = &unk_1000C4CE8;
      v69 = &v77;
      v70 = v29;
      v64[4] = self;
      v65 = v28;
      v66 = v7;
      v71 = v25;
      v72 = v27;
      v67 = v21;
      v68 = group;
      [v32 addOperationWithBlock:v64];
    }
  }

  dispatch_group_enter(group);
  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100047724;
  v52[3] = &unk_1000C4D88;
  objc_copyWeak(&v60, &location);
  v61 = (v47 & 4) != 0;
  v62 = v23;
  v36 = v19;
  v58 = &v77;
  v59 = v81;
  v53 = v36;
  v54 = self;
  v37 = v7;
  v55 = v37;
  v38 = v21;
  v56 = v38;
  v39 = group;
  v57 = v39;
  v40 = [(FRFlintDataProvider *)self loadAssetURLsWithCompletionBlock:v52];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047CE4;
  block[3] = &unk_1000C1E48;
  v41 = v45;
  v51 = v41;
  v42 = v38;
  v50 = v42;
  dispatch_group_notify(v39, &_dispatch_main_q, block);
  v43 = [v46 copy];

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(v81, 8);

  return v43;
}

- (id)imageResourceResponseForFileURL:(id)a3 perserveColorSpace:(BOOL)a4 withSize:(CGSize)a5 andQuality:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = [NSData dataWithContentsOfURL:v9];
  v11 = +[SXImageDecodingTools sharedInstance];
  v12 = [v11 dataIsAnimatedImage:v10];

  v13 = +[SXImageDecodingTools sharedInstance];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 loadAnimatedImageFromImageData:v10 size:{width, height}];

    v16 = objc_alloc_init(SXAnimatedImageResourceResponse);
    [v16 setAnimatedImage:v15];
  }

  else
  {
    v15 = [v13 imageFromData:v10 size:{width, height}];

    v16 = objc_alloc_init(SXImageResourceResponse);
    [v16 setImage:v15];
  }

  [v16 setFileURL:v9];

  [v16 setImageQuality:a6];

  return v16;
}

- (id)fallbackResourceForImageRequest:(id)a3 originalResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FRFlintDataProvider *)self cloudContext];
  v9 = [v8 networkReachability];
  v10 = [v9 isNetworkReachable];

  if (v10)
  {
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1000480C0;
    v33 = &unk_1000C3B88;
    v34 = v7;
    v11 = v34;
    v12 = v11;
  }

  else
  {
    v13 = [(FRFlintDataProvider *)self context];
    v14 = [v13 documentController];
    v25 = v6;
    v15 = [v6 imageIdentifier];
    v11 = [v14 allResourcesForImageIdentifier:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v11 reverseObjectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) URL];
          v22 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:v21];

          v23 = [(FRFlintDataProvider *)self resourceManager];
          v12 = [v23 cachedResourceWithIdentifier:v22];

          if (v12 && ([v12 isOnDisk] & 1) != 0)
          {

            goto LABEL_14;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v12 = v7;
LABEL_14:
    v6 = v25;
  }

  return v12;
}

- (BOOL)isDocumentLocallyAvailable
{
  v2 = [(FRFlintDataProvider *)self anfContent];
  v3 = [v2 isANFDocumentCached];

  return v3;
}

- (BOOL)areFontsLocallyAvailable
{
  v3 = [(FRFlintDataProvider *)self anfContent];
  v4 = [v3 fontResourceIDs];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(FRFlintDataProvider *)self resourceManager];
  v9 = [v8 cachedResourcesWithIdentifiers:v7];

  v10 = [v9 count];
  v11 = [v7 count];

  if (v10 == v11)
  {
    v12 = [v9 fc_allObjectsPassTest:&stru_1000C4DC8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isThumbnailAvailableInDocument
{
  v2 = [(FRFlintDataProvider *)self context];
  v3 = [v2 documentController];
  v4 = [v3 componentIdentifierUsingThumbnail];
  v5 = v4 != 0;

  return v5;
}

- (id)headlineForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FRFlintDataProvider *)self headline];
  v6 = [v5 articleID];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(FRFlintDataProvider *)self headline];
  }

  else
  {
    v9 = [(FRFlintDataProvider *)self linkedHeadlines];
    v8 = [v9 objectForKey:v4];
  }

  return v8;
}

@end