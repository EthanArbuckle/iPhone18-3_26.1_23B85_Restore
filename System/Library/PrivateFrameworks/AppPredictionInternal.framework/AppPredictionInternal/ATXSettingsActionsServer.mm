@interface ATXSettingsActionsServer
+ (id)sharedInstance;
- (ATXSettingsActionsServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_dummyDayZeroSettingsActionsForDeduping;
- (id)_dummyDayZeroWatchAppSettingsActionsForDeduping;
- (id)_suggestedActionsWithDayZeroBackfillForDeduping:(id)deduping clientBundleID:(id)d;
- (id)_suggestedActionsWithRequest:(id)request;
- (void)recentActionsWithRequest:(id)request completionHandler:(id)handler;
- (void)suggestedActionsWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation ATXSettingsActionsServer

- (id)_dummyDayZeroSettingsActionsForDeduping
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CEB7F8]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Sounds"];
  v5 = [v3 initWithNavigationLink:v4];
  v6 = objc_alloc(MEMORY[0x277CEB7F8]);
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Notifications"];
  v8 = [v6 initWithNavigationLink:v7];
  v9 = objc_alloc(MEMORY[0x277CEB7F8]);
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Focus"];
  v11 = [v9 initWithNavigationLink:v10];
  v12 = objc_alloc(MEMORY[0x277CEB7F8]);
  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.ScreenTime"];
  v14 = [v12 initWithNavigationLink:v13];
  v15 = [v2 initWithObjects:{v5, v8, v11, v14, 0}];

  return v15;
}

- (id)_dummyDayZeroWatchAppSettingsActionsForDeduping
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CEB7F8]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=SOUNDS_ID"];
  v5 = [v3 initWithNavigationLink:v4];
  v6 = objc_alloc(MEMORY[0x277CEB7F8]);
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=NOTIFICATIONS_ID"];
  v8 = [v6 initWithNavigationLink:v7];
  v9 = objc_alloc(MEMORY[0x277CEB7F8]);
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bbridge:root=ACCESSIBILITY"];
  v11 = [v9 initWithNavigationLink:v10];
  v12 = objc_alloc(MEMORY[0x277CEB7F8]);
  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=SOS_MODE_ID"];
  v14 = [v12 initWithNavigationLink:v13];
  v15 = [v2 initWithObjects:{v5, v8, v11, v14, 0}];

  return v15;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_43 != -1)
  {
    +[ATXSettingsActionsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_55;

  return v3;
}

void __42__ATXSettingsActionsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_55;
  sharedInstance__pasExprOnceResult_55 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSettingsActionsServer)init
{
  v9.receiver = self;
  v9.super_class = ATXSettingsActionsServer;
  v2 = [(ATXSettingsActionsServer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEB278]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Listening for connections", v8, 2u);
    }
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_settings_actions();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Connection attempted", buf, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEB278]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Connection established", v13, 2u);
    }

    v9 = ATXSettingsActionsInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_18_2];
    [connectionCopy setInvalidationHandler:&__block_literal_global_21_7];
    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXSettingsActionsServer listener:shouldAcceptNewConnection:];
    }

    v10 = 0;
  }

  return v10;
}

void __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_settings_actions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_19()
{
  v0 = __atxlog_handle_settings_actions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_19_cold_1();
  }
}

- (id)_suggestedActionsWithRequest:(id)request
{
  requestCopy = request;
  limit = [requestCopy limit];
  clientBundleID = [requestCopy clientBundleID];

  v6 = [clientBundleID isEqualToString:@"com.apple.Bridge"];
  if (limit)
  {
    v7 = limit;
  }

  else
  {
    v7 = 4;
  }

  v8 = objc_alloc(MEMORY[0x277CEB7D8]);
  if (v6)
  {
    v9 = 49;
  }

  else
  {
    v9 = 46;
  }

  v10 = [v8 initWithConsumerSubType:v9];
  suggestionLayoutFromCache = [v10 suggestionLayoutFromCache];
  allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
  v13 = [allSuggestionsInLayout _pas_mappedArrayWithTransform:&__block_literal_global_28_2];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v16 count];
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  v19 = [v16 subarrayWithRange:{0, v18}];

  return v19;
}

id __57__ATXSettingsActionsServer__suggestedActionsWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = a2;
  v4 = [[v2 alloc] initWithProactiveSuggestion:v3];

  if ([v4 bundleIdentifierIsHiddenForSettingsAction])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)suggestedActionsWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = __atxlog_handle_settings_actions();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_settings_actions();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RetrieveSuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  clientBundleID = [requestCopy clientBundleID];

  if (!clientBundleID)
  {
    [requestCopy setClientBundleID:@"com.apple.Preferences"];
  }

  v13 = [(ATXSettingsActionsServer *)self _suggestedActionsWithRequest:requestCopy];
  v14 = [objc_alloc(MEMORY[0x277CEB810]) initWithActions:v13];
  handlerCopy[2](handlerCopy, v14, 0);

  v15 = __atxlog_handle_settings_actions();
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v16, OS_SIGNPOST_INTERVAL_END, v9, "RetrieveSuggestedActions", " enableTelemetry=YES ", v17, 2u);
  }
}

- (void)recentActionsWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = __atxlog_handle_settings_actions();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_settings_actions();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RetrieveRecentActions", " enableTelemetry=YES ", buf, 2u);
  }

  clientBundleID = [requestCopy clientBundleID];

  if (!clientBundleID)
  {
    [requestCopy setClientBundleID:@"com.apple.Preferences"];
  }

  spid = v9;
  limit = [requestCopy limit];
  if (limit)
  {
    v15 = limit;
  }

  else
  {
    v15 = 10;
  }

  *buf = 0;
  v53[0] = buf;
  v53[1] = 0x3032000000;
  v53[2] = __Block_byref_object_copy__107;
  v53[3] = __Block_byref_object_dispose__107;
  v54 = 0;
  v16 = objc_alloc_init(MEMORY[0x277D23CC0]);
  v17 = [MEMORY[0x277CBEAA8] now];
  startDate = [requestCopy startDate];
  v19 = (v53[0] + 40);
  obj = *(v53[0] + 40);
  v20 = [v16 transcriptPublisherWithStreamName:0 fromDate:v17 toDate:startDate maxEvents:0 reversed:1 error:&obj];
  objc_storeStrong(v19, obj);

  if (v20 && !*(v53[0] + 40))
  {
    v26 = objc_opt_new();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke;
    v49[3] = &unk_278597540;
    v49[4] = buf;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke_2;
    v45[3] = &unk_2785A1EF8;
    v27 = requestCopy;
    v46 = v27;
    v25 = v26;
    v47 = v25;
    v48 = v15;
    v28 = [v20 sinkWithCompletion:v49 shouldContinue:v45];
    if (*(v53[0] + 40))
    {
      v29 = __atxlog_handle_settings_actions();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ATXSettingsActionsServer recentActionsWithRequest:v53 completionHandler:?];
      }

      v30 = *(v53[0] + 40);
      v31 = v30;
      if (!v30)
      {
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXSettingsActionsServer" code:-2 userInfo:0];
      }

      handlerCopy[2](handlerCopy, 0, v31);
      if (!v30)
      {
      }

      v32 = __atxlog_handle_settings_actions();
      v33 = v32;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *v50 = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v33, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v50, 2u);
      }
    }

    else
    {
      v33 = objc_opt_new();
      clientBundleID2 = [v27 clientBundleID];
      [v33 setClientBundleID:clientBundleID2];

      v35 = [v43 _suggestedActionsWithRequest:v33];
      clientBundleID3 = [v27 clientBundleID];
      v37 = [v43 _suggestedActionsWithDayZeroBackfillForDeduping:v35 clientBundleID:clientBundleID3];
      [v25 minusSet:v37];

      v38 = objc_alloc(MEMORY[0x277CEB810]);
      array = [v25 array];
      v40 = [v38 initWithActions:array];

      (handlerCopy)[2](handlerCopy, v40, 0);
      v41 = __atxlog_handle_settings_actions();
      v42 = v41;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *v50 = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v42, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v50, 2u);
      }
    }
  }

  else
  {
    v21 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXSettingsActionsServer recentActionsWithRequest:v53 completionHandler:?];
    }

    v22 = *(v53[0] + 40);
    v23 = v22;
    if (!v22)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXSettingsActionsServer" code:-1 userInfo:0];
    }

    handlerCopy[2](handlerCopy, 0, v23);
    if (!v22)
    {
    }

    v24 = __atxlog_handle_settings_actions();
    v25 = v24;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v25, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v50, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (v3)
  {
    v4 = [v7 error];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

BOOL __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 action];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v3 eventBody];
  v7 = [v6 predictions];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [*(a1 + 32) clientBundleID];
  v10 = [v3 eventBody];
  v11 = [v10 bundleIdentifier];
  v12 = [v9 isEqualToString:v11];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = MEMORY[0x277CEB7F8];
  v14 = [v3 eventBody];
  v15 = [v14 bundleIdentifier];
  v16 = [v3 eventBody];
  v17 = [v16 action];
  v18 = [v17 identifier];
  LODWORD(v13) = [v13 isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:v15 actionIdentifier:v18];

  if (v13)
  {
    v19 = objc_alloc(MEMORY[0x277CEB7F8]);
    v20 = [v3 eventBody];
    v21 = [v20 action];
    v22 = [v3 eventBody];
    v23 = [v22 executionDate];
    v24 = [v19 initWithAction:v21 date:v23];

    if (([v24 bundleIdentifierIsHiddenForSettingsAction] & 1) == 0)
    {
      [*(a1 + 40) addObject:v24];
    }

    v25 = [*(a1 + 40) count] < *(a1 + 48);
  }

  else
  {
LABEL_8:
    v25 = 1;
  }

  return v25;
}

- (id)_suggestedActionsWithDayZeroBackfillForDeduping:(id)deduping clientBundleID:(id)d
{
  dedupingCopy = deduping;
  dCopy = d;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:dedupingCopy];
  if (dCopy && [dCopy isEqualToString:@"com.apple.Bridge"])
  {
    _dummyDayZeroWatchAppSettingsActionsForDeduping = [(ATXSettingsActionsServer *)self _dummyDayZeroWatchAppSettingsActionsForDeduping];
  }

  else
  {
    _dummyDayZeroWatchAppSettingsActionsForDeduping = [(ATXSettingsActionsServer *)self _dummyDayZeroSettingsActionsForDeduping];
  }

  v10 = _dummyDayZeroWatchAppSettingsActionsForDeduping;
  if ([v8 count] <= 3)
  {
    do
    {
      if (![v10 count])
      {
        break;
      }

      v11 = [v10 objectAtIndexedSubscript:0];
      [v10 removeObjectAtIndex:0];
      [v8 addObject:v11];
    }

    while ([v8 count] < 4);
  }

  return v8;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recentActionsWithRequest:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recentActionsWithRequest:(uint64_t)a1 completionHandler:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end