@interface ATXActionPredictionClient
- (ATXActionPredictionClient)init;
- (ATXActionPredictionClient)initWithCacheBasePath:(id)path;
- (id)_atxActionFromProactiveSuggestion:(id)suggestion;
- (id)actionPredictionsForConsumerSubType:(unsigned __int8)type limit:(int)limit;
- (id)atxActionResponseFromBlendingActionPredictionCacheForConsumerSubType:(unsigned __int8)type limit:(int)limit;
- (void)dealloc;
- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)identifiers candidateActionTypes:(id)types consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType limit:(int)limit reply:(id)reply;
- (void)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit reply:(id)reply;
- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)suggestion reply:(id)reply;
- (void)shouldDisplayDailyRoutineForContext:(id)context reply:(id)reply;
@end

@implementation ATXActionPredictionClient

- (ATXActionPredictionClient)init
{
  appPredictionDirectory = [MEMORY[0x1E698B010] appPredictionDirectory];
  v4 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v5 = [(ATXActionPredictionClient *)self initWithCacheBasePath:v4];

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXActionPredictionClient;
  [(ATXActionPredictionClient *)&v3 dealloc];
}

- (ATXActionPredictionClient)initWithCacheBasePath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = ATXActionPredictionClient;
  v6 = [(ATXActionPredictionClient *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.proactive.AppPrediction.ATXActionPredictionClient.xpc", v7);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v8;

    objc_storeStrong(&v6->_cacheBasePath, path);
    v10 = [[ATXCacheReader alloc] initWithCacheBasePath:v6->_cacheBasePath];
    cacheReader = v6->_cacheReader;
    v6->_cacheReader = v10;

    v12 = +[ATXEngagementRecordManager sharedInstance];
    engagementRecordManager = v6->_engagementRecordManager;
    v6->_engagementRecordManager = v12;

    v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.ActionPrediction.predictions" options:0];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v14;

    v16 = ATXActionPredictionInterface();
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v16];

    [(NSXPCConnection *)v6->_xpcConnection setInterruptionHandler:&__block_literal_global_2];
    [(NSXPCConnection *)v6->_xpcConnection resume];
  }

  return v6;
}

void __51__ATXActionPredictionClient_initWithCacheBasePath___block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __51__ATXActionPredictionClient_initWithCacheBasePath___block_invoke_cold_1(v0);
  }
}

- (id)actionPredictionsForConsumerSubType:(unsigned __int8)type limit:(int)limit
{
  v4 = *&limit;
  typeCopy = type;
  v18 = *MEMORY[0x1E69E9840];
  if (type <= 0x31u && ((1 << type) & 0x2400000200000) != 0)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E698B028] safeStringForConsumerSubtype:typeCopy];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Blending providing suggestions to %@ inside ATXActionPredictionClient...", &v16, 0xCu);
    }

    v9 = [(ATXActionPredictionClient *)self atxActionResponseFromBlendingActionPredictionCacheForConsumerSubType:typeCopy limit:v4];
  }

  else
  {
    v10 = [(ATXCacheReader *)self->_cacheReader readCacheFileForConsumerSubtype:type];
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [[ATXActionCacheClientReader alloc] initWithData:v10];
      v13 = [(ATXActionCacheClientReader *)v12 actionsWithConsumerSubType:typeCopy limit:v4];
      v14 = [[ATXActionResponse alloc] initWithScoredActions:v13 cacheFileData:v10 consumerSubType:typeCopy error:0];

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v14 = 0;
    }

    v9 = v14;
  }

  return v9;
}

- (id)atxActionResponseFromBlendingActionPredictionCacheForConsumerSubType:(unsigned __int8)type limit:(int)limit
{
  typeCopy = type;
  v33 = *MEMORY[0x1E69E9840];
  v7 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:type];
  suggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)v7 suggestionLayoutFromCache];
  v9 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:35 queryOptions:1];
  allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [allSuggestionsInLayout count];
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "Blending retrieved a layout with %lu actions in it.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __104__ATXActionPredictionClient_atxActionResponseFromBlendingActionPredictionCacheForConsumerSubType_limit___block_invoke;
  v23 = &unk_1E80C0B78;
  limitCopy = limit;
  p_buf = &buf;
  selfCopy = self;
  v12 = v9;
  v25 = v12;
  v13 = [allSuggestionsInLayout _pas_filteredArrayWithIndexedTest:&v20];
  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    *v28 = 134217984;
    v29 = v15;
    _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "Blending created an ATXActionResponse that has %lu actions in it.", v28, 0xCu);
  }

  v16 = [ATXActionResponse alloc];
  uuid = [suggestionLayoutFromCache uuid];
  v18 = [(ATXActionResponse *)v16 initWithProactiveSuggestions:v13 blendingModelUICacheUpdateUUID:uuid consumerSubType:typeCopy error:0];

  _Block_object_dispose(&buf, 8);

  return v18;
}

uint64_t __104__ATXActionPredictionClient_atxActionResponseFromBlendingActionPredictionCacheForConsumerSubType_limit___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 56))
  {
    if (![*(*(a1 + 32) + 32) hasEngagedWithSuggestion:v3 engagedExecutables:*(a1 + 40)])
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      v7 = 1;
      goto LABEL_8;
    }

    v4 = __atxlog_handle_blending();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 executableSpecification];
      v6 = [v5 executableDescription];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "recently engaged cache filtered action prediction %@", &v9, 0xCu);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_atxActionFromProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableClassString = [executableSpecification executableClassString];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [executableClassString isEqualToString:v7];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x1E696ACD0];
    v11 = objc_opt_class();
    executableSpecification2 = [suggestionCopy executableSpecification];
    executable = [executableSpecification2 executable];
    v18 = 0;
    v14 = [v10 unarchivedObjectOfClass:v11 fromData:executable error:&v18];
    v15 = v18;

    objc_autoreleasePoolPop(v9);
    v16 = 0;
    if (v14 && !v15)
    {
      v16 = v14;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)identifiers candidateActionTypes:(id)types consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType limit:(int)limit reply:(id)reply
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  typesCopy = types;
  replyCopy = reply;
  if (+[ATXDeviceClass shouldComputeActions])
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke;
    block[3] = &unk_1E80C0BC8;
    v24 = replyCopy;
    block[4] = self;
    v22 = identifiersCopy;
    v23 = typesCopy;
    typeCopy = type;
    subTypeCopy = subType;
    limitCopy = limit;
    dispatch_async(serialQueue, block);

    v18 = v24;
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A278];
    v29[0] = @"Action predictions not supported on this constrained device class";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v18 = [v19 errorWithDomain:@"ATXActionPredictionClient" code:2 userInfo:v20];

    (*(replyCopy + 2))(replyCopy, 0, v18);
  }
}

void __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2;
  v14[3] = &unk_1E80C0BA0;
  v3 = *(a1 + 56);
  v15 = v2;
  v16 = v3;
  v14[4] = *(a1 + 32);
  v4 = v2;
  v5 = MEMORY[0x1BFB5BA40](v14);
  v6 = *(*(a1 + 32) + 8);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3;
  v12 = &unk_1E80C08E0;
  v13 = v5;
  v7 = v5;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];
  [v8 getActionPredictionsForCandidateBundleIdentifiers:*(a1 + 40) candidateActionTypes:*(a1 + 48) consumerType:*(a1 + 64) consumerSubType:*(a1 + 76) limit:*(a1 + 72) reply:{v7, v9, v10, v11, v12}];

  [MEMORY[0x1E69C5D10] waitForSemaphore:v4 timeoutSeconds:5.0];
}

intptr_t __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = objc_opt_self();
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)suggestion reply:(id)reply
{
  v16[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  replyCopy = reply;
  if (+[ATXDeviceClass shouldComputeActions])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__ATXActionPredictionClient_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke;
    v13[3] = &unk_1E80C0BF0;
    v13[4] = self;
    v14 = replyCopy;
    v8 = MEMORY[0x1BFB5BA40](v13);
    v9 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_46];
    [v9 removeActionPredictionNotificationsMatchingSuggestion:suggestionCopy reply:v8];

    v10 = v14;
LABEL_5:

    goto LABEL_6;
  }

  if (replyCopy)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Action predictions not supported on this constrained device class";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v11 errorWithDomain:@"ATXActionPredictionClient" code:2 userInfo:v12];

    (*(replyCopy + 2))(replyCopy, v10);
    goto LABEL_5;
  }

LABEL_6:
}

id __89__ATXActionPredictionClient_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return objc_opt_self();
}

void __89__ATXActionPredictionClient_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3_cold_1();
  }
}

- (void)shouldDisplayDailyRoutineForContext:(id)context reply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  replyCopy = reply;
  if (+[ATXDeviceClass shouldComputeActions])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__ATXActionPredictionClient_shouldDisplayDailyRoutineForContext_reply___block_invoke;
    v20[3] = &unk_1E80C0C18;
    v20[4] = self;
    v21 = replyCopy;
    v8 = MEMORY[0x1BFB5BA40](v20);
    xpcConnection = self->_xpcConnection;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __71__ATXActionPredictionClient_shouldDisplayDailyRoutineForContext_reply___block_invoke_2;
    v18 = &unk_1E80C08E0;
    v19 = v8;
    v10 = v8;
    v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&v15];
    [v11 shouldDisplayDailyRoutineForContext:contextCopy reply:{v10, v15, v16, v17, v18}];

    v12 = v21;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v23[0] = @"Action predictions not supported on this constrained device class";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v12 = [v13 errorWithDomain:@"ATXActionPredictionClient" code:2 userInfo:v14];

    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

void __71__ATXActionPredictionClient_shouldDisplayDailyRoutineForContext_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit reply:(id)reply
{
  v33[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  replyCopy = reply;
  if (+[ATXDeviceClass shouldComputeActions])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __144__ATXActionPredictionClient_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke;
    v30[3] = &unk_1E80C0C40;
    v30[4] = self;
    v31 = replyCopy;
    v21 = MEMORY[0x1BFB5BA40](v30);
    xpcConnection = self->_xpcConnection;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __144__ATXActionPredictionClient_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2;
    v28[3] = &unk_1E80C08E0;
    v29 = v21;
    v23 = v21;
    v24 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v28];
    [v24 getActionPredictionsForContext:contextCopy includeBundleIds:idsCopy excludeBundleIds:bundleIdsCopy includeActionTypes:typesCopy excludeActionTypes:actionTypesCopy limit:limit reply:v23];

    v25 = v31;
  }

  else
  {
    v26 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A278];
    v33[0] = @"Action predictions not supported on this constrained device class";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v25 = [v26 errorWithDomain:@"ATXActionPredictionClient" code:2 userInfo:v27];

    (*(replyCopy + 2))(replyCopy, 0, v25);
  }
}

void __144__ATXActionPredictionClient_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __141__ATXActionPredictionClient_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

@end