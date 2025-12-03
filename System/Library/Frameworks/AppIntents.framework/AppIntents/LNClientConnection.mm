@interface LNClientConnection
+ (void)performWithoutTimeout:(id)timeout;
- (LNClientConnection)initWithConnection:(id)connection connectionListener:(id)listener queue:(id)queue appContext:(id)context;
- (LNConnectionListener)connectionListener;
- (id)clientConnectionQueue;
- (void)createAsyncIteratorForSequence:(id)sequence options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)enqueuePerformActionOperation:(id)operation;
- (void)exportTransientEntities:(id)entities withConfiguration:(id)configuration completionHandler:(id)handler;
- (void)fetchActionAppContextFromAction:(id)action completionHandler:(id)handler;
- (void)fetchActionForAppShortcutIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchActionForAutoShortcutPhrase:(id)phrase completionHandler:(id)handler;
- (void)fetchActionOutputValueWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchAppShortcutParametersForMangledName:(id)name withCompletionHandler:(id)handler;
- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler;
- (void)fetchDisplayRepresentationForActions:(id)actions completionHandler:(id)handler;
- (void)fetchEntityURL:(id)l completionHandler:(id)handler;
- (void)fetchOptionsDefaultValuesForAction:(id)action completionHandler:(id)handler;
- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchParameterOptionDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler;
- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler;
- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)code completionHandler:(id)handler;
- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler;
- (void)fetchURLForEnumWithIdentifier:(id)identifier caseIdentifier:(id)caseIdentifier completionHandler:(id)handler;
- (void)fetchURLsForEnumWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchValueForPropertyWithIdentifier:(id)identifier entity:(id)entity completionHandler:(id)handler;
- (void)fetchViewActionsWithCompletionHandler:(id)handler;
- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler;
- (void)getListenerEndpointForBundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler;
- (void)getListenerEndpointWithCompletionHandler:(id)handler;
- (void)linkAppUndoManager:(id)manager completionHandler:(id)handler;
- (void)nextAsyncIteratorResults:(id)results completionHandler:(id)handler;
- (void)performAction:(id)action options:(id)options executor:(id)executor completionHandler:(id)handler;
- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler;
- (void)performConfigurableQuery:(id)query completionHandler:(id)handler;
- (void)performPropertyQuery:(id)query completionHandler:(id)handler;
- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler;
- (void)performSuggestedResultsQueryWithEntityType:(id)type completionHandler:(id)handler;
- (void)releaseAsyncSequence:(id)sequence completionHandler:(id)handler;
- (void)removePerformActionOperation:(id)operation;
- (void)stageContextWithRequest:(id)request completionHandler:(id)handler;
- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler;
- (void)updateConnectionContext:(id)context completionHandler:(id)handler;
- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler;
@end

@implementation LNClientConnection

- (void)dealloc
{
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18F0E9000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating client connection", buf, 2u);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = LNClientConnection;
  [(LNClientConnection *)&v4 dealloc];
}

- (LNConnectionListener)connectionListener
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionListener);

  return WeakRetained;
}

- (void)linkAppUndoManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  v8 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18F0E9000, v8, OS_LOG_TYPE_INFO, "Main app received undo manager reference from intent execution", buf, 2u);
  }

  appContext = [(LNClientConnection *)self appContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__LNClientConnection_linkAppUndoManager_completionHandler___block_invoke;
  v11[3] = &unk_1E72B74B0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [appContext linkUndoManager:managerCopy completionHandler:v11];
}

void __59__LNClientConnection_linkAppUndoManager_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__LNClientConnection_linkAppUndoManager_completionHandler___block_invoke_2;
  v11 = &unk_1E72B7488;
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [*(a1 + 32) queue];
  dispatch_async(v7, v6);
}

- (void)stageContextWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LNClientConnection_stageContextWithRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext stageContextWithRequest:requestCopy completionHandler:v10];
}

void __64__LNClientConnection_stageContextWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__LNClientConnection_stageContextWithRequest_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)releaseAsyncSequence:(id)sequence completionHandler:(id)handler
{
  handlerCopy = handler;
  sequenceCopy = sequence;
  appContext = [(LNClientConnection *)self appContext];
  v9 = MEMORY[0x1E696AD98];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(xpcConnection, "hash")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LNClientConnection_releaseAsyncSequence_completionHandler___block_invoke;
  v13[3] = &unk_1E72B74B0;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [appContext releaseAsyncSequence:sequenceCopy connectionIdentifier:v11 completionHandler:v13];
}

void __61__LNClientConnection_releaseAsyncSequence_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__LNClientConnection_releaseAsyncSequence_completionHandler___block_invoke_2;
  v11 = &unk_1E72B7488;
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [*(a1 + 32) queue];
  dispatch_async(v7, v6);
}

- (void)nextAsyncIteratorResults:(id)results completionHandler:(id)handler
{
  handlerCopy = handler;
  resultsCopy = results;
  appContext = [(LNClientConnection *)self appContext];
  v9 = MEMORY[0x1E696AD98];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(xpcConnection, "hash")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__LNClientConnection_nextAsyncIteratorResults_completionHandler___block_invoke;
  v13[3] = &unk_1E72B72A8;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [appContext nextAsyncIteratorResults:resultsCopy connectionIdentifier:v11 completionHandler:v13];
}

void __65__LNClientConnection_nextAsyncIteratorResults_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__LNClientConnection_nextAsyncIteratorResults_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)createAsyncIteratorForSequence:(id)sequence options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  sequenceCopy = sequence;
  appContext = [(LNClientConnection *)self appContext];
  v12 = MEMORY[0x1E696AD98];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(xpcConnection, "hash")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__LNClientConnection_createAsyncIteratorForSequence_options_completionHandler___block_invoke;
  v16[3] = &unk_1E72B7578;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [appContext createAsyncIteratorForSequence:sequenceCopy options:optionsCopy connectionIdentifier:v14 completionHandler:v16];
}

void __79__LNClientConnection_createAsyncIteratorForSequence_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__LNClientConnection_createAsyncIteratorForSequence_options_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)updateConnectionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__LNClientConnection_updateConnectionContext_completionHandler___block_invoke;
  v11[3] = &unk_1E72B74B0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [appContext updateContextForConnection:xpcConnection context:contextCopy completionHandler:v11];
}

void __64__LNClientConnection_updateConnectionContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __64__LNClientConnection_updateConnectionContext_completionHandler___block_invoke_2;
  v11 = &unk_1E72B7488;
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [*(a1 + 32) queue];
  dispatch_async(v7, v6);
}

- (void)updateProperties:(id)properties withQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  propertiesCopy = properties;
  appContext = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__LNClientConnection_updateProperties_withQuery_completionHandler___block_invoke;
  v13[3] = &unk_1E72B74B0;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [appContext updateProperties:propertiesCopy withQuery:queryCopy completionHandler:v13];
}

void __67__LNClientConnection_updateProperties_withQuery_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __67__LNClientConnection_updateProperties_withQuery_completionHandler___block_invoke_2;
  v11 = &unk_1E72B7488;
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [*(a1 + 32) queue];
  dispatch_async(v7, v6);
}

- (void)getListenerEndpointForBundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionCopy = action;
  handlerCopy = handler;
  if (actionCopy)
  {
    appContext = [(LNClientConnection *)self appContext];
    xpcConnection = [(LNClientConnection *)self xpcConnection];
    v13 = xpcConnection;
    if (xpcConnection)
    {
      [xpcConnection auditToken];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    xpcConnection2 = [(LNClientConnection *)self xpcConnection];
    v18 = [xpcConnection2 hash];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke;
    v25[3] = &unk_1E72B7528;
    v25[4] = self;
    v26 = handlerCopy;
    [appContext fetchActionListenerEndpoint:actionCopy auditToken:v27 connectionIdentifier:v18 completionHandler:v25];

    delegate = v26;
  }

  else
  {
    mEMORY[0x1E69ACF50] = [MEMORY[0x1E69ACF50] sharedProvider];
    delegate = [mEMORY[0x1E69ACF50] delegate];

    if (delegate)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke_3;
      v23[3] = &unk_1E72B7550;
      v24 = handlerCopy;
      [delegate provideListenerEndpointForBundleIdentifier:identifierCopy completionHandler:v23];
      identifierCopy = v24;
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E69ACB60];
      v28 = *MEMORY[0x1E696A578];
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"The requested process is unable to mediate connection to %@", identifierCopy];
      v29[0] = identifierCopy;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v22 = [v19 errorWithDomain:v20 code:2300 userInfo:v21];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v22);
    }
  }
}

void __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

void __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke_3(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = a3[1];
    v10[0] = *a3;
    v10[1] = v9;
    a3 = [MEMORY[0x1E695DEF0] if_dataWithAuditToken:v10];
  }

  (*(*(a1 + 32) + 16))();
}

void __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5 = [*(a1 + 32) listenerEndpoint];
  v3 = [*(a1 + 32) auditTokenData];
  v4 = [*(a1 + 32) resolvedAction];
  (*(v2 + 16))(v2, v5, v3, v4, *(a1 + 40));
}

- (void)getListenerEndpointWithCompletionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  connectionListener = [(LNClientConnection *)self connectionListener];

  if (connectionListener)
  {
    connectionListener2 = [(LNClientConnection *)self connectionListener];
    xpcListener = [connectionListener2 xpcListener];
    endpoint = [xpcListener endpoint];
    v9 = MEMORY[0x1E695DEF0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v11 = processInfo;
    if (processInfo)
    {
      [processInfo if_auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = [v9 if_dataWithAuditToken:v15];
    handlerCopy[2](handlerCopy, endpoint, v14, 0);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69ACB60];
    v16 = *MEMORY[0x1E696A578];
    connectionListener2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to request listener endpoint because the connection listener is unset."];
    v17[0] = connectionListener2;
    xpcListener = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    endpoint = [v12 errorWithDomain:v13 code:2301 userInfo:xpcListener];
    (handlerCopy)[2](handlerCopy, 0, 0, endpoint);
    v11 = handlerCopy;
  }
}

- (void)exportTransientEntities:(id)entities withConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  entitiesCopy = entities;
  appContext = [(LNClientConnection *)self appContext];
  v12 = MEMORY[0x1E696AD98];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(xpcConnection, "hash")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__LNClientConnection_exportTransientEntities_withConfiguration_completionHandler___block_invoke;
  v16[3] = &unk_1E72B7410;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [appContext exportTransientEntities:entitiesCopy withConfiguration:configurationCopy connectionIdentifier:v14 completionHandler:v16];
}

void __82__LNClientConnection_exportTransientEntities_withConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__LNClientConnection_exportTransientEntities_withConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchURLsForEnumWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__LNClientConnection_fetchURLsForEnumWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7398;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchURLsForEnumWithIdentifier:identifierCopy completionHandler:v10];
}

void __71__LNClientConnection_fetchURLsForEnumWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__LNClientConnection_fetchURLsForEnumWithIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchURLForEnumWithIdentifier:(id)identifier caseIdentifier:(id)caseIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  caseIdentifierCopy = caseIdentifier;
  identifierCopy = identifier;
  appContext = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__LNClientConnection_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_1E72B7500;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [appContext fetchURLForEnumWithIdentifier:identifierCopy caseIdentifier:caseIdentifierCopy completionHandler:v13];
}

void __85__LNClientConnection_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__LNClientConnection_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchEntityURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__LNClientConnection_fetchEntityURL_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7500;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchEntityURL:lCopy completionHandler:v10];
}

void __55__LNClientConnection_fetchEntityURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__LNClientConnection_fetchEntityURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchValueForPropertyWithIdentifier:(id)identifier entity:(id)entity completionHandler:(id)handler
{
  handlerCopy = handler;
  entityCopy = entity;
  identifierCopy = identifier;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v13 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v15 = [xpcConnection2 hash];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__LNClientConnection_fetchValueForPropertyWithIdentifier_entity_completionHandler___block_invoke;
  v17[3] = &unk_1E72B7410;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [appContext fetchValueForPropertyWithIdentifier:identifierCopy entity:entityCopy auditToken:v19 connectionIdentifier:v15 completionHandler:v17];
}

void __83__LNClientConnection_fetchValueForPropertyWithIdentifier_entity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__LNClientConnection_fetchValueForPropertyWithIdentifier_entity_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchAppShortcutParametersForMangledName:(id)name withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__LNClientConnection_fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchAppShortcutParametersForMangledName:nameCopy withCompletionHandler:v10];
}

void __85__LNClientConnection_fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__LNClientConnection_fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v13 = v5;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

void __85__LNClientConnection_fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v2)
  {
    v9 = [v2 objectAtIndexedSubscript:0];
    v4 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v5 = [*(a1 + 32) objectAtIndexedSubscript:2];
    (*(v3 + 16))(v3, v9, v4, v5, *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(v3 + 16);
    v8 = *(a1 + 48);

    v7(v8, 0, 0, 0, v6);
  }
}

- (void)updateAppShortcutParametersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  appContext = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__LNClientConnection_updateAppShortcutParametersWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B74B0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [appContext updateAppShortcutParametersWithCompletionHandler:v7];
}

void __71__LNClientConnection_updateAppShortcutParametersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __71__LNClientConnection_updateAppShortcutParametersWithCompletionHandler___block_invoke_2;
  v11 = &unk_1E72B7488;
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [*(a1 + 32) queue];
  dispatch_async(v7, v6);
}

- (void)fetchStateForAppIntentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LNClientConnection_fetchStateForAppIntentIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7398;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchStateForAppIntentIdentifiers:identifiersCopy completionHandler:v10];
}

void __74__LNClientConnection_fetchStateForAppIntentIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__LNClientConnection_fetchStateForAppIntentIdentifiers_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchActionForAppShortcutIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LNClientConnection_fetchActionForAppShortcutIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7460;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchActionForAppShortcutIdentifier:identifierCopy completionHandler:v10];
}

void __76__LNClientConnection_fetchActionForAppShortcutIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__LNClientConnection_fetchActionForAppShortcutIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchActionForAutoShortcutPhrase:(id)phrase completionHandler:(id)handler
{
  handlerCopy = handler;
  phraseCopy = phrase;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LNClientConnection_fetchActionForAutoShortcutPhrase_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7438;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchActionForAutoShortcutPhrase:phraseCopy completionHandler:v10];
}

void __73__LNClientConnection_fetchActionForAutoShortcutPhrase_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__LNClientConnection_fetchActionForAutoShortcutPhrase_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchActionAppContextFromAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__LNClientConnection_fetchActionAppContextFromAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B73C0;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchActionAppContextForAction:actionCopy completionHandler:v10];
}

void __72__LNClientConnection_fetchActionAppContextFromAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__LNClientConnection_fetchActionAppContextFromAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchSuggestedFocusActionsForActionMetadata:(id)metadata suggestionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  metadataCopy = metadata;
  appContext = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__LNClientConnection_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke;
  v13[3] = &unk_1E72B72A8;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [appContext fetchSuggestedFocusActionsForActionMetadata:metadataCopy suggestionContext:contextCopy completionHandler:v13];
}

void __102__LNClientConnection_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__LNClientConnection_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchSuggestedActionsForStartWorkoutAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__LNClientConnection_fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchSuggestedActionsForStartWorkoutAction:actionCopy completionHandler:v10];
}

void __83__LNClientConnection_fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__LNClientConnection_fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)code completionHandler:(id)handler
{
  handlerCopy = handler;
  codeCopy = code;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__LNClientConnection_fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchSuggestedActionsWithSiriLanguageCode:codeCopy completionHandler:v10];
}

void __82__LNClientConnection_fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__LNClientConnection_fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  appContext = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__LNClientConnection_fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B72A8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [appContext fetchSuggestedActionsFromViewWithCompletionHandler:v7];
}

void __73__LNClientConnection_fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__LNClientConnection_fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchActionOutputValueWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__LNClientConnection_fetchActionOutputValueWithIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E72B7410;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [appContext fetchActionOutputValueForConnection:xpcConnection withIdentifier:identifierCopy completionHandler:v11];
}

void __77__LNClientConnection_fetchActionOutputValueWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__LNClientConnection_fetchActionOutputValueWithIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchParameterOptionDefaultValueForAction:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier completionHandler:(id)handler
{
  actionCopy = action;
  metadataCopy = metadata;
  identifierCopy = identifier;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E72B73E8;
  block[4] = self;
  v21 = actionCopy;
  v22 = metadataCopy;
  v23 = identifierCopy;
  v24 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = metadataCopy;
  v17 = actionCopy;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  clientConnectionQueue = [(LNClientConnection *)self clientConnectionQueue];
  dispatch_async(clientConnectionQueue, v18);
}

void __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appContext];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) xpcConnection];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_1E72B73C0;
  v9 = *(a1 + 64);
  v10[4] = *(a1 + 32);
  v11 = v9;
  [v2 fetchParameterOptionDefaultValueForAction:v6 actionMetadata:v3 parameterIdentifier:v4 connectionIdentifier:v8 completionHandler:v10];
}

void __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchOptionsDefaultValuesForAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke;
  block[3] = &unk_1E72B74D8;
  block[4] = self;
  v13 = actionCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = actionCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  clientConnectionQueue = [(LNClientConnection *)self clientConnectionQueue];
  dispatch_async(clientConnectionQueue, v10);
}

void __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appContext];
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) xpcConnection];
  v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v5, "hash")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke_2;
  v8[3] = &unk_1E72B73C0;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v2 fetchOptionsDefaultValuesForAction:v4 connectionIdentifier:v6 completionHandler:v8];
}

void __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke_3;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)identifier forEntityIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  appContext = [(LNClientConnection *)self appContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__LNClientConnection_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke;
  v12[3] = &unk_1E72B7398;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [appContext fetchStructuredDataWithTypeIdentifier:identifier forEntityIdentifiers:identifiersCopy completionHandler:v12];
}

void __99__LNClientConnection_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__LNClientConnection_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchOptionsForAction:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier completionHandler:(id)handler
{
  actionCopy = action;
  metadataCopy = metadata;
  parameterMetadataCopy = parameterMetadata;
  referenceCopy = reference;
  termCopy = term;
  identifierCopy = identifier;
  handlerCopy = handler;
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke;
  v34 = &unk_1E72B7370;
  selfCopy = self;
  v36 = actionCopy;
  v37 = metadataCopy;
  v38 = parameterMetadataCopy;
  v39 = referenceCopy;
  v40 = termCopy;
  v41 = identifierCopy;
  v42 = handlerCopy;
  v22 = handlerCopy;
  v23 = identifierCopy;
  v24 = termCopy;
  v25 = referenceCopy;
  v26 = parameterMetadataCopy;
  v27 = metadataCopy;
  v28 = actionCopy;
  v29 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v31);
  v30 = [(LNClientConnection *)self clientConnectionQueue:v31];
  dispatch_async(v30, v29);
}

void __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appContext];
  v3 = *(a1 + 56);
  v12 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) xpcConnection];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "hash")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke_2;
  v13[3] = &unk_1E72B7348;
  v11 = *(a1 + 88);
  v13[4] = *(a1 + 32);
  v14 = v11;
  [v2 fetchOptionsForAction:v8 actionMetadata:v12 parameterMetadata:v3 optionsProviderReference:v4 searchTerm:v5 localeIdentifier:v6 connectionIdentifier:v10 completionHandler:v13];
}

void __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performAction:(id)action options:(id)options executor:(id)executor completionHandler:(id)handler
{
  handlerCopy = handler;
  executorCopy = executor;
  optionsCopy = options;
  actionCopy = action;
  v14 = [LNPerformActionExecutorDelegateProxy alloc];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v16 = [(LNPerformActionExecutorDelegateProxy *)v14 initWithConnection:xpcConnection interface:executorCopy];

  v17 = [LNPerformActionOperation alloc];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __71__LNClientConnection_performAction_options_executor_completionHandler___block_invoke;
  v23 = &unk_1E72B7320;
  selfCopy = self;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = [(LNPerformActionOperation *)v17 initWithAction:actionCopy options:optionsCopy client:v16 completionHandler:&v20];

  [(LNClientConnection *)self enqueuePerformActionOperation:v19, v20, v21, v22, v23, selfCopy];
}

void __71__LNClientConnection_performAction_options_executor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__LNClientConnection_performAction_options_executor_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchDestinationMDMAccountIdentifierForAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__LNClientConnection_fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72F8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchDestinationMDMAccountIdentifierForAction:actionCopy completionHandler:v10];
}

void __86__LNClientConnection_fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LNClientConnection_fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(xpcConnection2, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__LNClientConnection_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [appContext performAllEntitiesQueryWithEntityMangledTypeName:nameCopy auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
}

void __89__LNClientConnection_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__LNClientConnection_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(xpcConnection2, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__LNClientConnection_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [appContext performSuggestedEntitiesQueryWithEntityMangledTypeName:nameCopy auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
}

void __95__LNClientConnection_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__LNClientConnection_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performSuggestedResultsQueryWithEntityType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(xpcConnection2, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__LNClientConnection_performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [appContext performSuggestedResultsQueryWithEntityType:typeCopy auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
}

void __83__LNClientConnection_performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__LNClientConnection_performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performConfigurableQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(xpcConnection2, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__LNClientConnection_performConfigurableQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [appContext performConfigurableQuery:queryCopy auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
}

void __65__LNClientConnection_performConfigurableQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__LNClientConnection_performConfigurableQuery_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)performPropertyQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  appContext = [(LNClientConnection *)self appContext];
  xpcConnection = [(LNClientConnection *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  xpcConnection2 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(xpcConnection2, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__LNClientConnection_performPropertyQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [appContext performQuery:queryCopy auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
}

void __61__LNClientConnection_performPropertyQuery_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__LNClientConnection_performPropertyQuery_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchViewActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  appContext = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__LNClientConnection_fetchViewActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B72A8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [appContext fetchViewActionsWithCompletionHandler:v7];
}

void __60__LNClientConnection_fetchViewActionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__LNClientConnection_fetchViewActionsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchViewEntitiesWithInteractionIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LNClientConnection_fetchViewEntitiesWithInteractionIDs_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchViewEntitiesWithInteractionIDs:dsCopy completionHandler:v10];
}

void __76__LNClientConnection_fetchViewEntitiesWithInteractionIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__LNClientConnection_fetchViewEntitiesWithInteractionIDs_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)fetchDisplayRepresentationForActions:(id)actions completionHandler:(id)handler
{
  handlerCopy = handler;
  actionsCopy = actions;
  appContext = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__LNClientConnection_fetchDisplayRepresentationForActions_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [appContext fetchDisplayRepresentationForActions:actionsCopy completionHandler:v10];
}

void __77__LNClientConnection_fetchDisplayRepresentationForActions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__LNClientConnection_fetchDisplayRepresentationForActions_completionHandler___block_invoke_2;
  block[3] = &unk_1E72B74D8;
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [*(a1 + 32) queue];
  dispatch_async(v11, v10);
}

- (void)removePerformActionOperation:(id)operation
{
  operationCopy = operation;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__LNClientConnection_removePerformActionOperation___block_invoke;
  v11 = &unk_1E72B7280;
  selfCopy = self;
  v13 = operationCopy;
  v5 = operationCopy;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [(LNClientConnection *)self clientConnectionQueue:v8];
  dispatch_async(v7, v6);
}

uint64_t __51__LNClientConnection_removePerformActionOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performActionOperations];
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  v4 = *(a1 + 40);

  return [v4 setDelegate:0];
}

- (void)enqueuePerformActionOperation:(id)operation
{
  operationCopy = operation;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__LNClientConnection_enqueuePerformActionOperation___block_invoke;
  v11 = &unk_1E72B7280;
  selfCopy = self;
  v13 = operationCopy;
  v5 = operationCopy;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v8);
  v7 = [(LNClientConnection *)self clientConnectionQueue:v8];
  dispatch_async(v7, v6);
}

uint64_t __52__LNClientConnection_enqueuePerformActionOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performActionOperations];
  v3 = *(a1 + 40);
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];

  [*(a1 + 40) setDelegate:*(a1 + 32)];
  v5 = *(a1 + 40);

  return [v5 start];
}

- (id)clientConnectionQueue
{
  connectionListener = [(LNClientConnection *)self connectionListener];

  if (connectionListener)
  {
    connectionListener2 = [(LNClientConnection *)self connectionListener];
    clientConnectionQueue = [connectionListener2 clientConnectionQueue];
  }

  else
  {
    clientConnectionQueue = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return clientConnectionQueue;
}

- (LNClientConnection)initWithConnection:(id)connection connectionListener:(id)listener queue:(id)queue appContext:(id)context
{
  connectionCopy = connection;
  listenerCopy = listener;
  queueCopy = queue;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = LNClientConnection;
  v15 = [(LNClientConnection *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_appContext, context);
    objc_storeStrong(&v16->_xpcConnection, connection);
    v17 = LNConnectionClientXPCInterface();
    [(NSXPCConnection *)v16->_xpcConnection setRemoteObjectInterface:v17];

    v18 = LNConnectionHostXPCInterface();
    [(NSXPCConnection *)v16->_xpcConnection setExportedInterface:v18];

    v19 = [objc_alloc(MEMORY[0x1E69AD0B0]) initWithValue:v16];
    [(NSXPCConnection *)v16->_xpcConnection setExportedObject:v19];

    [(NSXPCConnection *)v16->_xpcConnection resume];
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    performActionOperations = v16->_performActionOperations;
    v16->_performActionOperations = strongToWeakObjectsMapTable;

    objc_storeWeak(&v16->_connectionListener, listenerCopy);
    v22 = v16;
  }

  return v16;
}

+ (void)performWithoutTimeout:(id)timeout
{
  timeoutCopy = timeout;
  +[LNAppContext cancelTimeout];
  timeoutCopy[2](timeoutCopy);

  +[LNAppContext extendTimeout];
}

@end