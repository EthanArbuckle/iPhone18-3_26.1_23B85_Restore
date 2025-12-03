@interface FRFavoritesPersonalizer
+ (BOOL)frozen;
+ (void)logPPMessage:(id)message;
- (FCPersonalizationBundleIDMapping)bundleIDMapping;
- (FCPersonalizationURLMapping)urlMapping;
- (FCPersonalizationWhitelist)allowlist;
- (FCPersonalizationWhitelist)whitelist;
- (FRFavoritesPersonalizer)init;
- (FRFavoritesPersonalizer)initWithCloudContext:(id)context;
- (FRFavoritesPersonalizer)initWithCloudContext:(id)context storePath:(id)path;
- (id)_createNewAutoFavoritesOperation;
- (unint64_t)allowlistLevelForTagID:(id)d;
- (unint64_t)whitelistLevelForTagID:(id)d;
- (void)_processAutoFavoritesOperationResult:(id)result cursor:(id)cursor error:(id)error completion:(id)completion;
- (void)_saveReadableAllowlist;
- (void)addProgressivePersonalizationAutoFavorites:(id)favorites groupableSubscriptionForTagIDs:(id)ds originProvider:(id)provider completion:(id)completion;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
- (void)fetchMappingResourcesWithCompletionHandler:(id)handler;
- (void)maybeRemovePersonalizationEngineData;
- (void)prepareAutoFavoritesWithLanguageChange:(BOOL)change completionHandler:(id)handler;
- (void)prepareFavorites:(id)favorites;
- (void)prepareFavoritesWithLanguageChange:(BOOL)change completionHandler:(id)handler;
- (void)prepareForUseWithCompletionHandler:(id)handler;
- (void)refreshAutoFavoritesInBackgroundDisregardingCache:(BOOL)cache;
- (void)setAutofavorites:(id)autofavorites;
- (void)setLocationManager:(id)manager;
- (void)subscriptionControllerDidResetToEmpty:(id)empty;
@end

@implementation FRFavoritesPersonalizer

- (void)maybeRemovePersonalizationEngineData
{
  v2 = FRURLForNewsAppCachesDirectory();
  path = [v2 path];
  v4 = [path stringByAppendingPathComponent:@"PersonalizationStore"];

  v5 = +[NSFileManager defaultManager];
  LODWORD(path) = [v5 fileExistsAtPath:v4];

  if (path)
  {
    v6 = +[NSFileManager defaultManager];
    v9 = 0;
    [v6 removeItemAtPath:v4 error:&v9];
    v7 = v9;

    v8 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006D268(v8, v7);
    }
  }
}

- (void)_saveReadableAllowlist
{
  if (NFInternalBuild())
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100023D28;
    v3[3] = &unk_1000C18D0;
    v3[4] = self;
    [FCTaskScheduler scheduleLowPriorityBlock:v3];
  }
}

+ (BOOL)frozen
{
  if (qword_1000E6198 != -1)
  {
    sub_10006C0D4();
  }

  return byte_1000E61A0;
}

- (FRFavoritesPersonalizer)initWithCloudContext:(id)context storePath:(id)path
{
  contextCopy = context;
  pathCopy = path;
  v60.receiver = self;
  v60.super_class = FRFavoritesPersonalizer;
  v9 = [(FRFavoritesPersonalizer *)&v60 init];
  if (v9)
  {
    if (NFInternalBuild())
    {
      v10 = +[NSFileManager defaultManager];
      v11 = FRURLForNewsPersonalizationDirectory();
      v12 = [v11 URLByAppendingPathComponent:@"knowledgeC.db"];
      path = [v12 path];
      v14 = [v10 fileExistsAtPath:path];

      if (v14)
      {
        v15 = +[NSFileManager defaultManager];
        v16 = FRURLForNewsPersonalizationDirectory();
        [v15 fc_quicklyClearDirectory:v16 callbackQueue:&_dispatch_main_q completion:&stru_1000C3070];
      }
    }

    objc_storeStrong(&v9->_cloudContext, context);
    subscriptionController = [contextCopy subscriptionController];
    subscriptionController = v9->_subscriptionController;
    v9->_subscriptionController = subscriptionController;

    [(FCSubscriptionController *)v9->_subscriptionController addObserver:v9];
    purchaseController = [contextCopy purchaseController];
    purchaseController = v9->_purchaseController;
    v9->_purchaseController = purchaseController;

    bundleSubscriptionManager = [contextCopy bundleSubscriptionManager];
    bundleSubscriptionManager = v9->_bundleSubscriptionManager;
    v9->_bundleSubscriptionManager = bundleSubscriptionManager;

    userInfo = [contextCopy userInfo];
    userInfo = v9->_userInfo;
    v9->_userInfo = userInfo;

    appConfigurationManager = [contextCopy appConfigurationManager];
    appConfigurationManager = v9->_appConfigurationManager;
    v9->_appConfigurationManager = appConfigurationManager;

    v27 = dispatch_queue_create("FRPersonalizationDataSource.store", 0);
    storeQueue = v9->_storeQueue;
    v9->_storeQueue = v27;

    storeQueue = [(FRFavoritesPersonalizer *)v9 storeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023480;
    block[3] = &unk_1000C1920;
    v30 = pathCopy;
    v58 = v30;
    v31 = v9;
    v59 = v31;
    dispatch_async(storeQueue, block);

    [(FCNewsAppConfigurationManager *)v9->_appConfigurationManager addAppConfigObserver:v31];
    personalizationData = [contextCopy personalizationData];
    aggregateStore = v31->_aggregateStore;
    v31->_aggregateStore = personalizationData;

    v34 = [FCKeyValueStore alloc];
    path2 = [v30 path];
    v36 = [v34 initWithName:@"HourlyFlowRateHighWaterMarks" directory:path2 version:1 options:0 classRegistry:0];
    hourlyFlowRateHighWaterMarkValueStore = v31->_hourlyFlowRateHighWaterMarkValueStore;
    v31->_hourlyFlowRateHighWaterMarkValueStore = v36;

    v38 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    autoFavoritesQueue = v31->_autoFavoritesQueue;
    v31->_autoFavoritesQueue = v38;

    v40 = +[NSUserDefaults standardUserDefaults];
    LODWORD(path2) = [v40 BOOLForKey:FCPersonalizationClearSuggestions];

    if (path2)
    {
      v41 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Will clear suggestions", buf, 2u);
      }

      autoFavoritesQueue = [(FRFavoritesPersonalizer *)v31 autoFavoritesQueue];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10002362C;
      v54[3] = &unk_1000C30E8;
      v55 = v31;
      [autoFavoritesQueue enqueueBlockForMainThread:v54];
    }

    v43 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Will fetch mapping resources", buf, 2u);
    }

    autoFavoritesQueue2 = [(FRFavoritesPersonalizer *)v31 autoFavoritesQueue];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100023848;
    v52[3] = &unk_1000C30E8;
    v45 = v31;
    v53 = v45;
    [autoFavoritesQueue2 enqueueBlock:v52];

    v46 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Will process events from Today widget", buf, 2u);
    }

    autoFavoritesQueue3 = [(FRFavoritesPersonalizer *)v45 autoFavoritesQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100023A0C;
    v50[3] = &unk_1000C30E8;
    v48 = v45;
    v51 = v48;
    [autoFavoritesQueue3 enqueueBlock:v50];

    [(FRFavoritesPersonalizer *)v48 processExistingData];
  }

  return v9;
}

+ (void)logPPMessage:(id)message
{
  v4 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(message + 2);
    v6 = v4;
    v7 = v5(message);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@", &v8, 0xCu);
  }
}

- (FRFavoritesPersonalizer)initWithCloudContext:(id)context
{
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006C300();
  }

  v5 = FRURLForNewsPersonalizationDirectory();
  v6 = [(FRFavoritesPersonalizer *)self initWithCloudContext:contextCopy storePath:v5];

  return v6;
}

- (FRFavoritesPersonalizer)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRFavoritesPersonalizer init]";
    v8 = 2080;
    v9 = "FRFavoritesPersonalizer.m";
    v10 = 1024;
    v11 = 277;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRFavoritesPersonalizer init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)setAutofavorites:(id)autofavorites
{
  objc_storeStrong(&self->_autofavorites, autofavorites);
  autofavoritesCopy = autofavorites;
  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  [configurationStore setAutoFavorites:autofavoritesCopy];
}

- (void)setLocationManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    observableMostFrequentLocation = [(TSLocationDetectionManagerType *)managerCopy observableMostFrequentLocation];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100024558;
    v10[3] = &unk_1000C31E8;
    v10[4] = self;
    v7 = [observableMostFrequentLocation observe:v10];
    [(FRFavoritesPersonalizer *)self setLocationObserver:v7];
  }

  else
  {
    locationObserver = [(FRFavoritesPersonalizer *)self locationObserver];
    [locationObserver dispose];

    [(FRFavoritesPersonalizer *)self setLocationObserver:0];
  }

  locationManager = self->_locationManager;
  self->_locationManager = v5;
}

- (void)fetchMappingResourcesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  +[NSThread isMainThread];
  [objc_opt_class() logPPMessage:&stru_1000C3208];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100024708;
  v14 = &unk_1000C3370;
  selfCopy = self;
  v17 = xmmword_1000B6ED0;
  v5 = handlerCopy;
  v16 = v5;
  v6 = sub_100024708(&v11);
  v7 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    shortOperationDescription = [v6 shortOperationDescription];
    *buf = 138543362;
    v19 = shortOperationDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will issue fetch operation %{public}@ for mapping resources", buf, 0xCu);
  }

  v10 = [NSOperationQueue fc_sharedConcurrentQueue:v11];
  [v10 addOperation:v6];
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006CDB8();
  }

  v5 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preparing personalization data source for use", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000257E8;
  block[3] = &unk_1000C3098;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  aggregateStore = [(FRFavoritesPersonalizer *)self aggregateStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025868;
  v10[3] = &unk_1000C1BD8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [aggregateStore prepareAggregatesForUseWithCompletionHandler:v10];
}

- (void)prepareFavorites:(id)favorites
{
  favoritesCopy = favorites;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:FCPrimaryLanguageKey];

  v7 = +[FCAppleAccount sharedAccount];
  primaryLanguageCode = [v7 primaryLanguageCode];

  v9 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v6;
    v35 = 2114;
    v36 = primaryLanguageCode;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preparing favorites with last seen language %{public}@, current language %{public}@", buf, 0x16u);
  }

  v10 = dispatch_group_create();
  userInfo = [(FRFavoritesPersonalizer *)self userInfo];
  canonicalLanguage = [userInfo canonicalLanguage];
  if (canonicalLanguage)
  {
    v13 = [v6 isEqualToString:primaryLanguageCode] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  dispatch_group_enter(v10);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100025C74;
  v31[3] = &unk_1000C18D0;
  v14 = v10;
  v32 = v14;
  [(FRFavoritesPersonalizer *)self prepareFavoritesWithLanguageChange:v13 completionHandler:v31];
  dispatch_group_enter(v14);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100025C7C;
  v29[3] = &unk_1000C18D0;
  v15 = v14;
  v30 = v15;
  [(FRFavoritesPersonalizer *)self prepareAutoFavoritesWithLanguageChange:v13 completionHandler:v29];
  objc_initWeak(buf, self);
  if (FCDispatchGroupIsEmpty())
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100025C84;
    v24[3] = &unk_1000C33C0;
    v28 = v13;
    v16 = &v27;
    objc_copyWeak(&v27, buf);
    v25 = primaryLanguageCode;
    v26 = favoritesCopy;
    sub_100025C84(v24);
    v17 = &v25;
    v18 = &v26;
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100025E24;
    v19[3] = &unk_1000C33C0;
    v23 = v13;
    v16 = &v22;
    objc_copyWeak(&v22, buf);
    v17 = &v20;
    v20 = primaryLanguageCode;
    v18 = &v21;
    v21 = favoritesCopy;
    dispatch_group_notify(v15, &_dispatch_main_q, v19);
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)prepareFavoritesWithLanguageChange:(BOOL)change completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (change)
  {
    objc_initWeak(&location, self);
    cloudContext = [(FRFavoritesPersonalizer *)self cloudContext];
    translationManager = [cloudContext translationManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000261B8;
    v10[3] = &unk_1000C3528;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [translationManager fetchTranslationProvider:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100026138;
    v14[3] = &unk_1000C3098;
    v15 = handlerCopy;
    sub_100026138(v14);
  }
}

- (void)prepareAutoFavoritesWithLanguageChange:(BOOL)change completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!change)
  {
    cloudContext = [(FRFavoritesPersonalizer *)self cloudContext];
    userInfo = [cloudContext userInfo];
    canonicalLanguage = [userInfo canonicalLanguage];
    v10 = +[FCAppleAccount sharedAccount];
    primaryLanguageCode = [v10 primaryLanguageCode];
    v12 = [canonicalLanguage isEqualToString:primaryLanguageCode];

    if ((v12 & 1) == 0)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10002748C;
      v25[3] = &unk_1000C1BD8;
      v25[4] = self;
      v26 = handlerCopy;
      sub_10002748C(v25);
      v16 = v26;
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Getting in line to prepare personalization auto-favorites for use", buf, 2u);
  }

  if (+[NSThread isMainThread]|| change)
  {
LABEL_13:
    storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
    v18 = handlerCopy;
    FCDispatchAsyncWithQoSPropagation();

    v16 = v18;
    goto LABEL_14;
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  storeQueue2 = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000275D4;
  block[3] = &unk_1000C3550;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(storeQueue2, block);

  if (v22[24] != 1)
  {
    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v15 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Auto-favorites have been generated in the past so nothing to prepare", v19, 2u);
  }

  handlerCopy[2](handlerCopy);
  _Block_object_dispose(buf, 8);
LABEL_15:
}

- (void)refreshAutoFavoritesInBackgroundDisregardingCache:(BOOL)cache
{
  cloudContext = [(FRFavoritesPersonalizer *)self cloudContext];
  appConfigurationManager = [cloudContext appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  enableNewsPersonalizationAutoFavorites = [possiblyUnfetchedAppConfiguration enableNewsPersonalizationAutoFavorites];

  if (enableNewsPersonalizationAutoFavorites)
  {

    sub_100027CB4();
  }

  else
  {
    cloudContext2 = [(FRFavoritesPersonalizer *)self cloudContext];
    userInfo = [cloudContext2 userInfo];
    canonicalLanguage = [userInfo canonicalLanguage];
    v12 = +[FCAppleAccount sharedAccount];
    primaryLanguageCode = [v12 primaryLanguageCode];
    v14 = [canonicalLanguage isEqualToString:primaryLanguageCode];

    if (v14)
    {
      [objc_opt_class() logPPMessage:&stru_1000C3610];
      storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027E54;
      block[3] = &unk_1000C36F0;
      block[4] = self;
      cacheCopy = cache;
      dispatch_async(storeQueue, block);
    }

    else
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100027D1C;
      v18[3] = &unk_1000C18D0;
      v18[4] = self;
      sub_100027D1C(v18);
    }
  }
}

- (id)_createNewAutoFavoritesOperation
{
  v3 = objc_alloc_init(FRPersonalizationAutoFavoritesOperation);
  autoFavoritesCursor = [(FRFavoritesPersonalizer *)self autoFavoritesCursor];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setCursor:autoFavoritesCursor];

  [(FRPersonalizationAutoFavoritesOperation *)v3 setSignalProcessingTimeInterval:21600.0];
  configurableValues = [(FRFavoritesPersonalizer *)self configurableValues];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setConfigurableValues:configurableValues];

  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  urlMapping = [configurationStore urlMapping];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setUrlMapping:urlMapping];

  configurationStore2 = [(FRFavoritesPersonalizer *)self configurationStore];
  bundleIDMapping = [configurationStore2 bundleIDMapping];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setBundleIDMapping:bundleIDMapping];

  configurationStore3 = [(FRFavoritesPersonalizer *)self configurationStore];
  whitelist = [configurationStore3 whitelist];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setWhitelist:whitelist];

  configurationStore4 = [(FRFavoritesPersonalizer *)self configurationStore];
  favorabilityScores = [configurationStore4 favorabilityScores];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setFavorabilityScores:favorabilityScores];

  cloudContext = [(FRFavoritesPersonalizer *)self cloudContext];
  localAreasManager = [cloudContext localAreasManager];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setLocalAreasManager:localAreasManager];

  subscriptionController = [(FRFavoritesPersonalizer *)self subscriptionController];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setSubscriptionController:subscriptionController];

  cloudContext2 = [(FRFavoritesPersonalizer *)self cloudContext];
  tagController = [cloudContext2 tagController];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setTagController:tagController];

  userInfo = [(FRFavoritesPersonalizer *)self userInfo];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setUserInfo:userInfo];

  tagRanker = [(FRFavoritesPersonalizer *)self tagRanker];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setTagRanker:tagRanker];

  aggregateStoreProvider = [(FRFavoritesPersonalizer *)self aggregateStoreProvider];
  aggregateStore = [aggregateStoreProvider aggregateStore];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setAggregateStore:aggregateStore];

  locationManager = [(FRFavoritesPersonalizer *)self locationManager];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setLocationManager:locationManager];

  cloudContext3 = [(FRFavoritesPersonalizer *)self cloudContext];
  appConfigurationManager = [cloudContext3 appConfigurationManager];
  appConfiguration = [appConfigurationManager appConfiguration];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setAppConfiguration:appConfiguration];

  return v3;
}

- (void)_processAutoFavoritesOperationResult:(id)result cursor:(id)cursor error:(id)error completion:(id)completion
{
  resultCopy = result;
  cursorCopy = cursor;
  completionCopy = completion;
  [(FRFavoritesPersonalizer *)self setAutofavorites:resultCopy];
  if (error)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000287E0;
    v24 = &unk_1000C3098;
    v25 = completionCopy;
    v25[2]();
    v13 = v25;
  }

  else
  {
    [(FRFavoritesPersonalizer *)self setAutoFavoritesCursor:cursorCopy];
    storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000287F0;
    block[3] = &unk_1000C1920;
    block[4] = self;
    v20 = cursorCopy;
    dispatch_sync(storeQueue, block);

    autoFavoriteTagIDs = [resultCopy autoFavoriteTagIDs];
    groupableFavoriteTagIDs = [resultCopy groupableFavoriteTagIDs];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100028890;
    v17[3] = &unk_1000C3718;
    v18 = resultCopy;
    [(FRFavoritesPersonalizer *)self addProgressivePersonalizationAutoFavorites:autoFavoriteTagIDs groupableSubscriptionForTagIDs:groupableFavoriteTagIDs originProvider:v17 completion:completionCopy];

    v13 = v20;
  }
}

- (FCPersonalizationWhitelist)whitelist
{
  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  whitelist = [configurationStore whitelist];

  return whitelist;
}

- (FCPersonalizationWhitelist)allowlist
{
  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  whitelist = [configurationStore whitelist];

  return whitelist;
}

- (unint64_t)whitelistLevelForTagID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BDC;
  block[3] = &unk_1000C3740;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(storeQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)allowlistLevelForTagID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028D98;
  block[3] = &unk_1000C3740;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(storeQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)addProgressivePersonalizationAutoFavorites:(id)favorites groupableSubscriptionForTagIDs:(id)ds originProvider:(id)provider completion:(id)completion
{
  favoritesCopy = favorites;
  dsCopy = ds;
  providerCopy = provider;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = providerCopy;
  v11 = dsCopy;
  v12 = favoritesCopy;
  FCPerformBlockOnMainThread();
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  personalizationTreatment = [change personalizationTreatment];
  if (personalizationTreatment)
  {
    storeQueue = [(FRFavoritesPersonalizer *)self storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000290F0;
    v7[3] = &unk_1000C1920;
    v7[4] = self;
    v8 = personalizationTreatment;
    dispatch_async(storeQueue, v7);
  }
}

- (void)subscriptionControllerDidResetToEmpty:(id)empty
{
  autoFavoritesQueue = [(FRFavoritesPersonalizer *)self autoFavoritesQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029180;
  v5[3] = &unk_1000C30E8;
  v5[4] = self;
  [autoFavoritesQueue enqueueBlock:v5];
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{
  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  bundleIDMapping = [configurationStore bundleIDMapping];

  return bundleIDMapping;
}

- (FCPersonalizationURLMapping)urlMapping
{
  configurationStore = [(FRFavoritesPersonalizer *)self configurationStore];
  urlMapping = [configurationStore urlMapping];

  return urlMapping;
}

@end