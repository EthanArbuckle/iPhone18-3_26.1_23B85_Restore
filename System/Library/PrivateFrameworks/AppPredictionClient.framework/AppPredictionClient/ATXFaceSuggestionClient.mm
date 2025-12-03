@interface ATXFaceSuggestionClient
+ (id)sharedInstance;
- (ATXFaceSuggestionClient)init;
- (void)_logEvent:(id)event;
- (void)fetchComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)completion;
- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)type completion:(id)completion;
- (void)fetchFaceGalleryConfigurationWithCompletion:(id)completion;
- (void)fetchFaceSuggestionsForFocusMode:(id)mode completion:(id)completion;
- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchMetricsDescriptionWithCompletion:(id)completion;
- (void)fetchPosterConfigurationsWithCompletion:(id)completion;
- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)completion;
- (void)fetchRankedPosterDescriptors:(id)descriptors;
- (void)fetchScoredComplicationDescriptionWithCompletion:(id)completion;
- (void)inputDescriptionForComplicationSuggestionSignal:(id)signal completion:(id)completion;
- (void)logComplicationsSeenInGalleryWithEngagements:(id)engagements completion:(id)completion;
- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)configuration;
- (void)logFaceGalleryDidDisappear;
- (void)logFaceGalleryItemsDidAppear:(id)appear;
- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)outcomes completion:(id)completion;
- (void)logPosterEdit:(id)edit completion:(id)completion;
- (void)logPosterEditUIViewedWithCompletion:(id)completion;
- (void)logPosterSwitch:(id)switch completion:(id)completion;
- (void)posterBoardDidUpdateConfigurations:(id)configurations completion:(id)completion;
- (void)posterBoardDidUpdateDescriptors:(id)descriptors completion:(id)completion;
- (void)refreshComplicationsCacheWithCompletion:(id)completion;
- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)completion;
- (void)reloadLockScreenSuggestionsWithCompletion:(id)completion;
- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)completion;
@end

@implementation ATXFaceSuggestionClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7 != -1)
  {
    +[ATXFaceSuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __41__ATXFaceSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXFaceSuggestionClient)init
{
  v12.receiver = self;
  v12.super_class = ATXFaceSuggestionClient;
  v2 = [(ATXFaceSuggestionClient *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.FaceSuggestions.xpc" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = ATXFaceSuggestionClientXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_28];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_31];
    [(NSXPCConnection *)v2->_connection resume];
    v6 = objc_opt_new();
    stream = v2->_stream;
    v2->_stream = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.proactive.ATXFaceSuggestionClient.logging", v8);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v9;
  }

  return v2;
}

void __31__ATXFaceSuggestionClient_init__block_invoke()
{
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __31__ATXFaceSuggestionClient_init__block_invoke_cold_1(v0);
  }
}

void __31__ATXFaceSuggestionClient_init__block_invoke_29()
{
  v0 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __31__ATXFaceSuggestionClient_init__block_invoke_29_cold_1(v0);
  }
}

- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXFaceSuggestionClient regenerateFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = __atxlog_handle_lock_screen();
  v7 = os_signpost_id_generate(v6);

  v8 = __atxlog_handle_lock_screen();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RegenerateLockScreenGalleryConfiguration", " enableTelemetry=YES ", buf, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke;
  v23[3] = &__block_descriptor_40_e5_v8__0l;
  v23[4] = v7;
  v10 = MEMORY[0x1BFB5BA40](v23);
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke_34;
  v20[3] = &unk_1E80C0890;
  v12 = v10;
  v21 = v12;
  v13 = completionCopy;
  v22 = v13;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke_36;
  v17[3] = &unk_1E80C08B8;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [v14 regenerateFaceGalleryConfigurationWithCompletion:v17];
}

void __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_lock_screen();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RegenerateLockScreenGalleryConfiguration", " enableTelemetry=YES ", v5, 2u);
  }
}

void __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke_34(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient regenerateFaceGalleryConfigurationWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __76__ATXFaceSuggestionClient_regenerateFaceGalleryConfigurationWithCompletion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)reloadLockScreenSuggestionsWithCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXFaceSuggestionClient reloadLockScreenSuggestionsWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:completionCopy];
  [v6 reloadLockScreenSuggestionsWithCompletion:completionCopy];
}

- (void)fetchFaceGalleryConfigurationWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXFaceSuggestionClient fetchFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = __atxlog_handle_lock_screen();
  v7 = os_signpost_id_generate(v6);

  v8 = __atxlog_handle_lock_screen();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchLockScreenGalleryConfiguration", " enableTelemetry=YES ", buf, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke;
  v23[3] = &__block_descriptor_40_e5_v8__0l;
  v23[4] = v7;
  v10 = MEMORY[0x1BFB5BA40](v23);
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke_38;
  v20[3] = &unk_1E80C0890;
  v12 = v10;
  v21 = v12;
  v13 = completionCopy;
  v22 = v13;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke_39;
  v17[3] = &unk_1E80C08B8;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [v14 fetchFaceGalleryConfigurationWithCompletion:v17];
}

void __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_lock_screen();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FetchLockScreenGalleryConfiguration", " enableTelemetry=YES ", v5, 2u);
  }
}

void __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchFaceGalleryConfigurationWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __71__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationWithCompletion___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)type completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ATXFaceSuggestionClient fetchFaceGalleryConfigurationForSemanticType:completion:]";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = __atxlog_handle_lock_screen();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_lock_screen();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "fetchFaceGalleryConfigurationForSemanticType", " enableTelemetry=YES ", buf, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = v9;
  v12 = MEMORY[0x1BFB5BA40](v25);
  connection = self->_connection;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke_40;
  v22[3] = &unk_1E80C0890;
  v14 = v12;
  v23 = v14;
  v15 = completionCopy;
  v24 = v15;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke_41;
  v19[3] = &unk_1E80C08B8;
  v20 = v14;
  v21 = v15;
  v17 = v15;
  v18 = v14;
  [v16 fetchFaceGalleryConfigurationForSemanticType:type completion:v19];
}

void __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_lock_screen();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchFaceGalleryConfigurationForSemanticType", " enableTelemetry=YES ", v5, 2u);
  }
}

void __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchFaceGalleryConfigurationForSemanticType:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __83__ATXFaceSuggestionClient_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchFaceSuggestionsForFocusMode:(id)mode completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  completionCopy = completion;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke;
  block[3] = &unk_1E80C0930;
  selfCopy = self;
  v15 = completionCopy;
  v13 = modeCopy;
  v10 = completionCopy;
  v11 = modeCopy;
  dispatch_async(v9, block);
}

void __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 length];

  if (!v3)
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]_block_invoke";
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "%s: no UUID, can't do a cache lookup; doing full query", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 initWithUUIDString:v5];

  v7 = objc_alloc_init(ATXModeFaceSuggestionsCache);
  v8 = [(ATXModeFaceSuggestionsCache *)v7 cachedSuggestedFacesForModeUUID:v6];
  if (![v8 count])
  {
    v10 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]_block_invoke";
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: no cached items for %{public}@; doing fully query", buf, 0x16u);
    }

LABEL_11:
    v11 = *(*(a1 + 40) + 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke_44;
    v16[3] = &unk_1E80C08E0;
    v17 = *(a1 + 48);
    v12 = [v11 remoteObjectProxyWithErrorHandler:v16];
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke_45;
    v14[3] = &unk_1E80C0908;
    v15 = *(a1 + 48);
    [v12 fetchFaceSuggestionsForFocusMode:v13 completion:v14];

    v6 = v17;
    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))();
  v9 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]_block_invoke";
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%s: using cached items for: %{public}@", buf, 0x16u);
  }

LABEL_12:
}

void __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__ATXFaceSuggestionClient_fetchFaceSuggestionsForFocusMode_completion___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXFaceSuggestionClient fetchFaceSuggestionsForFocusMode:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchPosterDescriptorsAndSuggestionDataWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__ATXFaceSuggestionClient_fetchPosterDescriptorsAndSuggestionDataWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchPosterDescriptorsAndSuggestionDataWithCompletion:v7];
}

void __81__ATXFaceSuggestionClient_fetchPosterDescriptorsAndSuggestionDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchPosterDescriptorsAndSuggestionDataWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchRankedPosterDescriptors:(id)descriptors
{
  v13 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchRankedPosterDescriptors:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ATXFaceSuggestionClient_fetchRankedPosterDescriptors___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = descriptorsCopy;
  v7 = descriptorsCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchRankedPosterDescriptors:v7];
}

void __56__ATXFaceSuggestionClient_fetchRankedPosterDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchRankedPosterDescriptors:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPosterConfigurationsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchPosterConfigurationsWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ATXFaceSuggestionClient_fetchPosterConfigurationsWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchPosterConfigurationsWithCompletion:v7];
}

void __67__ATXFaceSuggestionClient_fetchPosterConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchPosterConfigurationsWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  itemCopy = item;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient fetchComplicationSetsForFaceGalleryItem:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ATXFaceSuggestionClient_fetchComplicationSetsForFaceGalleryItem_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 fetchComplicationSetsForFaceGalleryItem:itemCopy completion:v10];
}

void __78__ATXFaceSuggestionClient_fetchComplicationSetsForFaceGalleryItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchComplicationSetsForFaceGalleryItem:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  itemCopy = item;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient fetchLandscapeComplicationSetsForFaceGalleryItem:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__ATXFaceSuggestionClient_fetchLandscapeComplicationSetsForFaceGalleryItem_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 fetchLandscapeComplicationSetsForFaceGalleryItem:itemCopy completion:v10];
}

void __87__ATXFaceSuggestionClient_fetchLandscapeComplicationSetsForFaceGalleryItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchLandscapeComplicationSetsForFaceGalleryItem:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)posterBoardDidUpdateDescriptors:(id)descriptors completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  descriptorsCopy = descriptors;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient posterBoardDidUpdateDescriptors:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ATXFaceSuggestionClient_posterBoardDidUpdateDescriptors_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 posterBoardDidUpdateDescriptors:descriptorsCopy completion:v10];
}

void __70__ATXFaceSuggestionClient_posterBoardDidUpdateDescriptors_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient posterBoardDidUpdateDescriptors:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)posterBoardDidUpdateConfigurations:(id)configurations completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  configurationsCopy = configurations;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient posterBoardDidUpdateConfigurations:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__ATXFaceSuggestionClient_posterBoardDidUpdateConfigurations_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 posterBoardDidUpdateConfigurations:configurationsCopy completion:v10];
}

void __73__ATXFaceSuggestionClient_posterBoardDidUpdateConfigurations_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient posterBoardDidUpdateConfigurations:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)inputDescriptionForComplicationSuggestionSignal:(id)signal completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  signalCopy = signal;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient inputDescriptionForComplicationSuggestionSignal:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__ATXFaceSuggestionClient_inputDescriptionForComplicationSuggestionSignal_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 inputDescriptionForComplicationSuggestionSignal:signalCopy completion:v10];
}

void __86__ATXFaceSuggestionClient_inputDescriptionForComplicationSuggestionSignal_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient inputDescriptionForComplicationSuggestionSignal:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchComplicationSuggestionsModelDescriptionWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ATXFaceSuggestionClient_fetchComplicationSuggestionsModelDescriptionWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchComplicationSuggestionsModelDescriptionWithCompletion:v7];
}

void __86__ATXFaceSuggestionClient_fetchComplicationSuggestionsModelDescriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchComplicationSuggestionsModelDescriptionWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)item completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  itemCopy = item;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient fetchInlineComplicationSetForFaceGalleryItem:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__ATXFaceSuggestionClient_fetchInlineComplicationSetForFaceGalleryItem_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 fetchInlineComplicationSetForFaceGalleryItem:itemCopy completion:v10];
}

void __83__ATXFaceSuggestionClient_fetchInlineComplicationSetForFaceGalleryItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchInlineComplicationSetForFaceGalleryItem:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)refreshComplicationsCacheWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient refreshComplicationsCacheWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ATXFaceSuggestionClient_refreshComplicationsCacheWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 refreshComplicationsCacheWithCompletion:v7];
}

void __67__ATXFaceSuggestionClient_refreshComplicationsCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient refreshComplicationsCacheWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchScoredComplicationDescriptionWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchScoredComplicationDescriptionWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__ATXFaceSuggestionClient_fetchScoredComplicationDescriptionWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchScoredComplicationDescriptionWithCompletion:v7];
}

void __76__ATXFaceSuggestionClient_fetchScoredComplicationDescriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchScoredComplicationDescriptionWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchMetricsDescriptionWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient fetchMetricsDescriptionWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ATXFaceSuggestionClient_fetchMetricsDescriptionWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchMetricsDescriptionWithCompletion:v7];
}

void __65__ATXFaceSuggestionClient_fetchMetricsDescriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient fetchMetricsDescriptionWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logPosterEdit:(id)edit completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  editCopy = edit;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient logPosterEdit:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__ATXFaceSuggestionClient_logPosterEdit_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 logPosterEdit:editCopy completion:v10];
}

void __52__ATXFaceSuggestionClient_logPosterEdit_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient logPosterEdit:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logPosterEditUIViewedWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient logPosterEditUIViewedWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__ATXFaceSuggestionClient_logPosterEditUIViewedWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 logPosterEditUIViewedWithCompletion:v7];
}

void __63__ATXFaceSuggestionClient_logPosterEditUIViewedWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient logPosterEditUIViewedWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logPosterSwitch:(id)switch completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  switchCopy = switch;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient logPosterSwitch:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__ATXFaceSuggestionClient_logPosterSwitch_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 logPosterSwitch:switchCopy completion:v10];
}

void __54__ATXFaceSuggestionClient_logPosterSwitch_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient logPosterSwitch:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ATXFaceSuggestionClient synchronousDateOfLastGalleryAppearanceWithCompletion:]";
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__ATXFaceSuggestionClient_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 synchronousDateOfLastGalleryAppearanceWithCompletion:v7];
}

void __80__ATXFaceSuggestionClient_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient synchronousDateOfLastGalleryAppearanceWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching synchronous remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logComplicationsSeenInGalleryWithEngagements:(id)engagements completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  engagementsCopy = engagements;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient logComplicationsSeenInGalleryWithEngagements:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__ATXFaceSuggestionClient_logComplicationsSeenInGalleryWithEngagements_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 logComplicationsSeenInGalleryWithEngagements:engagementsCopy completion:v10];
}

void __83__ATXFaceSuggestionClient_logComplicationsSeenInGalleryWithEngagements_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient logComplicationsSeenInGalleryWithEngagements:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)outcomes completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  outcomesCopy = outcomes;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ATXFaceSuggestionClient logFaceGalleryItemsSeenInGalleryWithOutcomes:completion:]";
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__ATXFaceSuggestionClient_logFaceGalleryItemsSeenInGalleryWithOutcomes_completion___block_invoke;
  v12[3] = &unk_1E80C08E0;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  [v11 logFaceGalleryItemsSeenInGalleryWithOutcomes:outcomesCopy completion:v10];
}

void __83__ATXFaceSuggestionClient_logFaceGalleryItemsSeenInGalleryWithOutcomes_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionClient logFaceGalleryItemsSeenInGalleryWithOutcomes:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_logEvent:(id)event
{
  eventCopy = event;
  loggingQueue = self->_loggingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ATXFaceSuggestionClient__logEvent___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(loggingQueue, v7);
}

void __37__ATXFaceSuggestionClient__logEvent___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) source];
  [v2 sendEvent:*(a1 + 40)];
}

- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ATXFaceSuggestionClient logFaceGalleryDidAppearWithFaceGalleryConfiguration:]";
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_48];
  [v6 logFaceGalleryDidAppearWithFaceGalleryConfiguration:configurationCopy];

  v7 = [ATXFaceGalleryEvent galleryDidAppearEventWithConfiguration:configurationCopy];
  [(ATXFaceSuggestionClient *)self _logEvent:v7];
}

void __79__ATXFaceSuggestionClient_logFaceGalleryDidAppearWithFaceGalleryConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ATXFaceSuggestionClient logFaceGalleryDidAppearWithFaceGalleryConfiguration:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: error fetching remote object proxy: %@", &v4, 0x16u);
  }
}

- (void)logFaceGalleryDidDisappear
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXFaceSuggestionClient logFaceGalleryDidDisappear]";
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = +[ATXFaceGalleryEvent galleryDidDisappearEvent];
  [(ATXFaceSuggestionClient *)self _logEvent:v4];
}

- (void)logFaceGalleryItemsDidAppear:(id)appear
{
  v11 = *MEMORY[0x1E69E9840];
  appearCopy = appear;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ATXFaceSuggestionClient logFaceGalleryItemsDidAppear:]";
    v9 = 2112;
    v10 = appearCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  v6 = [ATXFaceGalleryEvent itemsDidAppearEventWithItems:appearCopy];
  [(ATXFaceSuggestionClient *)self _logEvent:v6];
}

void __31__ATXFaceSuggestionClient_init__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXFaceSuggestionClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: connection interrupted", &v1, 0xCu);
}

void __31__ATXFaceSuggestionClient_init__block_invoke_29_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXFaceSuggestionClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: connection invalidated", &v1, 0xCu);
}

@end