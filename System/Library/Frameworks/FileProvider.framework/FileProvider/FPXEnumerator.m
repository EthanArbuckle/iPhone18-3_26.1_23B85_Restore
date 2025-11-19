@interface FPXEnumerator
- (FPXEnumerator)initWithObservedItemID:(id)a3 domainContext:(id)a4 vendorEnumerator:(id)a5 nsFileProviderRequest:(id)a6 observer:(id)a7 isWorkingSetEnum:(BOOL)a8 queue:(id)a9;
- (NSString)description;
- (id)vendorEnumerator;
- (void)_invalidate;
- (void)alternateContentsWereUpdatedAtURL:(id)a3 forItem:(id)a4;
- (void)currentSyncAnchorWithCompletion:(id)a3;
- (void)dealloc;
- (void)enumerateChangesFromToken:(id)a3 suggestedBatchSize:(int64_t)a4 reply:(id)a5;
- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 reply:(id)a5;
- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 upTo:(int64_t)a5 reply:(id)a6;
- (void)forceAddFileURLsForItems:(id)a3;
- (void)forceItemUpdate:(id)a3;
- (void)invalidate;
- (void)invalidateVendorEnumeration;
@end

@implementation FPXEnumerator

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  domainContext = self->_domainContext;
  return [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, domainContext, self->_observedItemID];
}

- (id)vendorEnumerator
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_vendorEnumerator;
  objc_sync_exit(v2);

  return v3;
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(FPXDomainContext *)self->_domainContext log];
  v4 = fpfs_adopt_log(v3);

  v5 = [(FPXDomainContext *)self->_domainContext domain];
  v6 = [v5 personaIdentifier];
  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];
  v9 = [v8 userPersonaUniqueString];
  if ([v6 isEqualToString:v9])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v10 = v17 = v5;
    v11 = [v10 currentPersona];
    v16 = [v11 userPersonaUniqueString];
    v12 = [(FPXDomainContext *)self->_domainContext domain];
    v13 = [v12 personaIdentifier];

    if (v16 != v13)
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(FPXEnumerator *)self _invalidate];
      }

      exit(1);
    }
  }

  v14 = [(FPXDomainContext *)self->_domainContext extensionContext];
  [v14 enumeratorWasInvalidated:self];

  [(FPXEnumerator *)self invalidateVendorEnumeration];
}

- (void)invalidateVendorEnumeration
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_vendorEnumerator)
  {
    section = __fp_create_section();
    v8 = section;
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      vendorEnumerator = v2->_vendorEnumerator;
      *buf = 134218498;
      v10 = section;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = vendorEnumerator;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: invalidating vendor enumeration: %@", buf, 0x20u);
    }

    [(NSFileProviderEnumerator *)v2->_vendorEnumerator invalidate];
    v5 = v2->_vendorEnumerator;
    v2->_vendorEnumerator = 0;

    __fp_leave_section_Debug(&v8);
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: dealloc", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__FPXEnumerator_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (FPXEnumerator)initWithObservedItemID:(id)a3 domainContext:(id)a4 vendorEnumerator:(id)a5 nsFileProviderRequest:(id)a6 observer:(id)a7 isWorkingSetEnum:(BOOL)a8 queue:(id)a9
{
  v15 = a3;
  v16 = a4;
  obj = a5;
  v17 = a5;
  v60 = a6;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v65.receiver = self;
  v65.super_class = FPXEnumerator;
  v21 = [(FPXEnumerator *)&v65 init];
  v22 = v21;
  if (v21)
  {
    v55 = a3;
    v56 = v20;
    v57 = v18;
    v58 = v17;
    v54 = v15;
    objc_storeStrong(&v21->_domainContext, a4);
    v23 = [(FPXDomainContext *)v22->_domainContext log];
    v24 = fpfs_adopt_log(v23);

    v25 = [(FPXDomainContext *)v22->_domainContext domain];
    v26 = [v25 personaIdentifier];
    if (v26)
    {
      v27 = v26;
      [(FPXDomainContext *)v22->_domainContext domain];
      v28 = v52 = a7;
      [v28 personaIdentifier];
      v29 = v53 = v19;
      [MEMORY[0x1E69DF068] sharedManager];
      v31 = v30 = v16;
      v32 = [v31 currentPersona];
      v33 = [v32 userPersonaUniqueString];
      v34 = [v29 isEqualToString:v33];

      v16 = v30;
      v19 = v53;

      a7 = v52;
      if ((v34 & 1) == 0)
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = [MEMORY[0x1E69DF068] sharedManager];
        v37 = [v36 currentPersona];
        v38 = [v37 userPersonaUniqueString];
        v39 = [MEMORY[0x1E69DF068] sharedManager];
        v40 = [v39 currentPersona];
        v41 = [v40 uid];
        v42 = [(FPXDomainContext *)v22->_domainContext domain];
        v43 = [v42 personaIdentifier];
        v44 = [v35 stringWithFormat:@"unexpected persona %@ (%i) instead of expected %@", v38, v41, v43];

        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          [FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:];
        }

        __assert_rtn("-[FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXEnumerator.m", 361, [v44 UTF8String]);
      }
    }

    else
    {
    }

    objc_storeStrong(&v22->_vendorEnumerator, obj);
    objc_storeStrong(&v22->_nsFileProviderRequest, v60);
    v22->_isWorkingSetEnum = a8;
    objc_storeStrong(&v22->_queue, a9);
    v46 = [v16 log];
    log = v22->_log;
    v22->_log = v46;

    objc_initWeak(&location, v22);
    v18 = v57;
    v17 = v58;
    v20 = v56;
    if ([v19 conformsToProtocol:&unk_1F1FEBA40])
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __125__FPXEnumerator_initWithObservedItemID_domainContext_vendorEnumerator_nsFileProviderRequest_observer_isWorkingSetEnum_queue___block_invoke;
      v62[3] = &unk_1E793BC58;
      objc_copyWeak(&v63, &location);
      v48 = [v19 remoteObjectProxyWithErrorHandler:v62];
      observer = v22->_observer;
      v22->_observer = v48;

      objc_destroyWeak(&v63);
    }

    else
    {
      objc_storeStrong(&v22->_observer, a7);
    }

    objc_storeStrong(&v22->_observedItemID, v55);
    v50 = fp_current_or_default_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:];
    }

    objc_destroyWeak(&location);
    v15 = v54;
  }

  return v22;
}

void __125__FPXEnumerator_initWithObservedItemID_domainContext_vendorEnumerator_nsFileProviderRequest_observer_isWorkingSetEnum_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __125__FPXEnumerator_initWithObservedItemID_domainContext_vendorEnumerator_nsFileProviderRequest_observer_isWorkingSetEnum_queue___block_invoke_cold_1();
  }

  [WeakRetained invalidate];
}

- (void)forceItemUpdate:(id)a3
{
  v4 = [(FPXDomainContext *)self->_domainContext itemFromVendorItem:a3];
  [(FPXEnumeratorObserver *)self->_observer didUpdateItem:v4];
}

- (void)forceAddFileURLsForItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FPXDomainContext *)self->_domainContext v2Instance];
  v6 = v5;
  if (self->_isWorkingSetEnum && v5 != 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 fileURL];

          if (!v14)
          {
            v15 = [v13 itemIdentifier];
            v16 = [v6 URLForItemWithPersistentIdentifier:v15];
            [v13 setFileURL:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)currentSyncAnchorWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPXEnumerator_currentSyncAnchorWithCompletion___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(queue, v7);
}

void __49__FPXEnumerator_currentSyncAnchorWithCompletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = (a1 + 32);
  v1 = [*(*(a1 + 32) + 8) domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [*(*v32 + 1) domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __49__FPXEnumerator_currentSyncAnchorWithCompletion___block_invoke_cold_1(v32, v30);
      }

      exit(1);
    }
  }

  v11 = [*v32 vendorEnumerator];
  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __49__FPXEnumerator_currentSyncAnchorWithCompletion___block_invoke_175;
      v33[3] = &unk_1E793BC80;
      v12 = *(a1 + 40);
      v33[4] = *(a1 + 32);
      v34 = v12;
      [v11 currentSyncAnchorWithCompletionHandler:v33];
    }

    else
    {
      v35 = fpfs_adopt_log(*(*v32 + 7));
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v27 = FPPopLogSectionForBlock(*(a1 + 40));
        v28 = *v32;
        v20 = *MEMORY[0x1E696A250];
        v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
        *buf = 134219010;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        v40 = 2080;
        v41 = "[FPXEnumerator currentSyncAnchorWithCompletion:]_block_invoke";
        v42 = 2112;
        v43 = 0;
        v44 = 2112;
        v45 = v29;
        _os_log_debug_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      else
      {
        v20 = *MEMORY[0x1E696A250];
      }

      v21 = *(a1 + 40);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v20 code:3328 userInfo:0];
      (*(v21 + 16))(v21, 0, v22);

      __fp_pop_log(&v35);
    }
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v32;
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] request on invalidated enumerator: %@", buf, 0xCu);
    }

    v35 = fpfs_adopt_log(*(*v32 + 7));
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = FPPopLogSectionForBlock(*(a1 + 40));
      v25 = *v32;
      v16 = *MEMORY[0x1E696A250];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
      *buf = 134219010;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2080;
      v41 = "[FPXEnumerator currentSyncAnchorWithCompletion:]_block_invoke";
      v42 = 2112;
      v43 = 0;
      v44 = 2112;
      v45 = v26;
      _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    else
    {
      v16 = *MEMORY[0x1E696A250];
    }

    v17 = *(a1 + 40);
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v16 code:260 userInfo:0];
    (*(v17 + 16))(v17, 0, v18);

    __fp_pop_log(&v35);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __49__FPXEnumerator_currentSyncAnchorWithCompletion___block_invoke_175(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 56));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXEnumerator currentSyncAnchorWithCompletion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = 0;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke;
  v13[3] = &unk_1E7939968;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  fp_dispatch_async_with_logs(queue, v13);
}

void __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v38 = fpfs_adopt_log(*(*(a1 + 32) + 56));
  v29 = [*(*v2 + 8) domain];
  v3 = [v29 personaIdentifier];
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];
  v6 = [v5 userPersonaUniqueString];
  if ([v3 isEqualToString:v6])
  {
  }

  else
  {
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v9 = [v8 userPersonaUniqueString];
    v10 = [*(*(a1 + 32) + 8) domain];
    v11 = [v10 personaIdentifier];

    if (v9 != v11)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = [MEMORY[0x1E69DF068] sharedManager];
        v25 = [v24 currentPersona];
        v26 = [v25 userPersonaUniqueString];
        v27 = [*(*(a1 + 32) + 8) domain];
        v28 = [v27 personaIdentifier];
        *buf = 138413058;
        v40 = v23;
        v41 = 2112;
        v42 = v26;
        v43 = 2112;
        v44 = v28;
        v45 = 2080;
        v46 = "[FPXEnumerator enumerateItemsFromPage:suggestedPageSize:reply:]_block_invoke";
        _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", buf, 0x2Au);
      }

      exit(1);
    }
  }

  v12 = [MEMORY[0x1E696AEC0] fp_hashForToken:*(a1 + 40)];
  v13 = [*(a1 + 32) vendorEnumerator];
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412802;
    v40 = v15;
    v41 = 2112;
    v42 = v13;
    v43 = 2114;
    v44 = v12;
    _os_log_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_INFO, "[INFO] %@: enumerate items on %@ from page %{public}@", buf, 0x20u);
  }

  if (v13)
  {
    v16 = [[FPXItemsObserver alloc] initWithObservedItemID:*(*(a1 + 32) + 32) domainContext:*(*(a1 + 32) + 8) nsFileProviderRequest:*(*(a1 + 32) + 24)];
    [(FPXItemsObserver *)v16 setSuggestedPageSize:*(a1 + 56)];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke_178;
    v34[3] = &unk_1E793BCA8;
    v17 = *(a1 + 40);
    v34[4] = *(a1 + 32);
    v35 = v17;
    v37 = *(a1 + 48);
    v36 = v12;
    [(FPXItemsObserver *)v16 setFinishedBlock:v34];
    if (objc_opt_respondsToSelector())
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke_186;
      v30[3] = &unk_1E793BCD0;
      v30[4] = *(a1 + 32);
      v33 = *(a1 + 48);
      v31 = v16;
      v32 = *(a1 + 40);
      [v13 currentSyncAnchorWithCompletionHandler:v30];
    }

    else
    {
      [v13 enumerateItemsForObserver:v16 startingAtPage:*(a1 + 40)];
    }
  }

  else
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v40 = v19;
      _os_log_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] request on invalidated enumerator: %@", buf, 0xCu);
    }

    v20 = *(a1 + 48);
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
    (*(v20 + 16))(v20, MEMORY[0x1E695E0F0], 0, 0, 0, v16);
  }

  __fp_pop_log(&v38);
  v21 = *MEMORY[0x1E69E9840];
}

void __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke_178(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v45 = a3;
  v43 = a4;
  v44 = a5;
  v11 = a6;
  v51 = fpfs_adopt_log(*(*(a1 + 32) + 56));
  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) vendorEnumerator];
      v14 = *(a1 + 48);
      *buf = 138412802;
      v53 = v13;
      v54 = 2114;
      v55 = v14;
      v56 = 2112;
      *v57 = v11;
      _os_log_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_INFO, "[INFO] item enumeration on %@ from page %{public}@ returned error %@", buf, 0x20u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (![*(a1 + 40) isEqualToData:v45])
  {
    if (*(*(a1 + 32) + 41))
    {
LABEL_5:
      [*(a1 + 32) forceAddFileURLsForItems:v46];
      v15 = [*(*(a1 + 32) + 8) internalErrorFromVendorError:v11 callerDescription:@"enumerateItemsFromPage"];
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 32);
        v37 = [v46 count];
        *buf = 138413314;
        v53 = v36;
        v54 = 2080;
        v55 = "[FPXEnumerator enumerateItemsFromPage:suggestedPageSize:reply:]_block_invoke";
        v56 = 1024;
        *v57 = v37;
        *&v57[4] = 2112;
        *&v57[6] = v44;
        v58 = 2112;
        v59 = v15;
        _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@, reply of %s %d, %@, %@", buf, 0x30u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_8;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = v46;
    v28 = [v12 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (!v28)
    {
      goto LABEL_4;
    }

    v29 = *v48;
    v42 = 138543618;
LABEL_18:
    v30 = 0;
    while (1)
    {
      if (*v48 != v29)
      {
        objc_enumerationMutation(v12);
      }

      v31 = *(*(&v47 + 1) + 8 * v30);
      v32 = [v31 parentItemID];
      if (([v32 isEqualToItemID:*(*(a1 + 32) + 32)]& 1) != 0)
      {
        goto LABEL_25;
      }

      v33 = [v31 itemID];
      v34 = [v33 isEqualToItemID:*(*(a1 + 32) + 32)];

      if ((v34 & 1) == 0)
      {
        break;
      }

LABEL_26:
      if (v28 == ++v30)
      {
        v28 = [v12 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (!v28)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 32) vendorEnumerator];
      *buf = v42;
      v53 = v35;
      v54 = 2114;
      v55 = v31;
      _os_log_error_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_ERROR, "[ERROR] Enumerator %{public}@ returned the %{public}@ item whose parent is not the expected one. This may reveal a bug in the provider implementation.", buf, 0x16u);
    }

LABEL_25:

    goto LABEL_26;
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v38 = [*(a1 + 32) vendorEnumerator];
    v39 = *(a1 + 40);
    v40 = [MEMORY[0x1E696AEC0] fp_hashForToken:v39];
    *buf = 138543874;
    v53 = v38;
    v54 = 2114;
    v55 = v39;
    v56 = 2114;
    *v57 = v40;
    _os_log_error_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Enumerator %{public}@ was asked to enumerate from page %{public}@ (%{public}@), but returned the same page back. This is an implementation error in the enumerator.", buf, 0x20u);
  }

  fp_simulate_crash(@"Enumerator was asked to enumerate from a page, but returned the same page back. This is an implementation error in the enumerator.", v19, v20, v21, v22, v23, v24, v25, v41);
  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke_178_cold_1(v26);
  }

  v27 = *(a1 + 56);
  v15 = FPPluginOperationFailedError(0);
  (*(v27 + 16))(v27, MEMORY[0x1E695E0F0], 0, 0, v44, v15);
LABEL_8:

  __fp_pop_log(&v51);
  v17 = *MEMORY[0x1E69E9840];
}

void __64__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_reply___block_invoke_186(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) vendorEnumerator];

  if (v4)
  {
    [*(a1 + 40) verifyVendorToken:v3];
    [*(a1 + 40) setSyncAnchor:v3];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AEC0] fp_hashForToken:v3];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] current change token is %{public}@", &v12, 0xCu);
    }

    v7 = [*(a1 + 32) vendorEnumerator];
    [v7 enumerateItemsForObserver:*(a1 + 40) startingAtPage:*(a1 + 48)];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] request on invalidated enumerator: %@", &v12, 0xCu);
    }

    v10 = *(a1 + 56);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
    (*(v10 + 16))(v10, MEMORY[0x1E695E0F0], 0, 0, 0, v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 upTo:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_upTo_reply___block_invoke;
  v14[3] = &unk_1E793BD20;
  v16 = v11;
  v17 = a5;
  v14[4] = self;
  v15 = v10;
  v18 = a4;
  v12 = v10;
  v13 = v11;
  [(FPXEnumerator *)self enumerateItemsFromPage:v12 suggestedPageSize:a4 reply:v14];
}

void __69__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_upTo_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28 = fpfs_adopt_log(*(*(a1 + 32) + 56));
  if (v15)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = [v11 count];
    v17 = *(a1 + 56);
    if (v16 >= v17)
    {
      v18 = *(a1 + 56);
    }

    else
    {
      v18 = v16;
    }

    if (v17 <= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v11 subarrayWithRange:{0, v19}];
    v21 = [v20 count];
    if (!v12 || *(a1 + 40) == v12 || (v22 = v19 - v21, v22 < 1))
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 64);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __69__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_upTo_reply___block_invoke_2;
      v25[3] = &unk_1E793BCF8;
      v27 = *(a1 + 48);
      v26 = v20;
      [v23 enumerateItemsFromPage:v12 suggestedPageSize:v24 upTo:v22 reply:v25];
    }
  }

  __fp_pop_log(&v28);
}

void __69__FPXEnumerator_enumerateItemsFromPage_suggestedPageSize_upTo_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 arrayByAddingObjectsFromArray:a2];
  (*(v4 + 16))(v4, v7, v6);
}

- (void)enumerateChangesFromToken:(id)a3 suggestedBatchSize:(int64_t)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke;
  v14[3] = &unk_1E793BD70;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v18 = a2;
  v19 = a4;
  v12 = v10;
  v13 = v9;
  fp_dispatch_async_with_logs(queue, v14);
}

void __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_cold_1(a1);
  }

  v2 = a1 + 40;
  v3 = [*(*(a1 + 40) + 8) domain];
  v4 = [v3 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    [v9 userPersonaUniqueString];
    v10 = v28 = v3;
    v11 = [*(*v2 + 8) domain];
    [v11 personaIdentifier];
    v12 = v29 = a1 + 40;

    v13 = v10 == v12;
    v2 = a1 + 40;
    if (!v13)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_cold_2(v29, v26);
      }

      exit(1);
    }
  }

  v14 = [MEMORY[0x1E696AEC0] fp_hashForToken:*(a1 + 32)];
  v15 = [*(a1 + 40) vendorEnumerator];
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *v2;
    *buf = 138412802;
    v36 = v17;
    v37 = 2112;
    v38 = v15;
    v39 = 2114;
    v40 = v14;
    _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: enumerate changes on %@ from token %{public}@", buf, 0x20u);
  }

  if (v15)
  {
    v18 = [[FPXChangesObserver alloc] initWithObservedItemID:*(*(a1 + 40) + 32) domainContext:*(*(a1 + 40) + 8) previousChangeToken:*(a1 + 32) nsFileProviderRequest:*(*(a1 + 40) + 24)];
    [(FPXChangesObserver *)v18 setSuggestedBatchSize:*(a1 + 64)];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_192;
    v30[3] = &unk_1E793BD48;
    v30[4] = *(a1 + 40);
    v19 = v15;
    v31 = v19;
    v32 = v14;
    v33 = *(a1 + 32);
    v34 = *(a1 + 48);
    [(FPXChangesObserver *)v18 setFinishedBlock:v30];
    if (objc_opt_respondsToSelector())
    {
      [v19 enumerateChangesForObserver:v18 fromSyncAnchor:*(a1 + 32)];
    }

    else
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_cold_3(v23);
      }

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
      [(FPXChangesObserver *)v18 finishEnumeratingWithError:v24];
    }
  }

  else
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *v2;
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] request on invalidated enumerator: %@", buf, 0xCu);
    }

    v22 = *(a1 + 48);
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
    (*(v22 + 16))(v22, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0, 0, 0, v18);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_192(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28 = fpfs_adopt_log(*(*(a1 + 32) + 56));
  if (v17)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 138412802;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2112;
      *v34 = v17;
      _os_log_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_INFO, "[INFO] change enumeration on %@ from page %{public}@ returned error %@", buf, 0x20u);
    }
  }

  if (a4)
  {
    if ([v15 isEqual:*(a1 + 56)])
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AAAE1000, v21, OS_LOG_TYPE_INFO, "[INFO] enumeration has more change, but the token is unchanged, discarding hasMoreChanges", buf, 2u);
      }

      a4 = 0;
    }

    else
    {
      a4 = 1;
    }
  }

  [*(a1 + 32) forceAddFileURLsForItems:v13];
  v22 = [*(*(a1 + 32) + 8) internalErrorFromVendorError:v17 callerDescription:@"enumerateChangesFromToken"];
  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v27 = [v13 count];
    v26 = [v14 count];
    *buf = 138413826;
    v30 = v25;
    v31 = 2080;
    v32 = "[FPXEnumerator enumerateChangesFromToken:suggestedBatchSize:reply:]_block_invoke";
    v33 = 1024;
    *v34 = v27;
    *&v34[4] = 1024;
    *&v34[6] = v26;
    v35 = 1024;
    v36 = a4;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = v22;
    _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@, reply of %s %d, %d, %{BOOL}d,%@,  %@", buf, 0x3Cu);
  }

  (*(*(a1 + 64) + 16))();
  __fp_pop_log(&v28);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)alternateContentsWereUpdatedAtURL:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[FPXEnumeratorAlternateContentsItem alloc] initWithOriginalDocumentItem:v7 alternateContentsURL:v6];

  v9 = [(FPXDomainContext *)self->_domainContext itemFromVendorItem:v8];
  if (v9)
  {
    [(FPXEnumeratorObserver *)self->_observer didUpdateItem:v9];
  }

  else
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FPXEnumerator alternateContentsWereUpdatedAtURL:forItem:];
    }
  }
}

- (void)initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: created with enumerator: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __125__FPXEnumerator_initWithObservedItemID_domainContext_vendorEnumerator_nsFileProviderRequest_observer_isWorkingSetEnum_queue___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] observer was invalidated, invalidating %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __68__FPXEnumerator_enumerateChangesFromToken_suggestedBatchSize_reply___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"FPXEnumerator.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"enumeratedFromToken"}];
}

- (void)alternateContentsWereUpdatedAtURL:forItem:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] nil item for alternate contents URL: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end