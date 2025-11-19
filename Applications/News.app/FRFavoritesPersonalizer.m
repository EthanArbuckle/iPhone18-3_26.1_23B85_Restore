@interface FRFavoritesPersonalizer
+ (BOOL)frozen;
+ (void)logPPMessage:(id)a3;
- (FCPersonalizationBundleIDMapping)bundleIDMapping;
- (FCPersonalizationURLMapping)urlMapping;
- (FCPersonalizationWhitelist)allowlist;
- (FCPersonalizationWhitelist)whitelist;
- (FRFavoritesPersonalizer)init;
- (FRFavoritesPersonalizer)initWithCloudContext:(id)a3;
- (FRFavoritesPersonalizer)initWithCloudContext:(id)a3 storePath:(id)a4;
- (id)_createNewAutoFavoritesOperation;
- (unint64_t)allowlistLevelForTagID:(id)a3;
- (unint64_t)whitelistLevelForTagID:(id)a3;
- (void)_processAutoFavoritesOperationResult:(id)a3 cursor:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_saveReadableAllowlist;
- (void)addProgressivePersonalizationAutoFavorites:(id)a3 groupableSubscriptionForTagIDs:(id)a4 originProvider:(id)a5 completion:(id)a6;
- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4;
- (void)fetchMappingResourcesWithCompletionHandler:(id)a3;
- (void)maybeRemovePersonalizationEngineData;
- (void)prepareAutoFavoritesWithLanguageChange:(BOOL)a3 completionHandler:(id)a4;
- (void)prepareFavorites:(id)a3;
- (void)prepareFavoritesWithLanguageChange:(BOOL)a3 completionHandler:(id)a4;
- (void)prepareForUseWithCompletionHandler:(id)a3;
- (void)refreshAutoFavoritesInBackgroundDisregardingCache:(BOOL)a3;
- (void)setAutofavorites:(id)a3;
- (void)setLocationManager:(id)a3;
- (void)subscriptionControllerDidResetToEmpty:(id)a3;
@end

@implementation FRFavoritesPersonalizer

- (void)maybeRemovePersonalizationEngineData
{
  v2 = FRURLForNewsAppCachesDirectory();
  v3 = [v2 path];
  v4 = [v3 stringByAppendingPathComponent:@"PersonalizationStore"];

  v5 = +[NSFileManager defaultManager];
  LODWORD(v3) = [v5 fileExistsAtPath:v4];

  if (v3)
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

- (FRFavoritesPersonalizer)initWithCloudContext:(id)a3 storePath:(id)a4
{
  v7 = a3;
  v8 = a4;
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
      v13 = [v12 path];
      v14 = [v10 fileExistsAtPath:v13];

      if (v14)
      {
        v15 = +[NSFileManager defaultManager];
        v16 = FRURLForNewsPersonalizationDirectory();
        [v15 fc_quicklyClearDirectory:v16 callbackQueue:&_dispatch_main_q completion:&stru_1000C3070];
      }
    }

    objc_storeStrong(&v9->_cloudContext, a3);
    v17 = [v7 subscriptionController];
    subscriptionController = v9->_subscriptionController;
    v9->_subscriptionController = v17;

    [(FCSubscriptionController *)v9->_subscriptionController addObserver:v9];
    v19 = [v7 purchaseController];
    purchaseController = v9->_purchaseController;
    v9->_purchaseController = v19;

    v21 = [v7 bundleSubscriptionManager];
    bundleSubscriptionManager = v9->_bundleSubscriptionManager;
    v9->_bundleSubscriptionManager = v21;

    v23 = [v7 userInfo];
    userInfo = v9->_userInfo;
    v9->_userInfo = v23;

    v25 = [v7 appConfigurationManager];
    appConfigurationManager = v9->_appConfigurationManager;
    v9->_appConfigurationManager = v25;

    v27 = dispatch_queue_create("FRPersonalizationDataSource.store", 0);
    storeQueue = v9->_storeQueue;
    v9->_storeQueue = v27;

    v29 = [(FRFavoritesPersonalizer *)v9 storeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023480;
    block[3] = &unk_1000C1920;
    v30 = v8;
    v58 = v30;
    v31 = v9;
    v59 = v31;
    dispatch_async(v29, block);

    [(FCNewsAppConfigurationManager *)v9->_appConfigurationManager addAppConfigObserver:v31];
    v32 = [v7 personalizationData];
    aggregateStore = v31->_aggregateStore;
    v31->_aggregateStore = v32;

    v34 = [FCKeyValueStore alloc];
    v35 = [v30 path];
    v36 = [v34 initWithName:@"HourlyFlowRateHighWaterMarks" directory:v35 version:1 options:0 classRegistry:0];
    hourlyFlowRateHighWaterMarkValueStore = v31->_hourlyFlowRateHighWaterMarkValueStore;
    v31->_hourlyFlowRateHighWaterMarkValueStore = v36;

    v38 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    autoFavoritesQueue = v31->_autoFavoritesQueue;
    v31->_autoFavoritesQueue = v38;

    v40 = +[NSUserDefaults standardUserDefaults];
    LODWORD(v35) = [v40 BOOLForKey:FCPersonalizationClearSuggestions];

    if (v35)
    {
      v41 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Will clear suggestions", buf, 2u);
      }

      v42 = [(FRFavoritesPersonalizer *)v31 autoFavoritesQueue];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10002362C;
      v54[3] = &unk_1000C30E8;
      v55 = v31;
      [v42 enqueueBlockForMainThread:v54];
    }

    v43 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Will fetch mapping resources", buf, 2u);
    }

    v44 = [(FRFavoritesPersonalizer *)v31 autoFavoritesQueue];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100023848;
    v52[3] = &unk_1000C30E8;
    v45 = v31;
    v53 = v45;
    [v44 enqueueBlock:v52];

    v46 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Will process events from Today widget", buf, 2u);
    }

    v47 = [(FRFavoritesPersonalizer *)v45 autoFavoritesQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100023A0C;
    v50[3] = &unk_1000C30E8;
    v48 = v45;
    v51 = v48;
    [v47 enqueueBlock:v50];

    [(FRFavoritesPersonalizer *)v48 processExistingData];
  }

  return v9;
}

+ (void)logPPMessage:(id)a3
{
  v4 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a3 + 2);
    v6 = v4;
    v7 = v5(a3);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@", &v8, 0xCu);
  }
}

- (FRFavoritesPersonalizer)initWithCloudContext:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006C300();
  }

  v5 = FRURLForNewsPersonalizationDirectory();
  v6 = [(FRFavoritesPersonalizer *)self initWithCloudContext:v4 storePath:v5];

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

- (void)setAutofavorites:(id)a3
{
  objc_storeStrong(&self->_autofavorites, a3);
  v5 = a3;
  v6 = [(FRFavoritesPersonalizer *)self configurationStore];
  [v6 setAutoFavorites:v5];
}

- (void)setLocationManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(TSLocationDetectionManagerType *)v4 observableMostFrequentLocation];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100024558;
    v10[3] = &unk_1000C31E8;
    v10[4] = self;
    v7 = [v6 observe:v10];
    [(FRFavoritesPersonalizer *)self setLocationObserver:v7];
  }

  else
  {
    v8 = [(FRFavoritesPersonalizer *)self locationObserver];
    [v8 dispose];

    [(FRFavoritesPersonalizer *)self setLocationObserver:0];
  }

  locationManager = self->_locationManager;
  self->_locationManager = v5;
}

- (void)fetchMappingResourcesWithCompletionHandler:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  [objc_opt_class() logPPMessage:&stru_1000C3208];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100024708;
  v14 = &unk_1000C3370;
  v15 = self;
  v17 = xmmword_1000B6ED0;
  v5 = v4;
  v16 = v5;
  v6 = sub_100024708(&v11);
  v7 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 shortOperationDescription];
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will issue fetch operation %{public}@ for mapping resources", buf, 0xCu);
  }

  v10 = [NSOperationQueue fc_sharedConcurrentQueue:v11];
  [v10 addOperation:v6];
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v13 = v4;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v8 = [(FRFavoritesPersonalizer *)self aggregateStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025868;
  v10[3] = &unk_1000C1BD8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 prepareAggregatesForUseWithCompletionHandler:v10];
}

- (void)prepareFavorites:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:FCPrimaryLanguageKey];

  v7 = +[FCAppleAccount sharedAccount];
  v8 = [v7 primaryLanguageCode];

  v9 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v6;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preparing favorites with last seen language %{public}@, current language %{public}@", buf, 0x16u);
  }

  v10 = dispatch_group_create();
  v11 = [(FRFavoritesPersonalizer *)self userInfo];
  v12 = [v11 canonicalLanguage];
  if (v12)
  {
    v13 = [v6 isEqualToString:v8] ^ 1;
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
    v25 = v8;
    v26 = v4;
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
    v20 = v8;
    v18 = &v21;
    v21 = v4;
    dispatch_group_notify(v15, &_dispatch_main_q, v19);
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)prepareFavoritesWithLanguageChange:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    objc_initWeak(&location, self);
    v8 = [(FRFavoritesPersonalizer *)self cloudContext];
    v9 = [v8 translationManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000261B8;
    v10[3] = &unk_1000C3528;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [v9 fetchTranslationProvider:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100026138;
    v14[3] = &unk_1000C3098;
    v15 = v6;
    sub_100026138(v14);
  }
}

- (void)prepareAutoFavoritesWithLanguageChange:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v7 = [(FRFavoritesPersonalizer *)self cloudContext];
    v8 = [v7 userInfo];
    v9 = [v8 canonicalLanguage];
    v10 = +[FCAppleAccount sharedAccount];
    v11 = [v10 primaryLanguageCode];
    v12 = [v9 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10002748C;
      v25[3] = &unk_1000C1BD8;
      v25[4] = self;
      v26 = v6;
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

  if (+[NSThread isMainThread]|| a3)
  {
LABEL_13:
    v17 = [(FRFavoritesPersonalizer *)self storeQueue];
    v18 = v6;
    FCDispatchAsyncWithQoSPropagation();

    v16 = v18;
    goto LABEL_14;
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  v14 = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000275D4;
  block[3] = &unk_1000C3550;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v14, block);

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

  v6[2](v6);
  _Block_object_dispose(buf, 8);
LABEL_15:
}

- (void)refreshAutoFavoritesInBackgroundDisregardingCache:(BOOL)a3
{
  v5 = [(FRFavoritesPersonalizer *)self cloudContext];
  v6 = [v5 appConfigurationManager];
  v7 = [v6 possiblyUnfetchedAppConfiguration];
  v8 = [v7 enableNewsPersonalizationAutoFavorites];

  if (v8)
  {

    sub_100027CB4();
  }

  else
  {
    v9 = [(FRFavoritesPersonalizer *)self cloudContext];
    v10 = [v9 userInfo];
    v11 = [v10 canonicalLanguage];
    v12 = +[FCAppleAccount sharedAccount];
    v13 = [v12 primaryLanguageCode];
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
      [objc_opt_class() logPPMessage:&stru_1000C3610];
      v15 = [(FRFavoritesPersonalizer *)self storeQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027E54;
      block[3] = &unk_1000C36F0;
      block[4] = self;
      v17 = a3;
      dispatch_async(v15, block);
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
  v4 = [(FRFavoritesPersonalizer *)self autoFavoritesCursor];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setCursor:v4];

  [(FRPersonalizationAutoFavoritesOperation *)v3 setSignalProcessingTimeInterval:21600.0];
  v5 = [(FRFavoritesPersonalizer *)self configurableValues];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setConfigurableValues:v5];

  v6 = [(FRFavoritesPersonalizer *)self configurationStore];
  v7 = [v6 urlMapping];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setUrlMapping:v7];

  v8 = [(FRFavoritesPersonalizer *)self configurationStore];
  v9 = [v8 bundleIDMapping];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setBundleIDMapping:v9];

  v10 = [(FRFavoritesPersonalizer *)self configurationStore];
  v11 = [v10 whitelist];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setWhitelist:v11];

  v12 = [(FRFavoritesPersonalizer *)self configurationStore];
  v13 = [v12 favorabilityScores];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setFavorabilityScores:v13];

  v14 = [(FRFavoritesPersonalizer *)self cloudContext];
  v15 = [v14 localAreasManager];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setLocalAreasManager:v15];

  v16 = [(FRFavoritesPersonalizer *)self subscriptionController];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setSubscriptionController:v16];

  v17 = [(FRFavoritesPersonalizer *)self cloudContext];
  v18 = [v17 tagController];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setTagController:v18];

  v19 = [(FRFavoritesPersonalizer *)self userInfo];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setUserInfo:v19];

  v20 = [(FRFavoritesPersonalizer *)self tagRanker];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setTagRanker:v20];

  v21 = [(FRFavoritesPersonalizer *)self aggregateStoreProvider];
  v22 = [v21 aggregateStore];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setAggregateStore:v22];

  v23 = [(FRFavoritesPersonalizer *)self locationManager];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setLocationManager:v23];

  v24 = [(FRFavoritesPersonalizer *)self cloudContext];
  v25 = [v24 appConfigurationManager];
  v26 = [v25 appConfiguration];
  [(FRPersonalizationAutoFavoritesOperation *)v3 setAppConfiguration:v26];

  return v3;
}

- (void)_processAutoFavoritesOperationResult:(id)a3 cursor:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(FRFavoritesPersonalizer *)self setAutofavorites:v10];
  if (a5)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000287E0;
    v24 = &unk_1000C3098;
    v25 = v12;
    v25[2]();
    v13 = v25;
  }

  else
  {
    [(FRFavoritesPersonalizer *)self setAutoFavoritesCursor:v11];
    v14 = [(FRFavoritesPersonalizer *)self storeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000287F0;
    block[3] = &unk_1000C1920;
    block[4] = self;
    v20 = v11;
    dispatch_sync(v14, block);

    v15 = [v10 autoFavoriteTagIDs];
    v16 = [v10 groupableFavoriteTagIDs];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100028890;
    v17[3] = &unk_1000C3718;
    v18 = v10;
    [(FRFavoritesPersonalizer *)self addProgressivePersonalizationAutoFavorites:v15 groupableSubscriptionForTagIDs:v16 originProvider:v17 completion:v12];

    v13 = v20;
  }
}

- (FCPersonalizationWhitelist)whitelist
{
  v2 = [(FRFavoritesPersonalizer *)self configurationStore];
  v3 = [v2 whitelist];

  return v3;
}

- (FCPersonalizationWhitelist)allowlist
{
  v2 = [(FRFavoritesPersonalizer *)self configurationStore];
  v3 = [v2 whitelist];

  return v3;
}

- (unint64_t)whitelistLevelForTagID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  v5 = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BDC;
  block[3] = &unk_1000C3740;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)allowlistLevelForTagID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  v5 = [(FRFavoritesPersonalizer *)self storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028D98;
  block[3] = &unk_1000C3740;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)addProgressivePersonalizationAutoFavorites:(id)a3 groupableSubscriptionForTagIDs:(id)a4 originProvider:(id)a5 completion:(id)a6
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  v12 = v13;
  FCPerformBlockOnMainThread();
}

- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4
{
  v5 = [a4 personalizationTreatment];
  if (v5)
  {
    v6 = [(FRFavoritesPersonalizer *)self storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000290F0;
    v7[3] = &unk_1000C1920;
    v7[4] = self;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)subscriptionControllerDidResetToEmpty:(id)a3
{
  v4 = [(FRFavoritesPersonalizer *)self autoFavoritesQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029180;
  v5[3] = &unk_1000C30E8;
  v5[4] = self;
  [v4 enqueueBlock:v5];
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{
  v2 = [(FRFavoritesPersonalizer *)self configurationStore];
  v3 = [v2 bundleIDMapping];

  return v3;
}

- (FCPersonalizationURLMapping)urlMapping
{
  v2 = [(FRFavoritesPersonalizer *)self configurationStore];
  v3 = [v2 urlMapping];

  return v3;
}

@end