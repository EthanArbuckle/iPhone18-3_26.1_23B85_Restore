@interface FPActionOperation
+ (id)newArrayRemovingFirstElement:(id)a3;
- (FPActionOperation)initWithItemsOfDifferentProviders:(id)a3 action:(id)a4;
- (FPActionOperation)initWithProvider:(id)a3 action:(id)a4;
- (FPStitchingSession)stitcher;
- (FPXOperationService)remoteService;
- (FPXOperationService)remoteServiceProxy;
- (id)operationDescription;
- (id)replicateForItems:(id)a3;
- (void)_dispatchToSubOperations;
- (void)_preflightAndRun;
- (void)_runUserInteractionsPreflight:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)invokeErrorRecoveryHandlerWithService:(id)a3 fpProviderDomainId:(id)a4 error:(id)a5 completion:(id)a6;
- (void)main;
- (void)preflightWithCompletion:(id)a3;
- (void)resetStitcher;
- (void)runUserInteractionsPreflight:(id)a3;
- (void)tryRecoveringFromError:(id)a3 completion:(id)a4;
- (void)tryRecoveringFromPreflightErrors:(id)a3 recoveryHandler:(id)a4 completion:(id)a5;
@end

@implementation FPActionOperation

- (FPActionOperation)initWithProvider:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = FPActionOperation;
  v9 = [(FPOperation *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_setupRemoteOperationService = 0;
    v9->_haveErrorRecovery = 1;
    v9->_haveStitching = 1;
    v9->_havePreflight = 1;
    v9->_skipPreflight = 0;
    objc_storeStrong(&v9->_action, a4);
    objc_storeStrong(&v10->_providerIdentifier, a3);
    v11 = +[FPItemManager defaultManager];
    itemManager = v10->_itemManager;
    v10->_itemManager = v11;

    section = __fp_create_section();
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPActionOperation initWithProvider:v10 action:section];
    }

    v10->_logSection = section;
    v15 = objc_opt_new();
    progress = v10->_progress;
    v10->_progress = v15;

    [(NSProgress *)v10->_progress setCancellable:1];
    objc_initWeak(&location, v10);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__FPActionOperation_initWithProvider_action___block_invoke;
    v18[3] = &unk_1E7939010;
    objc_copyWeak(&v19, &location);
    [(NSProgress *)v10->_progress setCancellationHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __45__FPActionOperation_initWithProvider_action___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__FPActionOperation_initWithProvider_action___block_invoke_cold_1();
  }

  [WeakRetained cancel];
}

- (FPActionOperation)initWithItemsOfDifferentProviders:(id)a3 action:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    [FPActionOperation initWithItemsOfDifferentProviders:action:];
  }

  v8 = [(FPActionOperation *)self initWithProvider:0 action:v7];
  v9 = v8;
  if (v8)
  {
    v8->_multiProviders = 1;
    [(FPActionOperation *)v8 setSourceItemsToPreflight:v6];
    v10 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 providerDomainID];
          v18 = [(NSDictionary *)v10 objectForKeyedSubscript:v17];
          if (!v18)
          {
            v18 = objc_opt_new();
            [(NSDictionary *)v10 setObject:v18 forKeyedSubscript:v17];
          }

          [v18 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    itemsByDomainID = v9->_itemsByDomainID;
    v9->_itemsByDomainID = v10;

    v6 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (FPStitchingSession)stitcher
{
  if (self->_haveStitching)
  {
    if (self->_finishAfterPreflight)
    {
      v4 = 0;
    }

    else
    {
      stitcher = self->_stitcher;
      if (!stitcher)
      {
        v7 = objc_opt_new();
        v8 = self->_stitcher;
        self->_stitcher = v7;

        [(FPStitchingSession *)self->_stitcher setPlaceholdersCreationBlock:self->_placeholdersCreationBlock];
        stitcher = self->_stitcher;
      }

      v4 = stitcher;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetStitcher
{
  [(FPStitchingSession *)self->_stitcher finish];
  stitcher = self->_stitcher;
  self->_stitcher = 0;
}

- (id)replicateForItems:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"FPActionOperation.m" lineNumber:163 description:@"UNREACHABLE: this should be overridden by the concrete operation"];

  return 0;
}

- (void)_dispatchToSubOperations
{
  v32 = *MEMORY[0x1E69E9840];
  v16 = objc_opt_new();
  v3 = dispatch_group_create();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__26;
  v25[4] = __Block_byref_object_dispose__26;
  v26 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_itemsByDomainID;
  v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v6 = *v22;
    *&v5 = 138412546;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSDictionary *)self->_itemsByDomainID objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7), v14];
        v9 = [(FPActionOperation *)self replicateForItems:v8];
        [v9 setHaveStitching:0];
        v10 = self->_havePreflight && !self->_skipPreflight;
        [v9 setHavePreflight:v10];
        [v9 setFinishAfterPreflight:self->_finishAfterPreflight];
        [v9 setHaveErrorRecovery:self->_haveErrorRecovery];
        [v9 setErrorRecoveryHandler:self->_errorRecoveryHandler];
        [v9 setSkipPreflight:self->_skipPreflight];
        dispatch_group_enter(v3);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __45__FPActionOperation__dispatchToSubOperations__block_invoke;
        v18[3] = &unk_1E79391C0;
        v18[4] = self;
        v20 = v25;
        v19 = v3;
        [v9 setActionCompletionBlock:v18];
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v28 = v9;
          v29 = 2112;
          v30 = self;
          _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] created suboperation %@ for %@", buf, 0x16u);
        }

        [v16 addOperation:v9];
        ++v7;
      }

      while (v4 != v7);
      v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v4);
  }

  v12 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPActionOperation__dispatchToSubOperations__block_invoke_24;
  block[3] = &unk_1E793AD20;
  block[4] = self;
  block[5] = v25;
  dispatch_group_notify(v3, v12, block);

  _Block_object_dispose(v25, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __45__FPActionOperation__dispatchToSubOperations__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 40));
}

void __45__FPActionOperation__dispatchToSubOperations__block_invoke_24(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 328);
  v6 = v2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(*(*(a1 + 40) + 8) + 40) fp_prettyDescription];
    __45__FPActionOperation__dispatchToSubOperations__block_invoke_24_cold_1(v4, v7, v2);
  }

  [*(a1 + 32) completedWithResult:0 error:*(*(*(a1 + 40) + 8) + 40)];
  __fp_leave_section_Debug(&v6);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)operationDescription
{
  if (self->_multiProviders)
  {
    providerIdentifier = @"multiple providers";
  }

  else
  {
    providerIdentifier = self->_providerIdentifier;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", providerIdentifier];
}

- (void)runUserInteractionsPreflight:(id)a3
{
  v4 = a3;
  v5 = [(FPActionOperation *)self action];
  if (v5)
  {
    v6 = v5;
    v7 = [(FPActionOperation *)self setupRemoteOperationService];

    if (v7)
    {
      v8 = [(FPActionOperation *)self sourceItemsToPreflight];
      v9 = [v8 firstObject];
      if ([v9 isExcludedFromSync])
      {
      }

      else
      {
        v10 = [(FPActionOperation *)self destinationItemToPreflight];
        v11 = [v10 isExcludedFromSync];

        if (!v11)
        {
          v12 = self->_providerIdentifier;
          v13 = [(FPActionOperation *)self remoteServiceProxy];
          v14 = [(FPActionOperation *)self action];
          v15 = [(FPActionOperation *)self sourceItemsToPreflight];
          v16 = [(FPActionOperation *)self destinationItemToPreflight];
          v17 = [(FPActionOperation *)self sourceItemKeysAllowList];
          v18 = [(FPActionOperation *)self destinationItemKeysAllowList];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __50__FPActionOperation_runUserInteractionsPreflight___block_invoke;
          v19[3] = &unk_1E793CAB0;
          v20 = v4;
          [v13 userInteractionErrorsForPerformingAction:v14 sourceItems:v15 destinationItem:v16 fpProviderDomainId:v12 sourceItemKeysAllowList:v17 destinationItemKeysAllowList:v18 completionHandler:v19];

          goto LABEL_7;
        }
      }
    }
  }

  (*(v4 + 2))(v4, 0);
LABEL_7:
}

void __50__FPActionOperation_runUserInteractionsPreflight___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [v4 objectAtIndex:0];
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_runUserInteractionsPreflight:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__FPActionOperation__runUserInteractionsPreflight___block_invoke;
  v7[3] = &unk_1E793DEF8;
  v7[4] = self;
  v8 = v5;
  v9 = a2;
  v6 = v5;
  [(FPActionOperation *)self runUserInteractionsPreflight:v7];
}

void __51__FPActionOperation__runUserInteractionsPreflight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2;
  v10[3] = &unk_1E7939968;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v7 = v6;
  v8 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, v10);
}

void __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = fp_current_or_default_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2_cold_1();
    }

    v5 = [*(a1 + 32) fp_map:&__block_literal_global_49];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_36;
    v9[3] = &unk_1E793CB78;
    v8 = *(a1 + 56);
    v9[4] = v6;
    v9[5] = v8;
    [v6 tryRecoveringFromPreflightErrors:v5 recoveryHandler:v9 completion:v7];
  }

  else
  {
    if (v4)
    {
      __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2_cold_2(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_34_cold_1();
  }

  v4 = [v2 fp_asWarning];

  return v4;
}

uint64_t __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_36(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPActionOperation.m" lineNumber:268 description:{@"UNREACHABLE: invalid index for error: %@", v5}];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_skipPreflight)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(FPActionOperation *)v6 preflightWithCompletion:v7, v8, v9, v10, v11, v12, v13];
    }

    v5[2](v5, 1, 0);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__FPActionOperation_preflightWithCompletion___block_invoke;
    v14[3] = &unk_1E793DF20;
    v14[4] = self;
    v15 = v4;
    [(FPActionOperation *)self _runUserInteractionsPreflight:v14];
  }
}

uint64_t __45__FPActionOperation_preflightWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) subclassPreflightWithCompletion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_preflightAndRun
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: no preflight, finishing after preflight", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __37__FPActionOperation__preflightAndRun__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPActionOperation__preflightAndRun__block_invoke_2;
  block[3] = &unk_1E793DF48;
  v12 = a2;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __37__FPActionOperation__preflightAndRun__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1 || *(a1 + 32) || [*(a1 + 40) finishAfterPreflight])
  {
    v2 = *(*(a1 + 40) + 328);
    v10 = v2;
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) fp_prettyDescription];
      __37__FPActionOperation__preflightAndRun__block_invoke_2_cold_1(v4, v11, v2);
    }

    v5 = *(a1 + 32);
    v6 = v5;
    if ((*(a1 + 48) & 1) == 0 && !v5)
    {
      v6 = FPUserCancelledError();
    }

    [*(a1 + 40) completedWithResult:0 error:v6];

    __fp_leave_section_Debug(&v10);
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E69E9840];

    [v8 actionMain];
  }
}

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v2, v3, "[DEBUG] ┳%llx starting action %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __25__FPActionOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 completedWithResult:0 error:a3];
  }

  else
  {
    v7 = [v6 callbackQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__FPActionOperation_main__block_invoke_3;
    v8[3] = &unk_1E79390B8;
    v8[4] = *(a1 + 32);
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

uint64_t __25__FPActionOperation_main__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setRemoteService:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _preflightAndRun];
}

- (FPXOperationService)remoteService
{
  if (!self->_setupRemoteOperationService)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperation.m" lineNumber:371 description:@"setupRemoteOperationService is not set"];
  }

  remoteService = self->_remoteService;

  return remoteService;
}

- (FPXOperationService)remoteServiceProxy
{
  v2 = [(FPActionOperation *)self remoteService];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(FPActionOperation *)self resetStitcher];
  [(FPXOperationService *)self->_remoteService invalidate];
  remoteService = self->_remoteService;
  self->_remoteService = 0;

  v9 = [(FPActionOperation *)self actionCompletionBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
    [(FPActionOperation *)self setActionCompletionBlock:0];
  }

  logSection = self->_logSection;
  v18 = logSection;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = v6;
    if (isKindOfClass)
    {
      v15 = FPAbbreviatedArrayDescription(v6);
    }

    v16 = [v7 fp_prettyDescription];
    *buf = 134218754;
    v20 = logSection;
    v21 = 2112;
    v22 = self;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx action finished %@ with (result=%@, error=%@)", buf, 0x2Au);

    if (isKindOfClass)
    {
    }
  }

  v17.receiver = self;
  v17.super_class = FPActionOperation;
  [(FPOperation *)&v17 finishWithResult:v6 error:v7];
  __fp_leave_section_Debug(&v18);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)tryRecoveringFromError:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FPActionOperation *)self haveErrorRecovery];
  v9 = [(FPActionOperation *)self errorRecoveryHandler];
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 localizedRecoveryOptions];
  if (![v11 count])
  {
    v10 = 0;
  }

  v12 = [v6 recoveryAttempter];

  if (!v12 || ([v6 recoveryAttempter], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_21:
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [FPActionOperation tryRecoveringFromError:completion:];
    }

    goto LABEL_23;
  }

  [FPActionOperation tryRecoveringFromError:completion:];
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_9:
  v14 = [v6 userInfo];
  v15 = [v14 objectForKey:@"FPCanBeSuppressed"];
  v16 = [v15 BOOLValue];

  v17 = [v6 userInfo];
  v18 = [v17 objectForKey:@"FPIsSuppressed"];
  v19 = [v18 BOOLValue];

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    v33 = [MEMORY[0x1E696AD98] numberWithBool:v19 & 1];
    *buf = 138412802;
    v40 = self;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v33;
    _os_log_debug_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Checking suppression: suppressionIsEnabledForPredicate = %@, suppressionIsCheckedForPredicate = %@", buf, 0x20u);
  }

  if ((v16 & v19) != 0)
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [FPActionOperation tryRecoveringFromError:completion:];
    }

LABEL_23:

    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_24;
  }

  if (!(v19 & 1 | ((v16 & 1) == 0)))
  {
    v22 = [v6 userInfo];
    v23 = [v22 mutableCopy];

    v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v23 setValue:v24 forKey:@"FPErrorShowSuppressionCheckbox"];

    v25 = MEMORY[0x1E696ABC0];
    v26 = [v6 domain];
    v27 = [v25 errorWithDomain:v26 code:objc_msgSend(v6 userInfo:{"code"), v23}];

    v6 = v27;
  }

  v28 = [v6 userInfo];
  v29 = [v28 objectForKey:@"DomainIdentifier"];

  if (v29)
  {
    v30 = [(FPActionOperation *)self itemManager];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __55__FPActionOperation_tryRecoveringFromError_completion___block_invoke;
    v35[3] = &unk_1E793DF98;
    v35[4] = self;
    v36 = v29;
    v38 = v7;
    v37 = v6;
    [v30 fetchOperationServiceForProviderDomainID:v36 handler:v35];
  }

  else
  {
    v31 = [(FPActionOperation *)self remoteServiceProxy];
    [(FPActionOperation *)self invokeErrorRecoveryHandlerWithService:v31 fpProviderDomainId:@"n/a" error:v6 completion:v7];
  }

LABEL_24:
  v34 = *MEMORY[0x1E69E9840];
}

void __55__FPActionOperation_tryRecoveringFromError_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__FPActionOperation_tryRecoveringFromError_completion___block_invoke_cold_1(a1);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v7 = a1[4];
    v8 = [a2 remoteObjectProxy];
    [v7 invokeErrorRecoveryHandlerWithService:v8 fpProviderDomainId:a1[5] error:a1[6] completion:a1[7]];
  }
}

- (void)invokeErrorRecoveryHandlerWithService:(id)a3 fpProviderDomainId:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a6;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __95__FPActionOperation_invokeErrorRecoveryHandlerWithService_fpProviderDomainId_error_completion___block_invoke;
  v17 = &unk_1E793DFE8;
  v18 = self;
  v19 = v10;
  v11 = v10;
  v12 = [a5 fp_recoverableErrorWithBlock:&v14 fpProviderDomainId:a4 operationService:a3];
  v13 = [(FPActionOperation *)self errorRecoveryHandler:v14];
  (v13)[2](v13, v12);
}

void __95__FPActionOperation_invokeErrorRecoveryHandlerWithService_fpProviderDomainId_error_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FPActionOperation_invokeErrorRecoveryHandlerWithService_fpProviderDomainId_error_completion___block_invoke_2;
  v5[3] = &unk_1E793DFC0;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (void)tryRecoveringFromPreflightErrors:(id)a3 recoveryHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 fp_filter:&__block_literal_global_68_1];
    if ([v11 count])
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [FPActionOperation tryRecoveringFromPreflightErrors:recoveryHandler:completion:];
      }

      v13 = [v11 firstObject];
      v10[2](v10, 0, v13);
    }

    else
    {
      v13 = [v8 objectAtIndexedSubscript:0];
      v15 = [v13 fp_genericPreflightError];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __81__FPActionOperation_tryRecoveringFromPreflightErrors_recoveryHandler_completion___block_invoke_69;
      v17[3] = &unk_1E793E058;
      v17[4] = self;
      v20 = v9;
      v18 = v15;
      v21 = v10;
      v19 = v8;
      v16 = v15;
      [(FPActionOperation *)self tryRecoveringFromError:v16 completion:v17];
    }
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPActionOperation tryRecoveringFromPreflightErrors:recoveryHandler:completion:];
    }

    v10[2](v10, 1, 0);
  }
}

void __81__FPActionOperation_tryRecoveringFromPreflightErrors_recoveryHandler_completion___block_invoke_69(id *a1, char a2, uint64_t a3)
{
  v6 = [a1[4] callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__FPActionOperation_tryRecoveringFromPreflightErrors_recoveryHandler_completion___block_invoke_2;
  block[3] = &unk_1E793E030;
  v17 = a2;
  v7 = a1[7];
  v8 = a1[5];
  v16 = a3;
  v15 = a1[8];
  v9 = a1[6];
  *&v10 = a1[4];
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  dispatch_async(v6, block);
}

void __81__FPActionOperation_tryRecoveringFromPreflightErrors_recoveryHandler_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = *(a1 + 72);
    if (((*(*(a1 + 56) + 16))() & 1) == 0)
    {
      v5 = *(*(a1 + 64) + 16);
LABEL_9:

      v5();
      return;
    }
  }

  else if (([*(a1 + 32) fp_isWarning] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v5 = *(*(a1 + 64) + 16);
    goto LABEL_9;
  }

  v7 = [FPActionOperation newArrayRemovingFirstElement:*(a1 + 40)];
  [*(a1 + 48) tryRecoveringFromPreflightErrors:v7 recoveryHandler:*(a1 + 56) completion:*(a1 + 64)];
}

+ (id)newArrayRemovingFirstElement:(id)a3
{
  v3 = a3;
  v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];

  return v4;
}

- (void)initWithProvider:(uint64_t)a1 action:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 134218242;
  *(&v6 + 4) = a2;
  OUTLINED_FUNCTION_3_3();
  *v7 = v2;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] ┣%llx created operation: %@", v6, DWORD2(v6), *&v7[2], v8);
  v5 = *MEMORY[0x1E69E9840];
}

void __45__FPActionOperation_initWithProvider_action___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] cancelling operation via its progress: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithItemsOfDifferentProviders:action:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"FPActionOperation.m" lineNumber:108 description:{@"Operation %@ initialized with empty item set.", objc_opt_class()}];
}

void __45__FPActionOperation__dispatchToSubOperations__block_invoke_24_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 3.8521e-34);
  _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx all suboperations have finished (error:%@)", v4, 0x16u);
}

void __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [*v1 count];
  v2 = [*(v0 + 40) action];
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) action];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __51__FPActionOperation__runUserInteractionsPreflight___block_invoke_34_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] FPActionOperation, received warning: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __37__FPActionOperation__preflightAndRun__block_invoke_2_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 3.8521e-34);
  _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finishing action after preflight; %@", v4, 0x16u);
}

- (void)tryRecoveringFromError:completion:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)tryRecoveringFromError:completion:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v11 = *MEMORY[0x1E69E9840];
  [v1 haveErrorRecovery];
  v3 = [v2 errorRecoveryHandler];
  v4 = [v0 localizedRecoveryOptions];
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x22u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)tryRecoveringFromError:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: suppression box check, not running pre-flight check.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FPActionOperation_tryRecoveringFromError_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)tryRecoveringFromPreflightErrors:recoveryHandler:completion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: no hard errors, early return from tryRecoveringFromPreflightErrors. errs=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)tryRecoveringFromPreflightErrors:recoveryHandler:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: no errors, early return from tryRecoveringFromPreflightErrors", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end