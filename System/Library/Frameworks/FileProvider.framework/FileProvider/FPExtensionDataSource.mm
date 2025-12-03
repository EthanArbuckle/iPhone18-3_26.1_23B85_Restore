@interface FPExtensionDataSource
- (BOOL)hasMoreIncoming;
- (FPCollectionDataSourceDelegate)delegate;
- (FPExtensionDataSource)initWithEnumerationSettings:(id)settings;
- (NSString)description;
- (id)_initialPageFromSortDescriptors:(id)descriptors;
- (void)_gatherInitialItems;
- (void)_gatherMoreItemsAfterPage:(id)page section:(unint64_t)section;
- (void)_invalidate;
- (void)_invalidateWithError:(id)error;
- (void)_updateItems;
- (void)_updateItemsWithUpdatesCount:(unint64_t)count section:(unint64_t)section;
- (void)didUpdateItem:(id)item;
- (void)enumerationResultsDidChange;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)start;
@end

@implementation FPExtensionDataSource

- (void)start
{
  if (self->_started)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:95 description:@"can't start twice"];
  }

  if (self->_invalidated)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:96 description:@"can't restart"];
  }

  v6 = self->_enumerationSettings;
  enumeratedItemID = [(FPExtensionEnumerationSettings *)v6 enumeratedItemID];
  providerDomainID = [enumeratedItemID providerDomainID];

  self->_hasMoreIncoming = 1;
  v9 = objc_opt_new();
  oobBuffer = self->_oobBuffer;
  self->_oobBuffer = v9;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__FPExtensionDataSource_start__block_invoke;
  aBlock[3] = &unk_1E793D4E8;
  aBlock[4] = self;
  aBlock[5] = a2;
  v11 = _Block_copy(aBlock);
  v12 = +[FPDaemonConnection sharedConnection];
  enumerationSettings = self->_enumerationSettings;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__FPExtensionDataSource_start__block_invoke_5;
  v15[3] = &unk_1E793D510;
  v16 = v11;
  v14 = v11;
  [v12 fetchAndStartEnumeratingWithSettings:enumerationSettings observer:self completionHandler:v15];
}

- (FPExtensionDataSource)initWithEnumerationSettings:(id)settings
{
  settingsCopy = settings;
  v15.receiver = self;
  v15.super_class = FPExtensionDataSource;
  v6 = [(FPExtensionDataSource *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerationSettings, settings);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.FileProvider.ExtensionDataSource.queue (%p)", v7];
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = FPDataSourceBaseQueue();
    v12 = dispatch_queue_create_with_target_V2(uTF8String, v10, v11);
    queue = v7->_queue;
    v7->_queue = v12;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  enumeratedItemID = [(FPExtensionEnumerationSettings *)self->_enumerationSettings enumeratedItemID];
  v6 = [v3 stringWithFormat:@"<%@:%p id:%@>", v4, self, enumeratedItemID];

  return v6;
}

void __30__FPExtensionDataSource_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPExtensionDataSource_start__block_invoke_2;
  block[3] = &unk_1E793D4C0;
  v12 = *(a1 + 40);
  v19 = v8;
  v20 = v12;
  block[4] = v10;
  v17 = v7;
  v18 = v9;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  dispatch_sync(v11, block);
}

void __30__FPExtensionDataSource_start__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    if (*(v1 + 24) == 1)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"FPExtensionDataSource.m" lineNumber:113 description:@"can't start twice"];

      v1 = *(a1 + 32);
      if (*(v1 + 25))
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"FPExtensionDataSource.m" lineNumber:114 description:@"can't restart"];

        v1 = *(a1 + 32);
      }
    }

    *(v1 + 24) = 1;
    v5 = *(a1 + 40);
    if (v5)
    {
      objc_storeStrong((*(a1 + 32) + 16), v5);
      objc_storeStrong((*(a1 + 32) + 56), *(a1 + 56));
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __30__FPExtensionDataSource_start__block_invoke_3;
      v12[3] = &unk_1E7939C00;
      v6 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __30__FPExtensionDataSource_start__block_invoke_4;
      v11[3] = &unk_1E79399B0;
      v11[4] = *(a1 + 32);
      [v7 keepAliveConnectionForRegisteredObserver:v11];

      [*(a1 + 32) _gatherInitialItems];
    }

    else
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
      }

      v10 = v9;
      [*(a1 + 32) invalidateWithError:v9];
    }
  }
}

void __30__FPExtensionDataSource_start__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1002 userInfo:0];
  [v1 invalidateWithError:v2];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FPExtensionDataSource_invalidateWithError___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)_invalidateWithError:(id)error
{
  queue = self->_queue;
  errorCopy = error;
  dispatch_assert_queue_V2(queue);
  self->_hasMoreIncoming = 0;
  self->_enumeratingExtensionResults = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:self wasInvalidatedWithError:errorCopy];

  [(FPExtensionDataSource *)self _invalidate];
}

- (void)_invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPExtensionDataSource_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enumerationResultsDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  if ((v3 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_1(v2);
      }

      goto LABEL_11;
    }

LABEL_7:
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_5(v2);
    }

LABEL_11:

    return;
  }

  if (v4)
  {
    goto LABEL_7;
  }

  if (+[FPItemCollection isEnumerationSuspended])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_4(v2);
    }

LABEL_15:

    *(*v2 + 26) = 1;
    return;
  }

  v7 = *(*v2 + 27);
  v5 = fp_current_or_default_log();
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v8)
    {
      __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_3(v2);
    }

    goto LABEL_15;
  }

  if (v8)
  {
    __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_2(v2);
  }

  v9 = *v2;
  if (*(*v2 + 40))
  {
    [v9 _updateItems];
  }

  else
  {
    [v9 _gatherInitialItems];
  }
}

- (void)didUpdateItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__FPExtensionDataSource_didUpdateItem___block_invoke;
    v7[3] = &unk_1E79390B8;
    v7[4] = self;
    v8 = itemCopy;
    dispatch_sync(queue, v7);
  }
}

void __39__FPExtensionDataSource_didUpdateItem___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [WeakRetained dataSource:v3 receivedUpdatedItems:v4 deletedItems:MEMORY[0x1E695E0F0] hasMoreChanges:*(*(a1 + 32) + 72)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateItems
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(self + 40);
  v5 = 134218242;
  v6 = a2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx fetching changes from token: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (id)_initialPageFromSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (![descriptorsCopy count])
  {
    goto LABEL_6;
  }

  v4 = [descriptorsCopy objectAtIndexedSubscript:0];
  v5 = [v4 key];
  v6 = NSStringFromSelector(sel_displayName);
  if (([v5 isEqualToString:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = [descriptorsCopy objectAtIndexedSubscript:0];
  ascending = [v7 ascending];

  if ((ascending & 1) == 0)
  {
LABEL_6:
    v9 = &NSFileProviderInitialPageSortedByDate;
    goto LABEL_7;
  }

  v9 = &NSFileProviderInitialPageSortedByName;
LABEL_7:
  v10 = *v9;
  v11 = *v9;

  return v10;
}

- (void)_gatherInitialItems
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasMoreIncoming
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__FPExtensionDataSource_hasMoreIncoming__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateItemsWithUpdatesCount:(unint64_t)count section:(unint64_t)section
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_enumeratingExtensionResults)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:295 description:@"update: already enumerating changes or items"];
  }

  if (+[FPItemCollection isEnumerationSuspended])
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FPExtensionDataSource _updateItemsWithUpdatesCount:section:];
    }

    self->_shouldUpdate = 1;
  }

  else if (self->_changeToken)
  {
    *&self->_shouldUpdate = 256;
    v9 = self->_enumerator;
    delegate = [(FPExtensionDataSource *)self delegate];
    lastForcedUpdate = [delegate lastForcedUpdate];

    changeToken = self->_changeToken;
    v13 = _FPExtensionDataSourceBatchSize;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke;
    v15[3] = &unk_1E793D560;
    v15[4] = self;
    v16 = v9;
    sectionCopy = section;
    v18 = lastForcedUpdate;
    v14 = v9;
    [(FPXEnumerator *)v14 enumerateChangesFromToken:changeToken suggestedBatchSize:v13 reply:v15];
  }

  else
  {

    [(FPExtensionDataSource *)self _gatherInitialItems];
  }
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *(v17 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2;
  block[3] = &unk_1E793D538;
  block[4] = v17;
  v24 = v16;
  v25 = v12;
  v30 = a4;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = *(a1 + 48);
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v18, block);
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 16) == *(a1 + 40))
  {
    *(v1 + 27) = 0;
    v68 = *(a1 + 80);
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_1(&v68);
    }

    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v42 = [*(a1 + 48) count];
      v43 = [*(a1 + 56) count];
      v44 = *(a1 + 96);
      v45 = *(a1 + 64);
      v46 = [*(a1 + 72) fp_prettyDescription];
      v47 = v46;
      v48 = "";
      *buf = 134219010;
      *v73 = v42;
      *&v73[8] = 2048;
      if (v44)
      {
        v48 = " (more coming)";
      }

      v74 = v43;
      v75 = 2080;
      v76 = v48;
      v77 = 2112;
      v78 = v45;
      v79 = 2112;
      v80 = v46;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] updates: %lld, deletion: %lld%s, changeToken: %@, error: %@\n", buf, 0x34u);
    }

    v5 = *(a1 + 32);
    if (*(a1 + 72))
    {
      [v5 _invalidateWithError:?];
LABEL_60:
      __fp_leave_section_Debug(&v68);
      goto LABEL_61;
    }

    v6 = [v5 delegate];
    v54 = [v6 lastForcedUpdate];
    v53 = *(a1 + 88);

    if (v54 != v53)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_2();
      }
    }

    *(*(a1 + 32) + 72) = *(a1 + 96) | (v54 != v53);
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 64));
    if (!*(a1 + 64) && !*(a1 + 72))
    {
      v49 = fp_current_or_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_4();
      }

      [*(a1 + 32) _gatherInitialItems];
      goto LABEL_60;
    }

    if (v54 == v53 && ![*(*(a1 + 32) + 64) count])
    {
      goto LABEL_64;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v9)
    {
      v10 = *v65;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v65 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v64 + 1) + 8 * i);
          v13 = *(*(a1 + 32) + 64);
          v14 = [v12 itemID];
          [v13 setObject:v12 forKeyedSubscript:v14];
        }

        v9 = [v8 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v9);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v15 = *(a1 + 56);
    v16 = [v15 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v16)
    {
      v17 = *v61;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v60 + 1) + 8 * j);
          v20 = [MEMORY[0x1E695DFB0] null];
          [*(*(a1 + 32) + 64) setObject:v20 forKeyedSubscript:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v16);
    }

    if (v54 == v53)
    {
LABEL_64:
      if ([*(*(a1 + 32) + 64) count])
      {
        v22 = fp_current_or_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_3();
        }

        v55 = objc_opt_new();
        v23 = objc_opt_new();
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v24 = *(*(a1 + 32) + 64);
        v25 = [v24 countByEnumeratingWithState:&v56 objects:v69 count:16];
        if (v25)
        {
          v26 = *v57;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v56 + 1) + 8 * k);
              v29 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v28];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v31 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v28];
                [v55 addObject:v31];
              }

              else
              {
                [v23 addObject:v28];
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v56 objects:v69 count:16];
          }

          while (v25);
        }

        v32 = objc_opt_new();
        v33 = *(a1 + 32);
        v34 = *(v33 + 64);
        *(v33 + 64) = v32;

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
        [WeakRetained dataSource:*(a1 + 32) receivedUpdatedItems:v55 deletedItems:v23 hasMoreChanges:0];

        v36 = [v55 count];
        v37 = [v23 count];

        v38 = v37 + v36;
      }

      else
      {
        v39 = objc_loadWeakRetained((*(a1 + 32) + 80));
        [v39 dataSource:*(a1 + 32) receivedUpdatedItems:*(a1 + 48) deletedItems:*(a1 + 56) hasMoreChanges:0];

        v40 = [*(a1 + 48) count];
        v38 = [*(a1 + 56) count] + v40;
      }

      if ((*(a1 + 96) & 1) == 0 && v54 == v53 && *(*(a1 + 32) + 26) != 1)
      {
        goto LABEL_60;
      }

      v21 = v38 + 1;
      if ((v38 + 1) >= 0x3E9)
      {
        [*(a1 + 32) _gatherInitialItems];
        goto LABEL_60;
      }
    }

    else
    {
      v21 = 0;
    }

    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(a1 + 96);
      v52 = *(*(a1 + 32) + 26);
      *buf = 67109632;
      *v73 = v51;
      *&v73[4] = 1024;
      *&v73[6] = v54 != v53;
      LOWORD(v74) = 1024;
      *(&v74 + 2) = v52;
      _os_log_debug_impl(&dword_1AAAE1000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching more changes [moreChanges: %d, concurrentChanges: %d, shouldUpdate: %d]", buf, 0x14u);
    }

    [*(a1 + 32) _updateItemsWithUpdatesCount:v21 section:*(a1 + 80)];
    goto LABEL_60;
  }

LABEL_61:
  v50 = *MEMORY[0x1E69E9840];
}

- (void)_gatherMoreItemsAfterPage:(id)page section:(unint64_t)section
{
  pageCopy = page;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_started)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:416 description:@"not started yet"];
  }

  if (self->_invalidated)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:417 description:@"was invalidated"];
  }

  if (self->_enumeratingExtensionResults)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"FPExtensionDataSource.m" lineNumber:418 description:@"gather: already enumerating changes or items"];
  }

  self->_enumeratingExtensionResults = 1;
  v11 = self->_enumerator;
  v12 = _FPExtensionDataSourcePageSize;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke;
  v15[3] = &unk_1E793D5B0;
  v15[4] = self;
  v16 = v11;
  v17 = pageCopy;
  sectionCopy = section;
  v13 = pageCopy;
  v14 = v11;
  [(FPXEnumerator *)v14 enumerateItemsFromPage:v13 suggestedPageSize:v12 reply:v15];
}

void __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v15 = a1[4];
  v14 = a1[5];
  v16 = *(v15 + 88);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2;
  v23[3] = &unk_1E793D588;
  v23[4] = v15;
  v17 = v14;
  v18 = a1[6];
  v30 = a1[7];
  v24 = v17;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v18;
  v29 = v13;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  dispatch_async(v16, v23);
}

void __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16) == *(a1 + 40))
  {
    v20 = *(a1 + 88);
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_1(&v20);
    }

    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_2(a1, buf, [*(a1 + 48) count], v3);
    }

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 56));
    *(*(a1 + 32) + 27) = 0;
    v4 = *(a1 + 72);
    if (v4 && ([v4 isEqual:&_NSFileProviderInitialPageSortedByName] & 1) == 0)
    {
      v5 = [*(a1 + 72) isEqual:&_NSFileProviderInitialPageSortedByDate];
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 32);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, *(a1 + 64));
    }

    if (*(a1 + 80))
    {
      [*(a1 + 32) _invalidateWithError:?];
    }

    else
    {
      *(*(a1 + 32) + 48) += [*(a1 + 48) count];
      v9 = *(a1 + 32);
      v10 = (*(v9 + 48) >> 4 < 0x271uLL || [*(v9 + 8) isUnbounded]) && *(a1 + 56) != 0;
      v11 = [*(a1 + 32) delegate];
      v12 = [v11 dataSourceShouldAlwaysReplaceContents:*(a1 + 32)];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      v14 = WeakRetained;
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      if ((v5 | v12))
      {
        [WeakRetained dataSource:v15 replaceContentsWithItems:v16 hasMoreChanges:v10];
      }

      else
      {
        [WeakRetained dataSource:v15 receivedUpdatedItems:v16 deletedItems:MEMORY[0x1E695E0F0] hasMoreChanges:v10];
      }

      if (v10)
      {
        [*(a1 + 32) _gatherMoreItemsAfterPage:*(a1 + 56) section:*(a1 + 88)];
      }

      else
      {
        if (*(a1 + 56))
        {
          v17 = fp_current_or_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_3();
          }
        }

        else
        {
          *(*(a1 + 32) + 72) = 0;
        }

        v18 = *(a1 + 32);
        if (v18[5])
        {
          [v18 _updateItems];
        }
      }
    }

    __fp_leave_section_Debug(&v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (FPCollectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPExtensionDataSource_enumerationResultsDidChange__block_invoke_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateItemsWithUpdatesCount:section:.cold.1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__FPExtensionDataSource__updateItemsWithUpdatesCount_section___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *buf = 134218498;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  *(buf + 11) = 2112;
  *(buf + 3) = v5;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] items: %lld, next page: %@, change token: %@\n", buf, 0x20u);
}

void __59__FPExtensionDataSource__gatherMoreItemsAfterPage_section___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end