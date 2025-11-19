@interface FPSearchQueryDataSource
- (BOOL)hasMoreIncoming;
- (FPSearchQueryDataSource)initWithQueryDescriptor:(id)a3 predicate:(id)a4;
- (FPSpotlightDataSourceDelegate)delegate;
- (unint64_t)lastForcedUpdate;
- (void)dataSource:(id)a3 didChangeItemsOrigin:(unint64_t)a4;
- (void)dataSource:(id)a3 receivedUpdatedItems:(id)a4 deletedItems:(id)a5 hasMoreChanges:(BOOL)a6;
- (void)dataSource:(id)a3 replaceContentsWithItems:(id)a4 hasMoreChanges:(BOOL)a5;
- (void)dataSource:(id)a3 wasInvalidatedWithError:(id)a4;
- (void)enumerationMightHaveResumed;
- (void)invalidate;
- (void)setDelegate:(id)a3;
- (void)start;
@end

@implementation FPSearchQueryDataSource

- (FPSearchQueryDataSource)initWithQueryDescriptor:(id)a3 predicate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v37.receiver = self;
  v37.super_class = FPSearchQueryDataSource;
  v10 = [(FPSearchQueryDataSource *)&v37 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queryDescriptor, a3);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.FileProvider.ExtensionDataSource.queue (%p)", v11];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = FPDataSourceBaseQueue();
    v16 = dispatch_queue_create_with_target_V2(v13, v14, v15);
    queue = v11->_queue;
    v11->_queue = v16;

    v18 = [v8 settings];
    v19 = [v18 searchQuery];

    v20 = [v19 providerDomainID];
    v21 = [v20 fp_toProviderID];
    v22 = [v21 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"];

    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPSearchQueryDataSource initWithQueryDescriptor:v22 predicate:v23];
    }

    if (v22 & 1) != 0 || ([v8 avoidCoreSpotlightSearch])
    {
      if ([v19 shouldPerformServerSearch] & 1) != 0 || (objc_msgSend(v19, "shouldPerformServerSearch"))
      {
        if (!v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        [FPSearchQueryDataSource initWithQueryDescriptor:a2 predicate:v11];
        if (!v20)
        {
LABEL_9:
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          [v24 handleFailureInMethod:a2 object:v11 file:@"FPSearchQueryDataSource.m" lineNumber:59 description:{@"When search on USB, the provider domain ID should be set to the USB provider domain ID."}];

          if ([v19 shouldPerformServerSearch])
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v25 = [v8 searchQueryString];

      if (!v25)
      {
        v26 = [v8 searchQueryString];

        if (!v26)
        {
          [FPSearchQueryDataSource initWithQueryDescriptor:a2 predicate:v11];
        }
      }

      v27 = [[FPSpotlightDataSource alloc] initWithQueryDescriptor:v8 predicate:v9];
      spotlightDataSource = v11->_spotlightDataSource;
      v11->_spotlightDataSource = v27;
    }

    if ([v19 shouldPerformServerSearch])
    {
      if (v20)
      {
        v29 = v11->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke;
        block[3] = &unk_1E7939090;
        v34 = v20;
        v35 = v8;
        v36 = v11;
        v30 = v20;
        dispatch_async(v29, block);

        v31 = v34;
LABEL_22:

        goto LABEL_23;
      }

LABEL_20:
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [FPSearchQueryDataSource initWithQueryDescriptor:v31 predicate:?];
      }

      goto LABEL_22;
    }

LABEL_18:
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [FPSearchQueryDataSource initWithQueryDescriptor:v31 predicate:?];
    }

    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v11 = section;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [a1[4] fp_obfuscatedProviderDomainID];
    __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_cold_1(v4, buf, section, v3);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25;
  v7[3] = &unk_1E793DC70;
  v5 = a1[4];
  v8 = a1[5];
  v9 = a1[4];
  v10 = a1[6];
  [FPProviderDomain fetchProviderDomainWithID:v5 completionHandler:v7];

  __fp_leave_section_Debug(&v11);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 supportedSearchFilters];
  if (v3)
  {

LABEL_4:
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25_cold_2(a1);
    }

    v5 = objc_alloc_init(FPExtensionEnumerationSettings);
    v6 = [*(a1 + 32) settings];
    v7 = [v6 sortDescriptors];
    [(FPEnumerationSettings *)v5 setSortDescriptors:v7];

    v8 = [*(a1 + 32) settings];
    v9 = [v8 searchQuery];
    [(FPEnumerationSettings *)v5 setSearchQuery:v9];

    if ([*(a1 + 32) isThirdPartySearchOnServer])
    {
      [(FPExtensionEnumerationSettings *)v5 setWantsDirectExtensionEnumeration:0];
    }

    v10 = [*(a1 + 32) settings];
    v11 = [v10 searchQuery];

    v12 = [FPItemID alloc];
    v13 = *(a1 + 40);
    v14 = [v11 searchContainerItemIdentifier];
    v15 = [(FPItemID *)v12 initWithProviderDomainID:v13 itemIdentifier:v14];

    [(FPExtensionEnumerationSettings *)v5 setEnumeratedItemID:v15];
    v16 = *(a1 + 48);
    v17 = v16[1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_28;
    v19[3] = &unk_1E79390B8;
    v20 = v16;
    v21 = v5;
    v18 = v5;
    dispatch_async(v17, v19);

    goto LABEL_9;
  }

  if ([*(a1 + 32) isThirdPartySearchOnServer])
  {
    goto LABEL_4;
  }

  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25_cold_1(a1);
  }

LABEL_9:
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_28(uint64_t a1)
{
  v2 = [[FPExtensionDataSource alloc] initWithEnumerationSettings:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 32) delegate];

  if (v5)
  {
    [*(*(a1 + 32) + 32) setDelegate:?];
  }

  v6 = *(a1 + 32);
  if (*(v6 + 16) == 1 && (*(v6 + 17) & 1) == 0)
  {
    v7 = *(v6 + 32);

    [v7 start];
  }
}

- (void)start
{
  [(FPSpotlightDataSource *)self->_spotlightDataSource start];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FPSearchQueryDataSource_start__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  [(FPSpotlightDataSource *)self->_spotlightDataSource invalidate];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPSearchQueryDataSource_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enumerationMightHaveResumed
{
  [(FPSpotlightDataSource *)self->_spotlightDataSource enumerationMightHaveResumed];
  serverSearchDataSource = self->_serverSearchDataSource;

  [(FPExtensionDataSource *)serverSearchDataSource enumerationMightHaveResumed];
}

- (BOOL)hasMoreIncoming
{
  if ([(FPSpotlightDataSource *)self->_spotlightDataSource hasMoreIncoming])
  {
    return 1;
  }

  serverSearchDataSource = self->_serverSearchDataSource;

  return [(FPExtensionDataSource *)serverSearchDataSource hasMoreIncoming];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained isEqual:v4];

  if ((v6 & 1) == 0)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__FPSearchQueryDataSource_setDelegate___block_invoke;
    v8[3] = &unk_1E79390B8;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(queue, v8);
  }
}

uint64_t __39__FPSearchQueryDataSource_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);
  if (*(a1 + 40))
  {
    [v2 setDelegate:?];
    v3 = *(a1 + 32);
    v4 = v3;
  }

  else
  {
    [v2 setDelegate:0];
    v4 = 0;
    v3 = *(a1 + 32);
  }

  v5 = *(v3 + 32);

  return [v5 setDelegate:v4];
}

- (unint64_t)lastForcedUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained lastForcedUpdate];

  return v3;
}

- (void)dataSource:(id)a3 replaceContentsWithItems:(id)a4 hasMoreChanges:(BOOL)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:self replaceContentsWithItems:v6 hasMoreChanges:0];
}

- (void)dataSource:(id)a3 receivedUpdatedItems:(id)a4 deletedItems:(id)a5 hasMoreChanges:(BOOL)a6
{
  v8 = a5;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:self receivedUpdatedItems:v9 deletedItems:v8 hasMoreChanges:0];
}

- (void)dataSource:(id)a3 wasInvalidatedWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:self wasInvalidatedWithError:v5];
}

- (void)dataSource:(id)a3 didChangeItemsOrigin:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:v6 didChangeItemsOrigin:a4];
}

- (FPSpotlightDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithQueryDescriptor:(char)a1 predicate:(NSObject *)a2 .cold.1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Creating search query data source (is search on USB: %@)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithQueryDescriptor:(uint64_t)a1 predicate:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSearchQueryDataSource.m" lineNumber:52 description:@"search query should always be expressible by spotlight query"];
}

- (void)initWithQueryDescriptor:(uint64_t)a1 predicate:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSearchQueryDataSource.m" lineNumber:58 description:{@"When search on USB, server-side search should be requested."}];
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_cold_1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx checking if '%@' supports server search", buf, 0x16u);
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] '%@' does not support server search", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __61__FPSearchQueryDataSource_initWithQueryDescriptor_predicate___block_invoke_25_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] '%@' supports server search", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end