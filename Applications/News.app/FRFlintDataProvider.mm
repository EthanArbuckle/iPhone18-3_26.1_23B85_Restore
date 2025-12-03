@interface FRFlintDataProvider
- (BOOL)areFontsLocallyAvailable;
- (BOOL)isDocumentLocallyAvailable;
- (BOOL)isThumbnailAvailableInDocument;
- (FRFlintDataProvider)initWithANFContent:(id)content headline:(id)headline resourceManager:(id)manager cloudContext:(id)context embedConfigurationManager:(id)configurationManager;
- (id)_loadAssetURLsWithCompletionBlock:(id)block;
- (id)_loadAssetsWithCompletionBlock:(id)block;
- (id)_loadFontsWithCompletionBlock:(id)block;
- (id)_loadJSONWithCompletionBlock:(id)block;
- (id)_loadLinkedContentWithCompletionBlock:(id)block;
- (id)_resourceIDFromResourceURL:(id)l;
- (id)fallbackResourceForImageRequest:(id)request originalResource:(id)resource;
- (id)headlineForIdentifier:(id)identifier;
- (id)imageResourceResponseForFileURL:(id)l perserveColorSpace:(BOOL)space withSize:(CGSize)size andQuality:(unint64_t)quality;
- (id)loadAssetURLsWithCompletionBlock:(id)block;
- (id)loadAssetsWithCompletionBlock:(id)block;
- (id)loadContextWithCompletionBlock:(id)block;
- (id)loadFontsWithCompletionBlock:(id)block;
- (id)loadImagesForImageRequest:(id)request completionBlock:(id)block;
- (id)loadJSONWithCompletionBlock:(id)block;
- (id)loadLinkedContentWithCompletionBlock:(id)block;
- (id)translateURL:(id)l;
- (void)dealloc;
- (void)fileURLForURL:(id)l onCompletion:(id)completion onError:(id)error;
- (void)initializeLoadingGroup;
- (void)resetFailedDownloads;
- (void)setCurrentRelativePriority:(int64_t)priority;
@end

@implementation FRFlintDataProvider

- (FRFlintDataProvider)initWithANFContent:(id)content headline:(id)headline resourceManager:(id)manager cloudContext:(id)context embedConfigurationManager:(id)configurationManager
{
  contentCopy = content;
  headlineCopy = headline;
  managerCopy = manager;
  contextCopy = context;
  configurationManagerCopy = configurationManager;
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000708BC();
  }

  v35.receiver = self;
  v35.super_class = FRFlintDataProvider;
  v17 = [(FRFlintDataProvider *)&v35 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_anfContent, content);
    objc_storeStrong(&v18->_headline, headline);
    objc_storeStrong(&v18->_resourceManager, manager);
    objc_storeStrong(&v18->_embedConfigurationManager, configurationManager);
    v19 = [NUArticleResourceURLTranslator alloc];
    appConfigurationManager = [contextCopy appConfigurationManager];
    v21 = [v19 initWithAppConfigurationManager:appConfigurationManager];
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

    objc_storeStrong(&v18->_cloudContext, context);
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
  resourcesLock = [(FRFlintDataProvider *)self resourcesLock];
  [resourcesLock lock];

  fontResources = [(FRFlintDataProvider *)self fontResources];
  v5 = [fontResources copy];

  resourcesLock2 = [(FRFlintDataProvider *)self resourcesLock];
  [resourcesLock2 unlock];

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
          fileURL = [v12 fileURL];
          [FRFont unregisterFontWithURL:fileURL];
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

- (id)loadContextWithCompletionBlock:(id)block
{
  blockCopy = block;
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
    embedConfigurationManager = [(FRFlintDataProvider *)self embedConfigurationManager];
    *buf = 134218240;
    selfCopy2 = self;
    v34 = 2048;
    v35 = embedConfigurationManager;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%p will fetch embed configuration from manager=%p", buf, 0x16u);
  }

  embedConfigurationManager2 = [(FRFlintDataProvider *)self embedConfigurationManager];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100043F94;
  v26[3] = &unk_1000C4A60;
  v26[4] = self;
  v15 = v9;
  v27 = v15;
  [embedConfigurationManager2 fetchEmbedConfigurationWithCompletion:v26];

  dispatch_group_enter(v15);
  v16 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
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
  v23 = blockCopy;
  v19 = blockCopy;
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

- (id)loadJSONWithCompletionBlock:(id)block
{
  blockCopy = block;
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadJSONOnce = [loadingGroup loadJSONOnce];
  v7 = [loadJSONOnce executeWithCompletionHandler:blockCopy];

  return v7;
}

- (id)loadFontsWithCompletionBlock:(id)block
{
  blockCopy = block;
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadFontsOnce = [loadingGroup loadFontsOnce];
  v7 = FCDispatchQueueForQualityOfService();
  v8 = [loadFontsOnce executeWithCallbackQueue:v7 completionHandler:blockCopy];

  return v8;
}

- (id)loadAssetURLsWithCompletionBlock:(id)block
{
  blockCopy = block;
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadJSONOnce = [loadingGroup loadJSONOnce];
  finishedExecuting = [loadJSONOnce finishedExecuting];

  if (finishedExecuting)
  {
    loadAssetURLsOnce = [loadingGroup loadAssetURLsOnce];
    v9 = [loadAssetURLsOnce executeWithCompletionHandler:blockCopy];
  }

  else
  {
    dispatch_async(&_dispatch_main_q, blockCopy);
    v9 = 0;
  }

  return v9;
}

- (id)loadAssetsWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  v5 = blockCopy;
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

- (id)loadLinkedContentWithCompletionBlock:(id)block
{
  blockCopy = block;
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadLinkedContentOnce = [loadingGroup loadLinkedContentOnce];
  v7 = [loadLinkedContentOnce executeWithCompletionHandler:blockCopy];

  return v7;
}

- (void)resetFailedDownloads
{
  +[NSThread isMainThread];
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadJSONOnce = [loadingGroup loadJSONOnce];
  finishedExecutingWithFailure = [loadJSONOnce finishedExecutingWithFailure];

  loadFontsOnce = [loadingGroup loadFontsOnce];
  finishedExecutingWithFailure2 = [loadFontsOnce finishedExecutingWithFailure];

  loadAssetURLsOnce = [loadingGroup loadAssetURLsOnce];
  finishedExecutingWithFailure3 = [loadAssetURLsOnce finishedExecutingWithFailure];

  loadAssetsOnce = [loadingGroup loadAssetsOnce];
  finishedExecutingWithFailure4 = [loadAssetsOnce finishedExecutingWithFailure];

  loadLinkedContentOnce = [loadingGroup loadLinkedContentOnce];
  finishedExecutingWithFailure5 = [loadLinkedContentOnce finishedExecutingWithFailure];

  if ((finishedExecutingWithFailure & 1) == 0 && (finishedExecutingWithFailure2 & 1) == 0 && (finishedExecutingWithFailure3 & 1) == 0 && !finishedExecutingWithFailure4)
  {
    goto LABEL_17;
  }

  v37 = finishedExecutingWithFailure5;
  v14 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    anfContent = [(FRFlintDataProvider *)self anfContent];
    anfDocumentAssetHandles = [anfContent anfDocumentAssetHandles];
    firstObject = [anfDocumentAssetHandles firstObject];
    remoteURL = [firstObject remoteURL];
    *buf = 134218242;
    selfCopy = self;
    v41 = 2112;
    v42 = remoteURL;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p retrying failed downloads for Flint article with JSON URL %@", buf, 0x16u);
  }

  loadJSONOnce2 = [loadingGroup loadJSONOnce];
  loadFontsOnce2 = [loadingGroup loadFontsOnce];
  loadAssetURLsOnce2 = [loadingGroup loadAssetURLsOnce];
  loadAssetsOnce2 = [loadingGroup loadAssetsOnce];
  loadLinkedContentOnce2 = [loadingGroup loadLinkedContentOnce];
  if (finishedExecutingWithFailure)
  {
    v24 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadJSONWithCompletionBlock:"];
    v25 = loadJSONOnce2;
    v26 = finishedExecutingWithFailure;
    v27 = finishedExecutingWithFailure3;
    v28 = loadAssetsOnce2;
    v29 = v24;

    [(FRFlintDataProvider *)self setError:0];
    v30 = v29;
    loadAssetsOnce2 = v28;
    finishedExecutingWithFailure3 = v27;
    finishedExecutingWithFailure = v26;
    loadJSONOnce2 = v30;
    if (!finishedExecutingWithFailure2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (finishedExecutingWithFailure2)
  {
LABEL_11:
    v31 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadFontsWithCompletionBlock:"];

    loadFontsOnce2 = v31;
  }

LABEL_12:
  if (v37)
  {
    v32 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadLinkedContentWithCompletionBlock:"];

    loadLinkedContentOnce2 = v32;
  }

  if ((finishedExecutingWithFailure | finishedExecutingWithFailure3))
  {
    v33 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetURLsWithCompletionBlock:"];

    loadAssetURLsOnce2 = v33;
  }

  v34 = [[FCAsyncOnceOperation alloc] initWithTarget:self selector:"_loadAssetsWithCompletionBlock:"];

  relativePriority = [(FRFlintDataProvider *)self relativePriority];
  [loadJSONOnce2 setRelativePriority:relativePriority];
  [loadFontsOnce2 setRelativePriority:relativePriority];
  [loadAssetURLsOnce2 setRelativePriority:relativePriority];
  [v34 setRelativePriority:relativePriority];
  [loadLinkedContentOnce2 setRelativePriority:relativePriority];
  v36 = [[FRFlintDataLoadingGroup alloc] initWithLoadJSONOnce:loadJSONOnce2 loadFontsOnce:loadFontsOnce2 loadAssetURLsOnce:loadAssetURLsOnce2 loadAssetsOnce:v34 loadLinkedContentOnce:loadLinkedContentOnce2];
  [(FRFlintDataProvider *)self setLoadingGroup:v36];

LABEL_17:
}

- (void)setCurrentRelativePriority:(int64_t)priority
{
  +[NSThread isMainThread];
  [(FRFlintDataProvider *)self setRelativePriority:priority];
  loadingGroup = [(FRFlintDataProvider *)self loadingGroup];
  loadJSONOnce = [loadingGroup loadJSONOnce];
  [loadJSONOnce setRelativePriority:priority];

  loadingGroup2 = [(FRFlintDataProvider *)self loadingGroup];
  loadFontsOnce = [loadingGroup2 loadFontsOnce];
  [loadFontsOnce setRelativePriority:priority];

  loadingGroup3 = [(FRFlintDataProvider *)self loadingGroup];
  loadAssetURLsOnce = [loadingGroup3 loadAssetURLsOnce];
  [loadAssetURLsOnce setRelativePriority:priority];

  loadingGroup4 = [(FRFlintDataProvider *)self loadingGroup];
  loadAssetsOnce = [loadingGroup4 loadAssetsOnce];
  [loadAssetsOnce setRelativePriority:priority];

  loadingGroup5 = [(FRFlintDataProvider *)self loadingGroup];
  loadLinkedContentOnce = [loadingGroup5 loadLinkedContentOnce];
  [loadLinkedContentOnce setRelativePriority:priority];
}

- (id)_loadJSONWithCompletionBlock:(id)block
{
  blockCopy = block;
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

    anfContent = [(FRFlintDataProvider *)self anfContent];
    anfDocumentAssetHandles = [anfContent anfDocumentAssetHandles];
    firstObject = [anfDocumentAssetHandles firstObject];
    uniqueKey = [firstObject uniqueKey];
    *buf = 134218498;
    selfCopy = self;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = uniqueKey;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p will %{public}@ JSON %{public}@", buf, 0x20u);
  }

  anfContent2 = [(FRFlintDataProvider *)self anfContent];
  relativePriority = [(FRFlintDataProvider *)self relativePriority];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100044DE4;
  v17[3] = &unk_1000C4AD8;
  v17[4] = self;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = [anfContent2 fetchANFDocumentDataProviderWithPriority:relativePriority completion:v17];

  return v15;
}

- (id)_loadFontsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    areFontsLocallyAvailable = [(FRFlintDataProvider *)self areFontsLocallyAvailable];
    v8 = @"download";
    if (areFontsLocallyAvailable)
    {
      v8 = @"load cached";
    }

    *buf = 134218242;
    selfCopy2 = self;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p will %{public}@ fonts", buf, 0x16u);
  }

  anfContent = [(FRFlintDataProvider *)self anfContent];
  fontResourceIDs = [anfContent fontResourceIDs];

  if ([fontResourceIDs count])
  {
    resourceManager = [(FRFlintDataProvider *)self resourceManager];
    relativePriority = [(FRFlintDataProvider *)self relativePriority];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100045510;
    v20[3] = &unk_1000C4B68;
    v20[4] = self;
    v21 = fontResourceIDs;
    v22 = blockCopy;
    v13 = blockCopy;
    v14 = [resourceManager fetchFontResourcesWithIdentifiers:v21 downloadAssets:1 relativePriority:relativePriority completionBlock:v20];
  }

  else
  {
    v15 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p requires no fonts", buf, 0xCu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004582C;
    v18[3] = &unk_1000C3098;
    v19 = blockCopy;
    v16 = blockCopy;
    dispatch_async(&_dispatch_main_q, v18);

    v14 = 0;
  }

  return v14;
}

- (id)_loadAssetURLsWithCompletionBlock:(id)block
{
  blockCopy = block;
  context = [(FRFlintDataProvider *)self context];

  if (!context && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070A28();
  }

  context2 = [(FRFlintDataProvider *)self context];

  v7 = FRArticleLog;
  if (context2)
  {
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p will load asset URLs", buf, 0xCu);
    }

    resourceManager = [(FRFlintDataProvider *)self resourceManager];
    requiredResourceIDs = [(FRFlintDataProvider *)self requiredResourceIDs];
    relativePriority = [(FRFlintDataProvider *)self relativePriority];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100045AE4;
    v20[3] = &unk_1000C4B90;
    v20[4] = self;
    v21 = blockCopy;
    v11 = [resourceManager fetchResourcesWithIdentifiers:requiredResourceIDs downloadAssets:0 relativePriority:relativePriority callBackQueue:&_dispatch_main_q completionBlock:v20];
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
    v19 = blockCopy;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100045D38;
    v13[3] = &unk_1000C3098;
    v14 = v19;
    dispatch_async(&_dispatch_main_q, v13);

    v11 = 0;
    resourceManager = v19;
  }

  return v11;
}

- (id)_loadAssetsWithCompletionBlock:(id)block
{
  blockCopy = block;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p will download assets", buf, 0xCu);
  }

  resourcesLock = [(FRFlintDataProvider *)self resourcesLock];
  [resourcesLock lock];

  resourcesByID = [(FRFlintDataProvider *)self resourcesByID];
  v8 = [resourcesByID copy];
  v9 = v22[5];
  v22[5] = v8;

  resourcesLock2 = [(FRFlintDataProvider *)self resourcesLock];
  [resourcesLock2 unlock];

  allValues = [v22[5] allValues];
  v12 = [allValues fc_arrayByTransformingWithBlock:&stru_1000C4BB0];

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
  v15 = blockCopy;
  v19 = v15;
  [v13 setFetchCompletionBlock:v18];
  v16 = +[NSOperationQueue fc_sharedConcurrentQueue];
  [v16 addOperation:v13];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)_loadLinkedContentWithCompletionBlock:(id)block
{
  blockCopy = block;
  headline = [(FRFlintDataProvider *)self headline];
  linkedArticleIDs = [headline linkedArticleIDs];
  v7 = [linkedArticleIDs count];

  if (v7)
  {
    v8 = [FCArticleHeadlinesFetchOperation alloc];
    cloudContext = [(FRFlintDataProvider *)self cloudContext];
    headline2 = [(FRFlintDataProvider *)self headline];
    linkedArticleIDs2 = [headline2 linkedArticleIDs];
    v12 = [v8 initWithContext:cloudContext articleIDs:linkedArticleIDs2 ignoreCacheForArticleIDs:0];

    [v12 setQualityOfService:17];
    [v12 setRelativePriority:1];
    [v12 setFetchCompletionQueue:&_dispatch_main_q];
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000465E4;
    v18 = &unk_1000C4C48;
    objc_copyWeak(&v20, &location);
    v19 = blockCopy;
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
    v23 = blockCopy;
    v12 = sub_100046540(v22);
  }

  return v12;
}

- (id)_resourceIDFromResourceURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"asset"])
  {
    host = [lCopy host];
  }

  else
  {
    host = 0;
  }

  return host;
}

- (void)fileURLForURL:(id)l onCompletion:(id)completion onError:(id)error
{
  lCopy = l;
  completionCopy = completion;
  errorCopy = error;
  v11 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:lCopy];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100046A34;
  v16[3] = &unk_1000C4C98;
  objc_copyWeak(&v21, &location);
  v12 = errorCopy;
  v19 = v12;
  v13 = v11;
  v17 = v13;
  selfCopy = self;
  v14 = completionCopy;
  v20 = v14;
  v15 = [(FRFlintDataProvider *)self loadAssetURLsWithCompletionBlock:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (id)translateURL:(id)l
{
  lCopy = l;
  resourceURLTranslator = [(FRFlintDataProvider *)self resourceURLTranslator];
  v6 = [resourceURLTranslator translateFileURLForURL:lCopy];

  return v6;
}

- (id)loadImagesForImageRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  +[NSThread isMainThread];
  if (!requestCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
  v45 = blockCopy;
  v74 = v45;
  v46 = objc_retainBlock(v73);
  qualities = [requestCopy qualities];
  if (([requestCopy qualities] & 2) != 0)
  {
    thumbnailImage = [(FRFlintDataProvider *)self thumbnailImage];
    if (thumbnailImage || ([(FRFlintDataProvider *)self thumbnailAssetHandle], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      shouldReturnThumbnail = [(FRFlintDataProvider *)self shouldReturnThumbnail];
      if (thumbnailImage)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      shouldReturnThumbnail = 0;
    }

    goto LABEL_12;
  }

  shouldReturnThumbnail = 0;
LABEL_13:
  imageIdentifier = [requestCopy imageIdentifier];
  context = [(FRFlintDataProvider *)self context];
  documentController = [context documentController];
  metadata = [documentController metadata];
  thumbnailImageIdentifier = [metadata thumbnailImageIdentifier];
  v17 = [imageIdentifier isEqualToString:thumbnailImageIdentifier];

  v18 = [requestCopy URL];
  v19 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:v18];

  resourcesByID = [(FRFlintDataProvider *)self resourcesByID];
  v21 = v9;
  v22 = [resourcesByID objectForKey:v19];

  isOnDisk = [v22 isOnDisk];
  if (((shouldReturnThumbnail & v17 | isOnDisk) & 1) != 0 && (v78[3] & 1) == 0)
  {
    [requestCopy size];
    v25 = v24;
    v27 = v26;
    if (isOnDisk)
    {
      fileURL = [v22 fileURL];
      v29 = 4;
    }

    else
    {
      fileURL = 0;
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
          thumbnailImage2 = [(FRFlintDataProvider *)self thumbnailImage];
          [v31 setImage:thumbnailImage2];

          [v31 setImageQuality:v29];
        }

        else
        {
          v31 = -[FRFlintDataProvider imageResourceResponseForFileURL:perserveColorSpace:withSize:andQuality:](self, "imageResourceResponseForFileURL:perserveColorSpace:withSize:andQuality:", fileURL, [requestCopy preserveColorspace], v29, v25, v27);
        }

        if (v31)
        {
          [v21 addObject:v31];
        }

        loadingBlock = [requestCopy loadingBlock];

        if (loadingBlock)
        {
          loadingBlock2 = [requestCopy loadingBlock];
          (loadingBlock2)[2](loadingBlock2, v31);
        }
      }

      dispatch_group_leave(group);
    }

    else
    {
      operationQueue = [(FRFlintDataProvider *)self operationQueue];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000474D0;
      v64[3] = &unk_1000C4CE8;
      v69 = &v77;
      v70 = v29;
      v64[4] = self;
      v65 = fileURL;
      v66 = requestCopy;
      v71 = v25;
      v72 = v27;
      v67 = v21;
      v68 = group;
      [operationQueue addOperationWithBlock:v64];
    }
  }

  dispatch_group_enter(group);
  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100047724;
  v52[3] = &unk_1000C4D88;
  objc_copyWeak(&v60, &location);
  v61 = (qualities & 4) != 0;
  v62 = isOnDisk;
  v36 = v19;
  v58 = &v77;
  v59 = v81;
  v53 = v36;
  selfCopy = self;
  v37 = requestCopy;
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

- (id)imageResourceResponseForFileURL:(id)l perserveColorSpace:(BOOL)space withSize:(CGSize)size andQuality:(unint64_t)quality
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v10 = [NSData dataWithContentsOfURL:lCopy];
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

  [v16 setFileURL:lCopy];

  [v16 setImageQuality:quality];

  return v16;
}

- (id)fallbackResourceForImageRequest:(id)request originalResource:(id)resource
{
  requestCopy = request;
  resourceCopy = resource;
  cloudContext = [(FRFlintDataProvider *)self cloudContext];
  networkReachability = [cloudContext networkReachability];
  isNetworkReachable = [networkReachability isNetworkReachable];

  if (isNetworkReachable)
  {
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1000480C0;
    v33 = &unk_1000C3B88;
    v34 = resourceCopy;
    v11 = v34;
    v12 = v11;
  }

  else
  {
    context = [(FRFlintDataProvider *)self context];
    documentController = [context documentController];
    v25 = requestCopy;
    imageIdentifier = [requestCopy imageIdentifier];
    v11 = [documentController allResourcesForImageIdentifier:imageIdentifier];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    reverseObjectEnumerator = [v11 reverseObjectEnumerator];
    v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v35 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) URL];
          v22 = [(FRFlintDataProvider *)self _resourceIDFromResourceURL:v21];

          resourceManager = [(FRFlintDataProvider *)self resourceManager];
          v12 = [resourceManager cachedResourceWithIdentifier:v22];

          if (v12 && ([v12 isOnDisk] & 1) != 0)
          {

            goto LABEL_14;
          }
        }

        v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v12 = resourceCopy;
LABEL_14:
    requestCopy = v25;
  }

  return v12;
}

- (BOOL)isDocumentLocallyAvailable
{
  anfContent = [(FRFlintDataProvider *)self anfContent];
  isANFDocumentCached = [anfContent isANFDocumentCached];

  return isANFDocumentCached;
}

- (BOOL)areFontsLocallyAvailable
{
  anfContent = [(FRFlintDataProvider *)self anfContent];
  fontResourceIDs = [anfContent fontResourceIDs];
  v5 = fontResourceIDs;
  v6 = &__NSArray0__struct;
  if (fontResourceIDs)
  {
    v6 = fontResourceIDs;
  }

  v7 = v6;

  resourceManager = [(FRFlintDataProvider *)self resourceManager];
  v9 = [resourceManager cachedResourcesWithIdentifiers:v7];

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
  context = [(FRFlintDataProvider *)self context];
  documentController = [context documentController];
  componentIdentifierUsingThumbnail = [documentController componentIdentifierUsingThumbnail];
  v5 = componentIdentifierUsingThumbnail != 0;

  return v5;
}

- (id)headlineForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  headline = [(FRFlintDataProvider *)self headline];
  articleID = [headline articleID];
  v7 = [identifierCopy isEqual:articleID];

  if (v7)
  {
    headline2 = [(FRFlintDataProvider *)self headline];
  }

  else
  {
    linkedHeadlines = [(FRFlintDataProvider *)self linkedHeadlines];
    headline2 = [linkedHeadlines objectForKey:identifierCopy];
  }

  return headline2;
}

@end