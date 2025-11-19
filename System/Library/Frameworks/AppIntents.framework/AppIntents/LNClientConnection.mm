@interface LNClientConnection
+ (void)performWithoutTimeout:(id)a3;
- (LNClientConnection)initWithConnection:(id)a3 connectionListener:(id)a4 queue:(id)a5 appContext:(id)a6;
- (LNConnectionListener)connectionListener;
- (id)clientConnectionQueue;
- (void)createAsyncIteratorForSequence:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)enqueuePerformActionOperation:(id)a3;
- (void)exportTransientEntities:(id)a3 withConfiguration:(id)a4 completionHandler:(id)a5;
- (void)fetchActionAppContextFromAction:(id)a3 completionHandler:(id)a4;
- (void)fetchActionForAppShortcutIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchActionForAutoShortcutPhrase:(id)a3 completionHandler:(id)a4;
- (void)fetchActionOutputValueWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchAppShortcutParametersForMangledName:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchDestinationMDMAccountIdentifierForAction:(id)a3 completionHandler:(id)a4;
- (void)fetchDisplayRepresentationForActions:(id)a3 completionHandler:(id)a4;
- (void)fetchEntityURL:(id)a3 completionHandler:(id)a4;
- (void)fetchOptionsDefaultValuesForAction:(id)a3 completionHandler:(id)a4;
- (void)fetchOptionsForAction:(id)a3 actionMetadata:(id)a4 parameterMetadata:(id)a5 optionsProviderReference:(id)a6 searchTerm:(id)a7 localeIdentifier:(id)a8 completionHandler:(id)a9;
- (void)fetchParameterOptionDefaultValueForAction:(id)a3 actionMetadata:(id)a4 parameterIdentifier:(id)a5 completionHandler:(id)a6;
- (void)fetchStateForAppIntentIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)a3 forEntityIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)fetchSuggestedActionsForStartWorkoutAction:(id)a3 completionHandler:(id)a4;
- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)a3;
- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)a3 completionHandler:(id)a4;
- (void)fetchSuggestedFocusActionsForActionMetadata:(id)a3 suggestionContext:(id)a4 completionHandler:(id)a5;
- (void)fetchURLForEnumWithIdentifier:(id)a3 caseIdentifier:(id)a4 completionHandler:(id)a5;
- (void)fetchURLsForEnumWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchValueForPropertyWithIdentifier:(id)a3 entity:(id)a4 completionHandler:(id)a5;
- (void)fetchViewActionsWithCompletionHandler:(id)a3;
- (void)fetchViewEntitiesWithInteractionIDs:(id)a3 completionHandler:(id)a4;
- (void)getListenerEndpointForBundleIdentifier:(id)a3 action:(id)a4 completionHandler:(id)a5;
- (void)getListenerEndpointWithCompletionHandler:(id)a3;
- (void)linkAppUndoManager:(id)a3 completionHandler:(id)a4;
- (void)nextAsyncIteratorResults:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3 options:(id)a4 executor:(id)a5 completionHandler:(id)a6;
- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)a3 completionHandler:(id)a4;
- (void)performConfigurableQuery:(id)a3 completionHandler:(id)a4;
- (void)performPropertyQuery:(id)a3 completionHandler:(id)a4;
- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)a3 completionHandler:(id)a4;
- (void)performSuggestedResultsQueryWithEntityType:(id)a3 completionHandler:(id)a4;
- (void)releaseAsyncSequence:(id)a3 completionHandler:(id)a4;
- (void)removePerformActionOperation:(id)a3;
- (void)stageContextWithRequest:(id)a3 completionHandler:(id)a4;
- (void)updateAppShortcutParametersWithCompletionHandler:(id)a3;
- (void)updateConnectionContext:(id)a3 completionHandler:(id)a4;
- (void)updateProperties:(id)a3 withQuery:(id)a4 completionHandler:(id)a5;
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

- (void)linkAppUndoManager:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18F0E9000, v8, OS_LOG_TYPE_INFO, "Main app received undo manager reference from intent execution", buf, 2u);
  }

  v9 = [(LNClientConnection *)self appContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__LNClientConnection_linkAppUndoManager_completionHandler___block_invoke;
  v11[3] = &unk_1E72B74B0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 linkUndoManager:v7 completionHandler:v11];
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

- (void)stageContextWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LNClientConnection_stageContextWithRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 stageContextWithRequest:v7 completionHandler:v10];
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

- (void)releaseAsyncSequence:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(LNClientConnection *)self xpcConnection];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "hash")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LNClientConnection_releaseAsyncSequence_completionHandler___block_invoke;
  v13[3] = &unk_1E72B74B0;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v8 releaseAsyncSequence:v7 connectionIdentifier:v11 completionHandler:v13];
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

- (void)nextAsyncIteratorResults:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(LNClientConnection *)self xpcConnection];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "hash")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__LNClientConnection_nextAsyncIteratorResults_completionHandler___block_invoke;
  v13[3] = &unk_1E72B72A8;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v8 nextAsyncIteratorResults:v7 connectionIdentifier:v11 completionHandler:v13];
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

- (void)createAsyncIteratorForSequence:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v12 = MEMORY[0x1E696AD98];
  v13 = [(LNClientConnection *)self xpcConnection];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__LNClientConnection_createAsyncIteratorForSequence_options_completionHandler___block_invoke;
  v16[3] = &unk_1E72B7578;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [v11 createAsyncIteratorForSequence:v10 options:v9 connectionIdentifier:v14 completionHandler:v16];
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

- (void)updateConnectionContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__LNClientConnection_updateConnectionContext_completionHandler___block_invoke;
  v11[3] = &unk_1E72B74B0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 updateContextForConnection:v9 context:v7 completionHandler:v11];
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

- (void)updateProperties:(id)a3 withQuery:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__LNClientConnection_updateProperties_withQuery_completionHandler___block_invoke;
  v13[3] = &unk_1E72B74B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateProperties:v10 withQuery:v9 completionHandler:v13];
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

- (void)getListenerEndpointForBundleIdentifier:(id)a3 action:(id)a4 completionHandler:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(LNClientConnection *)self appContext];
    v12 = [(LNClientConnection *)self xpcConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    v17 = [(LNClientConnection *)self xpcConnection];
    v18 = [v17 hash];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke;
    v25[3] = &unk_1E72B7528;
    v25[4] = self;
    v26 = v10;
    [v11 fetchActionListenerEndpoint:v9 auditToken:v27 connectionIdentifier:v18 completionHandler:v25];

    v15 = v26;
  }

  else
  {
    v14 = [MEMORY[0x1E69ACF50] sharedProvider];
    v15 = [v14 delegate];

    if (v15)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __86__LNClientConnection_getListenerEndpointForBundleIdentifier_action_completionHandler___block_invoke_3;
      v23[3] = &unk_1E72B7550;
      v24 = v10;
      [v15 provideListenerEndpointForBundleIdentifier:v8 completionHandler:v23];
      v16 = v24;
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E69ACB60];
      v28 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The requested process is unable to mediate connection to %@", v8];
      v29[0] = v16;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v22 = [v19 errorWithDomain:v20 code:2300 userInfo:v21];
      (*(v10 + 2))(v10, 0, 0, 0, v22);
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

- (void)getListenerEndpointWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LNClientConnection *)self connectionListener];

  if (v5)
  {
    v6 = [(LNClientConnection *)self connectionListener];
    v7 = [v6 xpcListener];
    v8 = [v7 endpoint];
    v9 = MEMORY[0x1E695DEF0];
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = v10;
    if (v10)
    {
      [v10 if_auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = [v9 if_dataWithAuditToken:v15];
    v4[2](v4, v8, v14, 0);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69ACB60];
    v16 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to request listener endpoint because the connection listener is unset."];
    v17[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = [v12 errorWithDomain:v13 code:2301 userInfo:v7];
    (v4)[2](v4, 0, 0, v8);
    v11 = v4;
  }
}

- (void)exportTransientEntities:(id)a3 withConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v12 = MEMORY[0x1E696AD98];
  v13 = [(LNClientConnection *)self xpcConnection];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__LNClientConnection_exportTransientEntities_withConfiguration_completionHandler___block_invoke;
  v16[3] = &unk_1E72B7410;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [v11 exportTransientEntities:v10 withConfiguration:v9 connectionIdentifier:v14 completionHandler:v16];
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

- (void)fetchURLsForEnumWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__LNClientConnection_fetchURLsForEnumWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7398;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchURLsForEnumWithIdentifier:v7 completionHandler:v10];
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

- (void)fetchURLForEnumWithIdentifier:(id)a3 caseIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__LNClientConnection_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_1E72B7500;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 fetchURLForEnumWithIdentifier:v10 caseIdentifier:v9 completionHandler:v13];
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

- (void)fetchEntityURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__LNClientConnection_fetchEntityURL_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7500;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchEntityURL:v7 completionHandler:v10];
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

- (void)fetchValueForPropertyWithIdentifier:(id)a3 entity:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v14 = [(LNClientConnection *)self xpcConnection];
  v15 = [v14 hash];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__LNClientConnection_fetchValueForPropertyWithIdentifier_entity_completionHandler___block_invoke;
  v17[3] = &unk_1E72B7410;
  v17[4] = self;
  v18 = v8;
  v16 = v8;
  [v11 fetchValueForPropertyWithIdentifier:v10 entity:v9 auditToken:v19 connectionIdentifier:v15 completionHandler:v17];
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

- (void)fetchAppShortcutParametersForMangledName:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__LNClientConnection_fetchAppShortcutParametersForMangledName_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchAppShortcutParametersForMangledName:v7 withCompletionHandler:v10];
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

- (void)updateAppShortcutParametersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__LNClientConnection_updateAppShortcutParametersWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B74B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 updateAppShortcutParametersWithCompletionHandler:v7];
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

- (void)fetchStateForAppIntentIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LNClientConnection_fetchStateForAppIntentIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7398;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchStateForAppIntentIdentifiers:v7 completionHandler:v10];
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

- (void)fetchActionForAppShortcutIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LNClientConnection_fetchActionForAppShortcutIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7460;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchActionForAppShortcutIdentifier:v7 completionHandler:v10];
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

- (void)fetchActionForAutoShortcutPhrase:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LNClientConnection_fetchActionForAutoShortcutPhrase_completionHandler___block_invoke;
  v10[3] = &unk_1E72B7438;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchActionForAutoShortcutPhrase:v7 completionHandler:v10];
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

- (void)fetchActionAppContextFromAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__LNClientConnection_fetchActionAppContextFromAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B73C0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchActionAppContextForAction:v7 completionHandler:v10];
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

- (void)fetchSuggestedFocusActionsForActionMetadata:(id)a3 suggestionContext:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LNClientConnection *)self appContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__LNClientConnection_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler___block_invoke;
  v13[3] = &unk_1E72B72A8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 fetchSuggestedFocusActionsForActionMetadata:v10 suggestionContext:v9 completionHandler:v13];
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

- (void)fetchSuggestedActionsForStartWorkoutAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__LNClientConnection_fetchSuggestedActionsForStartWorkoutAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchSuggestedActionsForStartWorkoutAction:v7 completionHandler:v10];
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

- (void)fetchSuggestedActionsWithSiriLanguageCode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__LNClientConnection_fetchSuggestedActionsWithSiriLanguageCode_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchSuggestedActionsWithSiriLanguageCode:v7 completionHandler:v10];
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

- (void)fetchSuggestedActionsFromViewWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__LNClientConnection_fetchSuggestedActionsFromViewWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B72A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchSuggestedActionsFromViewWithCompletionHandler:v7];
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

- (void)fetchActionOutputValueWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__LNClientConnection_fetchActionOutputValueWithIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E72B7410;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 fetchActionOutputValueForConnection:v9 withIdentifier:v7 completionHandler:v11];
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

- (void)fetchParameterOptionDefaultValueForAction:(id)a3 actionMetadata:(id)a4 parameterIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__LNClientConnection_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E72B73E8;
  block[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v19 = [(LNClientConnection *)self clientConnectionQueue];
  dispatch_async(v19, v18);
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

- (void)fetchOptionsDefaultValuesForAction:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNClientConnection_fetchOptionsDefaultValuesForAction_completionHandler___block_invoke;
  block[3] = &unk_1E72B74D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [(LNClientConnection *)self clientConnectionQueue];
  dispatch_async(v11, v10);
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

- (void)fetchStructuredDataWithTypeIdentifier:(int64_t)a3 forEntityIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(LNClientConnection *)self appContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__LNClientConnection_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler___block_invoke;
  v12[3] = &unk_1E72B7398;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 fetchStructuredDataWithTypeIdentifier:a3 forEntityIdentifiers:v9 completionHandler:v12];
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

- (void)fetchOptionsForAction:(id)a3 actionMetadata:(id)a4 parameterMetadata:(id)a5 optionsProviderReference:(id)a6 searchTerm:(id)a7 localeIdentifier:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __148__LNClientConnection_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler___block_invoke;
  v34 = &unk_1E72B7370;
  v35 = self;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
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

- (void)performAction:(id)a3 options:(id)a4 executor:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [LNPerformActionExecutorDelegateProxy alloc];
  v15 = [(LNClientConnection *)self xpcConnection];
  v16 = [(LNPerformActionExecutorDelegateProxy *)v14 initWithConnection:v15 interface:v11];

  v17 = [LNPerformActionOperation alloc];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __71__LNClientConnection_performAction_options_executor_completionHandler___block_invoke;
  v23 = &unk_1E72B7320;
  v24 = self;
  v25 = v10;
  v18 = v10;
  v19 = [(LNPerformActionOperation *)v17 initWithAction:v13 options:v12 client:v16 completionHandler:&v20];

  [(LNClientConnection *)self enqueuePerformActionOperation:v19, v20, v21, v22, v23, v24];
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

- (void)fetchDestinationMDMAccountIdentifierForAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__LNClientConnection_fetchDestinationMDMAccountIdentifierForAction_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72F8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchDestinationMDMAccountIdentifierForAction:v7 completionHandler:v10];
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

- (void)performAllEntitiesQueryWithEntityMangledTypeName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__LNClientConnection_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v8 performAllEntitiesQueryWithEntityMangledTypeName:v7 auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
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

- (void)performSuggestedEntitiesQueryWithEntityMangledTypeName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__LNClientConnection_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v8 performSuggestedEntitiesQueryWithEntityMangledTypeName:v7 auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
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

- (void)performSuggestedResultsQueryWithEntityType:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__LNClientConnection_performSuggestedResultsQueryWithEntityType_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v8 performSuggestedResultsQueryWithEntityType:v7 auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
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

- (void)performConfigurableQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__LNClientConnection_performConfigurableQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v8 performConfigurableQuery:v7 auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
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

- (void)performPropertyQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v9 = [(LNClientConnection *)self xpcConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [(LNClientConnection *)self xpcConnection];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__LNClientConnection_performPropertyQuery_completionHandler___block_invoke;
  v15[3] = &unk_1E72B72D0;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [v8 performQuery:v7 auditToken:v17 connectionIdentifier:v13 completionHandler:v15];
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

- (void)fetchViewActionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(LNClientConnection *)self appContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__LNClientConnection_fetchViewActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E72B72A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchViewActionsWithCompletionHandler:v7];
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

- (void)fetchViewEntitiesWithInteractionIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LNClientConnection_fetchViewEntitiesWithInteractionIDs_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchViewEntitiesWithInteractionIDs:v7 completionHandler:v10];
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

- (void)fetchDisplayRepresentationForActions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNClientConnection *)self appContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__LNClientConnection_fetchDisplayRepresentationForActions_completionHandler___block_invoke;
  v10[3] = &unk_1E72B72A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchDisplayRepresentationForActions:v7 completionHandler:v10];
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

- (void)removePerformActionOperation:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__LNClientConnection_removePerformActionOperation___block_invoke;
  v11 = &unk_1E72B7280;
  v12 = self;
  v13 = v4;
  v5 = v4;
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

- (void)enqueuePerformActionOperation:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__LNClientConnection_enqueuePerformActionOperation___block_invoke;
  v11 = &unk_1E72B7280;
  v12 = self;
  v13 = v4;
  v5 = v4;
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
  v3 = [(LNClientConnection *)self connectionListener];

  if (v3)
  {
    v4 = [(LNClientConnection *)self connectionListener];
    v5 = [v4 clientConnectionQueue];
  }

  else
  {
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return v5;
}

- (LNClientConnection)initWithConnection:(id)a3 connectionListener:(id)a4 queue:(id)a5 appContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = LNClientConnection;
  v15 = [(LNClientConnection *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a5);
    objc_storeStrong(&v16->_appContext, a6);
    objc_storeStrong(&v16->_xpcConnection, a3);
    v17 = LNConnectionClientXPCInterface();
    [(NSXPCConnection *)v16->_xpcConnection setRemoteObjectInterface:v17];

    v18 = LNConnectionHostXPCInterface();
    [(NSXPCConnection *)v16->_xpcConnection setExportedInterface:v18];

    v19 = [objc_alloc(MEMORY[0x1E69AD0B0]) initWithValue:v16];
    [(NSXPCConnection *)v16->_xpcConnection setExportedObject:v19];

    [(NSXPCConnection *)v16->_xpcConnection resume];
    v20 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    performActionOperations = v16->_performActionOperations;
    v16->_performActionOperations = v20;

    objc_storeWeak(&v16->_connectionListener, v12);
    v22 = v16;
  }

  return v16;
}

+ (void)performWithoutTimeout:(id)a3
{
  v3 = a3;
  +[LNAppContext cancelTimeout];
  v3[2](v3);

  +[LNAppContext extendTimeout];
}

@end