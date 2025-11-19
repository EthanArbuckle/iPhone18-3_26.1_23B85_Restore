@interface FPMoveOperation
- (BOOL)_hasAccessToURL:(id)a3 readonly:(BOOL)a4;
- (BOOL)_preflightCheckNotMovingIntoSelfWithError:(id *)a3;
- (BOOL)_preflightCheckProviderCanMoveWithErrors:(id *)a3;
- (FPMoveOperation)initWithRemoteOperation:(id)a3 info:(id)a4;
- (FPMoveOperation)initWithSourceItems:(id)a3 orSourceURLs:(id)a4 destinationFolder:(id)a5 orDestinationURL:(id)a6;
- (FPMoveOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4;
- (id)fp_prettyDescription;
- (void)_completedWithResult:(id)a3 error:(id)a4;
- (void)_completedWithResultsByRoot:(id)a3 errorsByRoot:(id)a4 error:(id)a5;
- (void)_preflightForceBounceIfCopyingOntoSelf;
- (void)_presendNotifications;
- (void)_recomputeMoveInfoIfNecessary;
- (void)_recoverFromCollisionError:(id)a3 withPolicy:(unint64_t)a4;
- (void)_resetOperationBeforeErrorRecovery;
- (void)_resolveURLsWithCompletionHandler:(id)a3;
- (void)_runWithRemoteOperation:(id)a3;
- (void)_scheduleAgainAfterErrorRecovery;
- (void)_t_unblockReader;
- (void)actionMain;
- (void)cancel;
- (void)completedWithResult:(id)a3 error:(id)a4;
- (void)gatherErrorsForUserInteractionForDomain:(id)a3 action:(id)a4 sourceItems:(id)a5 destinationItem:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)a9;
- (void)main;
- (void)presendNotifications;
- (void)remoteOperationCompletedRoot:(id)a3 resultingItem:(id)a4 error:(id)a5 completion:(id)a6;
- (void)remoteOperationCreatedRoot:(id)a3 resultingItem:(id)a4 completion:(id)a5;
- (void)remoteOperationFinishedSendingPastUpdates;
- (void)remoteOperationProgressesAreReady;
- (void)runUserInteractionsPreflight:(id)a3;
- (void)subclassPreflightWithCompletion:(id)a3;
@end

@implementation FPMoveOperation

uint64_t __39__FPMoveOperation_checkNonEmptyPackage__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 startAccessingSecurityScopedResource];
  if ([v2 fp_isPackage])
  {
    v10 = 0;
    v4 = fpfs_num_entries([v2 fileSystemRepresentation], 0, &v10);
    if (!(v4 | v10))
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v2 path];
        v7 = [v6 fp_prettyPath];
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Attempt to move/import an empty package %@", buf, 0xCu);
      }
    }
  }

  if (v3)
  {
    [v2 stopAccessingSecurityScopedResource];
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (FPMoveOperation)initWithSourceItems:(id)a3 orSourceURLs:(id)a4 destinationFolder:(id)a5 orDestinationURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13)
  {
    v15 = [v13 providerDomainID];
  }

  else if ([v11 count])
  {
    [v11 firstObject];
    v16 = v11;
    v17 = v14;
    v19 = v18 = v12;
    v15 = [v19 providerDomainID];

    v12 = v18;
    v14 = v17;
    v11 = v16;
    v13 = 0;
  }

  else
  {
    v15 = 0;
  }

  v37.receiver = self;
  v37.super_class = FPMoveOperation;
  v20 = [(FPActionOperation *)&v37 initWithProvider:v15 action:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_providerIdentifier, v15);
    objc_storeStrong(&v21->__sourceURLs, a4);
    objc_storeStrong(&v21->__sourceItems, a3);
    objc_storeStrong(&v21->__destinationURL, a6);
    objc_storeStrong(&v21->__destinationFolder, a5);
    v21->__lastUsedDatePolicy = [(FPMoveOperation *)v21 defaultLastUsedDatePolicy];
    [(FPActionOperation *)v21 setSourceItemsToPreflight:v11];
    [(FPActionOperation *)v21 setDestinationItemToPreflight:v13];
    v21->_isScheduledFromThisClient = 1;
    v22 = +[FPProgressManager defaultManager];
    progressManager = v21->_progressManager;
    v21->_progressManager = v22;

    objc_initWeak(&location, v21);
    v24 = [(FPActionOperation *)v21 progress];
    [v24 fp_setFileOperationKind:*MEMORY[0x1E696A840]];

    v25 = objc_opt_new();
    progressByRoot = v21->_progressByRoot;
    v21->_progressByRoot = v25;

    v27 = objc_opt_new();
    createdOrFailedRoots = v21->_createdOrFailedRoots;
    v21->_createdOrFailedRoots = v27;

    v29 = objc_opt_new();
    createdItemsByRoot = v21->_createdItemsByRoot;
    v21->_createdItemsByRoot = v29;

    v31 = objc_opt_new();
    placeholderIDsByRoot = v21->_placeholderIDsByRoot;
    v21->_placeholderIDsByRoot = v31;

    v33 = objc_opt_new();
    URLByResolvedFPItem = v21->_URLByResolvedFPItem;
    v21->_URLByResolvedFPItem = v33;

    [(FPActionOperation *)v21 setSetupRemoteOperationService:1];
    [(FPMoveOperation *)v21 checkNonEmptyPackage];
    objc_destroyWeak(&location);
  }

  return v21;
}

- (FPMoveOperation)initWithRemoteOperation:(id)a3 info:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FPMoveOperation *)self initWithSourceItems:0 orSourceURLs:0 destinationFolder:0 orDestinationURL:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteMoveOperation, a3);
    objc_storeStrong(&v10->_info, a4);
    v10->_isScheduledFromThisClient = 0;
    [(FPActionOperation *)v10 setHavePreflight:0];
    [(FPActionOperation *)v10 setSetupRemoteOperationService:0];
  }

  return v10;
}

- (FPMoveOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 allKeys];
  v9 = [(FPMoveOperation *)self initWithSourceItems:0 orSourceURLs:v8 destinationFolder:v6 orDestinationURL:0];

  v10 = [v7 copy];
  targetFilenamesByURL = v9->__targetFilenamesByURL;
  v9->__targetFilenamesByURL = v10;

  return v9;
}

FPItem *__41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = 0;
  v3 = *MEMORY[0x1E695DAA0];
  v12 = 0;
  v4 = [v2 getResourceValue:&v13 forKey:v3 error:&v12];
  v5 = v13;
  v6 = v12;
  if (v4)
  {
    v7 = [FPItem alloc];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [(FPItem *)v7 initWithProviderDomainID:@"fakeIdentifier" itemIdentifier:@"fakeIdentifier" parentItemIdentifier:@"fakeIdentifier" filename:v9 contentType:v5];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke_cold_1(v2, v6, v8);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_recomputeMoveInfoIfNecessary
{
  if (!self->_info)
  {
    v3 = objc_opt_new();
    info = self->_info;
    self->_info = v3;
  }

  v5 = +[FPDaemonOperationManager sharedInstance];
  v6 = [v5 generateLocalOperationID];
  [(FPActionOperationInfo *)self->_info setOperationID:v6];

  if (self->__sourceItems || self->__sourceURLs)
  {
    [(FPActionOperationInfo *)self->_info setRoots:0];
    sourceItems = self->__sourceItems;
    if (sourceItems)
    {
      v8 = [(NSArray *)sourceItems fp_map:&__block_literal_global_17];
      [(FPActionOperationInfo *)self->_info setRoots:v8];
    }

    sourceURLs = self->__sourceURLs;
    if (sourceURLs)
    {
      v10 = [(NSArray *)sourceURLs fp_map:&__block_literal_global_21_0];
      v11 = [(FPActionOperationInfo *)self->_info roots];

      v12 = self->_info;
      if (v11)
      {
        v13 = [(FPActionOperationInfo *)v12 roots];
        v14 = [v13 arrayByAddingObjectsFromArray:v10];
        [(FPActionOperationInfo *)self->_info setRoots:v14];
      }

      else
      {
        [(FPActionOperationInfo *)v12 setRoots:v10];
      }
    }
  }

  v15 = [(FPActionOperationInfo *)self->_info roots];
  if (v15)
  {
    v16 = v15;
    v17 = [(NSMutableDictionary *)self->_createdItemsByRoot count];

    if (v17)
    {
      v18 = [(FPActionOperationInfo *)self->_info roots];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_3;
      v27[3] = &unk_1E793C928;
      v27[4] = self;
      v19 = [v18 fp_filter:v27];
      [(FPActionOperationInfo *)self->_info setRoots:v19];
    }
  }

  v20 = [(FPActionOperationInfo *)self->_info roots];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_4;
  v26[3] = &unk_1E793C950;
  v26[4] = self;
  v21 = [v20 fp_map:v26];
  [(FPMoveInfo *)self->_info setRootFilenames:v21];

  if (self->__destinationFolder)
  {
    v22 = [FPActionOperationLocator locatorForItem:?];
  }

  else
  {
    if (!self->__destinationURL)
    {
      goto LABEL_20;
    }

    v22 = [FPActionOperationLocator locatorForURL:?];
  }

  v23 = v22;
  [(FPMoveInfo *)self->_info setTargetFolder:v22];

LABEL_20:
  [(FPMoveInfo *)self->_info setLastUsedDatePolicy:self->__lastUsedDatePolicy];
  [(FPMoveInfo *)self->_info setShouldBounce:self->_shouldBounceOnCollision];
  [(FPMoveInfo *)self->_info setByCopy:[(FPMoveOperation *)self byCopy]];
  v24 = [(FPMoveOperation *)self _t_patchActionOperationInfo];

  if (v24)
  {
    v25 = [(FPMoveOperation *)self _t_patchActionOperationInfo];
    (v25)[2](v25, self->_info);
  }
}

BOOL __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

id __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExternalURL])
  {
    v4 = *(*(a1 + 32) + 496);
    v5 = [v3 asURL];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(*(a1 + 32) + 496);
      v8 = [v3 asURL];
LABEL_7:
      v12 = v8;
      v13 = [v7 objectForKeyedSubscript:v8];

      goto LABEL_9;
    }
  }

  if ([v3 isProviderItem])
  {
    v9 = *(*(a1 + 32) + 504);
    v10 = [v3 asFPItem];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v7 = *(*(a1 + 32) + 504);
      v8 = [v3 asFPItem];
      goto LABEL_7;
    }
  }

  v13 = [v3 filename];
LABEL_9:

  return v13;
}

- (BOOL)_hasAccessToURL:(id)a3 readonly:(BOOL)a4
{
  v4 = a3;
  v5 = [v4 startAccessingSecurityScopedResource];
  getpid();
  v6 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
  v7 = [v4 path];
  v10 = [v7 fileSystemRepresentation];
  v8 = sandbox_check();

  if (v5)
  {
    [v4 stopAccessingSecurityScopedResource];
  }

  return v8 == 0;
}

- (void)_resolveURLsWithCompletionHandler:(id)a3
{
  v52[1] = *MEMORY[0x1E69E9840];
  v24 = a3;
  v26 = +[FPItemManager defaultManager];
  v4 = dispatch_group_create();
  destinationURL = self->__destinationURL;
  if (destinationURL)
  {
    if (![(FPMoveOperation *)self _hasAccessToURL:destinationURL readonly:0])
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(FPMoveOperation *)&self->__destinationURL _resolveURLsWithCompletionHandler:v14];
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = self->__destinationURL;
      v51 = *MEMORY[0x1E696A998];
      v52[0] = v16;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v8 = [v15 errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v27];
      v24[2](v24, v8);
      goto LABEL_23;
    }

    dispatch_group_enter(v4);
    v6 = self->__destinationURL;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke;
    v46[3] = &unk_1E793C978;
    v46[4] = self;
    v47 = v4;
    [v26 fetchItemForURL:v6 completionHandler:v46];
  }

  sourceURLs = self->__sourceURLs;
  if (sourceURLs)
  {
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](sourceURLs, "count")}];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->__sourceURLs, "count")}];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->__targetFilenamesByURL, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = self->__sourceURLs;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v10)
    {
      v11 = *v43;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          if (![(FPMoveOperation *)self _hasAccessToURL:v13 readonly:1])
          {
            v17 = fp_current_or_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(FPMoveOperation *)v13 _resolveURLsWithCompletionHandler:v17];
            }

            v18 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A998];
            v49 = v13;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v20 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v19];
            v24[2](v24, v20);

            v21 = obj;
            goto LABEL_22;
          }

          dispatch_group_enter(v4);
          objc_initWeak(&location, self);
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_31;
          v34[3] = &unk_1E793C9A0;
          v35 = v4;
          objc_copyWeak(&v40, &location);
          v36 = v13;
          v37 = v8;
          v38 = v9;
          v39 = v27;
          [v26 fetchItemForURL:v13 completionHandler:v34];

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v27 = 0;
  }

  v22 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32;
  block[3] = &unk_1E793A6F0;
  v8 = v8;
  v29 = v8;
  v27 = v27;
  v30 = v27;
  v31 = self;
  v9 = v9;
  v32 = v9;
  v33 = v24;
  dispatch_group_notify(v4, v22, block);

  v21 = v29;
LABEL_22:

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_cold_1(a1, v6, v8);
    }

    v9 = *(a1 + 40);
    objc_sync_enter(v9);
    [*(*(a1 + 32) + 560) setObject:*(*(a1 + 32) + 472) forKeyedSubscript:v6];
    objc_storeStrong((*(a1 + 32) + 480), a2);
    v10 = *(a1 + 32);
    v11 = *(v10 + 472);
    *(v10 + 472) = 0;

    [*(a1 + 32) setDestinationItemToPreflight:v6];
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_31(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  objc_sync_enter(v7);
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v9 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [a1[5] fp_shortDescription];
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: source URL %@ resolved to item %@", &v14, 0x20u);
    }

    [a1[6] addObject:v5];
    [v9[70] setObject:a1[5] forKeyedSubscript:v5];
    v11 = [v9[62] objectForKeyedSubscript:a1[5]];
    if (v11)
    {
      [a1[7] setObject:v11 forKeyedSubscript:v5];
    }
  }

  else if (WeakRetained)
  {
    [a1[8] addObject:a1[5]];
  }

  objc_sync_exit(v7);
  dispatch_group_leave(a1[4]);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) count];
    v3 = [*(a1 + 32) count] + v2;
    v4 = [*(*(a1 + 48) + 456) count];
    if (v3 != [*(*(a1 + 48) + 464) count] + v4)
    {
      __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32_cold_1();
    }

    objc_storeStrong((*(a1 + 48) + 456), *(a1 + 40));
    objc_storeStrong((*(a1 + 48) + 464), *(a1 + 32));
    objc_storeStrong((*(a1 + 48) + 504), *(a1 + 56));
    v5 = [*(a1 + 48) sourceItemsToPreflight];

    if (v5)
    {
      v6 = [*(a1 + 48) sourceItemsToPreflight];
      v7 = [v6 arrayByAddingObjectsFromArray:*(a1 + 32)];
      [*(a1 + 48) setSourceItemsToPreflight:v7];
    }

    else
    {
      [*(a1 + 48) setSourceItemsToPreflight:*(a1 + 32)];
    }
  }

  if ([*(a1 + 40) count])
  {
    v8 = [*(a1 + 48) sourceItemsToPreflight];

    v9 = *(a1 + 48);
    if (v8)
    {
      v10 = [v9 sourceItemsToPreflight];
      v11 = [*(a1 + 48) _mapURLsToFakeFPItems:*(a1 + 40)];
      v12 = [v10 arrayByAddingObjectsFromArray:v11];
      [*(a1 + 48) setSourceItemsToPreflight:v12];
    }

    else
    {
      v10 = [v9 _mapURLsToFakeFPItems:*(a1 + 40)];
      [*(a1 + 48) setSourceItemsToPreflight:v10];
    }
  }

  v13 = *(*(a1 + 64) + 16);

  return v13();
}

- (void)actionMain
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __29__FPMoveOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__FPMoveOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E7939090;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __29__FPMoveOperation_actionMain__block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 completedWithResult:0 error:?];
  }

  else
  {
    return [v2 _runWithRemoteOperation:a1[6]];
  }
}

- (void)main
{
  if (self->_isScheduledFromThisClient)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __23__FPMoveOperation_main__block_invoke;
    v2[3] = &unk_1E7939C00;
    v2[4] = self;
    [(FPMoveOperation *)self _resolveURLsWithCompletionHandler:v2];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = FPMoveOperation;
    [(FPActionOperation *)&v3 main];
  }
}

id __23__FPMoveOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {

    return [v4 completedWithResult:0 error:a2];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = v4;
    v6.super_class = FPMoveOperation;
    return objc_msgSendSuper2(&v6, sel_main);
  }
}

- (void)_runWithRemoteOperation:(id)a3
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke;
  v10[3] = &unk_1E7939C00;
  v10[4] = self;
  v4 = [a3 remoteObjectProxyWithErrorHandler:v10];
  remoteMoveOperation = self->_remoteMoveOperation;
  self->_remoteMoveOperation = v4;

  v6 = self->_remoteMoveOperation;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_3;
  v9[3] = &unk_1E793C408;
  v9[4] = self;
  [(NSXPCProxyCreating *)v6 registerFrameworkClient:self operationCompletion:v9];
  v7 = [(FPMoveOperation *)self _t_remoteOperationWasScheduled];

  if (v7)
  {
    v8 = [(FPMoveOperation *)self _t_remoteOperationWasScheduled];
    v8[2]();
  }
}

void __43__FPMoveOperation__runWithRemoteOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_2;
  v6[3] = &unk_1E79390B8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __43__FPMoveOperation__runWithRemoteOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) callbackQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_4;
  v14[3] = &unk_1E7939738;
  v14[4] = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = FPMoveOperation;
  [(FPOperation *)&v2 cancel];
}

- (void)remoteOperationProgressesAreReady
{
  v4 = [(FPOperation *)self callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__FPMoveOperation_remoteOperationProgressesAreReady__block_invoke;
  v5[3] = &unk_1E7939038;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __52__FPMoveOperation_remoteOperationProgressesAreReady__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  v3 = *(*(a1 + 32) + 448);
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPMoveOperation.m" lineNumber:538 description:@"operation was not setup propertly"];

    v3 = *(*(a1 + 32) + 448);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v3 roots];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x1E696A840];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [*(*(a1 + 32) + 528) progressForRoot:v10 completion:&__block_literal_global_55];
        [v11 fp_setFileOperationKind:v8];
        v12 = *(*(a1 + 32) + 584);
        v13 = [v10 underlyingObject];
        [v12 setObject:v11 forKeyedSubscript:v13];

        [v2 setTotalUnitCount:{objc_msgSend(v2, "totalUnitCount") + objc_msgSend(v11, "totalUnitCount")}];
        [v2 addChild:v11 withPendingUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
        v14 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:v10];
        [*(*(a1 + 32) + 512) registerCopyProgress:v11 forItemID:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)remoteOperationCreatedRoot:(id)a3 resultingItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  (*(a5 + 2))(a5);
  v10 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPMoveOperation_remoteOperationCreatedRoot_resultingItem_completion___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);
}

void __71__FPMoveOperation_remoteOperationCreatedRoot_resultingItem_completion___block_invoke(id *a1)
{
  v10 = [*(a1[4] + 69) objectForKeyedSubscript:a1[5]];
  v2 = *(a1[4] + 73);
  v3 = [a1[5] underlyingObject];
  v4 = [v2 objectForKeyedSubscript:v3];

  [*(a1[4] + 67) addObject:a1[5]];
  v5 = a1[6];
  if (v5 && ([*(a1[4] + 68) setObject:v5 forKeyedSubscript:a1[5]], objc_msgSend(a1[6], "isProviderItem")))
  {
    v6 = [a1[6] asFPItem];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v7 = *(a1[4] + 64);
    v8 = [v6 itemID];
    [v7 registerCopyProgress:v4 forItemID:v8];
  }

  if (v10)
  {
    [*(a1[4] + 64) registerCopyProgress:v4 forItemID:v10];
  }

LABEL_10:
  if ([a1[4] byCopy])
  {
    [v6 setChildItemCount:0];
    [v6 setState:{objc_msgSend(v6, "state") | 8}];
    v9 = [a1[4] stitcher];
    [v9 replacePlaceholderWithID:v10 withItem:v6];
  }
}

- (void)remoteOperationCompletedRoot:(id)a3 resultingItem:(id)a4 error:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  (*(a6 + 2))(a6);
  v11 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FPMoveOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

void __79__FPMoveOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _t_rootCompleted];

  if (v2)
  {
    v3 = [*(a1 + 32) _t_rootCompleted];
    v3[2](v3, *(a1 + 40));
  }

  [*(*(a1 + 32) + 536) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 584) setObject:0 forKeyedSubscript:*(a1 + 40)];
  if ([*(a1 + 48) isProviderItem] && (objc_msgSend(*(a1 + 48), "asFPItem"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = *(*(a1 + 32) + 512);
    v11 = v4;
    v6 = [v4 itemID];
    [v5 removeCopyProgressForItemID:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v11 = 0;
  }

  if ([*(a1 + 32) byCopy])
  {
    v8 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:*(a1 + 40)];
    [*(*(a1 + 32) + 512) removeCopyProgressForItemID:v8];
    v9 = v7 ^ 1;
    if (!v8)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      [v11 setChildItemCount:0];
      v10 = [*(a1 + 32) stitcher];
      [v10 replacePlaceholderWithID:v8 withItem:v11];

      [*(*(a1 + 32) + 512) removeCopyProgressForItemID:v8];
    }
  }
}

- (void)remoteOperationFinishedSendingPastUpdates
{
  if (!self->_isScheduledFromThisClient)
  {
    v3 = [(FPOperation *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FPMoveOperation_remoteOperationFinishedSendingPastUpdates__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)_recoverFromCollisionError:(id)a3 withPolicy:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 fp_userInfoFPItem];
  [(FPActionOperation *)self setHaveErrorRecovery:0];
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      if (!v8)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [FPMoveOperation _recoverFromCollisionError:v19 withPolicy:?];
        }

        v9 = self;
        v10 = v7;
        goto LABEL_21;
      }

      v24 = a2;
      v11 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = [(NSDictionary *)self->_errorsByItem allValues];
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        v16 = 1;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [*(*(&v26 + 1) + 8 * i) fp_userInfoFPItem];
            if (v18)
            {
              [v11 addObject:v18];
              v16 &= ([v18 capabilities] & 0x10) != 0;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 1;
      }

      if (![v11 count] && !objc_msgSend(v11, "count"))
      {
        [FPMoveOperation _recoverFromCollisionError:withPolicy:];
      }

      v20 = off_1E7938798;
      if ((v16 & 1) == 0)
      {
        v20 = off_1E7938560;
      }

      v21 = [objc_alloc(*v20) initWithItems:v11];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke;
      v25[3] = &unk_1E7939C00;
      v25[4] = self;
      [v21 setActionCompletionBlock:v25];
      [(FPMoveOperation *)self _resetOperationBeforeErrorRecovery];
      v22 = +[FPItemManager defaultManager];
      [v22 scheduleAction:v21];
    }

    else
    {
      if (!a4)
      {
        v9 = self;
        v10 = 0;
LABEL_21:
        [(FPMoveOperation *)v9 completedWithResult:0 error:v10];
        goto LABEL_30;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"FPMoveOperation.m" lineNumber:730 description:@"UNREACHABLE: unhandled recovery option"];
    }

    goto LABEL_30;
  }

  [(FPMoveOperation *)self setShouldBounceOnCollision:1];
  [(FPMoveOperation *)self _resetOperationBeforeErrorRecovery];
  [(FPMoveOperation *)self _scheduleAgainAfterErrorRecovery];
LABEL_30:

  v23 = *MEMORY[0x1E69E9840];
}

void __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke_2;
  v7[3] = &unk_1E79390B8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 completedWithResult:0 error:?];
  }

  else
  {
    return [v1 _scheduleAgainAfterErrorRecovery];
  }
}

- (void)_completedWithResultsByRoot:(id)a3 errorsByRoot:(id)a4 error:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v11);

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = [v10 fp_prettyDescription];
    *buf = 138412802;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v29;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] remote operation finished with results:%@; errors:%@; %@", buf, 0x20u);
  }

  v13 = [v8 fp_copyItemKeysAndValuesUnwrappedAndKeyMap:self->_URLByResolvedFPItem];
  transferLocations = self->_transferLocations;
  self->_transferLocations = v13;

  v15 = [(NSDictionary *)self->_transferLocations fp_filter:&__block_literal_global_66_0];
  transferResults = self->_transferResults;
  self->_transferResults = v15;

  v17 = [v9 fp_copyItemKeysUnwrappedAndKeyMap:self->_URLByResolvedFPItem];
  errorsByItem = self->_errorsByItem;
  self->_errorsByItem = v17;

  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v20 = [(NSDictionary *)self->_errorsByItem allValues];
    v19 = [v20 firstObject];
  }

  v21 = [(FPMoveInfo *)self->_info targetFolder];
  if (([v21 isProviderItem] & 1) == 0)
  {

    v23 = 0;
LABEL_11:
    v27 = [(NSDictionary *)self->_transferResults allValues];
    [(FPMoveOperation *)self completedWithResult:v27 error:v19];

    goto LABEL_12;
  }

  v22 = [(FPMoveInfo *)self->_info targetFolder];
  v23 = [v22 asFPItem];

  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = [v23 childItemCount];

  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = [(FPActionOperation *)self itemManager];
  v26 = [v23 itemID];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke_2;
  v30[3] = &unk_1E793C978;
  v30[4] = self;
  v31 = v19;
  [v25 fetchItemForItemID:v26 completionHandler:v30];

LABEL_12:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4[72] allValues];
    v6 = [v5 arrayByAddingObject:v3];
    [v4 completedWithResult:v6 error:*(a1 + 40)];
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] move destination folder is gone after move finished", v9, 2u);
    }

    v8 = *(a1 + 32);
    v5 = [v8[72] allValues];
    [v8 completedWithResult:v5 error:*(a1 + 40)];
  }
}

- (void)completedWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPMoveOperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_completedWithResult:(id)a3 error:(id)a4
{
  v28 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v6 = a4;
  v7 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = [(FPMoveInfo *)self->_info byCopy];
    v9 = FPErrorVariantCopy;
    if (!v8)
    {
      v9 = FPErrorVariantMove;
    }

    v10 = *v9;
    v11 = [(FPActionOperationInfo *)self->_info roots];
    v12 = [v11 firstObject];

    if (!v12)
    {
      goto LABEL_10;
    }

    if ([v12 isProviderItem])
    {
      v13 = [v12 asFPItem];
      v14 = [v6 fp_annotatedErrorWithItem:v13 variant:v10];
    }

    else
    {
      if (![v12 isExternalURL])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = [v12 asURL];
      v14 = [v6 fp_annotatedErrorWithURL:v13 variant:v10];
    }

    v15 = v14;

    v6 = v15;
    goto LABEL_10;
  }

LABEL_11:
  remoteMoveOperation = self->_remoteMoveOperation;
  self->_remoteMoveOperation = 0;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [(NSMutableDictionary *)self->_createdItemsByRoot allValues];
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        if ([v22 isProviderItem])
        {
          progressManager = self->_progressManager;
          v24 = [v22 asFPItem];
          v25 = [v24 itemID];
          [(FPProgressManager *)progressManager removeCopyProgressForItemID:v25];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  v26 = [(FPActionOperation *)self stitcher];
  [v26 finishWithItems:v29 error:v6];

  if (v6)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __46__FPMoveOperation__completedWithResult_error___block_invoke;
    v30[3] = &unk_1E793C9E8;
    v31 = v29;
    v32 = v6;
    v33 = self;
    v34 = v28;
    [(FPActionOperation *)self tryRecoveringFromError:v32 completion:v30];
  }

  else
  {
    v35.receiver = self;
    v35.super_class = FPMoveOperation;
    [(FPOperation *)&v35 completedWithResult:v29 error:0];
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __46__FPMoveOperation__completedWithResult_error___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a1 + 40);
    if (([*(a1 + 40) fp_isFileProviderError:-1001] & 1) == 0 && (objc_msgSend(*v5, "fp_isFileProviderError:", -1001) & 1) == 0)
    {
      __46__FPMoveOperation__completedWithResult_error___block_invoke_cold_1();
    }

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v6 _recoverFromCollisionError:v7 withPolicy:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11.receiver = *(a1 + 48);
    v11.super_class = FPMoveOperation;
    return objc_msgSendSuper2(&v11, sel_completedWithResult_error_, v10, v9);
  }
}

- (void)_presendNotifications
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  [(FPMoveOperation *)self _recomputeMoveInfoIfNecessary];
  if (![(FPActionOperation *)self finishAfterPreflight]&& ![(FPOperation *)self isFinished])
  {
    v4 = [(FPMoveInfo *)self->_info targetFolder];
    v5 = [v4 isExternalURL];

    if ((v5 & 1) == 0)
    {
      v6 = [(FPActionOperation *)self stitcher];
      [v6 start];

      if ([(FPMoveInfo *)self->_info lastUsedDatePolicy]== 2)
      {
        v62 = [MEMORY[0x1E695DF00] date];
      }

      else
      {
        v62 = 0;
      }

      v7 = [(FPMoveInfo *)self->_info targetFolder];
      if ([v7 isProviderItem])
      {
        v8 = [(FPMoveInfo *)self->_info targetFolder];
        v64 = [v8 asFPItem];
      }

      else
      {
        v64 = 0;
      }

      v9 = [(FPActionOperationInfo *)self->_info roots];
      v10 = [v9 count];

      if (v10)
      {
        v12 = 0;
        v60 = *MEMORY[0x1E6982E48];
        v61 = *MEMORY[0x1E695DAA0];
        v59 = *MEMORY[0x1E6982DC8];
        v13 = &OBJC_IVAR___FPProgressManager__queue;
        *&v11 = 138412546;
        v58 = v11;
        do
        {
          v14 = [(FPActionOperationInfo *)self->_info roots];
          v15 = [v14 objectAtIndexedSubscript:v12];

          v16 = [(FPMoveInfo *)self->_info rootFilenames];
          v17 = [v16 objectAtIndexedSubscript:v12];

          if (([*(&self->super.super.super.super.isa + v13[403]) containsObject:v15] & 1) == 0)
          {
            v65 = v17;
            if ([v15 isExternalURL])
            {
              v18 = [v15 asURL];
              v19 = [v18 startAccessingSecurityScopedResource];
              v72 = 0;
              v71 = 0;
              v20 = [v18 getResourceValue:&v72 forKey:v61 error:&v71];
              v21 = v72;
              v63 = v71;
              if (!v20 || !v21)
              {
                v22 = fp_current_or_default_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = v58;
                  v77 = v15;
                  v78 = 2112;
                  v79 = v63;
                  _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Failed to get type of %@ (%@)", buf, 0x16u);
                }

                v23 = [v15 isFolder];
                v24 = v60;
                if (v23)
                {
                  v24 = v59;
                }

                v25 = v24;

                v21 = v25;
              }

              if (v19)
              {
                [v18 stopAccessingSecurityScopedResource];
              }

              v26 = [(FPActionOperation *)self stitcher];
              v27 = [v64 itemIdentifier];
              v28 = [v64 providerDomainID];
              v29 = [v26 createPlaceholderWithName:v65 contentType:v21 contentAccessDate:v62 underParent:v27 inProviderDomainID:v28];
              [(NSMutableDictionary *)self->_placeholderIDsByRoot setObject:v29 forKeyedSubscript:v15];

              v13 = &OBJC_IVAR___FPProgressManager__queue;
              v30 = v63;
            }

            else
            {
              v21 = [v15 asFPItem];
              if ([(FPMoveInfo *)self->_info byCopy])
              {
                v30 = [(FPActionOperation *)self stitcher];
                v31 = [(FPMoveInfo *)self->_info lastUsedDatePolicy];
                v32 = [v64 itemIdentifier];
                v33 = [v64 providerDomainID];
                v34 = [v30 createPlaceholderWithCopyOfExistingItem:v21 lastUsageUpdatePolicy:v31 underParent:v32 inProviderDomainID:v33];
                [(NSMutableDictionary *)self->_placeholderIDsByRoot setObject:v34 forKeyedSubscript:v15];
              }

              else if (v64 && ([v21 providerDomainID], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "providerDomainID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "isEqualToString:", v36), v36, v35, v37))
              {
                v38 = [(FPActionOperation *)self stitcher];
                v75 = v21;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
                v69[0] = MEMORY[0x1E69E9820];
                v69[1] = 3221225472;
                v69[2] = __40__FPMoveOperation__presendNotifications__block_invoke;
                v69[3] = &unk_1E793CA10;
                v70 = v64;
                [v38 transformItems:v39 handler:v69];

                v30 = v70;
              }

              else
              {
                v40 = [(FPActionOperation *)self stitcher];
                v74 = v21;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
                [v40 deleteItems:v41];

                v30 = [(FPActionOperation *)self stitcher];
                v42 = [v64 itemIdentifier];
                v43 = [v64 providerDomainID];
                v44 = [v30 createPlaceholderWithCopyOfExistingItem:v21 lastUsageUpdatePolicy:1 underParent:v42 inProviderDomainID:v43];
              }
            }

            v17 = v65;
          }

          ++v12;
          v45 = [(FPActionOperationInfo *)self->_info roots];
          v46 = [v45 count];
        }

        while (v12 < v46);
      }

      if (v64)
      {
        v47 = [(FPMoveInfo *)self->_info targetFolder];
        v48 = [v47 asFPItem];
        v49 = [v48 childItemCount];

        if (v49)
        {
          v50 = [(FPActionOperationInfo *)self->_info roots];
          v51 = [v50 count];

          v52 = [(FPActionOperation *)self stitcher];
          v53 = [(FPMoveInfo *)self->_info targetFolder];
          v54 = [v53 asFPItem];
          v73 = v54;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __40__FPMoveOperation__presendNotifications__block_invoke_2;
          v66[3] = &unk_1E793CA38;
          v67 = v49;
          v68 = v51;
          [v52 transformItems:v55 handler:v66];
        }
      }

      v56 = [(FPActionOperation *)self stitcher];
      [v56 flush];
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __40__FPMoveOperation__presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 itemIdentifier];
  [v4 setParentItemIdentifier:v5];

  v6 = [*(a1 + 32) providerDomainID];
  [v4 setProviderDomainID:v6];
}

void __40__FPMoveOperation__presendNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setState:0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 40) + objc_msgSend(*(a1 + 32), "unsignedIntegerValue")}];
  [v3 setChildItemCount:v4];
}

- (void)presendNotifications
{
  if (self->_isScheduledFromThisClient)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = [(FPOperation *)self callbackQueue];
    dispatch_activate(v5);

    v6 = [(FPOperation *)self callbackQueue];
    dispatch_assert_queue_not_V2(v6);

    v7 = [(FPOperation *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FPMoveOperation_presendNotifications__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_sync(v7, block);
  }
}

- (void)runUserInteractionsPreflight:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FPActionOperation *)self setupRemoteOperationService])
  {
    v5 = [(FPActionOperation *)self sourceItemsToPreflight];
    v6 = [v5 firstObject];
    if ([v6 isExcludedFromSync])
    {
      v7 = 0;
    }

    else
    {
      sourceItems = self->__sourceItems;

      if (!sourceItems)
      {
        v7 = 0;
LABEL_8:
        v9 = [(FPActionOperation *)self destinationItemToPreflight];
        if ([v9 isExcludedFromSync])
        {
          v10 = 0;
        }

        else
        {
          v11 = [(FPActionOperation *)self sourceItemsToPreflight];
          v12 = [v11 firstObject];
          v13 = [v12 isIgnoreRoot];

          if (v13)
          {
            v10 = 0;
            goto LABEL_14;
          }

          v9 = [(FPActionOperation *)self destinationItemToPreflight];
          v10 = [v9 providerDomainID];
        }

LABEL_14:
        if (!(v7 | v10))
        {
          v19 = [(FPOperation *)self callbackQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke;
          block[3] = &unk_1E7939EA8;
          v47 = v4;
          dispatch_async(v19, block);

          v17 = v47;
LABEL_62:

          goto LABEL_63;
        }

        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v7;
          *&buf[22] = 2112;
          v49 = v10;
          _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: preflighting for moving items from %@ to %@", buf, 0x20u);
        }

        if (v7 != 0 && v10 == 0)
        {
          goto LABEL_21;
        }

        if (v7 && v10)
        {
          if (([v7 isEqualToString:v10] & 1) == 0)
          {
LABEL_21:
            v15 = [(FPMoveOperation *)self byCopy];
            v16 = FPPreflightActionCopyOut;
            if (!v15)
            {
              v16 = FPPreflightActionMoveOut;
            }

            v17 = *v16;
            if (!v10)
            {
              v22 = 0;
              goto LABEL_43;
            }

            if (![(FPActionOperation *)self finishAfterPreflight]&& ![(FPMoveOperation *)self byCopy]&& ![(FPActionOperation *)self finishAfterPreflight]&& ![(FPMoveOperation *)self byCopy])
            {
              [FPMoveOperation runUserInteractionsPreflight:];
            }

            v18 = [(FPMoveOperation *)self byCopy];
            goto LABEL_35;
          }
        }

        else if (!v7 && v10)
        {
          v18 = [(FPMoveOperation *)self byCopy];
          v17 = 0;
LABEL_35:
          v20 = FPPreflightActionCopyIn;
          if (!v18)
          {
            v20 = FPPreflightActionMoveIn;
          }

          v21 = *v20;
          v22 = v21;
LABEL_41:
          v25 = v21;
LABEL_43:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v49 = __Block_byref_object_copy__16;
          v50 = __Block_byref_object_dispose__16;
          v51 = objc_opt_new();
          v26 = dispatch_group_create();
          v27 = fp_current_or_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [FPMoveOperation runUserInteractionsPreflight:?];
          }

          v36 = v7;
          if (v17)
          {
            dispatch_group_enter(v26);
            v28 = [(FPActionOperation *)self sourceItemsToPreflight];
            if (v22)
            {
              v29 = 0;
            }

            else
            {
              v29 = [(FPActionOperation *)self destinationItemToPreflight];
            }

            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_80;
            v43[3] = &unk_1E793CA60;
            v45 = buf;
            v44 = v26;
            [(FPMoveOperation *)self gatherErrorsForUserInteractionForDomain:v7 action:v17 sourceItems:v28 destinationItem:v29 sourceItemKeysAllowList:0 destinationItemKeysAllowList:0 completionHandler:v43];
            if (!v22)
            {
            }
          }

          if (v22)
          {
            dispatch_group_enter(v26);
            v30 = fp_current_or_default_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [FPMoveOperation runUserInteractionsPreflight:?];
            }

            if (v17)
            {
              v31 = 0;
            }

            else
            {
              v31 = [(FPActionOperation *)self sourceItemsToPreflight];
            }

            v32 = [(FPActionOperation *)self destinationItemToPreflight];
            v33 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1FC9BF0];
            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_85;
            v40[3] = &unk_1E793CA60;
            v42 = buf;
            v41 = v26;
            [(FPMoveOperation *)self gatherErrorsForUserInteractionForDomain:v10 action:v22 sourceItems:v31 destinationItem:v32 sourceItemKeysAllowList:v33 destinationItemKeysAllowList:0 completionHandler:v40];

            if (!v17)
            {
            }
          }

          v34 = [(FPOperation *)self callbackQueue];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2;
          v37[3] = &unk_1E793CA88;
          v39 = buf;
          v37[4] = self;
          v38 = v4;
          dispatch_group_notify(v26, v34, v37);

          v7 = v36;
          _Block_object_dispose(buf, 8);

          goto LABEL_62;
        }

        v23 = [(FPMoveOperation *)self byCopy];
        v22 = 0;
        v24 = FPPreflightActionCopy;
        if (!v23)
        {
          v24 = FPPreflightActionMove;
        }

        v21 = *v24;
        v17 = v21;
        goto LABEL_41;
      }

      v5 = [(FPActionOperation *)self sourceItemsToPreflight];
      v6 = [v5 firstObject];
      v7 = [v6 providerDomainID];
    }

    goto LABEL_8;
  }

  (*(v4 + 2))(v4, 0);
LABEL_63:

  v35 = *MEMORY[0x1E69E9840];
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_80(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_85(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"description" ascending:1];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v8[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)gatherErrorsForUserInteractionForDomain:(id)a3 action:(id)a4 sourceItems:(id)a5 destinationItem:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(FPActionOperation *)self itemManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke;
  v30[3] = &unk_1E793CAD8;
  v36 = v20;
  v37 = v21;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v15;
  v35 = v19;
  v23 = v20;
  v24 = v19;
  v25 = v15;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v21;
  [v22 fetchOperationServiceForProviderDomainID:v25 handler:v30];
}

void __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 80);
    v5 = *(*(a1 + 80) + 16);

    v5();
  }

  else
  {
    v6 = [a2 remoteObjectProxy];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke_2;
    v13[3] = &unk_1E793CAB0;
    v14 = *(a1 + 80);
    [v6 userInteractionErrorsForPerformingAction:v7 sourceItems:v8 destinationItem:v9 fpProviderDomainId:v10 sourceItemKeysAllowList:v11 destinationItemKeysAllowList:v12 completionHandler:v13];
  }
}

void __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 && [v3 count])
  {
    v4 = [v6 objectAtIndex:0];
    v5 = [v4 copy];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)_preflightCheckProviderCanMoveWithErrors:(id *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  if (!-[FPMoveInfo byMoving](self->_info, "byMoving") || (v30 = a3, v33 = self, -[FPMoveInfo targetFolder](self->_info, "targetFolder"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isExternalURL], v5, (v6 & 1) != 0))
  {
    v7 = 1;
    goto LABEL_28;
  }

  v8 = [(FPActionOperation *)v33 remoteService];

  if (!v8)
  {
    v9 = [(FPActionOperation *)v33 remoteService];

    if (!v9)
    {
      [FPMoveOperation _preflightCheckProviderCanMoveWithErrors:];
    }
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__16;
  v43 = __Block_byref_object_dispose__16;
  v44 = 0;
  v10 = [(FPMoveInfo *)v33->_info targetFolder];
  v11 = [v10 asFPItem];

  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [(FPActionOperationInfo *)v33->_info roots];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v13)
  {
    v14 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        if (([v16 isExternalURL] & 1) == 0)
        {
          v17 = [v16 asFPItem];
          v18 = [v17 providerDomainID];
          v19 = [v11 providerDomainID];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            v21 = [v16 asFPItem];
            v22 = [v21 itemID];
            [v32 addObject:v22];

LABEL_15:
            goto LABEL_18;
          }

          if (![(FPActionOperation *)v33 finishAfterPreflight]&& ![(FPActionOperation *)v33 finishAfterPreflight])
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            [v21 handleFailureInMethod:a2 object:v33 file:@"FPMoveOperation.m" lineNumber:1130 description:@"only preflight is supported on cross-domain moves"];
            goto LABEL_15;
          }
        }

LABEL_18:
        ++v15;
      }

      while (v13 != v15);
      v23 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
      v13 = v23;
    }

    while (v23);
  }

  if ([v32 count])
  {
    v24 = [(FPActionOperation *)v33 remoteService];
    v25 = [v24 synchronousRemoteObjectProxy];
    v26 = [v11 itemID];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__FPMoveOperation__preflightCheckProviderCanMoveWithErrors___block_invoke;
    v34[3] = &unk_1E793CB00;
    v34[4] = &v39;
    [v25 preflightReparentItemIDs:v32 underParentID:v26 reply:v34];
  }

  v27 = [v40[5] count];
  if (v30 && v27)
  {
    *v30 = v40[5];
  }

  v7 = [v40[5] count] == 0;

  _Block_object_dispose(&v39, 8);
LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

void __60__FPMoveOperation__preflightCheckProviderCanMoveWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (v5)
  {
    a2 = v4;
  }

  objc_storeStrong(v3, a2);
}

- (BOOL)_preflightCheckNotMovingIntoSelfWithError:(id *)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = [(FPMoveInfo *)self->_info targetFolder];
  v4 = [v3 isExternalURL];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(FPMoveInfo *)self->_info targetFolder];
    v34 = [v6 asFPItem];

    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__16;
    v63 = __Block_byref_object_dispose__16;
    v64 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__16;
    v57 = __Block_byref_object_dispose__16;
    v58 = 0;
    v39 = objc_opt_new();
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = [(FPActionOperation *)self itemManager];
    v9 = [v34 itemID];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __61__FPMoveOperation__preflightCheckNotMovingIntoSelfWithError___block_invoke;
    v49[3] = &unk_1E793CB28;
    v51 = &v53;
    v52 = &v59;
    group = v7;
    v50 = group;
    [v8 fetchParentsForItemID:v9 recursively:1 completionHandler:v49];

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    v10 = [v60[5] arrayByAddingObject:v34];
    v11 = v60[5];
    v60[5] = v10;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = [(FPActionOperationInfo *)self->_info roots];
    v37 = [v12 countByEnumeratingWithState:&v45 objects:v66 count:16];
    if (v37)
    {
      v36 = *v46;
      v13 = *MEMORY[0x1E696A250];
      obj = v12;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          if (([v14 isExternalURL] & 1) == 0)
          {
            v15 = [v14 asFPItem];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = v60[5];
            v17 = [v16 countByEnumeratingWithState:&v41 objects:v65 count:16];
            if (v17)
            {
              v18 = *v42;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v42 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = *(*(&v41 + 1) + 8 * j);
                  v21 = [v15 itemID];
                  v22 = [v20 itemID];
                  LODWORD(v20) = [v21 isEqual:v22];

                  if (v20)
                  {
                    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:v13 code:512 userInfo:0];
                    if ([(FPMoveOperation *)self byCopy])
                    {
                      v24 = @"Copy";
                    }

                    else
                    {
                      v24 = @"Move";
                    }

                    v25 = [v23 fp_annotatedErrorWithItem:v15 variant:v24];
                    v26 = v54[5];
                    v54[5] = v25;

                    [(NSDictionary *)v39 setObject:v54[5] forKeyedSubscript:v15];
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v41 objects:v65 count:16];
              }

              while (v17);
            }
          }
        }

        v12 = obj;
        v37 = [obj countByEnumeratingWithState:&v45 objects:v66 count:16];
      }

      while (v37);
    }

    errorsByItem = self->_errorsByItem;
    self->_errorsByItem = v39;
    v28 = v39;

    v29 = v54[5];
    if (a3 && v29)
    {
      *a3 = v29;
      v29 = v54[5];
    }

    v5 = v29 == 0;

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

void __61__FPMoveOperation__preflightCheckNotMovingIntoSelfWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3;
  }

  objc_storeStrong(v7, v10);
  v14 = a3;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_preflightForceBounceIfCopyingOntoSelf
{
  v39 = *MEMORY[0x1E69E9840];
  v20 = 600;
  if (!self->_shouldBounceOnCollision)
  {
    v3 = [(FPMoveInfo *)self->_info targetFolder];
    v4 = [v3 isExternalURL];

    if ((v4 & 1) == 0)
    {
      v5 = [(FPMoveInfo *)self->_info targetFolder];
      v23 = [v5 asFPItem];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = [(FPActionOperationInfo *)self->_info roots];
      v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v6)
      {
        v7 = *v35;
        v21 = v25;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v35 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v34 + 1) + 8 * i);
            v28 = 0;
            v29 = &v28;
            v30 = 0x3032000000;
            v31 = __Block_byref_object_copy__16;
            v32 = __Block_byref_object_dispose__16;
            if ([v9 isProviderItem])
            {
              v10 = [v9 asFPItem];
            }

            else
            {
              v10 = 0;
            }

            v33 = v10;
            if (!v29[5] && [v9 isExternalURL])
            {
              v11 = dispatch_semaphore_create(0);
              v12 = [(FPActionOperation *)self itemManager];
              v13 = [v9 asURL];
              v24[0] = MEMORY[0x1E69E9820];
              v24[1] = 3221225472;
              v25[0] = __57__FPMoveOperation__preflightForceBounceIfCopyingOntoSelf__block_invoke;
              v25[1] = &unk_1E793CB50;
              v27 = &v28;
              v14 = v11;
              v26 = v14;
              [v12 fetchItemForURL:v13 completionHandler:v24];

              dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
            }

            v15 = v29[5];
            if (v15)
            {
              v16 = [v15 parentItemID];
              v17 = [v23 itemID];
              v18 = [v16 isEqual:v17];

              if (v18)
              {
                *(&self->super.super.super.super.isa + v20) = 1;
                _Block_object_dispose(&v28, 8);

                goto LABEL_20;
              }
            }

            _Block_object_dispose(&v28, 8);
          }

          v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __57__FPMoveOperation__preflightForceBounceIfCopyingOntoSelf__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)subclassPreflightWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v6);

  [(FPMoveOperation *)self _recomputeMoveInfoIfNecessary];
  v13 = 0;
  [(FPMoveOperation *)self _preflightCheckNotMovingIntoSelfWithError:&v13];
  v7 = v13;
  v12 = 0;
  [(FPMoveOperation *)self _preflightCheckProviderCanMoveWithErrors:&v12];
  v8 = v12;
  [(FPMoveOperation *)self _preflightForceBounceIfCopyingOntoSelf];
  v9 = objc_opt_new();
  v10 = v9;
  if (v7)
  {
    [v9 addObject:v7];
  }

  if (v8)
  {
    [v10 addObjectsFromArray:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__FPMoveOperation_subclassPreflightWithCompletion___block_invoke;
  v11[3] = &unk_1E793CB78;
  v11[4] = self;
  v11[5] = a2;
  [(FPActionOperation *)self tryRecoveringFromPreflightErrors:v10 recoveryHandler:v11 completion:v5];
}

uint64_t __51__FPMoveOperation_subclassPreflightWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPMoveOperation.m" lineNumber:1270 description:{@"UNREACHABLE: invalid index for error: %@", v5}];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)_t_unblockReader
{
  v3 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPMoveOperation__t_unblockReader__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_resetOperationBeforeErrorRecovery
{
  v3 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(FPActionOperation *)self stitcher];
  [v4 finish];

  [(FPActionOperation *)self resetStitcher];

  [(FPOperation *)self resetRemoteOperation];
}

- (void)_scheduleAgainAfterErrorRecovery
{
  v4 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_isScheduledFromThisClient)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"FPMoveOperation.m" lineNumber:1301 description:@"retrying remote operations is not supported"];
  }

  [(FPMoveOperation *)self _presendNotifications];

  [(FPMoveOperation *)self actionMain];
}

- (id)fp_prettyDescription
{
  v3 = [(FPMoveOperation *)self byCopy];
  sourceURLs = self->__sourceURLs;
  v5 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    if (sourceURLs)
    {
      [(NSArray *)sourceURLs fp_map:&__block_literal_global_110];
    }

    else
    {
      [(NSArray *)self->__sourceItems fp_itemIdentifiers];
    }
    v6 = ;
    v7 = @"copy items (%@)";
  }

  else
  {
    if (sourceURLs)
    {
      [(NSArray *)sourceURLs fp_map:&__block_literal_global_118_0];
    }

    else
    {
      [(NSArray *)self->__sourceItems fp_itemIdentifiers];
    }
    v6 = ;
    v7 = @"move items (%@)";
  }

  v8 = [v6 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:v7, v8];

  return v9;
}

void __41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Error converting URL %@ to FPItem: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_resolveURLsWithCompletionHandler:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] No write permission to destination: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_resolveURLsWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] No read permission for source: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = [*(v5 + 472) fp_shortDescription];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: destination URL %@ resolved to item %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_recoverFromCollisionError:withPolicy:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __46__FPMoveOperation__completedWithResult_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 56) object:*(v1 + 48) file:@"FPMoveOperation.m" lineNumber:832 description:{@"unexpected recoverable error: %@", *v0}];
}

- (void)runUserInteractionsPreflight:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)runUserInteractionsPreflight:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG] %@: running user interaction preflight for %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG] %@: returning %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_preflightCheckProviderCanMoveWithErrors:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end