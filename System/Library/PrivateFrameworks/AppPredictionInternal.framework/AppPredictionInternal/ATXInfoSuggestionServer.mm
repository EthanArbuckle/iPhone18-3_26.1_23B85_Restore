@interface ATXInfoSuggestionServer
+ (id)sharedInstance;
- (ATXInfoSuggestionServer)initWithInfoEngine:(id)engine rsSuggestionProducer:(id)producer infoHeuristics:(id)heuristics criterionRegistry:(id)registry xpcListener:(id)listener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_processIncomingSuggestion:(id)suggestion sourceIdentifier:(id)identifier error:(id *)error;
- (id)_processIncomingSuggestions:(id)suggestions sourceIdentifier:(id)identifier error:(id *)error;
- (void)_addSuggestions:(id)suggestions forSourceIdentifier:(id)identifier needReset:(BOOL)reset errorHandler:(id)handler;
- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier errorHandler:(id)handler;
- (void)dealloc;
- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply;
- (void)informationHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions forHeuristic:(id)heuristic;
- (void)overwriteSuggestionsWithProactiveSuggestions:(id)suggestions forClientModelIdentifier:(id)identifier completionHandler:(id)handler;
- (void)refreshInfoSuggestionsWithCompletionHandler:(id)handler;
- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:(id)identifier reply:(id)reply;
- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion;
@end

@implementation ATXInfoSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_36 != -1)
  {
    +[ATXInfoSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_44;

  return v3;
}

void __41__ATXInfoSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXInfoSuggestionServer alloc];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CCAE98]);
  v7 = [v6 initWithMachServiceName:*MEMORY[0x277D42120]];
  v8 = [(ATXInfoSuggestionServer *)v1 initWithInfoEngine:v2 rsSuggestionProducer:v3 infoHeuristics:v4 criterionRegistry:v5 xpcListener:v7];
  v9 = sharedInstance__pasExprOnceResult_44;
  sharedInstance__pasExprOnceResult_44 = v8;

  objc_autoreleasePoolPop(v0);
}

- (ATXInfoSuggestionServer)initWithInfoEngine:(id)engine rsSuggestionProducer:(id)producer infoHeuristics:(id)heuristics criterionRegistry:(id)registry xpcListener:(id)listener
{
  engineCopy = engine;
  producerCopy = producer;
  heuristicsCopy = heuristics;
  registryCopy = registry;
  listenerCopy = listener;
  v21.receiver = self;
  v21.super_class = ATXInfoSuggestionServer;
  v17 = [(ATXInfoSuggestionServer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_xpcListener, listener);
    objc_storeStrong(&v18->_criterionRegistry, registry);
    objc_storeStrong(&v18->_engine, engine);
    objc_storeStrong(&v18->_relevantShortcutSuggestionProducer, producer);
    objc_storeStrong(&v18->_informationHeuristics, heuristics);
    [(NSXPCListener *)v18->_xpcListener setDelegate:v18];
    [(NSXPCListener *)v18->_xpcListener resume];
    [(ATXInformationHeuristics *)v18->_informationHeuristics setDelegate:v18];
    [(ATXInformationHeuristics *)v18->_informationHeuristics refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:&__block_literal_global_24_2];
  }

  return v18;
}

void __112__ATXInfoSuggestionServer_initWithInfoEngine_rsSuggestionProducer_infoHeuristics_criterionRegistry_xpcListener___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = __atxlog_handle_gi();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __112__ATXInfoSuggestionServer_initWithInfoEngine_rsSuggestionProducer_infoHeuristics_criterionRegistry_xpcListener___block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3.receiver = self;
  v3.super_class = ATXInfoSuggestionServer;
  [(ATXInfoSuggestionServer *)&v3 dealloc];
}

- (void)refreshInfoSuggestionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  informationHeuristics = self->_informationHeuristics;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_27859A480;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ATXInformationHeuristics *)informationHeuristics refreshResultsForAllHeuristicsWithCompletionHandler:v7];
}

uint64_t __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)_processIncomingSuggestion:(id)suggestion sourceIdentifier:(id)identifier error:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  if (![(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    if (error)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = identifierCopy;
      v26 = [[v24 alloc] initWithFormat:@"source ID %@ is invalid", v25];

      v27 = MEMORY[0x277CCA9B8];
      v28 = v26;
      v29 = [v27 alloc];
      v44 = *MEMORY[0x277CCA450];
      v45[0] = v28;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

      v31 = [v29 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v30];
      v32 = v31;
      v33 = 0;
      *error = v31;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  criterionRegistry = self->_criterionRegistry;
  criterion = [suggestionCopy criterion];
  v12 = [(ATXInfoSuggestionCriterionRegistry *)criterionRegistry confidenceLevelForCriterion:criterion sourceIdentifier:identifierCopy];

  if ((v12 + 1) <= 1)
  {
    if (error)
    {
      criterion2 = [suggestionCopy criterion];
      v14 = MEMORY[0x277CCACA8];
      v15 = identifierCopy;
      v16 = [v14 alloc];
      if (v12)
      {
        v17 = [v16 initWithFormat:@"criterion %@ of %@ is disabled", criterion2, v15];

        v18 = MEMORY[0x277CCA9B8];
        v19 = v17;
        v20 = [v18 alloc];
        v44 = *MEMORY[0x277CCA450];
        v45[0] = v19;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

        v22 = v20;
        v23 = -5;
      }

      else
      {
        v37 = [v16 initWithFormat:@"criterion %@ of %@ is invalid", criterion2, v15];

        v38 = MEMORY[0x277CCA9B8];
        v19 = v37;
        v39 = [v38 alloc];
        v44 = *MEMORY[0x277CCA450];
        v45[0] = v19;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

        v22 = v39;
        v23 = -2;
      }

      v40 = [v22 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:v23 userInfo:v21];

      v41 = v40;
      *error = v40;
    }

LABEL_13:
    v33 = 0;
    goto LABEL_14;
  }

  [suggestionCopy setConfidenceLevel:v12];
  [suggestionCopy setSourceIdentifier:identifierCopy];
  suggestionIdentifier = [suggestionCopy suggestionIdentifier];

  if (!suggestionIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [suggestionCopy setSuggestionIdentifier:uUIDString];
  }

  v33 = suggestionCopy;
LABEL_14:

  v42 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_processIncomingSuggestions:(id)suggestions sourceIdentifier:(id)identifier error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestion:*(*(&v21 + 1) + 8 * i) sourceIdentifier:identifierCopy error:error, v21];
        if (!v16)
        {

          v18 = 0;
          goto LABEL_11;
        }

        v17 = v16;
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = v10;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_addSuggestions:(id)suggestions forSourceIdentifier:(id)identifier needReset:(BOOL)reset errorHandler:(id)handler
{
  resetCopy = reset;
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = 0;
  v12 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestions:suggestions sourceIdentifier:identifierCopy error:&v16];
  v13 = v16;
  if (v12)
  {
    engine = self->_engine;
    if (resetCopy)
    {
      [(ATXInformationEngine *)engine resetSuggestionsTo:v12 forInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
    }

    else
    {
      [(ATXInformationEngine *)engine insertSuggestions:v12 forInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    v15 = __atxlog_handle_gi();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer _addSuggestions:forSourceIdentifier:needReset:errorHandler:];
    }

    handlerCopy[2](handlerCopy, v13);
  }
}

- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  if ([(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    [(ATXInformationEngine *)self->_engine getSuggestionsForInfoSourceIdentifier:identifierCopy withReply:replyCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = identifierCopy;
    v10 = [[v8 alloc] initWithFormat:@"source ID %@ is invalid", v9];

    v11 = MEMORY[0x277CCA9B8];
    v12 = v10;
    v13 = [v11 alloc];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v15 = [v13 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v14];
    v16 = __atxlog_handle_gi();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer getSuggestionsForInfoSourceIdentifier:withReply:];
    }

    replyCopy[2](replyCopy, 0, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier errorHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    [(ATXInformationEngine *)self->_engine clearSuggestionsForInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = identifierCopy;
    v10 = [[v8 alloc] initWithFormat:@"source ID %@ is invalid", v9];

    v11 = MEMORY[0x277CCA9B8];
    v12 = v10;
    v13 = [v11 alloc];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v15 = [v13 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v14];
    v16 = __atxlog_handle_gi();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer clearSuggestionsForInfoSourceIdentifier:errorHandler:];
    }

    handlerCopy[2](handlerCopy, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)overwriteSuggestionsWithProactiveSuggestions:(id)suggestions forClientModelIdentifier:(id)identifier completionHandler:(id)handler
{
  v51[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = __atxlog_handle_gi();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = [suggestionsCopy count];
    v49 = 2114;
    v50 = identifierCopy;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: receive %d suggestion(s) from ATXClientModel %{public}@", buf, 0x12u);
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [objc_alloc(MEMORY[0x277D42040]) initWithProactiveSuggestion:v16];
        if (!v18)
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = v16;
          v27 = [[v25 alloc] initWithFormat:@"Failed to convert ATXProactiveSuggestion to ATXInfoSuggestion: %@", v26];

          v28 = MEMORY[0x277CCA9B8];
          v29 = v27;
          v30 = [v28 alloc];
          v51[0] = *MEMORY[0x277CCA450];
          *buf = v29;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v51 count:1];

          v32 = [v30 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-4 userInfo:v31];
          v33 = __atxlog_handle_gi();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            [ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:];
          }

          v24 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, 0, v32);

          objc_autoreleasePoolPop(v17);
          v22 = v11;
          goto LABEL_20;
        }

        v19 = v18;
        v20 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:18];
        [v19 setClientModelId:v20];

        [v10 addObject:v19];
        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v42 = 0;
  v21 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestions:v10 sourceIdentifier:identifierCopy error:&v42];
  v22 = v42;
  if (v21)
  {
    engine = self->_engine;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke;
    v38[3] = &unk_2785A0280;
    v39 = v21;
    v40 = identifierCopy;
    v24 = handlerCopy;
    v41 = handlerCopy;
    [(ATXInformationEngine *)engine resetSuggestionsTo:v39 forInfoSourceIdentifier:v40 completionHandler:v38];
  }

  else
  {
    v34 = __atxlog_handle_gi();
    v24 = handlerCopy;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v22);
  }

LABEL_20:
  v35 = *MEMORY[0x277D85DE8];
}

void __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277D42040] proactiveSuggestionForInfoSuggestion:*(*(&v16 + 1) + 8 * i) withClientModelId:*(a1 + 40) clientModelVersion:@"1.0" rawScore:0 confidenceCategory:{0.0, v16}];
          if (!v12)
          {
            v14 = __atxlog_handle_gi();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke_cold_1(v14);
            }

            (*(*(a1 + 48) + 16))();
            goto LABEL_17;
          }

          v13 = v12;
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_17:

    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:(id)identifier reply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  criterionRegistry = self->_criterionRegistry;
  replyCopy = reply;
  if ([(ATXInfoSuggestionCriterionRegistry *)criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    v9 = [(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry availableCriterionIdentifiersForSourceIdentifier:identifierCopy];
    replyCopy[2](replyCopy, v9, 0);
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = identifierCopy;
    v12 = [[v10 alloc] initWithFormat:@"source ID %@ is invalid", v11];

    v13 = MEMORY[0x277CCA9B8];
    v14 = v12;
    v15 = [v13 alloc];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v9 = [v15 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v16];
    v17 = __atxlog_handle_gi();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer retrieveAvailableCriterionIdentifiersForSourceIdentifier:reply:];
    }

    (replyCopy)[2](replyCopy, 0, v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = *MEMORY[0x277D42120];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277D42120]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXInfoSuggestionXPCInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_38_1];
    [connectionCopy setInvalidationHandler:&__block_literal_global_41_1];
    [connectionCopy resume];
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = connectionCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: accepts XPC connection: %{public}@", &v13, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXInfoSuggestionServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v9];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_gi();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_39()
{
  v0 = __atxlog_handle_gi();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: XPC connection invalidated.", v1, 2u);
  }
}

- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  appCopy = app;
  entriesCopy = entries;
  completionCopy = completion;
  v14 = __atxlog_handle_xpc();
  v15 = os_signpost_id_generate(v14);

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  v18 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "_timelineDidUpdateForWidget", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = @"entries";
  if ([entriesCopy count] && objc_msgSend(entriesCopy, "count") <= 1)
  {
    v19 = @"entry";
  }

  spid = v15;
  v20 = v19;
  v21 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [entriesCopy count];
    *buf = 138413058;
    v44 = widgetCopy;
    v45 = 2112;
    v46 = appCopy;
    v47 = 2048;
    v48 = v22;
    v49 = 2112;
    v50 = v20;
    _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: timelineDidReloadForWidget:appBundleId:entries:completion called with widget: %@, appBundleId: %@ and %lu %@", buf, 0x2Au);
  }

  v40 = v20;
  v41 = appCopy;

  v23 = [ATXTimelineRelevance alloc];
  criterionRegistry = self->_criterionRegistry;
  abuseControlConfig = [(ATXInformationEngine *)self->_engine abuseControlConfig];
  v42 = widgetCopy;
  v26 = [(ATXTimelineRelevance *)v23 initWithWidget:widgetCopy criterionRegistry:criterionRegistry abuseControlConfig:abuseControlConfig];

  [(ATXTimelineRelevance *)v26 setDelegate:self->_engine];
  sourceId = [(ATXTimelineRelevance *)v26 sourceId];
  v28 = [(ATXInformationEngine *)self->_engine latestInfoSuggestionRelevantNowForSourceId:sourceId];
  engine = self->_engine;
  suggestionIdentifier = [v28 suggestionIdentifier];
  [(ATXInformationEngine *)engine deleteAllSuggestionsForSourceId:sourceId excludingSuggestionId:suggestionIdentifier];

  v31 = [(ATXTimelineRelevance *)v26 infoSuggestionsFromTimelineEntries:entriesCopy latestInfoSuggestionRelevantNow:v28];
  v32 = @"suggestions";
  if ([v31 count] <= 1 && objc_msgSend(v31, "count"))
  {
    v32 = @"suggestion";
  }

  v33 = v32;
  v34 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v31 count];
    *buf = 134218242;
    v44 = v35;
    v45 = 2112;
    v46 = v33;
    _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: Sending %lu %@ to the InformationEngine", buf, 0x16u);
  }

  [(ATXInformationEngine *)self->_engine insertSuggestions:v31 forInfoSourceIdentifier:sourceId completionHandler:completionCopy];
  v36 = __atxlog_handle_xpc();
  v37 = v36;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v37, OS_SIGNPOST_INTERVAL_END, spid, "_timelineDidUpdateForWidget", " enableTelemetry=YES ", buf, 2u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)informationHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions forHeuristic:(id)heuristic
{
  v22 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v8 = [MEMORY[0x277CE8990] sourceIdentifierForHeuristicWithName:heuristic];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = suggestionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{18, v17}];
        [v14 setClientModelId:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(ATXInfoSuggestionServer *)self resetSuggestionsTo:v9 forInfoSourceIdentifier:v8 errorHandler:&__block_literal_global_56_1];
  v16 = *MEMORY[0x277D85DE8];
}

void __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)_addSuggestions:forSourceIdentifier:needReset:errorHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getSuggestionsForInfoSourceIdentifier:withReply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearSuggestionsForInfoSourceIdentifier:errorHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "ATXInfoSuggestionServer %s: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:]_block_invoke";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXInfoSuggestionServer %s: error converting ATXProactiveSuggestion to ATXProactiveSuggestion", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionServer: Rejecting connection %{public}@ without entitlement %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Error donating suggestions through heuristics: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end