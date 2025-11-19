@interface ATXActionPredictionServer
+ (id)sharedInstance;
- (ATXActionPredictionServer)init;
- (ATXActionPredictionServer)initWithListener:(id)a3 checkEntitlements:(BOOL)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)behavioralModelSuggestionsForRequest:(id)a3;
- (id)filteredCachedIntentSuggestionsForClientModelId:(id)a3 request:(id)a4;
- (id)initAnonymousListener;
- (void)dealloc;
- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)a3 candidateActionTypes:(id)a4 consumerType:(unint64_t)a5 consumerSubType:(unsigned __int8)a6 limit:(int)a7 reply:(id)a8;
- (void)getActionPredictionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 limit:(unint64_t)a8 reply:(id)a9;
- (void)registerForRealTimeRequestsWithBlendingLayerServer:(id)a3;
- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)a3 reply:(id)a4;
- (void)shouldDisplayDailyRoutineForContext:(id)a3 reply:(id)a4;
- (void)suggestionsForIntentSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
@end

@implementation ATXActionPredictionServer

- (ATXActionPredictionServer)initWithListener:(id)a3 checkEntitlements:(BOOL)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ATXActionPredictionServer.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"listener"}];
  }

  v13.receiver = self;
  v13.super_class = ATXActionPredictionServer;
  v9 = [(ATXActionPredictionServer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_checkEntitlements = a4;
    objc_storeStrong(&v9->_listener, a3);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    [(NSXPCListener *)v10->_listener resume];
  }

  return v10;
}

- (ATXActionPredictionServer)init
{
  v3 = objc_alloc(MEMORY[0x277CCAE98]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEB9D8]];
  v5 = [(ATXActionPredictionServer *)self initWithListener:v4 checkEntitlements:1];

  return v5;
}

- (id)initAnonymousListener
{
  v3 = [MEMORY[0x277CCAE98] anonymousListener];
  v4 = [(ATXActionPredictionServer *)self initWithListener:v3 checkEntitlements:0];

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXActionPredictionServer;
  [(ATXActionPredictionServer *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (+[ATXActionPredictionServer sharedInstance]::_pasOnceToken2 != -1)
  {
    +[ATXActionPredictionServer sharedInstance];
  }

  v3 = +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult;

  return v3;
}

void __43__ATXActionPredictionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult;
  +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_checkEntitlements)
  {
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277CEB9D8];
  v10 = [v7 valueForEntitlement:*MEMORY[0x277CEB9D8]];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0 && ([v10 BOOLValue] & 1) != 0)
  {

LABEL_6:
    v11 = ATXActionPredictionInterface();
    [v8 setExportedInterface:v11];

    [v8 setExportedObject:self];
    [v8 setInterruptionHandler:&__block_literal_global_36_3];
    [v8 setInvalidationHandler:&__block_literal_global_39_0];
    [v8 resume];
    v12 = 1;
    goto LABEL_10;
  }

  v13 = __atxlog_handle_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDigestRankerServer *)v8 listener:v9 shouldAcceptNewConnection:v13];
  }

  v12 = 0;
LABEL_10:

  return v12;
}

void __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_37()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_37_cold_1(v0);
  }
}

- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)a3 candidateActionTypes:(id)a4 consumerType:(unint64_t)a5 consumerSubType:(unsigned __int8)a6 limit:(int)a7 reply:(id)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a8;
  v14 = __atxlog_handle_xpc();
  v15 = os_signpost_id_generate(v14);

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "getActionPredictionsForCandidateBundleIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = MEMORY[0x277D42598];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke;
  v22[3] = &unk_27859F420;
  v19 = v11;
  v23 = v19;
  v20 = v12;
  v27 = a6;
  v24 = v20;
  v26 = v15;
  v21 = v13;
  v25 = v21;
  [v18 runBlockWhenDeviceIsClassCUnlocked:v22];
}

void __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2;
  block[3] = &unk_27859F420;
  v7 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v3;
  v10 = v4;
  v9 = v5;
  dispatch_async(v2, block);
}

void __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2(uint64_t a1)
{
  v2 = [ATXActionPredictions predictionsWithCandidateBundleIdentifiers:*(a1 + 32) candidateActiontypes:*(a1 + 40) consumerSubType:*(a1 + 64) firstStageScoreLogger:0 secondStageScoreLogger:0 thirdStageScoreLogger:0 multiStageScoreLogger:0];
  v3 = __atxlog_handle_xpc();
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v4, OS_SIGNPOST_INTERVAL_END, v5, "getActionPredictionsForCandidateBundleIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = *(a1 + 48);
  v7 = [v2 first];
  v8 = [v2 second];
  (*(v6 + 16))(v6, v7, v8);
}

- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "removeActionPredictionNotificationsMatchingSuggestion", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = MEMORY[0x277D42598];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke;
  v15[3] = &unk_27859F448;
  v13 = v6;
  v16 = v13;
  v17 = self;
  v19 = v9;
  v14 = v7;
  v18 = v14;
  [v12 runBlockWhenDeviceIsClassCUnlocked:v15];
}

void __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke_2;
  v6[3] = &unk_27859F448;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v2, v6);
}

void __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) atxActionExecutableObject];
  if (v2)
  {
    v3 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - removeActionPredictionNotificationsMatchingSuggestion attempting to remove any lockscreen action predictions matching: %@", &v16, 0x16u);
    }

    v7 = +[ATXActionNotificationServer sharedInstance];
    [v7 removeActionPredictionNotificationsMatchingAction:v2];
  }

  else
  {
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - removeActionPredictionNotificationsMatchingSuggestion did not find an ATXAction executable object", &v16, 0xCu);
    }
  }

  v11 = __atxlog_handle_xpc();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_END, v13, "removeActionPredictionNotificationsMatchingSuggestion", " enableTelemetry=YES ", &v16, 2u);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)shouldDisplayDailyRoutineForContext:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_xpc();
  v8 = os_signpost_id_generate(v7);

  v9 = __atxlog_handle_xpc();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "shouldDisplayDailyRoutineForContext", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = MEMORY[0x277D42598];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke;
  v14[3] = &unk_27859F470;
  v12 = v5;
  v15 = v12;
  v17 = v8;
  v13 = v6;
  v16 = v13;
  [v11 runBlockWhenDeviceIsClassCUnlocked:v14];
}

void __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke_2;
  block[3] = &unk_27859F470;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v9 = v4;
  v8 = v5;
  dispatch_async(v2, block);
}

void __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke_2(void *a1)
{
  v2 = +[ATXDailyRoutinesPersonalizationManager sharedInstance];
  [v2 shouldDisplayDailyRoutineForContext:a1[4]];
  v3 = __atxlog_handle_xpc();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v4, OS_SIGNPOST_INTERVAL_END, v5, "shouldDisplayDailyRoutineForContext", " enableTelemetry=YES ", v6, 2u);
  }

  (*(a1[5] + 16))();
}

- (void)getActionPredictionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 limit:(unint64_t)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v33 = a9;
  v19 = __atxlog_handle_xpc();
  v20 = os_signpost_id_generate(v19);

  v21 = __atxlog_handle_xpc();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "getActionPredictionsForContext", " enableTelemetry=YES ", buf, 2u);
  }

  v23 = MEMORY[0x277D42598];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke;
  v34[3] = &unk_27859F498;
  v32 = v14;
  v24 = v14;
  v35 = v24;
  v31 = v15;
  v25 = v15;
  v36 = v25;
  v26 = v16;
  v37 = v26;
  v30 = v17;
  v27 = v17;
  v38 = v27;
  v28 = v18;
  v39 = v28;
  v41 = a8;
  v42 = v20;
  v29 = v33;
  v40 = v29;
  [v23 runBlockWhenDeviceIsClassCUnlocked:{v34, v30, v31, v32}];
}

void __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2;
  v9[3] = &unk_27859F498;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  dispatch_async(v2, v9);
}

void __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2(void *a1)
{
  v2 = +[ATXDailyRoutinesPersonalizationManager sharedInstance];
  v3 = [v2 getActionPredictionsForContext:a1[4] includeBundleIds:a1[5] excludeBundleIds:a1[6] includeActionTypes:a1[7] excludeActionTypes:a1[8] limit:a1[10]];
  v4 = __atxlog_handle_xpc();
  v5 = v4;
  v6 = a1[11];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v5, OS_SIGNPOST_INTERVAL_END, v6, "getActionPredictionsForContext", " enableTelemetry=YES ", v7, 2u);
  }

  (*(a1[9] + 16))();
}

- (void)suggestionsForIntentSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_xpc();
  v12 = os_signpost_id_generate(v11);

  v13 = __atxlog_handle_xpc();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "suggestionsForIntentSuggestionRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = MEMORY[0x277D42598];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke;
  v19[3] = &unk_27859F4C0;
  v16 = v9;
  v20 = v16;
  v21 = self;
  v17 = v8;
  v22 = v17;
  v24 = v12;
  v18 = v10;
  v23 = v18;
  [v15 runBlockWhenDeviceIsClassCUnlocked:v19];
}

void __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke_2;
  block[3] = &unk_27859F4C0;
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *(a1 + 40);
  v8 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12 = *(a1 + 64);
  v6 = v5;
  *&v7 = v4;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, block);
}

void __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D42070] clientModelTypeFromClientModelId:*(a1 + 32)];
  if (v2 == 1 || v2 == 3)
  {
    v4 = [*(a1 + 40) filteredCachedIntentSuggestionsForClientModelId:*(a1 + 32) request:*(a1 + 48)];
  }

  else
  {
    if (v2 != 6)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v19 = *MEMORY[0x277CCA450];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrong delegate for request. Expected %@ but found ATXActionPredictionServer, which only support SpotlightUnknown / AnchorModel / Heuristics.", *(a1 + 32)];
      v20[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v6 = [v8 errorWithDomain:v10 code:5 userInfo:v12];

      v5 = 0;
      v7 = 3;
      goto LABEL_11;
    }

    v4 = [*(a1 + 40) behavioralModelSuggestionsForRequest:*(a1 + 48)];
  }

  v5 = v4;
  v6 = 0;
  v7 = 2;
LABEL_11:
  v13 = [objc_alloc(MEMORY[0x277D420F0]) initWithSuggestions:v5 feedbackMetadata:0 originalRequest:*(a1 + 48) responseCode:v7 error:v6];
  v14 = __atxlog_handle_xpc();
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "suggestionsForIntentSuggestionRequest", " enableTelemetry=YES ", buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForRealTimeRequestsWithBlendingLayerServer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [&unk_283A58958 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_283A58958);
        }

        v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{objc_msgSend(*(*(&v10 + 1) + 8 * v7), "integerValue")}];
        [v4 registerRealTimeSuggestionProviderDelegate:self clientModelId:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_283A58958 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)behavioralModelSuggestionsForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIds];
  v5 = [v3 intentClassNames];
  v6 = [v3 limit];
  v7 = [ATXActionPredictions actionResultsForCandidateBundleIdentifiers:v4 candidateActiontypes:v5 consumerSubType:21 firstStageScoreLogger:0 secondStageScoreLogger:0 thirdStageScoreLogger:0 multiStageScoreLogger:0 predictionsPerAppActionLimit:v6];

  v8 = [v7 _pas_filteredArrayWithTest:&__block_literal_global_59_0];

  v9 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:6];
  v10 = +[_ATXGlobals sharedInstance];
  v11 = [v10 actionPredictionBlendingModelVersion];

  v12 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v9 clientModelVersion:v11];
  v13 = [ATXProactiveSuggestionBuilder proactiveSuggestionsFromActionResults:v8 clientModelSpec:v12];

  return v13;
}

- (id)filteredCachedIntentSuggestionsForClientModelId:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v7 cachedSuggestionsForClientModel:v5];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v11 = [v8 suggestions];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ATXActionPredictionServer_filteredCachedIntentSuggestionsForClientModelId_request___block_invoke;
  v16[3] = &unk_27859F4E8;
  v12 = v6;
  v17 = v12;
  v19 = v20;
  v13 = v10;
  v18 = v13;
  v14 = [v11 _pas_filteredArrayWithTest:v16];

  _Block_object_dispose(v20, 8);

  return v14;
}

uint64_t __85__ATXActionPredictionServer_filteredCachedIntentSuggestionsForClientModelId_request___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) limit];
  if (!v4 || (v5 = *(*(*(a1 + 48) + 8) + 24), [*(a1 + 32) limit], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntegerValue"), v6, v4, v5 < v7))
  {
    v8 = [v3 executableSpecification];
    v9 = [v8 executableType];

    if (v9 == 2)
    {
      v10 = [v3 executableSpecification];
      v11 = [v10 executableClassString];
      v12 = [v11 isEqualToString:*(a1 + 40)];

      if (v12)
      {
        v13 = [v3 executableSpecification];
        v14 = [v13 executableObject];

        if (v14)
        {
          v15 = [*(a1 + 32) bundleIds];
          if ([v15 count])
          {
            v16 = [*(a1 + 32) bundleIds];
            v17 = [v14 bundleId];
            v18 = [v16 containsObject:v17];

            if ((v18 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          v21 = [*(a1 + 32) intentClassNames];
          v22 = [v21 count];

          if (!v22)
          {
            goto LABEL_15;
          }

          v23 = [v14 intent];
          v24 = [v23 _className];

          if (v24)
          {
            v25 = [*(a1 + 32) intentClassNames];
            v26 = [v25 containsObject:v24];

            if (v26)
            {
LABEL_15:
              ++*(*(*(a1 + 48) + 8) + 24);
              v19 = 1;
LABEL_17:

              goto LABEL_10;
            }
          }
        }

LABEL_16:
        v19 = 0;
        goto LABEL_17;
      }
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

@end