@interface FPSpotlightIndexOneBatchOperation
- (FPSpotlightIndexOneBatchOperation)initWithIndexer:(id)indexer isInitialIndexing:(BOOL)indexing isOutOfBandIndexing:(BOOL)bandIndexing queue:(id)queue;
- (void)_markItemsForUpdate:(id)update index:(id)index completionHandler:(id)handler;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation FPSpotlightIndexOneBatchOperation

- (void)main
{
  v45 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v40 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = objc_loadWeakRetained(&self->_indexer);
  domain = [v9 domain];
  personaIdentifier = [domain personaIdentifier];
  v12 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v13 = objc_loadWeakRetained(&self->_indexer);
  domain2 = [v13 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v16 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v16 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v39 = 0;
  v17 = [currentPersona copyCurrentPersonaContextWithError:&v39];
  v18 = v39;
  v19 = v40;
  v40 = v17;

  if (v18)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v21 = objc_loadWeakRetained(&self->_indexer);
  domain3 = [v21 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v24 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v24)
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_loadWeakRetained(&self->_indexer);
      domain4 = [v35 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v42 = personaIdentifier4;
      v43 = 2112;
      v44 = v24;
      _os_log_error_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  section = __fp_create_section();
  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v31 = objc_loadWeakRetained(&self->_indexer);
    lastIndexState = [v31 lastIndexState];
    v33 = lastIndexState;
    v34 = @"start";
    if (lastIndexState)
    {
      v34 = lastIndexState;
    }

    *buf = 134218242;
    v42 = section;
    v43 = 2112;
    v44 = v34;
    _os_log_debug_impl(&dword_1AAAE1000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx starting spotlight batch fetch from %@", buf, 0x16u);
  }

  self->_logSection = section;
  v28 = objc_loadWeakRetained(&self->_indexer);
  workloop = [v28 workloop];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPSpotlightIndexOneBatchOperation_main__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(workloop, block);

  _FPRestorePersona(&v40);
  v30 = *MEMORY[0x1E69E9840];
}

void __41__FPSpotlightIndexOneBatchOperation_main__block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v3 = [WeakRetained log];
  v4 = fpfs_adopt_log(v3);

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v82 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v13 = [v12 domain];
  v14 = [v13 personaIdentifier];
  v15 = [v7 isEqualToString:v14];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v81 = 0;
  v16 = [v6 copyCurrentPersonaContextWithError:&v81];
  v17 = v81;
  v18 = v82;
  v82 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v21 = [v20 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v6 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v67 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v68 = [v67 domain];
      v69 = [v68 personaIdentifier];
      *buf = 138412546;
      v84 = v69;
      v85 = 2112;
      v86 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v80 = *(*(a1 + 32) + 320);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v45 = objc_loadWeakRetained((*(a1 + 32) + 304));
    v46 = [*(*(a1 + 32) + 336) count];
    v47 = [*(*(a1 + 32) + 344) count];
    v48 = *(a1 + 32);
    v49 = *(v48 + 360);
    v50 = [*(v48 + 368) fp_prettyDescription];
    *buf = 134219266;
    v84 = v80;
    v85 = 2112;
    v86 = v45;
    v87 = 2048;
    v88 = v46;
    v89 = 2048;
    v90 = v47;
    v91 = 2112;
    v92 = v49;
    v93 = 2112;
    v94 = v50;
    _os_log_debug_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@: received new batch (updated:%lu, deleted:%lu, changeToken:%@, error:%@)", buf, 0x3Eu);
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v26 = *(a1 + 32);
    if (*(v26 + 368))
    {
      [v26 completedWithResult:0 error:?];
      goto LABEL_40;
    }

    v27 = *(v26 + 360);
    v28 = *(a1 + 32);
    if (*(v28 + 313) == 1)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_cold_3();
      }

      v30 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v31 = [v30 lastIndexState];

      v27 = v31;
    }

    else
    {
      v32 = objc_loadWeakRetained((v28 + 304));
      v33 = [v32 lastIndexState];
      v34 = [v27 isEqualToData:v33];

      if (v34)
      {
        v35 = fp_current_or_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_cold_2();
        }

        [*(a1 + 32) completedWithResult:0 error:0];
        goto LABEL_39;
      }
    }

    v36 = *(a1 + 32);
    v37 = *(v36 + 384);
    if (v37 && (v38 = objc_loadWeakRetained((v36 + 304)), [v38 lastIndexState], v39 = objc_claimAutoreleasedReturnValue(), v40 = (*(v37 + 16))(v37, v39), v39, v38, v36 = *(a1 + 32), (v40 & 1) == 0))
    {
      v64 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1002 userInfo:0];
      [v36 completedWithResult:0 error:v64];
    }

    else
    {
      if (*(v36 + 312) == 1)
      {
        v41 = fp_current_or_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_cold_4();
        }

        v36 = *(a1 + 32);
      }

      v42 = objc_loadWeakRetained((v36 + 304));
      v43 = [v42 domain];
      if ([v43 isHidden])
      {
        v44 = 1;
      }

      else
      {
        v51 = objc_loadWeakRetained((*(a1 + 32) + 304));
        v52 = [v51 domain];
        v44 = [v52 isHiddenByUser];
      }

      v53 = [*(*(a1 + 32) + 344) fp_map:&__block_literal_global_87];
      v54 = [v53 mutableCopy];

      v55 = *(*(a1 + 32) + 336);
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2;
      v76[3] = &unk_1E793D2B0;
      v79 = v44;
      v56 = v54;
      v57 = *(a1 + 32);
      v77 = v56;
      v78 = v57;
      v58 = [v55 fp_map:v76];
      v59 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v60 = [v59 index];

      v61 = *(a1 + 32);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_3;
      v70[3] = &unk_1E793D328;
      v62 = v60;
      v71 = v62;
      v63 = v58;
      v72 = v63;
      v64 = v56;
      v65 = *(a1 + 32);
      v73 = v64;
      v74 = v65;
      v75 = v27;
      [v61 _markItemsForUpdate:v63 index:v62 completionHandler:v70];
    }

LABEL_39:
  }

LABEL_40:
  __fp_leave_section_Debug(&v80);

  _FPRestorePersona(&v82);
  v66 = *MEMORY[0x1E69E9840];
}

- (FPSpotlightIndexOneBatchOperation)initWithIndexer:(id)indexer isInitialIndexing:(BOOL)indexing isOutOfBandIndexing:(BOOL)bandIndexing queue:(id)queue
{
  v48 = *MEMORY[0x1E69E9840];
  indexerCopy = indexer;
  queueCopy = queue;
  v8 = [indexerCopy log];
  v9 = fpfs_adopt_log(v8);

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v43 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  domainContext = [indexerCopy domainContext];
  domain = [domainContext domain];
  personaIdentifier = [domain personaIdentifier];
  v16 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  domainContext2 = [indexerCopy domainContext];
  domain2 = [domainContext2 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v20 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v20 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v42 = 0;
  v21 = [currentPersona copyCurrentPersonaContextWithError:&v42];
  v22 = v42;
  v23 = v43;
  v43 = v21;

  if (v22)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  domainContext3 = [indexerCopy domainContext];
  domain3 = [domainContext3 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v28 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v28)
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      domainContext4 = [indexerCopy domainContext];
      domain4 = [domainContext4 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v45 = personaIdentifier4;
      v46 = 2112;
      v47 = v28;
      _os_log_error_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v41.receiver = self;
  v41.super_class = FPSpotlightIndexOneBatchOperation;
  v30 = [(FPOperation *)&v41 init];
  v31 = v30;
  if (v30)
  {
    objc_storeWeak(&v30->_indexer, indexerCopy);
    v31->_isInitialIndexing = indexing;
    v31->_isOutOfBandIndexing = bandIndexing;
    [(FPOperation *)v31 setCallbackQueue:queueCopy];
    if (!bandIndexing)
    {
      if ([indexerCopy isIndexing])
      {
        __assert_rtn("[FPSpotlightIndexOneBatchOperation initWithIndexer:isInitialIndexing:isOutOfBandIndexing:queue:]", "FPSpotlightIndexOneBatchOperation.m", 229, "!indexer.isIndexing");
      }

      [indexerCopy setIndexing:1];
    }
  }

  _FPRestorePersona(&v43);
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)_markItemsForUpdate:(id)update index:(id)index completionHandler:(id)handler
{
  updateCopy = update;
  indexCopy = index;
  handlerCopy = handler;
  if (![updateCopy count])
  {
    _os_feature_enabled_impl();
    bundleID = 0;
LABEL_6:
    handlerCopy[2](handlerCopy);
    goto LABEL_7;
  }

  v10 = [updateCopy objectAtIndexedSubscript:0];
  bundleID = [v10 bundleID];

  if (!_os_feature_enabled_impl() || !bundleID)
  {
    goto LABEL_6;
  }

  v12 = [updateCopy fp_map:&__block_literal_global_39];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__FPSpotlightIndexOneBatchOperation__markItemsForUpdate_index_completionHandler___block_invoke_2;
  v13[3] = &unk_1E793D268;
  v14 = updateCopy;
  v15 = handlerCopy;
  [indexCopy slowFetchAttributes:&unk_1F1FC9C08 protectionClass:0 bundleID:bundleID identifiers:v12 completionHandler:v13];

LABEL_7:
}

void __81__FPSpotlightIndexOneBatchOperation__markItemsForUpdate_index_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if ([v10 count])
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v23 = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    v16 = MEMORY[0x1E695E118];
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = [v18 uniqueIdentifier];
        v20 = [v4 containsObject:v19];

        if (v20)
        {
          v21 = [v18 attributeSet];
          [v21 setAttribute:v16 forKey:@"FPRepeatDonation"];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  (*(*(a1 + 40) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

id __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 toSearchableItem];
  if ((*(a1 + 48) & 1) != 0 || ([v3 fileSystemFlags] & 8) != 0 || (objc_msgSend(v3, "capabilities") & 0x2000000) != 0)
  {
    v5 = *(a1 + 32);
    v6 = [v4 uniqueIdentifier];
    [v5 addObject:v6];

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  v10 = [v4 uniqueIdentifier];
  v11 = [v9 indexOfObject:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (*(*(a1 + 40) + 312) == 1)
  {
    v12 = [v3 lastUsedDate];

    if (!v12)
    {
      v13 = [v3 contentModificationDate];
      v14 = [v4 attributeSet];
      [v14 setLastUsedDate:v13];
    }
  }

  v7 = v4;
LABEL_6:

  return v7;
}

void __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_3(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  [a1[4] beginIndexBatch];
  [a1[4] indexSearchableItems:a1[5] completionHandler:0];
  [a1[4] deleteSearchableItemsWithIdentifiers:a1[6] reason:objc_msgSend(a1[7] completionHandler:{"indexReason"), 0}];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[5] count];
    v5 = [a1[6] count];
    v6 = a1[8];
    v7 = a1[4];
    *buf = 134218754;
    v28 = v4;
    v29 = 2048;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] adding %ld and deleting %ld items state:%@ (in %@)", buf, 0x2Au);
  }

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = a1[4];
  v10 = [a1[7] passExpectedState];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(a1[7] + 38);
    v11 = [WeakRetained lastIndexState];
  }

  else
  {
    v11 = 0;
  }

  v12 = a1[8];
  v13 = [a1[7] indexReason];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_90;
  v22[3] = &unk_1E793D300;
  v21 = a1[7];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[8];
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v21;
  *(&v18 + 1) = v14;
  v23 = v18;
  v24 = v17;
  v25 = v8;
  v26 = a1[4];
  v19 = v8;
  [v9 endIndexBatchWithExpectedClientState:v11 newClientState:v12 reason:v13 completionHandler:v22];
  if (v10)
  {
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2_91;
  block[3] = &unk_1E793D2D8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v17 = *(a1 + 72);
  v12 = v3;
  dispatch_async(v4, block);
}

void __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2_91(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v3 = [WeakRetained log];
  v4 = fpfs_adopt_log(v3);

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v50 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v9 = [v8 domain];
  v10 = [v9 personaIdentifier];
  v11 = v10;
  if (v7 == v10)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v13 = [v12 domain];
  v14 = [v13 personaIdentifier];
  v15 = [v7 isEqualToString:v14];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v49 = 0;
  v16 = [v6 copyCurrentPersonaContextWithError:&v49];
  v17 = v49;
  v18 = v50;
  v50 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v21 = [v20 domain];
  v22 = [v21 personaIdentifier];
  v23 = [v6 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v44 = [v43 domain];
      v45 = [v44 personaIdentifier];
      *buf = 138412546;
      *&buf[4] = v45;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v48 = *(*(a1 + 32) + 320);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v40 = objc_loadWeakRetained((*(a1 + 32) + 304));
    v41 = *(*(a1 + 32) + 360);
    v42 = [*(a1 + 40) fp_prettyDescription];
    *buf = 134218754;
    *&buf[4] = v48;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2112;
    v56 = v41;
    *v57 = 2112;
    *&v57[2] = v42;
    _os_log_debug_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@: indexed batch for client state %@ with error: %@", buf, 0x2Au);
  }

  if (*(a1 + 40))
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) fp_prettyDescription];
      __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2_91_cold_2(v27, v60, v26);
    }

    goto LABEL_24;
  }

  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 48) count];
    v30 = [*(a1 + 56) count];
    v31 = *(a1 + 64);
    [*(a1 + 72) timeIntervalSinceNow];
    v32 = *(a1 + 80);
    *buf = 134219010;
    *&buf[4] = v29;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    *&buf[22] = 2112;
    v56 = v31;
    *v57 = 2048;
    *&v57[2] = -v33;
    v58 = 2112;
    v59 = v32;
    _os_log_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] added %ld and deleted %ld items state:%@ in %.3fs (in %@)", buf, 0x34u);
  }

  if ([*(a1 + 48) count] || objc_msgSend(*(a1 + 56), "count"))
  {
    v26 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v26 postNotificationName:@"FPRecentsCollectionDidChangeNotification" object:0];
LABEL_24:
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v34 = [*(a1 + 40) domain];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v35 = getCSIndexErrorDomainSymbolLoc_ptr_0;
    v54 = getCSIndexErrorDomainSymbolLoc_ptr_0;
    if (!getCSIndexErrorDomainSymbolLoc_ptr_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSIndexErrorDomainSymbolLoc_block_invoke_0;
      v56 = &unk_1E793A2E8;
      *v57 = &v51;
      __getCSIndexErrorDomainSymbolLoc_block_invoke_0(buf);
      v35 = v52[3];
    }

    _Block_object_dispose(&v51, 8);
    if (!v35)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCSIndexErrorDomain(void)"];
      [v46 handleFailureInFunction:v47 file:@"FPSpotlightIndexOneBatchOperation.m" lineNumber:30 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v36 = *v35;
    if ([v34 isEqualToString:v36])
    {
      v37 = [*(a1 + 40) code] == -1006;

      if (v37)
      {
        v38 = objc_loadWeakRetained((*(a1 + 32) + 304));
        [v38 clearIndexState];
LABEL_34:

        objc_storeStrong((*(a1 + 32) + 352), *(a1 + 48));
        [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v38 = objc_loadWeakRetained((*(a1 + 32) + 304));
    [v38 learnNewIndexState:*(a1 + 64)];
    goto LABEL_34;
  }

LABEL_35:
  __fp_leave_section_Debug(&v48);

  _FPRestorePersona(&v50);
  v39 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  v9 = WeakRetained;
  if (!self->_isOutOfBandIndexing && WeakRetained)
  {
    [WeakRetained setIndexing:0];
  }

  v10.receiver = self;
  v10.super_class = FPSpotlightIndexOneBatchOperation;
  [(FPOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

void __41__FPSpotlightIndexOneBatchOperation_main__block_invoke_2_91_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] [spotlight] can't index: %@", buf, 0xCu);
}

@end