@interface ATXWidgetSuggestionAbuseGuard
+ (id)sharedInstance;
- (ATXWidgetSuggestionAbuseGuard)initWithConfig:(id)config store:(id)store;
- (BOOL)shouldDemoteSuggestionsForWidget:(id)widget kind:(id)kind intent:(id)intent;
- (void)_invalidatePreviousVerdicts;
- (void)_scheduleRefreshNoLaterThanDate:(id)date;
@end

@implementation ATXWidgetSuggestionAbuseGuard

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7 != -1)
  {
    +[ATXWidgetSuggestionAbuseGuard sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __47__ATXWidgetSuggestionAbuseGuard_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXWidgetSuggestionAbuseGuard alloc];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CEB5C8] sharedInstance];
  v4 = [(ATXWidgetSuggestionAbuseGuard *)v1 initWithConfig:v2 store:v3];
  v5 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

- (ATXWidgetSuggestionAbuseGuard)initWithConfig:(id)config store:(id)store
{
  configCopy = config;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = ATXWidgetSuggestionAbuseGuard;
  v9 = [(ATXWidgetSuggestionAbuseGuard *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_store, store);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    scheduledRefreshDate = v10->_scheduledRefreshDate;
    v10->_scheduledRefreshDate = distantFuture;

    v13 = [[ATXInformationFilter alloc] initWithStore:v10->_store abuseControlConfig:v10->_config];
    filter = v10->_filter;
    v10->_filter = v13;
  }

  return v10;
}

- (BOOL)shouldDemoteSuggestionsForWidget:(id)widget kind:(id)kind intent:(id)intent
{
  v38 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  v11 = widgetCopy;
  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    LOBYTE(v30) = 0;
    if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", *MEMORY[0x277CEBD00], &v30))
    {

LABEL_6:
      v13 = __atxlog_handle_relevant_shortcut();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        intentDescription = [intentCopy intentDescription];
        v30 = 136315906;
        v31 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = kindCopy;
        v36 = 2112;
        v37 = intentDescription;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: NO (WidgetKit Developer Mode enabled) for widget %@:%@:%@", &v30, 0x2Au);
      }

      v15 = 0;
      goto LABEL_25;
    }

    v12 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v11];

    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = [(ATXInformationFilter *)self->_filter numberOfSeenRotationsForWidget:v11 kind:kindCopy intent:intentCopy filterByClientModelId:0];
  v17 = [(ATXTimelineAbuseControlConfig *)self->_config hardRotationQuotaForWidgetWithIdentifier:v11 kind:kindCopy];
  if ((v17 & 0x8000000000000000) != 0 || v16 < v17)
  {
    v13 = [(ATXInformationStore *)self->_store mostRecentRotationRecordForWidget:v11 kind:kindCopy intent:intentCopy considerStalenessRotation:0 filterByClientModelId:0];
    store = self->_store;
    rotationDate = [v13 rotationDate];
    v21 = [(ATXInformationStore *)store firstEngagementOfWidget:v11 kind:kindCopy intent:intentCopy sinceTimestamp:rotationDate];

    if (v13 && v21)
    {
      date = [v21 date];
      [v13 coolDownInterval];
      v23 = [date dateByAddingTimeInterval:?];

      [v23 timeIntervalSinceNow];
      if (v24 > 0.0)
      {
        [(ATXWidgetSuggestionAbuseGuard *)self _scheduleRefreshNoLaterThanDate:v23];
        v26 = __atxlog_handle_relevant_shortcut();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          intentDescription2 = [intentCopy intentDescription];
          v30 = 136315906;
          v31 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
          v32 = 2112;
          v33 = v11;
          v34 = 2112;
          v35 = kindCopy;
          v36 = 2112;
          v37 = intentDescription2;
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "%s: YES (in cool down) for widget %@:%@:%@", &v30, 0x2Au);
        }

        v15 = 1;
        goto LABEL_24;
      }
    }

    v23 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      intentDescription3 = [intentCopy intentDescription];
      v30 = 136315906;
      v31 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = kindCopy;
      v36 = 2112;
      v37 = intentDescription3;
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "%s: NO for widget %@:%@:%@", &v30, 0x2Au);
    }

    v15 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v13 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    intentDescription4 = [intentCopy intentDescription];
    v30 = 136315906;
    v31 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = kindCopy;
    v36 = 2112;
    v37 = intentDescription4;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: YES (exceeds quota) for widget %@:%@:%@", &v30, 0x2Au);
  }

  v15 = 1;
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_scheduleRefreshNoLaterThanDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  scheduledRefreshDate = self->_scheduledRefreshDate;
  v7 = [(NSDate *)scheduledRefreshDate earlierDate:dateCopy];

  if (scheduledRefreshDate != v7)
  {
    objc_storeStrong(&self->_scheduledRefreshDate, date);
    v8 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ATXWidgetSuggestionAbuseGuard _scheduleRefreshNoLaterThanDate:]";
      v16 = 2112;
      v17 = dateCopy;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Updated refresh date to %@.", buf, 0x16u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = *MEMORY[0x277D86250];
    [(NSDate *)self->_scheduledRefreshDate timeIntervalSinceNow];
    xpc_dictionary_set_int64(v9, v10, v11);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86270], 300);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_string(v9, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__ATXWidgetSuggestionAbuseGuard__scheduleRefreshNoLaterThanDate___block_invoke;
    v13[3] = &unk_278596790;
    v13[4] = self;
    atxRegisterCTSJobHandler("com.apple.duetexpertd.AbuseGuardRefresh", v9, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_invalidatePreviousVerdicts
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXWidgetSuggestionAbuseGuard _invalidatePreviousVerdicts]";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ATXWidgetSuggestionAbuseGuardRefresh" object:self];

  v5 = *MEMORY[0x277D85DE8];
}

@end