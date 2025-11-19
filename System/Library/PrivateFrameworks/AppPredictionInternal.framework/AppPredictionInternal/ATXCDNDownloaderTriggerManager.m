@interface ATXCDNDownloaderTriggerManager
+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4;
- (ATXCDNDownloaderTriggerManager)init;
- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)a3 heroAppServer:(id)a4 heroClipManager:(id)a5 heroAppManager:(id)a6 predictionContextBuilder:(id)a7 nudgeRegistrar:(Class)a8 locationManager:(id)a9;
- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)a3 predictionContextBuilder:(id)a4 nudgeRegistrar:(Class)a5;
- (id)requestHighQualityLocationWithHundredMeterAccuracy;
- (void)_registerForRestrictionChangedNotifications;
- (void)_registerForSiriSettingsChangedNotifications;
- (void)forwardLocationToCDNDownloaderAndHandleReply;
- (void)handleProfileChangedNotification;
- (void)handleSiriSettingsChangedNotification;
- (void)queryAndHandlePredictionsFromCDNDownloader;
@end

@implementation ATXCDNDownloaderTriggerManager

- (void)handleSiriSettingsChangedNotification
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = 138412546;
    v13 = v8;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - got siri settings notification, canSuggestAppClips is: %{BOOL}d", &v12, 0x12u);
  }

  if ((v5 & 1) == 0)
  {
    heroClipManager = self->_heroClipManager;
    v10 = objc_opt_new();
    [(ATXHeroClipManager *)heroClipManager donateAppClipsWithHeroAppPredictions:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryAndHandlePredictionsFromCDNDownloader
{
  v3 = +[_ATXGlobals sharedInstance];
  v4 = [v3 cdnDownloaderIsEnabled];

  if (v4)
  {
    cdnDownloader = self->_cdnDownloader;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke;
    v7[3] = &unk_278599D18;
    v7[4] = self;
    [(ATXProactiveCDNDownloaderProtocol *)cdnDownloader highConfidenceHeroDatasForCurrentLocationWithCompletion:v7];
  }

  else
  {
    v6 = __atxlog_handle_hero();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Skipping CDN download since it's disabled", buf, 2u);
    }
  }
}

- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)a3 predictionContextBuilder:(id)a4 nudgeRegistrar:(Class)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [ATXHeroDataServer alloc];
  v13 = objc_opt_new();
  v14 = [(ATXHeroDataServer *)v12 initWithHeroClipManager:v10 heroAppManager:v11 tracker:v13];

  v15 = [MEMORY[0x277D41BF8] sharedInstance];
  v16 = [(ATXCDNDownloaderTriggerManager *)self initWithCDNDownloader:v9 heroAppServer:v14 heroClipManager:v10 heroAppManager:v11 predictionContextBuilder:v8 nudgeRegistrar:a5 locationManager:v15];

  return v16;
}

- (ATXCDNDownloaderTriggerManager)initWithCDNDownloader:(id)a3 heroAppServer:(id)a4 heroClipManager:(id)a5 heroAppManager:(id)a6 predictionContextBuilder:(id)a7 nudgeRegistrar:(Class)a8 locationManager:(id)a9
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v34.receiver = self;
  v34.super_class = ATXCDNDownloaderTriggerManager;
  v18 = [(ATXCDNDownloaderTriggerManager *)&v34 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_heroClipManager, a5);
    objc_storeStrong(&v19->_heroAppManager, a6);
    objc_storeStrong(&v19->_server, a4);
    objc_storeStrong(&v19->_cdnDownloader, a3);
    objc_storeStrong(&v19->_locationManager, a9);
    objc_storeStrong(&v19->_predictionContextBuilder, a7);
    v20 = objc_opt_class();
    Name = class_getName(v20);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(Name, v22);
    queue = v19->_queue;
    v19->_queue = v23;

    v25 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:2 perPeriod:15.0];
    rateLimiter = v19->_rateLimiter;
    v19->_rateLimiter = v25;

    [(ATXCDNDownloaderTriggerManager *)v19 _registerForRestrictionChangedNotifications];
    [(ATXCDNDownloaderTriggerManager *)v19 _registerForSiriSettingsChangedNotifications];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __157__ATXCDNDownloaderTriggerManager_initWithCDNDownloader_heroAppServer_heroClipManager_heroAppManager_predictionContextBuilder_nudgeRegistrar_locationManager___block_invoke;
    v32[3] = &unk_278596BB8;
    v33 = v19;
    [(objc_class *)a8 registerForNearbyAppNudgeWithBlock:v32];
  }

  return v19;
}

uint64_t __157__ATXCDNDownloaderTriggerManager_initWithCDNDownloader_heroAppServer_heroClipManager_heroAppManager_predictionContextBuilder_nudgeRegistrar_locationManager___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_hero();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Trigger received", v4, 2u);
  }

  return [*(a1 + 32) queryAndHandlePredictionsFromCDNDownloader];
}

- (ATXCDNDownloaderTriggerManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277D41BA0]);
  v4 = objc_alloc_init(ATXPredictionContextBuilder);
  v5 = [(ATXCDNDownloaderTriggerManager *)self initWithCDNDownloader:v3 predictionContextBuilder:v4 nudgeRegistrar:objc_opt_class()];

  return v5;
}

void __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(v6, v7);
    }

    goto LABEL_5;
  }

  if (![v5 count])
  {
LABEL_5:
    v8 = __atxlog_handle_hero();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[ATXCDNDownloaderTriggerManager queryAndHandlePredictionsFromCDNDownloader]_block_invoke";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s No high confidence hero app predictions received for current location. Forwarding location to CDNDownloader ", &v11, 0xCu);
    }

    [*(a1 + 32) forwardLocationToCDNDownloaderAndHandleReply];
    goto LABEL_12;
  }

  v9 = __atxlog_handle_hero();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ATXCDNDownloaderTriggerManager queryAndHandlePredictionsFromCDNDownloader]_block_invoke";
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s Received high confidence hero app predictions for current location. Forwarding predictions to ATXHeroDataServer", &v11, 0xCu);
  }

  [*(a1 + 32) _forwardHeroAppPredictionsToHeroAppPredictionsServer:v5];
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)forwardLocationToCDNDownloaderAndHandleReply
{
  sel_getName(a2);
  v3 = os_transaction_create();
  v4 = [(ATXCDNDownloaderTriggerManager *)self rateLimiter];
  v5 = [v4 tryToIncrementCountAndReturnSuccess];

  if (v5)
  {
    v6 = [(ATXCDNDownloaderTriggerManager *)self requestHighQualityLocationWithHundredMeterAccuracy];
    if (v6)
    {
      cdnDownloader = self->_cdnDownloader;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __78__ATXCDNDownloaderTriggerManager_forwardLocationToCDNDownloaderAndHandleReply__block_invoke;
      v10[3] = &unk_278599D18;
      v10[4] = self;
      [(ATXProactiveCDNDownloaderProtocol *)cdnDownloader heroDatasForLocation:v6 completion:v10];
    }

    else
    {
      v8 = __atxlog_handle_hero();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Clearing hero app predictions since nil or bad quality location received.", buf, 2u);
      }

      v9 = objc_opt_new();
      [(ATXCDNDownloaderTriggerManager *)self _forwardHeroAppPredictionsToHeroAppPredictionsServer:v9];
    }
  }

  else
  {
    v6 = __atxlog_handle_hero();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Skipping CDN download since rate limit exceeded", buf, 2u);
    }
  }
}

void __78__ATXCDNDownloaderTriggerManager_forwardLocationToCDNDownloaderAndHandleReply__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_hero();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    [*(a1 + 32) _forwardHeroAppPredictionsToHeroAppPredictionsServer:a2];
  }
}

- (id)requestHighQualityLocationWithHundredMeterAccuracy
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  v4 = [(ATXLocationManager *)self->_locationManager getCurrentLocation];
  v5 = [v3 timeContext];
  v6 = [v5 date];

  v7 = __atxlog_handle_hero();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v8)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Nil location received. Ignoring trigger.", &v18, 2u);
    }

    goto LABEL_11;
  }

  if (v8)
  {
    [v4 coordinate];
    v10 = v9;
    [v4 coordinate];
    v18 = 134545921;
    v19 = v10;
    v20 = 2053;
    v21 = v11;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Received location, %{sensitive}f, %{sensitive}f", &v18, 0x16u);
  }

  v12 = [objc_opt_class() _locationIsStaleOrNotAccurateEnough:v4 now:v6];
  v13 = __atxlog_handle_hero();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Stale or inaccurate location received. Ignoring trigger.", &v18, 2u);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_15;
  }

  if (v14)
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Location passed quality checks. Forwarding to CDN Downloader.", &v18, 2u);
  }

  v15 = v4;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 60.0)
  {
    [v5 horizontalAccuracy];
    if (v12 <= 100.0)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v5 horizontalAccuracy];
      v17 = 134217984;
      v18 = v13;
      v11 = "Location uncertainty too large, horizontalAccuracy, %f. Ignoring trigger.";
      goto LABEL_7;
    }
  }

  else
  {
    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v9;
      v11 = "Location is stale. Age: %f. Ignoring trigger.";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_hero();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXCDNDownloaderTriggerManager _forwardHeroAppPredictionsToHeroAppPredictionsServer:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s Successfully donated predictions.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForRestrictionChangedNotifications
{
  if (!self->_restrictionChangedNotificationToken)
  {
    v9[7] = v2;
    v9[8] = v3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D26178];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__ATXCDNDownloaderTriggerManager__registerForRestrictionChangedNotifications__block_invoke;
    v9[3] = &unk_278599D40;
    v9[4] = self;
    v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v9];
    restrictionChangedNotificationToken = self->_restrictionChangedNotificationToken;
    self->_restrictionChangedNotificationToken = v7;
  }
}

- (void)handleProfileChangedNotification
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isAppClipsAllowed];

  if ((v4 & 1) == 0)
  {
    v5 = __atxlog_handle_hero();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - MCProfileConnection status changed, App clips no longer allowed. Clearing predictions", &v11, 0xCu);
    }

    heroClipManager = self->_heroClipManager;
    v9 = objc_opt_new();
    [(ATXHeroClipManager *)heroClipManager donateAppClipsWithHeroAppPredictions:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_registerForSiriSettingsChangedNotifications
{
  if (!self->_siriSettingsChangedNotificationToken)
  {
    handler[5] = v2;
    handler[6] = v3;
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __78__ATXCDNDownloaderTriggerManager__registerForSiriSettingsChangedNotifications__block_invoke;
    handler[3] = &unk_278597800;
    handler[4] = self;
    notify_register_dispatch("com.apple.suggestions.settingsChanged", &self->_siriSettingsChangedNotificationToken, queue, handler);
  }
}

void __76__ATXCDNDownloaderTriggerManager_queryAndHandlePredictionsFromCDNDownloader__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while querying data from GeoServices. Error: %@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __87__ATXCDNDownloaderTriggerManager__forwardHeroAppPredictionsToHeroAppPredictionsServer___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 136446210;
  v6 = [v3 UTF8String];
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while donating predictions, %{public}s", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end