@interface ATXClient
+ (id)clientForConsumerType:(unint64_t)a3;
+ (id)clientForConsumerType:(unint64_t)a3 cacheBasePath:(id)a4;
+ (id)dayZeroBundleIdsAndScoresFromDayZeroParameters:(id)a3;
- (ATXClient)initWithConsumerType:(unint64_t)a3 cacheBasePath:(id)a4;
- (BOOL)forceCacheUpdateForConsumerSubType:(unsigned __int8)a3 intent:(id)a4 candidateBundleIdentifiers:(id)a5 candidateIntentTypeIdentifiers:(id)a6;
- (BOOL)shouldPredictAppBundleId:(id)a3;
- (BOOL)shouldPredictBundleIdForShortcuts:(id)a3 action:(id)a4 forPrimaryShortcuts:(BOOL)a5;
- (id)_asyncProxy;
- (id)_getConnection;
- (id)_minuteZeroResponse;
- (id)_predicateForDenyList:(id)a3;
- (id)_simulatorResponse;
- (id)_syncProxy;
- (id)appPredictionsForConsumerSubType:(unsigned __int8)a3 blackList:(id)a4 limit:(int)a5 runningDiagnostics:(BOOL)a6;
- (id)appPredictionsForConsumerSubType:(unsigned __int8)a3 limit:(int)a4 personaUID:(id)a5;
- (id)approvedSiriKitIntents;
- (id)atxResponseFromBlendingAppPredictionCacheForConsumerSubType:(unsigned __int8)a3 filterPredicate:(id)a4 limit:(int)a5;
- (id)fetchLastExecutedActions;
- (id)fetchMenuItemsForCurrentAppInFocus:(id *)a3;
- (id)fetchPreWarmedContextualActionSuggestionsWithError:(id *)a3;
- (id)fetchToolKitBasedFallbackActionIds:(id *)a3;
- (id)getAppPredictorAssetMappingDescription;
- (id)semanticallySimilarDocumentsFromOnScreenAppEntities;
- (void)dealloc;
- (void)getWebsitePredictionsForContextType:(id)a3 limit:(unint64_t)a4 reply:(id)a5;
- (void)logUserFeedback:(id)a3 consumerSubType:(unsigned __int8)a4 engagementType:(unint64_t)a5 bundleIdentifier:(id)a6 bundleIdsShown:(id)a7 explicitlyRejectedIds:(id)a8 personaUID:(id)a9;
- (void)notifySpotlightInvoked:(BOOL)a3;
- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)a3 contextType:(id)a4;
- (void)recentURLsWithLimit:(unint64_t)a3 typeIdentifiersForScope:(id)a4 withCompletion:(id)a5;
- (void)sortAppsByLaunches:(id)a3 reply:(id)a4;
@end

@implementation ATXClient

+ (id)clientForConsumerType:(unint64_t)a3
{
  v3 = [[ATXClient alloc] initWithConsumerType:a3 cacheBasePath:0];

  return v3;
}

+ (id)clientForConsumerType:(unint64_t)a3 cacheBasePath:(id)a4
{
  v5 = a4;
  v6 = [[ATXClient alloc] initWithConsumerType:a3 cacheBasePath:v5];

  return v6;
}

- (ATXClient)initWithConsumerType:(unint64_t)a3 cacheBasePath:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ATXClient;
  v8 = [(ATXClient *)&v15 init];
  if (v8)
  {
    v9 = [[ATXCacheReader alloc] initWithCacheBasePath:v7];
    cacheReader = v8->_cacheReader;
    v8->_cacheReader = v9;

    objc_storeStrong(&v8->_cacheBasePath, a4);
    v8->_consumerType = a3;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.proactive.AppPrediction.client.ATXClientQueue", v11);
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

- (void)dealloc
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXClient dealloc];
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = ATXClient;
  [(ATXClient *)&v4 dealloc];
}

- (id)_getConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.AppPrediction.predictions" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = ATXAppPredictionXPCInterface();
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_44];
    [(NSXPCConnection *)self->_xpcConnection resume];
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __27__ATXClient__getConnection__block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __27__ATXClient__getConnection__block_invoke_cold_1();
  }
}

- (id)_asyncProxy
{
  v3 = [(ATXClient *)self _getConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__ATXClient__asyncProxy__block_invoke;
  v6[3] = &unk_1E80C2AF8;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __24__ATXClient__asyncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__ATXClient__asyncProxy__block_invoke_cold_1();
  }
}

- (id)_syncProxy
{
  v2 = [(ATXClient *)self _getConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18_0];

  return v3;
}

void __23__ATXClient__syncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__ATXClient__asyncProxy__block_invoke_cold_1();
  }
}

- (void)sortAppsByLaunches:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ATXClient *)self _getConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 sortAppsByLaunches:v7 reply:v6];
}

- (id)approvedSiriKitIntents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  v2 = [(ATXClient *)self _getConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__ATXClient_approvedSiriKitIntents__block_invoke_21;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 approvedSiriKitIntentsWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__ATXClient_approvedSiriKitIntents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__ATXClient_approvedSiriKitIntents__block_invoke_cold_1();
  }
}

void __35__ATXClient_approvedSiriKitIntents__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __35__ATXClient_approvedSiriKitIntents__block_invoke_cold_1();
    }
  }

  if ([v6 count])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)shouldPredictAppBundleId:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(ATXClient *)self _getConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__ATXClient_shouldPredictAppBundleId___block_invoke_25;
  v8[3] = &unk_1E80C3150;
  v8[4] = &v9;
  [v6 shouldPredictAppBundleId:v4 reply:v8];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __38__ATXClient_shouldPredictAppBundleId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__ATXClient_shouldPredictAppBundleId___block_invoke_cold_1();
  }
}

void __38__ATXClient_shouldPredictAppBundleId___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __38__ATXClient_shouldPredictAppBundleId___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)shouldPredictBundleIdForShortcuts:(id)a3 action:(id)a4 forPrimaryShortcuts:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = [(ATXClient *)self _getConnection];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28_0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_29;
  v13[3] = &unk_1E80C3150;
  v13[4] = &v14;
  [v11 shouldPredictBundleIdForShortcuts:v8 action:v9 forPrimaryShortcuts:v5 reply:v13];

  LOBYTE(v5) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v5;
}

void __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_cold_1();
  }
}

void __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (id)appPredictionsForConsumerSubType:(unsigned __int8)a3 limit:(int)a4 personaUID:(id)a5
{
  v5 = *&a4;
  v6 = a3;
  v8 = __atxlog_handle_metrics();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_metrics();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ATXSpotlightClient.SuggestedApps", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = objc_opt_new();
  v13 = [(ATXClient *)self appPredictionsForConsumerSubType:v6 blackList:v12 limit:v5 runningDiagnostics:0];

  v14 = __atxlog_handle_metrics();
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v15, OS_SIGNPOST_INTERVAL_END, v9, "ATXSpotlightClient.SuggestedApps", " enableTelemetry=YES ", v17, 2u);
  }

  return v13;
}

- (id)_predicateForDenyList:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__ATXClient__predicateForDenyList___block_invoke;
  v8[3] = &unk_1E80C1508;
  v9 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v8];

  return v6;
}

uint64_t __35__ATXClient__predicateForDenyList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 predictedItem];
  v5 = [ATXApplicationRecord isInstalledAndNotRestrictedForBundle:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 predictedItem];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)appPredictionsForConsumerSubType:(unsigned __int8)a3 blackList:(id)a4 limit:(int)a5 runningDiagnostics:(BOOL)a6
{
  v7 = *&a5;
  v8 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v29[0] = 67109378;
    v29[1] = v8;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_INFO, "App predictions for subtype %i deny list: %@", v29, 0x12u);
  }

  if (a6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(ATXClient *)self _predicateForDenyList:v10];
  }

  if (v8 != 9)
  {
    v18 = [(ATXCacheReader *)self->_cacheReader readCacheFileForConsumerSubtype:v8];
    if (v18)
    {
      v19 = ATXCacheFileSplitChunks();
      if ([v19 count] == 2)
      {
        v20 = [v19 firstObject];
        v21 = [ATXPredictionSetReader bundleIdReader:v20];
        v22 = [v21 readScoredPredictionsWithLimit:v7 filterPredicate:v12];
        v23 = [[ATXResponse alloc] initWithPredictions:v22 cacheFileData:v18 error:0];

        if (v23)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v25 = __atxlog_handle_default();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29[0]) = 0;
          _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "No chunks returned from cache. (this may be due to a cache file change)", v29, 2u);
        }
      }
    }

    v26 = [ATXResponse alloc];
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ATXClient" code:1 userInfo:0];
    v23 = [(ATXResponse *)v26 initWithPredictions:0 cacheFileData:0 error:v27];

    goto LABEL_24;
  }

  v13 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  if (v13 && (v14 = v13, v15 = [v13 BOOLValue], v14, !v15))
  {
    v24 = __atxlog_handle_blending();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "Siri setting 'Show Suggestions' turned off. [ATXClient appPredictionsForConsumerSubType:blackList:limit:runningDiagnostics:] to return an empty ATXResponse", v29, 2u);
    }

    v17 = [[ATXResponse alloc] initWithPredictions:0 cacheFileData:0 error:0];
  }

  else
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "Blending providing suggestions to ATXConsumerSubTypeSpotlightUnknown inside ATXClient...", v29, 2u);
    }

    v17 = [(ATXClient *)self atxResponseFromBlendingAppPredictionCacheForConsumerSubType:9 filterPredicate:v12 limit:v7];
  }

  v23 = v17;
LABEL_25:

  return v23;
}

- (id)atxResponseFromBlendingAppPredictionCacheForConsumerSubType:(unsigned __int8)a3 filterPredicate:(id)a4 limit:(int)a5
{
  v6 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:v6];
  v10 = [(ATXProactiveSuggestionClient *)v9 suggestionLayoutFromCache];
  if (v10)
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = [v10 allSuggestionsInLayout];
    v14 = __atxlog_handle_blending();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v13 count];
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "Blending retrieved a layout with %lu bundleIds in it.", &buf, 0xCu);
    }

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__8;
    v38 = __Block_byref_object_dispose__8;
    v39 = v8;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke;
    v25[3] = &unk_1E80C3178;
    v30 = a5;
    v28 = v31;
    p_buf = &buf;
    v15 = v11;
    v26 = v15;
    v16 = v12;
    v27 = v16;
    [v13 enumerateObjectsUsingBlock:v25];
    v17 = __atxlog_handle_blending();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v15 count];
      *v33 = 134217984;
      v34 = v18;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "Blending created an ATXResponse that has %lu bundleIds in it.", v33, 0xCu);
    }

    v19 = [ATXResponse alloc];
    v20 = objc_opt_new();
    v21 = [v10 uuid];
    v22 = [(ATXResponse *)v19 initWithPredictions:v15 proactiveSuggestions:v16 uuid:v20 cacheFileData:0 blendingUICacheUpdateUUID:v21 error:0];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    v23 = __atxlog_handle_blending();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "There was no cached suggestion layout, falling back to minute zero response", &buf, 2u);
    }

    v22 = [(ATXClient *)self _minuteZeroResponse];
  }

  return v22;
}

void __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    *a4 = 1;
  }

  else
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [ATXScoredPrediction alloc];
      v11 = [v7 scoreSpecification];
      [v11 rawScore];
      *&v12 = v12;
      v13 = [(ATXScoredPrediction *)v10 initWithPredictedItem:v9 score:v12];

      if (v13 && ((v14 = *(*(*(a1 + 56) + 8) + 40)) == 0 || [v14 evaluateWithObject:v13]))
      {
        [*(a1 + 32) addObject:v13];
        [*(a1 + 40) addObject:v7];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v15 = __atxlog_handle_blending();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v9;
          _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_INFO, "%@ did not pass app prediction deny list filters", &v16, 0xCu);
        }
      }
    }

    else
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke_cold_1();
      }
    }
  }
}

- (void)logUserFeedback:(id)a3 consumerSubType:(unsigned __int8)a4 engagementType:(unint64_t)a5 bundleIdentifier:(id)a6 bundleIdsShown:(id)a7 explicitlyRejectedIds:(id)a8 personaUID:(id)a9
{
  v13 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = __atxlog_handle_default();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v20)
  {
    v33 = a5;
    v21 = objc_opt_new();
    if ([v17 count])
    {
      v22 = 0;
      do
      {
        if (v22)
        {
          [v21 appendString:{@", "}];
        }

        v23 = [v17 objectAtIndexedSubscript:v22];
        [v21 appendString:v23];

        ++v22;
      }

      while ([v17 count] > v22);
    }

    v24 = __atxlog_handle_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v32 = [MEMORY[0x1E698B028] stringForConsumerType:self->_consumerType];
      v30 = [MEMORY[0x1E698B028] stringForConsumerSubtype:v13];
      [MEMORY[0x1E698B028] stringForEngagementType:v33];
      *buf = 138413570;
      v42 = v32;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v30;
      v48 = v47 = 2112;
      v31 = v48;
      v49 = 2112;
      v50 = v16;
      v51 = 2112;
      v52 = v21;
      _os_log_debug_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEBUG, "sending feedback for\n  consumerType:%@\n  atxResponse: ***(%@)***\n  consumerSubType:%@\n  engagementType:%@\n  bundleIdentifier:%@\n  bundleIdsShown:%@", buf, 0x3Eu);
    }

    a5 = v33;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke;
  block[3] = &unk_1E80C31C0;
  v40 = v13;
  block[4] = self;
  v35 = v15;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = a5;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  dispatch_async(queue, block);
}

void __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _asyncProxy];
  [v2 sendFeedbackForConsumerType:*(*(a1 + 32) + 24) consumerSubType:*(a1 + 80) atxResponse:*(a1 + 40) engagementType:*(a1 + 72) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) reply:&__block_literal_global_53_0];
}

void __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke_2(uint64_t a1, int a2)
{
  v3 = __atxlog_handle_default();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "ATXClient logUserFeedback -- server returned SUCCESS";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1BF549000, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v5 = "ATXClient logUserFeedback -- server returned FAILURE";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

- (BOOL)forceCacheUpdateForConsumerSubType:(unsigned __int8)a3 intent:(id)a4 candidateBundleIdentifiers:(id)a5 candidateIntentTypeIdentifiers:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke;
  v18[3] = &unk_1E80C3210;
  v23 = a3;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = &v24;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(queue, v18);
  LOBYTE(queue) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return queue;
}

void __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncProxy];
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2;
  v7[3] = &unk_1E80C31E8;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 64);
  [v2 generateNewAppPredictionsForConsumerSubType:v3 intent:v4 candidateBundleIdentifiers:v5 candidateIntentTypeIdentifiers:v6 reply:v7];
}

void __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v3 = __atxlog_handle_default();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXClient forceCacheUpdate -- server returned FAILURE", v5, 2u);
  }
}

- (id)getAppPredictorAssetMappingDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = &stru_1F3E050C8;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke;
  v5[3] = &unk_1E80C2080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2;
  v3[3] = &unk_1E80C3238;
  v3[4] = *(a1 + 40);
  [v2 getAppPredictorAssetMappingDescriptionWithReply:v3];
}

void __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = __atxlog_handle_default();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2_cold_1();
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXClient getAppPredictorAssetMappingDescription -- server returned FAILURE", v10, 2u);
  }
}

- (id)_simulatorResponse
{
  v42[11] = *MEMORY[0x1E69E9840];
  v2 = [ATXScoredPrediction alloc];
  LODWORD(v3) = 11.0;
  v40 = [(ATXScoredPrediction *)v2 initWithPredictedItem:@"com.apple.reminders" score:v3];
  v42[0] = v40;
  v4 = [ATXScoredPrediction alloc];
  LODWORD(v5) = 10.0;
  v39 = [(ATXScoredPrediction *)v4 initWithPredictedItem:@"com.apple.news" score:v5];
  v42[1] = v39;
  v6 = [ATXScoredPrediction alloc];
  LODWORD(v7) = 9.0;
  v8 = [(ATXScoredPrediction *)v6 initWithPredictedItem:@"com.apple.mobilecal" score:v7];
  v42[2] = v8;
  v9 = [ATXScoredPrediction alloc];
  LODWORD(v10) = 8.0;
  v11 = [(ATXScoredPrediction *)v9 initWithPredictedItem:@"com.apple.shortcuts" score:v10];
  v42[3] = v11;
  v12 = [ATXScoredPrediction alloc];
  LODWORD(v13) = 7.0;
  v14 = [(ATXScoredPrediction *)v12 initWithPredictedItem:@"com.apple.MobileSMS" score:v13];
  v42[4] = v14;
  v15 = [ATXScoredPrediction alloc];
  LODWORD(v16) = 6.0;
  v17 = [(ATXScoredPrediction *)v15 initWithPredictedItem:@"com.apple.mobileslideshow" score:v16];
  v42[5] = v17;
  v18 = [ATXScoredPrediction alloc];
  LODWORD(v19) = 5.0;
  v20 = [(ATXScoredPrediction *)v18 initWithPredictedItem:@"com.apple.mobilesafari" score:v19];
  v42[6] = v20;
  v21 = [ATXScoredPrediction alloc];
  LODWORD(v22) = 4.0;
  v23 = [(ATXScoredPrediction *)v21 initWithPredictedItem:@"com.apple.MobileAddressBook" score:v22];
  v42[7] = v23;
  v24 = [ATXScoredPrediction alloc];
  LODWORD(v25) = 3.0;
  v26 = [(ATXScoredPrediction *)v24 initWithPredictedItem:@"com.apple.reminders" score:v25];
  v42[8] = v26;
  v27 = [ATXScoredPrediction alloc];
  LODWORD(v28) = 2.0;
  v29 = [(ATXScoredPrediction *)v27 initWithPredictedItem:@"com.apple.Maps" score:v28];
  v42[9] = v29;
  v30 = [ATXScoredPrediction alloc];
  LODWORD(v31) = 1.0;
  v32 = [(ATXScoredPrediction *)v30 initWithPredictedItem:@"com.apple.Preferences" score:v31];
  v42[10] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:11];

  v34 = objc_opt_new();
  v35 = [(ATXClient *)self _predicateForDenyList:v34];
  v36 = [v33 filteredArrayUsingPredicate:v35];

  v37 = [[ATXResponse alloc] initWithPredictions:v36 cacheFileData:0 error:0];

  return v37;
}

+ (id)dayZeroBundleIdsAndScoresFromDayZeroParameters:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"dayZero"];
  v4 = [v3 objectForKeyedSubscript:@"dayZeroBumps"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[ATXClient dayZeroBundleIdsAndScoresFromDayZeroParameters:];
    }

    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (id)_minuteZeroResponse
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:@"_ATXAppPredictorDayZero" ofType:@"plist" specifiedABGroup:0];
  v30 = [(ATXAssetsABHelper *)v31 abGroupContents];
  v2 = [objc_opt_class() dayZeroBundleIdsAndScoresFromDayZeroParameters:v30];
  v3 = +[ATXAppDisplayIdentifiers appIdentifiers];
  v29 = v3;
  if ([v3 count])
  {
    v4 = [v2 allKeys];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __32__ATXClient__minuteZeroResponse__block_invoke;
    v40[3] = &unk_1E80C1BD0;
    v41 = v3;
    v5 = [v4 _pas_filteredArrayWithTest:v40];
    v6 = [v2 dictionaryWithValuesForKeys:v5];

    v2 = v6;
  }

  v7 = [v2 allKeys];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __32__ATXClient__minuteZeroResponse__block_invoke_2;
  v38[3] = &unk_1E80C17F0;
  v27 = v2;
  v28 = v7;
  v39 = v27;
  v8 = [v7 sortedArrayUsingComparator:v38];
  v33 = objc_opt_new();
  v9 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [objc_alloc(MEMORY[0x1E69C5BC0]) initWithClientModelId:@"app_zkw_minute_zero" clientModelVersion:@"1.0"];
        v16 = [objc_alloc(MEMORY[0x1E69C5BC8]) initWithExecutableObject:v14 executableDescription:v14 executableIdentifier:v14 suggestionExecutableType:1];
        v17 = objc_alloc(MEMORY[0x1E69C5BE0]);
        LOWORD(v26) = 1;
        v18 = [v17 initWithTitle:v14 subtitle:0 predictionReason:0 preferredLayoutConfigs:MEMORY[0x1E695E0F0] allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v26 shouldClearOnEngagement:?];
        v19 = [objc_alloc(MEMORY[0x1E69C5BD8]) initWithRawScore:2 suggestedConfidenceCategory:0.0];
        v20 = [objc_alloc(MEMORY[0x1E69C5BB0]) initWithClientModelSpecification:v15 executableSpecification:v16 uiSpecification:v18 scoreSpecification:v19];
        [v33 addObject:v20];
        v21 = [[ATXScoredPrediction alloc] initWithPredictedItem:v14 score:0.0];
        [v9 addObject:v21];
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v11);
  }

  v22 = [ATXResponse alloc];
  v23 = objc_opt_new();
  v24 = [(ATXResponse *)v22 initWithPredictions:v9 proactiveSuggestions:v33 uuid:v23 cacheFileData:0 blendingUICacheUpdateUUID:0 error:0];

  return v24;
}

uint64_t __32__ATXClient__minuteZeroResponse__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v8 compare:v7];
  return v9;
}

- (void)getWebsitePredictionsForContextType:(id)a3 limit:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(ATXClient *)self _getConnection];
  v10 = [v11 remoteObjectProxy];
  [v10 getWebsitePredictionsForContextType:v9 limit:a4 reply:v8];
}

- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)a3 contextType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ATXClient *)self _getConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 overwriteWebsitePredictionsCacheWithWebsiteString:v7 contextType:v6];
}

- (void)recentURLsWithLimit:(unint64_t)a3 typeIdentifiersForScope:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ATXClient *)self _getConnection];
  v11 = [v10 remoteObjectProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke;
  v13[3] = &unk_1E80C0908;
  v14 = v8;
  v12 = v8;
  [v11 recentURLsWithLimit:a3 typeIdentifiersForScope:v9 withCompletion:v13];
}

void __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_document_predictor();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)notifySpotlightInvoked:(BOOL)a3
{
  v3 = a3;
  v5 = [(ATXClient *)self _getConnection];
  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_118_0];
  [v4 notifySpotlightInvoked:v3];
}

void __36__ATXClient_notifySpotlightInvoked___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__ATXClient_notifySpotlightInvoked___block_invoke_cold_1();
  }
}

- (id)fetchPreWarmedContextualActionSuggestionsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v4 = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchPreWarmedContextualActionSuggestionsWithCompletion:v9];

  v6 = v12;
  if (a3 && !v12[5])
  {
    *a3 = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchMenuItemsForCurrentAppInFocus:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v4 = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchMenuItemsForCurrentAppInFocusWithCompletion:v9];

  v6 = v12;
  if (a3 && !v12[5])
  {
    *a3 = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchToolKitBasedFallbackActionIds:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v4 = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchToolKitBasedFallbackActionIdsWithCompletion:v9];

  v6 = v12;
  if (a3 && !v12[5])
  {
    *a3 = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)semanticallySimilarDocumentsFromOnScreenAppEntities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  v2 = [(ATXClient *)self _getConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_120];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 fetchSemanticallySimilarDocumentsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_screen_entities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2_cold_1();
    }
  }

  if ([v5 count])
  {
    v8 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_124];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)fetchLastExecutedActions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  v2 = [(ATXClient *)self _getConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ATXClient_fetchLastExecutedActions__block_invoke_2;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 fetchLastExecutedActionsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__ATXClient_fetchLastExecutedActions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __37__ATXClient_fetchLastExecutedActions__block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "Got recents: %@", v1, 0xCu);
}

@end