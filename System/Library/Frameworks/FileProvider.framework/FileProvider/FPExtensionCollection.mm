@interface FPExtensionCollection
+ (BOOL)_item:(id)a3 isCollectionRootForObservedItemID:(id)a4;
+ (BOOL)item:(id)a3 isValidForObservedItemID:(id)a4;
- (BOOL)isCollectionValidForItem:(id)a3;
- (BOOL)isRootItem:(id)a3;
- (BOOL)recoverFromError:(id)a3;
- (BOOL)shouldRetryError:(id)a3;
- (FPExtensionCollection)initWithSettings:(id)a3;
- (id)createDataSourceWithSortDescriptors:(id)a3;
- (id)description;
- (id)scopedSearchQuery;
- (void)_failMonitoringWithError:(id)a3;
- (void)_startMonitoringDSCopyProgress;
- (void)_startMonitoringDomains;
- (void)_stopMonitoringDomains;
- (void)startObserving;
- (void)stopObserving;
- (void)updateRootItem:(id)a3;
@end

@implementation FPExtensionCollection

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_alternateID;
  objc_sync_exit(v2);

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (v3)
  {
    [v4 stringWithFormat:@"<%@:%p [%@, %@]>", v5, v2, v2->_settings, v3];
  }

  else
  {
    [v4 stringWithFormat:@"<%@:%p %@>", v5, v2, v2->_settings, v8];
  }
  v6 = ;

  return v6;
}

- (void)startObserving
{
  [(FPExtensionCollection *)self _stopMonitoringDomains];
  [(FPExtensionCollection *)self _startMonitoringDSCopyProgress];
  v3.receiver = self;
  v3.super_class = FPExtensionCollection;
  [(FPItemCollection *)&v3 startObserving];
}

- (void)_stopMonitoringDomains
{
  v3 = [(FPItemCollection *)self workingQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_providerDomainMonitoringContext)
  {
    [FPProviderDomain endMonitoringProviderDomainChanges:?];
    providerDomainMonitoringContext = self->_providerDomainMonitoringContext;
    self->_providerDomainMonitoringContext = 0;
  }
}

- (void)_startMonitoringDSCopyProgress
{
  if (+[FPProviderDomain hasProviderDomainAccess])
  {
    v3 = [(FPExtensionCollection *)self enumeratedItemID];
    v4 = [v3 providerDomainID];
    v5 = [FPProviderDomain providerDomainWithID:v4 cachePolicy:1 error:0];

    if (v5 && [v5 usesDSCopyEngine])
    {
      objc_initWeak(&location, self);
      [(FPExtensionCollectionDSCopySubscriber *)self->_dsCopySubscriber markObserving];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke;
      aBlock[3] = &unk_1E793A510;
      aBlock[4] = self;
      objc_copyWeak(&v14, &location);
      v6 = _Block_copy(aBlock);
      v7 = +[FPItemManager defaultManager];
      v8 = [(FPExtensionCollection *)self enumeratedItemID];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_35;
      v10[3] = &unk_1E793A538;
      objc_copyWeak(&v12, &location);
      v9 = v6;
      v11 = v9;
      [v7 fetchURLForItemID:v8 completionHandler:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(FPExtensionCollection *)v5 _startMonitoringDSCopyProgress];
    }
  }
}

void __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_35(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[32] startMonitoringWithURL:v5 publishingHandler:*(a1 + 32)];
  }
}

- (FPExtensionCollection)initWithSettings:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FPExtensionCollection;
  v6 = [(FPItemCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = objc_opt_new();
    dsCopySubscriber = v7->_dsCopySubscriber;
    v7->_dsCopySubscriber = v8;
  }

  return v7;
}

- (BOOL)isRootItem:(id)a3
{
  v4 = a3;
  v5 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedItemID];

  if (!v5)
  {
    v6 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedURL];
    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedURL];
    v9 = [v4 fileURL];
    v8 = [v7 fp_relationshipToItemAtURL:v9] == 1;
    goto LABEL_7;
  }

  v6 = [v4 itemID];
  v7 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedItemID];
  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [v4 formerItemID];
    v10 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedItemID];
    v8 = [v9 isEqual:v10];

LABEL_7:
    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:

LABEL_9:
  return v8;
}

- (void)updateRootItem:(id)a3
{
  v4 = a3;
  v5 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedURL];

  if (v5)
  {
    v6 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedURL];
    v7 = [v4 fileURL];
    p_super = [v6 fp_relativePathOf:v7];

    if (!p_super || [p_super length])
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FPExtensionCollection updateRootItem:];
      }

      v10 = self;
      objc_sync_enter(v10);
      alternateID = v10->_alternateID;
      v10->_alternateID = 0;

      objc_sync_exit(v10);
      [(FPExtensionEnumerationSettings *)self->_settings setNullableEnumeratedItemID:0];
      v12 = [(FPItemCollection *)v10 dataSource];
      [v12 invalidate];

      v13 = [(FPItemCollection *)v10 dataSource];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1002 userInfo:0];
      [(FPItemCollection *)v10 dataSource:v13 wasInvalidatedWithError:v14];

      goto LABEL_19;
    }

    v15 = [(FPExtensionEnumerationSettings *)self->_settings nullableEnumeratedItemID];

    if (!v15)
    {
      v16 = [v4 itemID];
      [(FPExtensionEnumerationSettings *)self->_settings setNullableEnumeratedItemID:v16];

      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [FPExtensionCollection updateRootItem:];
      }
    }
  }

  v18 = self;
  objc_sync_enter(v18);
  if (v18->_alternateID)
  {
    objc_sync_exit(v18);
    p_super = &v18->super.super;
  }

  else
  {
    v19 = [v4 itemID];
    v20 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedItemID];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      [v4 formerItemID];
    }

    else
    {
      [v4 itemID];
    }
    v22 = ;
    v23 = v18->_alternateID;
    v18->_alternateID = v22;

    objc_sync_exit(v18);
    p_super = fp_current_or_default_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      [FPExtensionCollection updateRootItem:];
    }
  }

LABEL_19:
}

- (BOOL)isCollectionValidForItem:(id)a3
{
  v4 = a3;
  v5 = [(FPExtensionCollection *)self enumeratedItemID];
  v6 = [FPExtensionCollection item:v4 isValidForObservedItemID:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = v8->_alternateID;
    objc_sync_exit(v8);

    if (v9)
    {
      v7 = [FPExtensionCollection item:v4 isValidForObservedItemID:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)item:(id)a3 isValidForObservedItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"NSFileProviderWorkingSetContainerItemIdentifier"];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [v7 identifier];
  v11 = [v10 hasPrefix:@"NSFileProviderSearchContainerItemIdentifier"];

  if (v11 & 1) != 0 || ([a1 _item:v6 isCollectionRootForObservedItemID:v7] & 1) != 0 || (objc_msgSend(v7, "providerID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasPrefix:", @"com.apple.Document"), v12, (v13))
  {
LABEL_5:
    v14 = 1;
  }

  else
  {
    v16 = [v6 parentItemIdentifier];
    v17 = [v7 identifier];
    if ([v16 isEqualToString:v17])
    {
      v18 = [v6 providerDomainID];
      v19 = [v7 providerDomainID];
      if ([v18 isEqualToString:v19])
      {
        v14 = 1;
      }

      else
      {
        v20 = [v6 fp_parentDomainIdentifier];
        v21 = [v7 domainIdentifier];
        v14 = [v20 isEqualToString:v21];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (BOOL)_item:(id)a3 isCollectionRootForObservedItemID:(id)a4
{
  v5 = a4;
  v6 = [a3 itemID];
  v7 = [v6 isEqualToItemID:v5];

  return v7;
}

- (id)createDataSourceWithSortDescriptors:(id)a3
{
  [(FPEnumerationSettings *)self->_settings setSortDescriptors:a3];
  v4 = [(FPExtensionEnumerationSettings *)self->_settings enumeratedURL];

  if (v4)
  {
    [(FPExtensionEnumerationSettings *)self->_settings setNullableEnumeratedItemID:0];
    v5 = self;
    objc_sync_enter(v5);
    alternateID = v5->_alternateID;
    v5->_alternateID = 0;

    objc_sync_exit(v5);
  }

  v7 = [FPExtensionDataSource alloc];
  v8 = [(FPExtensionEnumerationSettings *)self->_settings copy];
  v9 = [(FPExtensionDataSource *)v7 initWithEnumerationSettings:v8];

  return v9;
}

- (id)scopedSearchQuery
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_alternateID;
  objc_sync_exit(v2);

  v4 = [NSFileProviderSearchQuery alloc];
  v5 = [(FPExtensionCollection *)v2 enumeratedItemID];
  v6 = [(NSFileProviderSearchQuery *)v4 initWithSearchScopedToItemID:v5 alternateItemID:v3];

  return v6;
}

- (void)_failMonitoringWithError:(id)a3
{
  v4 = a3;
  v5 = [(FPItemCollection *)self workingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FPExtensionCollection *)self _failMonitoringWithError:v4, v6];
  }

  v7 = [(FPItemCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 fp_unwrappedInternalError];
    [v7 collection:self didEncounterError:v8];
  }

  [(FPExtensionCollection *)self _stopMonitoringDomains];
}

- (void)_startMonitoringDomains
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: wait for domain authentication", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__FPExtensionCollection__startMonitoringDomains__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FPExtensionCollection__startMonitoringDomains__block_invoke_2;
  block[3] = &unk_1E7939090;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __48__FPExtensionCollection__startMonitoringDomains__block_invoke_2(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (*(v2 + 248))
  {
    if (a1[5])
    {

      [v2 _failMonitoringWithError:?];
    }

    else
    {
      v4 = a1[6];
      v5 = [*(v2 + 232) enumeratedItemID];
      v6 = [v5 providerDomainID];
      v7 = [v4 objectForKeyedSubscript:v6];

      if (v7 && ([v7 needsAuthentication] & 1) == 0 && objc_msgSend(v7, "isEnabled"))
      {
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __48__FPExtensionCollection__startMonitoringDomains__block_invoke_2_cold_1(v3, v7, v8);
        }

        [*v3 startObserving];
      }
    }
  }
}

id __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 fp_isAccountedAsCopyProgress])
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A880]];

    v6 = +[FPItemManager defaultManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_3;
    v17[3] = &unk_1E793A4C0;
    v17[4] = *(a1 + 32);
    objc_copyWeak(&v20, (a1 + 40));
    v7 = v3;
    v18 = v7;
    v8 = v5;
    v19 = v8;
    [v6 _fetchItemForURL:v8 options:0x100000000 completionHandler:v17];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_33;
    aBlock[3] = &unk_1E793A4E8;
    objc_copyWeak(&v16, (a1 + 40));
    v14 = v7;
    v15 = v8;
    v9 = v8;
    v10 = _Block_copy(aBlock);
    v11 = _Block_copy(v10);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v20);
  }

  else
  {
    v11 = &__block_literal_global_7;
  }

  return v11;
}

void __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [*(a1 + 32) isCollectionValidForItem:v5])
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_3_cold_1(a1, v5, v7);
    }

    v8 = +[FPProgressManager defaultManager];
    v9 = *(a1 + 40);
    v10 = [v5 itemID];
    [v8 registerCopyProgress:v9 forItemID:v10];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = [v5 itemID];
    [WeakRetained forceRefreshOfItemWithItemID:v12];
  }
}

void __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_33(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[FPProgressManager defaultManager];
  v4 = [v3 removeCopyProgress:*(a1 + 32)];

  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) path];
    v11 = 138413058;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v10;
    _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: DSCopy: Detaching progress %@ from %@ at %@", &v11, 0x2Au);
  }

  if (v4)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [WeakRetained forceRefreshOfItemWithItemID:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopObserving
{
  [(FPExtensionCollection *)self _stopMonitoringDomains];
  [(FPExtensionCollectionDSCopySubscriber *)self->_dsCopySubscriber stopMonitoring];
  v3.receiver = self;
  v3.super_class = FPExtensionCollection;
  [(FPItemCollection *)&v3 stopObserving];
}

- (BOOL)recoverFromError:(id)a3
{
  v4.receiver = self;
  v4.super_class = FPExtensionCollection;
  return [(FPItemCollection *)&v4 recoverFromError:a3];
}

- (BOOL)shouldRetryError:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FPExtensionCollection;
  if ([(FPItemCollection *)&v8 shouldRetryError:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 fp_unwrappedInternalError];
    if ([v6 fp_isFileProviderInternalError:12])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v6 fp_isFileProviderError:-2001];
    }
  }

  return v5;
}

- (void)updateRootItem:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@ learned enumerated item identifier", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateRootItem:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] Enumerated URL changed, resetting %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateRootItem:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@ learned alternate identifier", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_failMonitoringWithError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: monitoring of domain failed with error %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __48__FPExtensionCollection__startMonitoringDomains__block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: domain %@ is authenticated, restart observation", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __55__FPExtensionCollection__startMonitoringDSCopyProgress__block_invoke_3_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = *(a1 + 40);
  v8 = [a2 itemID];
  v9 = [*(a1 + 48) path];
  v11 = 138413058;
  v12 = WeakRetained;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: DSCopy: Attaching progress %@ to %@ at %@", &v11, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

@end