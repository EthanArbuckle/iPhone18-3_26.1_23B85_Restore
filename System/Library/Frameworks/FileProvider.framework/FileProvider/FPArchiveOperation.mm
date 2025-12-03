@interface FPArchiveOperation
+ (id)extensionForArchiveFormat:(unint64_t)format utType:(id *)type;
- (BOOL)_checkNeedOfTemporaryDirectory;
- (FPArchiveOperation)initWithItems:(id)items destinationFolder:(id)folder;
- (id)findUniqueArchivedName:(id)name parent:(id)parent;
- (unint64_t)_fpToDSArchiveFormat:(unint64_t)format;
- (void)_archiveURLForDSEnumeratedDestination:(id)destination service:(id)service completionHandler:(id)handler;
- (void)_archiveURLForFPEnumeratedDestination:(id)destination targetArchiveName:(id)name service:(id)service completionHandler:(id)handler;
- (void)_archiveURLs:(id)ls targetArchiveName:(id)name completionHandler:(id)handler;
- (void)_checkNeedOfTemporaryDirectory;
- (void)_coordinateArchivedItemsWithCompletionHandler:(id)handler;
- (void)_copyArchivedItemsWithCompletionHandler:(id)handler;
- (void)_materializeDestinationFolder:(id)folder;
- (void)_prepareItemsWithCompletionHandler:(id)handler;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPArchiveOperation

+ (id)extensionForArchiveFormat:(unint64_t)format utType:(id *)type
{
  if (format <= 2)
  {
    switch(format)
    {
      case 0uLL:
LABEL_14:
        v10 = MEMORY[0x1E69830D0];
        goto LABEL_18;
      case 1uLL:
        if (type)
        {
          v8 = *MEMORY[0x1E6982CC0];
          preferredFilenameExtension = @"cpio";
          goto LABEL_19;
        }

        preferredFilenameExtension = @"cpio";
        goto LABEL_20;
      case 2uLL:
        if (type)
        {
          v8 = *MEMORY[0x1E6982CC0];
          preferredFilenameExtension = @"cpgz";
LABEL_19:
          v12 = v8;
          *type = v8;
          goto LABEL_20;
        }

        preferredFilenameExtension = @"cpgz";
        goto LABEL_20;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPArchiveOperation.m" lineNumber:168 description:{@"No DS match for FP archive format: %ld", format}];

    goto LABEL_14;
  }

  if (format == 3)
  {
    v10 = MEMORY[0x1E6983018];
    goto LABEL_18;
  }

  if (format == 4)
  {
    v10 = MEMORY[0x1E6982C88];
LABEL_18:
    v8 = *v10;
    preferredFilenameExtension = [*v10 preferredFilenameExtension];
    if (!type)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (format != 5)
  {
    goto LABEL_13;
  }

  if (type)
  {
    v8 = *MEMORY[0x1E6982CC0];
    preferredFilenameExtension = @"aea";
    goto LABEL_19;
  }

  preferredFilenameExtension = @"aea";
LABEL_20:

  return preferredFilenameExtension;
}

- (FPArchiveOperation)initWithItems:(id)items destinationFolder:(id)folder
{
  itemsCopy = items;
  folderCopy = folder;
  if ([itemsCopy count])
  {
    if (folderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(FPArchiveOperation *)a2 initWithItems:itemsCopy destinationFolder:?];
    if (folderCopy)
    {
      goto LABEL_3;
    }
  }

  [FPArchiveOperation initWithItems:destinationFolder:];
LABEL_3:
  providerDomainID = [folderCopy providerDomainID];
  v20.receiver = self;
  v20.super_class = FPArchiveOperation;
  v11 = [(FPActionOperation *)&v20 initWithProvider:providerDomainID action:0];

  if (v11)
  {
    objc_storeStrong(&v11->_items, items);
    objc_storeStrong(&v11->_destinationFolder, folder);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.FileProvider.ArchiveOperation", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v11->_operationQueue;
    v11->_operationQueue = v15;

    [(NSOperationQueue *)v11->_operationQueue setUnderlyingQueue:v11->_queue];
    [(NSOperationQueue *)v11->_operationQueue setMaxConcurrentOperationCount:1];
    v11->_archiveFormat = 0;
    v17 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    [(FPActionOperation *)v11 setProgress:v17];

    progress = [(FPActionOperation *)v11 progress];
    [progress fp_setFileOperationKind:*MEMORY[0x1E696A840]];
  }

  return v11;
}

- (void)_coordinateArchivedItemsWithCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v19 = +[FPItemManager defaultManager];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__5;
  v34[4] = __Block_byref_object_dispose__5;
  v35 = 0;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_items, "count")}];
  v4 = dispatch_group_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_items;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke;
        v26[3] = &unk_1E793ADA0;
        v27 = v3;
        v29 = v34;
        v28 = v4;
        [v19 fetchURLForItem:v8 completionHandler:v26];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E793AE10;
  v25 = v34;
  v11 = handlerCopy;
  v24 = v11;
  v12 = v3;
  v21 = v12;
  selfCopy = self;
  v13 = v9;
  v23 = v13;
  dispatch_group_notify(v4, queue, block);
  progress = [(FPActionOperation *)self progress];
  [progress addChild:v13 withPendingUnitCount:10];

  _Block_object_dispose(v34, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 40));
}

void __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);
    v4 = *MEMORY[0x1E69E9840];

    v3();
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v12 options:0x20000];
          [v6 addObject:v13];
          if ([v12 startAccessingSecurityScopedResource])
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    v14 = objc_opt_new();
    v15 = *(*(a1 + 40) + 480);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_4;
    v20[3] = &unk_1E793ADE8;
    v21 = v5;
    v25 = *(a1 + 56);
    v22 = *(a1 + 48);
    v23 = v6;
    v24 = v14;
    v16 = v14;
    v17 = v6;
    v18 = v5;
    [v16 coordinateAccessWithIntents:v17 queue:v15 byAccessor:v20];

    v19 = *MEMORY[0x1E69E9840];
  }
}

void __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v19 + 1) + 8 * i) stopAccessingSecurityScopedResource];
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 40) setCompletedUnitCount:100];
    v9 = [*(a1 + 48) fp_map:&__block_literal_global_57];
    v10 = [*(a1 + 56) retainAccess];
    v11 = *(a1 + 64);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_7;
    v15[3] = &unk_1E7939090;
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v18 = v10;
    v12 = *(v11 + 16);
    v13 = v10;
    v12(v11, v9, 0, v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __68__FPArchiveOperation__coordinateArchivedItemsWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) stopAccessingSecurityScopedResource];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) releaseAccess:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_copyArchivedItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[FPItemManager defaultManager];
  firstObject = [(NSArray *)self->_items firstObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E793AE60;
  v10 = v5;
  v11 = handlerCopy;
  v9[4] = self;
  v7 = v5;
  v8 = handlerCopy;
  [v7 fetchURLForItem:firstObject completionHandler:v9];
}

void __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(a1[6] + 2))();
  }

  else
  {
    v8 = [[FPArchiveTemporaryFolder alloc] initWithURL:v5];
    v22 = 0;
    v9 = [(FPArchiveTemporaryFolder *)v8 temporaryFolderURLGetError:&v22];
    v7 = v22;
    if (v9)
    {
      v10 = [(FPMoveOperation *)[FPCopyOperation alloc] initWithItems:*(a1[4] + 56) destinationURL:v9];
      [(FPMoveOperation *)v10 setShouldBounceOnCollision:1];
      [(FPActionOperation *)v10 setHaveStitching:0];
      [(FPMoveOperation *)v10 setLastUsageUpdatePolicy:1];
      objc_initWeak(&location, v10);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke_4;
      v16 = &unk_1E793AE38;
      objc_copyWeak(&v20, &location);
      v17 = v9;
      v19 = a1[6];
      v18 = v8;
      [(FPActionOperation *)v10 setActionCompletionBlock:&v13];
      [a1[5] scheduleAction:{v10, v13, v14, v15, v16}];
      v11 = [a1[4] progress];
      v12 = [(FPActionOperation *)v10 progress];
      [v11 addChild:v12 withPendingUnitCount:10];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }
}

void __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 removeItemAtURL:*(a1 + 32) error:0];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [WeakRetained transferLocations];
    v9 = [v8 allValues];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke_6;
    v10[3] = &unk_1E79390B8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    (*(v7 + 16))(v7, v9, 0, v10);
  }
}

void __62__FPArchiveOperation__copyArchivedItemsWithCompletionHandler___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

- (BOOL)_checkNeedOfTemporaryDirectory
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_items;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *v29;
  obj = v3;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v28 + 1) + 8 * i);
      providerDomainID = [v8 providerDomainID];
      firstObject = [(NSArray *)self->_items firstObject];
      providerDomainID2 = [firstObject providerDomainID];
      v12 = [providerDomainID isEqualToString:providerDomainID2];

      if ((v12 & 1) == 0)
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [FPArchiveOperation _checkNeedOfTemporaryDirectory];
        }

        goto LABEL_18;
      }

      parentItemID = [v8 parentItemID];
      firstObject2 = [(NSArray *)self->_items firstObject];
      parentItemID2 = [firstObject2 parentItemID];
      v16 = [parentItemID isEqualToItemID:parentItemID2];

      if ((v16 & 1) == 0)
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [FPArchiveOperation _checkNeedOfTemporaryDirectory];
        }

LABEL_18:
        v19 = 1;
        providerID = obj;
        goto LABEL_19;
      }
    }

    v3 = obj;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_10:

  firstObject3 = [(NSArray *)self->_items firstObject];
  providerID = [firstObject3 providerID];

  if ([providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) != 0 || (objc_msgSend(providerID, "isEqualToString:", @"com.apple.filesystems.UserFS.FileProvider") & 1) != 0 || (objc_msgSend(providerID, "isEqualToString:", @"com.apple.SMBClientProvider.FileProvider"))
  {
    v19 = 0;
  }

  else
  {
    firstObject4 = [(NSArray *)self->_items firstObject];
    providerDomainID3 = [firstObject4 providerDomainID];
    v20 = [FPProviderDomain providerDomainWithID:providerDomainID3 cachePolicy:1 error:0];

    isUsingFPFS = [v20 isUsingFPFS];
    if ((isUsingFPFS & 1) == 0)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [FPArchiveOperation _checkNeedOfTemporaryDirectory];
      }
    }

    v19 = isUsingFPFS ^ 1;
LABEL_19:
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)_materializeDestinationFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[FPItemManager defaultManager];
  destinationFolder = self->_destinationFolder;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__FPArchiveOperation__materializeDestinationFolder___block_invoke;
  v8[3] = &unk_1E793AED8;
  v8[4] = self;
  v9 = folderCopy;
  v7 = folderCopy;
  [v5 fetchURLForItem:destinationFolder completionHandler:v8];
}

void __52__FPArchiveOperation__materializeDestinationFolder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_cold_1(a1, v5);
    }

    v9 = [v5 startAccessingSecurityScopedResource];
    v10 = objc_opt_new();
    v11 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v5 options:0];
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = *(*(a1 + 32) + 480);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_81;
    v16[3] = &unk_1E793AEB0;
    v17 = 0;
    v20 = v9;
    v18 = v5;
    v19 = *(a1 + 40);
    [v10 coordinateAccessWithIntents:v12 queue:v13 byAccessor:v16];

    goto LABEL_9;
  }

  v14 = *(a1 + 40);
  if (!v6)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:0];
    (*(v14 + 16))(v14, 0, v10, &__block_literal_global_79);
LABEL_9:

    goto LABEL_10;
  }

  (*(v14 + 16))(v14, 0, v6, &__block_literal_global_79);
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

void __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 40) stopAccessingSecurityScopedResource];
      v4 = *(a1 + 32);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_3;
    v7[3] = &unk_1E793AE88;
    v9 = *(a1 + 56);
    v8 = v5;
    (*(v6 + 16))(v6, v8, 0, v7);
  }
}

uint64_t __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

- (void)_prepareItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(NSArray *)self->_items count])
  {
    if ([(FPArchiveOperation *)self _checkNeedOfTemporaryDirectory])
    {
      [(FPArchiveOperation *)self _copyArchivedItemsWithCompletionHandler:handlerCopy];
    }

    else
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [FPArchiveOperation _prepareItemsWithCompletionHandler:];
      }

      [(FPArchiveOperation *)self _coordinateArchivedItemsWithCompletionHandler:handlerCopy];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v5, &__block_literal_global_86);
  }
}

- (unint64_t)_fpToDSArchiveFormat:(unint64_t)format
{
  formatCopy = format;
  if (format >= 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPArchiveOperation.m" lineNumber:423 description:{@"No DS match for FP archive format: %ld", formatCopy}];

    return 0;
  }

  return formatCopy;
}

- (void)_archiveURLForFPEnumeratedDestination:(id)destination targetArchiveName:(id)name service:(id)service completionHandler:(id)handler
{
  destinationCopy = destination;
  nameCopy = name;
  handlerCopy = handler;
  serviceCopy = service;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FPArchiveOperation _archiveURLForFPEnumeratedDestination:targetArchiveName:service:completionHandler:];
  }

  v16 = [(FPArchiveOperation *)self _fpToDSArchiveFormat:[(FPArchiveOperation *)self archiveFormat]];
  firstObject = [destinationCopy firstObject];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __104__FPArchiveOperation__archiveURLForFPEnumeratedDestination_targetArchiveName_service_completionHandler___block_invoke;
  v25 = &unk_1E793AF28;
  v28 = handlerCopy;
  v29 = a2;
  selfCopy = self;
  v27 = nameCopy;
  v18 = nameCopy;
  v19 = handlerCopy;
  v20 = [serviceCopy archiveItemsWithURLs:destinationCopy compressionFormat:v16 destinationFolderURL:firstObject completionHandler:&v22];

  v21 = [(FPActionOperation *)self progress:v22];
  [v21 addChild:v20 withPendingUnitCount:80];
}

void __104__FPArchiveOperation__archiveURLForFPEnumeratedDestination_targetArchiveName_service_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_13;
  }

  if (v7)
  {
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"FPArchiveOperation.m" lineNumber:446 description:@"url should exist if error is nil"];

    if (!v8)
    {
LABEL_7:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"FPArchiveOperation.m" lineNumber:447 description:@"nil archive name"];
    }
  }

  v12 = [v7 startAccessingSecurityScopedResource];
  v13 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];
  v14 = *(a1 + 40);
  v15 = [*(*(a1 + 32) + 464) fileURL];

  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = [v16[58] fileURL];
    v18 = [v16 findUniqueArchivedName:v14 parent:v17];

    v14 = v18;
  }

  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 32);
    v30 = *(v29 + 464);
    *location = 138413058;
    *&location[4] = v29;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v30;
    v48 = 2112;
    v49 = v14;
    _os_log_debug_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: moving archive from temporary folder %@ to provider %@ with name %@", location, 0x2Au);
  }

  v20 = [FPMoveOperation alloc];
  v42 = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v22 = [(FPMoveOperation *)v20 initWithURLs:v21 destinationFolder:*(*(a1 + 32) + 464)];

  v40 = v13;
  v41 = v14;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  [(FPMoveOperation *)v22 setTargetFilenamesByURL:v23];

  objc_initWeak(location, v22);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __104__FPArchiveOperation__archiveURLForFPEnumeratedDestination_targetArchiveName_service_completionHandler___block_invoke_95;
  v34 = &unk_1E793AF00;
  v35 = v7;
  v39 = v12;
  v37 = *(a1 + 48);
  objc_copyWeak(&v38, location);
  v24 = v13;
  v36 = v24;
  [(FPActionOperation *)v22 setActionCompletionBlock:&v31];
  [(FPMoveOperation *)v22 setShouldBounceOnCollision:1, v31, v32, v33, v34];
  [(FPActionOperation *)v22 setHaveStitching:0];
  v25 = [*(a1 + 32) progress];
  v26 = [(FPActionOperation *)v22 progress];
  [v25 addChild:v26 withPendingUnitCount:10];

  v27 = +[FPItemManager defaultManager];
  [v27 scheduleAction:v22];

  objc_destroyWeak(&v38);
  objc_destroyWeak(location);

LABEL_13:
  v28 = *MEMORY[0x1E69E9840];
}

void __104__FPArchiveOperation__archiveURLForFPEnumeratedDestination_targetArchiveName_service_completionHandler___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  [v5 removeItemAtURL:*(a1 + 32) error:0];

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v6 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained transferResults];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  (*(v6 + 16))(v6, v8, v4);
}

- (void)_archiveURLForDSEnumeratedDestination:(id)destination service:(id)service completionHandler:(id)handler
{
  destinationCopy = destination;
  serviceCopy = service;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke;
  v14[3] = &unk_1E793AFA0;
  v14[4] = self;
  v15 = destinationCopy;
  v16 = serviceCopy;
  v17 = handlerCopy;
  v11 = serviceCopy;
  v12 = destinationCopy;
  v13 = handlerCopy;
  [(FPArchiveOperation *)self _materializeDestinationFolder:v14];
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    (*(v9 + 2))(v9);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_cold_1(a1, v7);
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = [*(a1 + 32) _fpToDSArchiveFormat:objc_msgSend(*(a1 + 32), "archiveFormat")];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97;
    v21 = &unk_1E793AF78;
    v15 = *(a1 + 32);
    v22 = 0;
    v23 = v15;
    v24 = v10;
    v25 = *(a1 + 56);
    v16 = [v12 archiveItemsAtURLs:v13 toURL:v7 options:0 compressionFormat:v14 passphrase:0 completionHandler:&v18];
    v17 = [*(a1 + 32) progress];
    [v17 addChild:v16 withPendingUnitCount:80];
  }
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = fp_current_or_default_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v5 || v7)
  {
    if (v9)
    {
      __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97_cold_1(a1, a1 + 4);
    }

    (*(a1[6] + 2))();
    (*(a1[7] + 2))();
  }

  else
  {
    if (v9)
    {
      __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97_cold_2(a1, v5);
    }

    v10 = +[FPItemManager defaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_98;
    v11[3] = &unk_1E793AF50;
    v12 = v5;
    v13 = a1[6];
    v14 = a1[7];
    [v10 fetchItemForURL:v12 completionHandler:v11];
  }
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_98(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 removeItemAtURL:a1[4] error:0];
  }

  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
}

- (void)_archiveURLs:(id)ls targetArchiveName:(id)name completionHandler:(id)handler
{
  lsCopy = ls;
  nameCopy = name;
  handlerCopy = handler;
  getDSArchiveServiceClass();
  v10 = objc_opt_new();
  providerDomainID = [(FPItem *)self->_destinationFolder providerDomainID];
  v12 = [FPProviderDomain providerDomainWithID:providerDomainID cachePolicy:1 error:0];

  if ([v12 isUsingFPFS])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(FPArchiveOperation *)self _archiveURLForDSEnumeratedDestination:lsCopy service:v10 completionHandler:handlerCopy];
    goto LABEL_9;
  }

  providerID = [v12 providerID];
  if ([providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_8:
  [(FPArchiveOperation *)self _archiveURLForFPEnumeratedDestination:lsCopy targetArchiveName:nameCopy service:v10 completionHandler:handlerCopy];
LABEL_9:
}

- (id)findUniqueArchivedName:(id)name parent:(id)parent
{
  nameCopy = name;
  v11 = 0;
  v6 = [parent fp_existingURLOfChildWithName:nameCopy isFolder:0 notMatchingFileID:0 nextAvailableBounceNumber:&v11 forceFetchingBounceNumber:1];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = &unk_1F1FC9A58;
    }

    v9 = [nameCopy fp_bouncedNameWithIndex:objc_msgSend(v8 isDir:{"longValue") + 1, 0}];
  }

  else
  {
    v9 = nameCopy;
  }

  return v9;
}

- (void)actionMain
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(self + 448);
  OUTLINED_FUNCTION_2();
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: preparing items for archiving: %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __32__FPArchiveOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v9[2](v9);
    [*(a1 + 32) completedWithResult:0 error:v8];
  }

  else
  {
    v11 = [v7 count];
    if (v11 == [*(*(a1 + 32) + 448) count] && objc_msgSend(v7, "count"))
    {
      if ([*(*(a1 + 32) + 448) count] == 1)
      {
        v19 = [*(*(a1 + 32) + 448) firstObject];
        v20 = [v19 filename];
        v21 = [v20 fp_displayNameFromFilenameWithHiddenPathExtension:1 isFolder:{objc_msgSend(v19, "isFolder")}];
        v22 = +[FPArchiveOperation extensionForArchiveFormat:utType:](FPArchiveOperation, "extensionForArchiveFormat:utType:", [*(a1 + 32) archiveFormat], 0);
        v23 = [v21 fp_filenameFromDisplayNameWithExtension:v22];
      }

      else
      {
        v19 = FPLoc(@"ARCHIVE_FILENAME", v12, v13, v14, v15, v16, v17, v18, v28[0]);
        v20 = +[FPArchiveOperation extensionForArchiveFormat:utType:](FPArchiveOperation, "extensionForArchiveFormat:utType:", [*(a1 + 32) archiveFormat], 0);
        v23 = [v19 stringByAppendingPathExtension:v20];
      }

      v26 = *(a1 + 32);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __32__FPArchiveOperation_actionMain__block_invoke_2;
      v28[3] = &unk_1E793AFC8;
      v27 = v10;
      v28[4] = *(a1 + 32);
      v29 = v27;
      [v26 _archiveURLs:v7 targetArchiveName:v23 completionHandler:v28];
    }

    else
    {
      v10[2](v10);
      v24 = *(a1 + 32);
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
      [v24 completedWithResult:0 error:v25];
    }
  }
}

void __32__FPArchiveOperation_actionMain__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  [*(a1 + 32) completedWithResult:v8 error:v7];
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  firstObject = [(NSArray *)self->_items firstObject];
  v4 = [(NSArray *)self->_items count];
  stitcher2 = [(FPActionOperation *)self stitcher];
  parentItemIdentifier = [firstObject parentItemIdentifier];
  providerDomainID = [firstObject providerDomainID];
  archiveFormat = [(FPArchiveOperation *)self archiveFormat];
  if (v4 == 1)
  {
    [stitcher2 createArchivePlaceholderForItem:firstObject underParent:parentItemIdentifier inProviderDomainID:providerDomainID withArchiveFormat:archiveFormat];
  }

  else
  {
    [stitcher2 createGenericArchivePlaceholderUnderParent:parentItemIdentifier inProviderDomainID:providerDomainID withArchiveFormat:archiveFormat];
  }
  v9 = ;
  placeholderID = self->_placeholderID;
  self->_placeholderID = v9;

  v11 = +[FPProgressManager defaultManager];
  progress = [(FPActionOperation *)self progress];
  [v11 registerCopyProgress:progress forItemID:self->_placeholderID];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = resultCopy;
  if (errorCopy)
  {
    if ([(NSArray *)self->_items count]== 1)
    {
      firstObject = [(NSArray *)self->_items firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v10 = [errorCopy fp_annotatedErrorWithItem:firstObject variant:@"Archive"];
  }

  else
  {
    firstObject = [(FPActionOperation *)self stitcher];
    [firstObject associateItem:v8 withPlaceholderID:self->_placeholderID];
    v10 = 0;
  }

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItem:v8 error:v10];

  archiveCompletionBlock = [(FPArchiveOperation *)self archiveCompletionBlock];
  v13 = archiveCompletionBlock;
  if (archiveCompletionBlock)
  {
    (*(archiveCompletionBlock + 16))(archiveCompletionBlock, v8, v10);
    [(FPArchiveOperation *)self setArchiveCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = FPArchiveOperation;
  [(FPActionOperation *)&v14 finishWithResult:v8 error:v10];
}

- (void)initWithItems:(uint64_t)a3 destinationFolder:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"FPArchiveOperation.m" lineNumber:181 description:{@"no items to archive: %@", a3}];
}

- (void)initWithItems:destinationFolder:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"destinationFolder" object:? file:? lineNumber:? description:?];
}

- (void)_checkNeedOfTemporaryDirectory
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: provider may (?) contain side fault, prepare by copy", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPArchiveOperation__materializeDestinationFolder___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_5_3(a1 a2)];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_prepareItemsWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: downloading content of item prior to archiving", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_archiveURLForFPEnumeratedDestination:targetArchiveName:service:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  v4 = v0;
  _os_log_debug_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: creating archive from URLs using old SPI: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 fp_shortDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __86__FPArchiveOperation__archiveURLForDSEnumeratedDestination_service_completionHandler___block_invoke_97_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [a2 fp_shortDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end