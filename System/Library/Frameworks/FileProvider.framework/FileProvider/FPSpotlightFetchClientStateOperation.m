@interface FPSpotlightFetchClientStateOperation
- (FPSpotlightFetchClientStateOperation)initWithIndexer:(id)a3 index:(id)a4 indexName:(id)a5 spotlightDomainIdentifier:(id)a6 reason:(id)a7 supportURL:(id)a8;
- (id)_clientStateCurrentVersionIfNeedReset;
- (void)_fetchClientState;
- (void)_handleFetchedClientState:(id)a3 error:(id)a4;
- (void)_markClientStateResetDone;
- (void)main;
@end

@implementation FPSpotlightFetchClientStateOperation

- (void)main
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┳%llx client reset is needed from %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (id)_clientStateCurrentVersionIfNeedReset
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_supportURL)
  {
    v3 = [FPSpotlightIndexer indexerPropertyOfClass:objc_opt_class() forKey:@"com.apple.fileproviderd.spotlight-indexer-current-version" supportURL:self->_supportURL];
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"com.apple.fileproviderd.spotlight-indexer-current-version", self->_indexName);
  }

  v4 = v3;
  v5 = fp_current_or_default_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      indexName = self->_indexName;
      v8 = [objc_opt_class() _currentIndexerVersion];
      v16 = 138413058;
      v17 = @"com.apple.fileproviderd.spotlight-indexer-current-version";
      v18 = 2112;
      v19 = indexName;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Fetched indexer version (%@ %@) %@ (current: %@)", &v16, 0x2Au);
    }

    v9 = [objc_opt_class() _currentIndexerVersion];
    v10 = [v4 isEqualToString:v9];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
    }
  }

  else
  {
    if (v6)
    {
      v12 = self->_indexName;
      v13 = [objc_opt_class() _currentIndexerVersion];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Failed to fetch indexer version for index %@ (current: %@)", &v16, 0x16u);
    }

    v11 = &unk_1F1FC9A88;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_fetchClientState
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] ┣%llx %@: fetching client state");
  v2 = *MEMORY[0x1E69E9840];
}

void __57__FPSpotlightFetchClientStateOperation__fetchClientState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v39 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v6 = [WeakRetained log];
  v7 = fpfs_adopt_log(v6);

  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v40 = [v8 currentPersona];

  v44 = 0;
  v9 = [v40 userPersonaUniqueString];
  v10 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v11 = [v10 domain];
  v12 = [v11 personaIdentifier];
  v13 = v12;
  if (v9 == v12)
  {

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v14 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v15 = [v14 domain];
  v16 = [v15 personaIdentifier];
  v17 = [v9 isEqualToString:v16];

  if ((v17 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v43 = 0;
  v18 = [v40 copyCurrentPersonaContextWithError:&v43];
  v19 = v43;
  v20 = v44;
  v44 = v18;

  if (v19)
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v22 = objc_loadWeakRetained((*(a1 + 32) + 304));
  v23 = [v22 domain];
  v24 = [v23 personaIdentifier];
  v25 = [v40 generateAndRestorePersonaContextWithPersonaUniqueString:v24];

  if (v25)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v37 = [v36 domain];
      v38 = [v37 personaIdentifier];
      *buf = 138412546;
      v46 = v38;
      v47 = 2112;
      v48 = v25;
      _os_log_error_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v27 = *(a1 + 48);
  v42 = v27;
  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    v35 = [v39 fp_prettyDescription];
    *buf = 134218754;
    v46 = v27;
    v47 = 2112;
    v48 = v34;
    v49 = 2112;
    v50 = *&v41;
    v51 = 2112;
    v52 = v35;
    _os_log_debug_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@: received spotlight client state %@, error: %@", buf, 0x2Au);
  }

  v29 = fp_current_or_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(*(a1 + 32) + 336);
    [*(a1 + 40) timeIntervalSinceNow];
    v31 = *(*(a1 + 32) + 312);
    *buf = 138413058;
    v46 = v41;
    v47 = 2112;
    v48 = v30;
    v49 = 2048;
    v50 = -v32;
    v51 = 2112;
    v52 = v31;
    _os_log_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] fetched last stored state is:%@ (fetched because %@) in %.3fs (in %@)", buf, 0x2Au);
  }

  [*(a1 + 32) _handleFetchedClientState:v41 error:v39];
  __fp_leave_section_Debug(&v42);

  _FPRestorePersona(&v44);
  v33 = *MEMORY[0x1E69E9840];
}

- (FPSpotlightFetchClientStateOperation)initWithIndexer:(id)a3 index:(id)a4 indexName:(id)a5 spotlightDomainIdentifier:(id)a6 reason:(id)a7 supportURL:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = FPSpotlightFetchClientStateOperation;
  v18 = [(FPOperation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_indexer, v14);
    objc_storeStrong(&v19->_index, a4);
    objc_storeStrong(&v19->_indexName, a5);
    objc_storeStrong(&v19->_spotlightDomainIdentifier, a6);
    objc_storeStrong(&v19->_supportURL, a8);
    objc_storeStrong(&v19->_reason, a7);
  }

  return v19;
}

- (void)_markClientStateResetDone
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] failed to synchronize user defaults for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleFetchedClientState:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v19 = self;
    v20 = v7;
    v21 = 0;
LABEL_10:
    [(FPOperation *)v19 completedWithResult:v20 error:v21];
    goto LABEL_14;
  }

  v10 = [v8 domain];
  v11 = getCSIndexErrorDomain();
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [v9 domain];
    v14 = getCSIndexErrorDomain();
    v15 = [v13 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      [FPSpotlightFetchClientStateOperation _handleFetchedClientState:a2 error:self];
    }
  }

  v16 = [v9 code];
  v17 = fp_current_or_default_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v16 == -1003)
  {
    if (v18)
    {
      [FPSpotlightFetchClientStateOperation _handleFetchedClientState:v9 error:?];
    }

    v19 = self;
    v20 = 0;
    v21 = v9;
    goto LABEL_10;
  }

  if (v18)
  {
    [FPSpotlightFetchClientStateOperation _handleFetchedClientState:v9 error:?];
  }

  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  index = self->_index;
  WeakRetained = objc_loadWeakRetained(&self->_indexer);
  v25 = [WeakRetained dropIndexDelegate];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke;
  v26[3] = &unk_1E793D0B0;
  v27 = v9;
  v28 = self;
  [FPSpotlightDropIndexOperation deleteSearchableItemsAndClearClientStateWithDomainIdentifier:spotlightDomainIdentifier index:index dropReason:7 delegate:v25 completionHandler:v26];

LABEL_14:
}

void __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke_cold_1((a1 + 32));
    }
  }

  [*(a1 + 40) completedWithResult:0 error:v3];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v37 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v36 = [v6 currentPersona];

  v43 = 0;
  v7 = [v36 userPersonaUniqueString];
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

  v42 = 0;
  v16 = [v36 copyCurrentPersonaContextWithError:&v42];
  v17 = v42;
  v18 = v43;
  v43 = v16;

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
  v23 = [v36 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v34 = [v33 domain];
      v35 = [v34 personaIdentifier];
      *buf = 138412546;
      v45 = v35;
      v46 = 2112;
      v47 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v41 = *(a1 + 40);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_2();
  }

  if (v37)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v37 fp_prettyDescription];
      __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_3(v27, buf, v26);
    }

    [*(a1 + 32) completedWithResult:0 error:v37];
  }

  else
  {
    [*(*(a1 + 32) + 312) beginIndexBatch];
    v28 = *(*(a1 + 32) + 312);
    v29 = [MEMORY[0x1E695DEF0] data];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17;
    v38[3] = &unk_1E793D088;
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v39 = 0;
    v40 = v31;
    v38[4] = v30;
    [v28 endIndexBatchWithClientState:v29 completionHandler:v38];
  }

  __fp_leave_section_Debug(&v41);

  _FPRestorePersona(&v43);
  v32 = *MEMORY[0x1E69E9840];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 304));
  v4 = [WeakRetained log];
  v5 = fpfs_adopt_log(v4);

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v33 = [v6 currentPersona];

  v36 = 0;
  v7 = [v33 userPersonaUniqueString];
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

  v35 = 0;
  v16 = [v33 copyCurrentPersonaContextWithError:&v35];
  v17 = v35;
  v18 = v36;
  v36 = v16;

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
  v23 = [v33 generateAndRestorePersonaContextWithPersonaUniqueString:v22];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_loadWeakRetained((*(a1 + 32) + 304));
      v30 = [v29 domain];
      v31 = [v30 personaIdentifier];
      *buf = 138412546;
      v38 = v31;
      v39 = 2112;
      v40 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  v34 = *(a1 + 48);
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_2();
  }

  if (v32)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) fp_prettyDescription];
      __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_3(v27, buf, v26);
    }

    [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 32) _markClientStateResetDone];
    [*(a1 + 32) _fetchClientState];
  }

  __fp_leave_section_Debug(&v34);

  _FPRestorePersona(&v36);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_handleFetchedClientState:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSpotlightFetchClientStateOperation.m" lineNumber:127 description:@"unexpected error"];
}

- (void)_handleFetchedClientState:(void *)a1 error:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] failed fetching client state, Starting index from scratch: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleFetchedClientState:(void *)a1 error:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] failed fetching client state with xpc error (%@), retrying later.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__FPSpotlightFetchClientStateOperation__handleFetchedClientState_error___block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] can't drop spotlight index: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx done resetting index", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_cold_3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] failed to delete all fileproviderd searchable items: %@", buf, 0xCu);
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx done resetting client state", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __44__FPSpotlightFetchClientStateOperation_main__block_invoke_17_cold_3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] failed to reset client state: %@", buf, 0xCu);
}

@end