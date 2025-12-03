@interface FPUnarchiveOperation
- (BOOL)getHasUnarchivedMultipleItems:(BOOL *)items firstUnarchivedItemURL:(id *)l forArchiveFolderURL:(id)rL error:(id *)error;
- (FPUnarchiveOperation)initWithItem:(id)item destinationFolder:(id)folder;
- (id)_newParentProgressWithCompletedUnitCount:(int64_t)count;
- (void)_importUnarchivedContentAtURL:(id)l archiveName:(id)name completionHandler:(id)handler;
- (void)_unarchiveAndHandleIncorrectPassphraseURL:(id)l archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler;
- (void)_unarchiveURL:(id)l archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler;
- (void)_unarchiveURLInDSEnumeratedDomain:(id)domain service:(id)service passphrase:(id)passphrase completionHandler:(id)handler;
- (void)_unarchiveURLInFPEnumeratedDomain:(id)domain archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)service:(id)service didReceiveArchivedItemsDescriptors:(id)descriptors placeholderName:(id)name placeholderTypeIdentifier:(id)identifier;
@end

@implementation FPUnarchiveOperation

- (FPUnarchiveOperation)initWithItem:(id)item destinationFolder:(id)folder
{
  itemCopy = item;
  folderCopy = folder;
  v9 = folderCopy;
  if (itemCopy)
  {
    if (folderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FPUnarchiveOperation initWithItem:destinationFolder:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [FPUnarchiveOperation initWithItem:destinationFolder:];
LABEL_3:
  providerDomainID = [v9 providerDomainID];
  v14.receiver = self;
  v14.super_class = FPUnarchiveOperation;
  v11 = [(FPActionOperation *)&v14 initWithProvider:providerDomainID action:0];

  if (v11)
  {
    objc_storeStrong(&v11->_item, item);
    objc_storeStrong(&v11->_destinationFolder, folder);
    v12 = [(FPUnarchiveOperation *)v11 _newParentProgressWithCompletedUnitCount:0];
    [(FPActionOperation *)v11 setProgress:v12];
  }

  return v11;
}

- (id)_newParentProgressWithCompletedUnitCount:(int64_t)count
{
  v4 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  [v4 fp_setFileOperationKind:*MEMORY[0x1E696A840]];
  [v4 setCompletedUnitCount:count];
  return v4;
}

- (BOOL)getHasUnarchivedMultipleItems:(BOOL *)items firstUnarchivedItemURL:(id *)l forArchiveFolderURL:(id)rL error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  if (rLCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__FPUnarchiveOperation_getHasUnarchivedMultipleItems_firstUnarchivedItemURL_forArchiveFolderURL_error___block_invoke;
    v27[3] = &unk_1E793B018;
    v27[4] = &v28;
    v11 = [defaultManager enumeratorAtURL:rLCopy includingPropertiesForKeys:0 options:1 errorHandler:v27];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (v14)
          {
            v17 = 1;
            goto LABEL_19;
          }

          v14 = *(*(&v23 + 1) + 8 * i);
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
      v14 = 0;
    }

LABEL_19:

    v19 = v29[5];
    v18 = v19 == 0;
    if (v19)
    {
      if (!error)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (items)
      {
        *items = v17;
      }

      if (l)
      {
        v20 = v14;
        *l = v14;
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v19 = v29[5];
    }

    *error = v19;
LABEL_29:

    goto LABEL_30;
  }

  if (items)
  {
    *items = 0;
  }

  if (l)
  {
    *l = 0;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_30:
  _Block_object_dispose(&v28, 8);

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_importUnarchivedContentAtURL:(id)l archiveName:(id)name completionHandler:(id)handler
{
  v60[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  handlerCopy = handler;
  v37 = +[FPItemManager defaultManager];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__FPUnarchiveOperation__importUnarchivedContentAtURL_archiveName_completionHandler___block_invoke;
  aBlock[3] = &unk_1E793AE88;
  v59 = startAccessingSecurityScopedResource;
  v11 = lCopy;
  v58 = v11;
  v12 = _Block_copy(aBlock);
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v13 = [(FPUnarchiveOperation *)self getHasUnarchivedMultipleItems:&v56 firstUnarchivedItemURL:&v55 forArchiveFolderURL:v11 error:&v54];
  v36 = v55;
  v14 = v54;
  if (v13)
  {
    if (v56 == 1)
    {
      v34 = v11;
      goto LABEL_6;
    }

    v34 = v36;
    if (v34)
    {
LABEL_6:
      if (v56 == 1)
      {
        v15 = fp_current_or_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [FPUnarchiveOperation _importUnarchivedContentAtURL:archiveName:completionHandler:];
        }

        v16 = [[FPArchiveTemporaryFolder alloc] initWithURL:v34];
        v53 = v14;
        v17 = [(FPArchiveTemporaryFolder *)v16 temporaryFolderURLGetError:&v53];
        v18 = v53;

        if (!v17)
        {
          v12[2](v12);
          handlerCopy[2](handlerCopy, 0, v18);
          v17 = 0;
LABEL_25:

          v14 = v18;
          goto LABEL_26;
        }

        stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
        v20 = [v17 URLByAppendingPathComponent:stringByDeletingPathExtension isDirectory:1];

        v52 = v18;
        v21 = [defaultManager moveItemAtURL:v11 toURL:v20 error:&v52];
        v14 = v52;

        if ((v21 & 1) == 0)
        {
          v51 = 0;
          v29 = [defaultManager removeItemAtURL:v17 error:&v51];
          v30 = v51;
          if ((v29 & 1) == 0)
          {
            v31 = fp_current_or_default_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [FPUnarchiveOperation _importUnarchivedContentAtURL:archiveName:completionHandler:];
            }
          }

          v12[2](v12);
          handlerCopy[2](handlerCopy, 0, v14);

          v18 = v14;
          goto LABEL_25;
        }

        v12[2](v12);

        v34 = v20;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPUnarchiveOperation _importUnarchivedContentAtURL:v34 archiveName:? completionHandler:?];
      }

      v23 = [FPMoveOperation alloc];
      v60[0] = v34;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      v25 = [(FPMoveOperation *)v23 initWithURLs:v24 destinationFolder:self->_destinationFolder];

      objc_initWeak(&location, v25);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __84__FPUnarchiveOperation__importUnarchivedContentAtURL_archiveName_completionHandler___block_invoke_168;
      v39[3] = &unk_1E793B040;
      v49 = v56;
      v40 = defaultManager;
      v41 = v11;
      v46 = v12;
      selfCopy = self;
      v17 = v17;
      v43 = v17;
      v48[1] = a2;
      v16 = v16;
      v44 = v16;
      v47 = handlerCopy;
      objc_copyWeak(v48, &location);
      v18 = v14;
      v45 = v18;
      [(FPActionOperation *)v25 setActionCompletionBlock:v39];
      [(FPMoveOperation *)v25 setShouldBounceOnCollision:1];
      [(FPActionOperation *)v25 setHaveStitching:0];
      progress = [(FPActionOperation *)self progress];
      progress2 = [(FPActionOperation *)v25 progress];
      [progress addChild:progress2 withPendingUnitCount:10];

      [v37 scheduleAction:v25];
      objc_destroyWeak(v48);

      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_INFO, "[INFO] unarchive operation produced no output", &location, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }

  else
  {
    v12[2](v12);
    handlerCopy[2](handlerCopy, 0, v14);
  }

LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __84__FPUnarchiveOperation__importUnarchivedContentAtURL_archiveName_completionHandler___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

void __84__FPUnarchiveOperation__importUnarchivedContentAtURL_archiveName_completionHandler___block_invoke_168(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 112))
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 104) object:*(a1 + 48) file:@"FPArchiveOperation.m" lineNumber:843 description:@"nil temporaryFolderURL"];

      v4 = *(a1 + 56);
    }

    v6 = *(a1 + 32);
    v18 = 0;
    v7 = [v6 removeItemAtURL:v4 error:&v18];
    v8 = v18;
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:

    v13 = *(a1 + 88);
    if (v3)
    {
      (*(v13 + 16))(*(a1 + 88), 0, *(a1 + 72));
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      v15 = [WeakRetained transferResults];
      v16 = [v15 allValues];
      v17 = [v16 firstObject];
      (*(v13 + 16))(v13, v17, *(a1 + 72));
    }

    goto LABEL_13;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v19 = 0;
  v12 = [v10 removeItemAtURL:v11 error:&v19];
  v8 = v19;
  (*(*(a1 + 80) + 16))();
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  [*(a1 + 48) completedWithResult:0 error:v9];

LABEL_13:
}

- (void)_unarchiveURLInFPEnumeratedDomain:(id)domain archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler
{
  domainCopy = domain;
  nameCopy = name;
  handlerCopy = handler;
  passphraseCopy = passphrase;
  serviceCopy = service;
  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [FPUnarchiveOperation _unarchiveURLInFPEnumeratedDomain:domainCopy archiveName:? service:? passphrase:? completionHandler:?];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke;
  v22[3] = &unk_1E793B068;
  v23 = nameCopy;
  v24 = handlerCopy;
  v22[4] = self;
  v18 = nameCopy;
  v19 = handlerCopy;
  v20 = [serviceCopy unarchiveItemAtURL:domainCopy passphrase:passphraseCopy destinationFolderURL:domainCopy completionHandler:v22];

  if (v20)
  {
    progress = [(FPActionOperation *)self progress];
    [progress addChild:v20 withPendingUnitCount:80];
  }
}

void __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke_cold_1(a1, v6);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v8)
    {
      __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke_cold_2(a1, v5);
    }

    [*(a1 + 32) _importUnarchivedContentAtURL:v5 archiveName:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (void)_unarchiveURLInDSEnumeratedDomain:(id)domain service:(id)service passphrase:(id)passphrase completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  serviceCopy = service;
  passphraseCopy = passphrase;
  handlerCopy = handler;
  uRLByDeletingLastPathComponent = [domainCopy URLByDeletingLastPathComponent];
  if (passphraseCopy)
  {
    v22[0] = passphraseCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  else
  {
    v15 = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__FPUnarchiveOperation__unarchiveURLInDSEnumeratedDomain_service_passphrase_completionHandler___block_invoke;
  v20[3] = &unk_1E793A3D0;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = [serviceCopy unarchiveItemAtURL:domainCopy toURL:uRLByDeletingLastPathComponent options:0 acceptedFormats:1 passphrases:v15 completionHandler:v20];
  if (passphraseCopy)
  {
  }

  if (v17)
  {
    progress = [(FPActionOperation *)self progress];
    [progress addChild:v17 withPendingUnitCount:80];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __95__FPUnarchiveOperation__unarchiveURLInDSEnumeratedDomain_service_passphrase_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = +[FPItemManager defaultManager];
    [v5 fetchItemForURL:v6 completionHandler:*(a1 + 32)];
  }
}

- (void)_unarchiveURL:(id)l archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler
{
  lCopy = l;
  nameCopy = name;
  serviceCopy = service;
  passphraseCopy = passphrase;
  handlerCopy = handler;
  if ([(FPProviderDomain *)self->_providerDomain isUsingFPFS])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(FPUnarchiveOperation *)self _unarchiveURLInDSEnumeratedDomain:lCopy service:serviceCopy passphrase:passphraseCopy completionHandler:handlerCopy];
    goto LABEL_9;
  }

  providerID = [(FPProviderDomain *)self->_providerDomain providerID];
  if ([providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_8:
  [(FPUnarchiveOperation *)self _unarchiveURLInFPEnumeratedDomain:lCopy archiveName:nameCopy service:serviceCopy passphrase:passphraseCopy completionHandler:handlerCopy];
LABEL_9:
}

- (void)_unarchiveAndHandleIncorrectPassphraseURL:(id)l archiveName:(id)name service:(id)service passphrase:(id)passphrase completionHandler:(id)handler
{
  lCopy = l;
  nameCopy = name;
  serviceCopy = service;
  passphraseCopy = passphrase;
  handlerCopy = handler;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke;
  v23[3] = &unk_1E793B0B8;
  v23[4] = self;
  v24 = passphraseCopy;
  v28 = handlerCopy;
  v29 = a2;
  v25 = lCopy;
  v26 = nameCopy;
  v27 = serviceCopy;
  v18 = serviceCopy;
  v19 = nameCopy;
  v20 = lCopy;
  v21 = passphraseCopy;
  v22 = handlerCopy;
  [(FPUnarchiveOperation *)self _unarchiveURL:v20 archiveName:v19 service:v18 passphrase:v21 completionHandler:v23];
}

void __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v7 = getDSArchiveServiceErrorDomainSymbolLoc_ptr;
  v38 = getDSArchiveServiceErrorDomainSymbolLoc_ptr;
  if (!getDSArchiveServiceErrorDomainSymbolLoc_ptr)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getDSArchiveServiceErrorDomainSymbolLoc_block_invoke;
    v33 = &unk_1E793A2E8;
    v34 = &v35;
    v8 = DesktopServicesPrivLibrary();
    v36[3] = dlsym(v8, "DSArchiveServiceErrorDomain");
    getDSArchiveServiceErrorDomainSymbolLoc_ptr = *(v34[1] + 24);
    v7 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v7)
  {
    __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_3();
  }

  v9 = *v7;
  v10 = [v6 domain];
  if (![v10 isEqualToString:v9])
  {

    goto LABEL_11;
  }

  v11 = [v6 code];

  if (v11 != -1000)
  {
LABEL_11:
    (*(*(a1 + 72) + 16))();
    goto LABEL_17;
  }

  v12 = [*(a1 + 32) passphraseRequestBlock];
  if (v12)
  {
    v13 = [*(a1 + 32) stitcher];
    [v13 finishWithItem:0 error:v6];

    [*(a1 + 32) resetStitcher];
    v14 = *(a1 + 40);
    v15 = fp_current_or_default_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v16)
      {
        __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_1((a1 + 32), v15, v17, v18, v19, v20, v21, v22);
      }
    }

    else if (v16)
    {
      __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_2((a1 + 32), v15, v17, v18, v19, v20, v21, v22);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_174;
    v24[3] = &unk_1E793B090;
    v23 = *(a1 + 32);
    v29 = *(a1 + 80);
    v24[4] = v23;
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    (v12)[2](v12, v6, v24);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

LABEL_17:
}

void __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 | v5)
  {
    if (v7)
    {
      [*(a1 + 32) _unarchiveAndHandleIncorrectPassphraseURL:*(a1 + 40) archiveName:*(a1 + 48) service:*(a1 + 56) passphrase:v7 completionHandler:*(a1 + 64)];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"FPArchiveOperation.m" lineNumber:962 description:@"either the passphrase or the error should be set"];
  }

  (*(*(a1 + 64) + 16))();
LABEL_6:
}

- (void)actionMain
{
  v3 = +[FPItemManager defaultManager];
  v4 = self->_item;
  providerDomainID = [(FPItem *)v4 providerDomainID];
  v6 = [FPProviderDomain providerDomainWithID:providerDomainID cachePolicy:1 error:0];
  providerDomain = self->_providerDomain;
  self->_providerDomain = v6;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__FPUnarchiveOperation_actionMain__block_invoke;
  v9[3] = &unk_1E793B130;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v3 fetchURLForItem:v8 completionHandler:v9];
}

void __34__FPUnarchiveOperation_actionMain__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    [*(a1 + 32) completedWithResult:0 error:a3];
  }

  else
  {
    if ([v6 startAccessingSecurityScopedResource])
    {
      objc_storeStrong((*(a1 + 32) + 456), a2);
    }

    v8 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v7 options:0x20000];
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v9 setMaxConcurrentOperationCount:1];
    v10 = objc_opt_new();
    objc_storeStrong((*(a1 + 32) + 488), v10);
    v20[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__FPUnarchiveOperation_actionMain__block_invoke_2;
    v16[3] = &unk_1E793B108;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v10;
    v18 = v8;
    v19 = v12;
    v13 = v8;
    v14 = v10;
    [v14 coordinateAccessWithIntents:v11 queue:v9 byAccessor:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __34__FPUnarchiveOperation_actionMain__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 completedWithResult:0 error:a2];
  }

  else
  {
    v4 = [*(a1 + 40) retainAccess];
    v5 = *(a1 + 32);
    v6 = *(v5 + 496);
    *(v5 + 496) = v4;

    v7 = [*(a1 + 48) URL];
    getDSArchiveServiceClass();
    v8 = objc_opt_new();
    [v8 setUnarchivingDelegate:*(a1 + 32)];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 56) filename];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__FPUnarchiveOperation_actionMain__block_invoke_3;
    v11[3] = &unk_1E793B0E0;
    v11[4] = *(a1 + 32);
    [v9 _unarchiveAndHandleIncorrectPassphraseURL:v7 archiveName:v10 service:v8 passphrase:0 completionHandler:v11];
  }
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  itemURL = self->_itemURL;
  if (itemURL)
  {
    [(NSURL *)itemURL stopAccessingSecurityScopedResource];
  }

  if (self->_coordinationAccessToken)
  {
    coordinator = self->_coordinator;
    if (!coordinator)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"FPArchiveOperation.m" lineNumber:1044 description:@"nil coordinator with a non-nil coordination access token"];

      coordinator = self->_coordinator;
      coordinationAccessToken = self->_coordinationAccessToken;
    }

    [(NSFileCoordinator *)coordinator releaseAccess:?];
    v11 = self->_coordinationAccessToken;
    self->_coordinationAccessToken = 0;
  }

  v12 = self->_coordinator;
  self->_coordinator = 0;

  v13 = resultCopy;
  if (errorCopy)
  {
    v14 = [errorCopy fp_annotatedErrorWithItem:self->_item variant:@"Unarchive"];
  }

  else
  {
    errorCopy = [(FPActionOperation *)self stitcher];
    [errorCopy associateItem:v13 withPlaceholderID:self->_placeholderID];
    v14 = 0;
  }

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItem:v13 error:v14];

  unarchiveCompletionBlock = [(FPUnarchiveOperation *)self unarchiveCompletionBlock];
  v17 = unarchiveCompletionBlock;
  if (unarchiveCompletionBlock)
  {
    (*(unarchiveCompletionBlock + 16))(unarchiveCompletionBlock, v13, v14);
    [(FPUnarchiveOperation *)self setUnarchiveCompletionBlock:0];
  }

  v20.receiver = self;
  v20.super_class = FPUnarchiveOperation;
  [(FPActionOperation *)&v20 finishWithResult:v13 error:v14];
}

- (void)service:(id)service didReceiveArchivedItemsDescriptors:(id)descriptors placeholderName:(id)name placeholderTypeIdentifier:(id)identifier
{
  v71 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  descriptorsCopy = descriptors;
  nameCopy = name;
  identifierCopy = identifier;
  if (![descriptorsCopy count] && !objc_msgSend(descriptorsCopy, "count"))
  {
    [FPUnarchiveOperation service:didReceiveArchivedItemsDescriptors:placeholderName:placeholderTypeIdentifier:];
  }

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  v62 = serviceCopy;
  if (nameCopy && identifierCopy)
  {
    v15 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:identifierCopy];
    stitcher2 = [(FPActionOperation *)self stitcher];
    itemIdentifier = [(FPItem *)self->_destinationFolder itemIdentifier];
    providerDomainID = [(FPItem *)self->_destinationFolder providerDomainID];
    v19 = [stitcher2 createPlaceholderWithName:nameCopy contentType:v15 contentAccessDate:0 underParent:itemIdentifier inProviderDomainID:providerDomainID];
    placeholderID = self->_placeholderID;
    self->_placeholderID = v19;

    v21 = v62;
  }

  else
  {
    v57 = identifierCopy;
    v58 = nameCopy;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v59 = descriptorsCopy;
    obj = descriptorsCopy;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    selfCopy = self;
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = 0;
      v26 = *v67;
      while (2)
      {
        v27 = 0;
        v63 = v23;
        do
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v66 + 1) + 8 * v27);
          filePath = [v28 filePath];
          pathComponents = [filePath pathComponents];
          v31 = [pathComponents count];
          if ([pathComponents count] == 2)
          {
            [pathComponents lastObject];
            v32 = v24;
            v33 = v26;
            v35 = v34 = v25;
            v36 = [v35 isEqualToString:@"/"];

            v25 = v34;
            v26 = v33;
            v24 = v32;
            v23 = v63;
          }

          else
          {
            v36 = 0;
          }

          if (v31 == 1 || (v36 & 1) != 0)
          {
            v37 = v28;

            if (v25)
            {
              v38 = 0;
              goto LABEL_24;
            }

            v25 = 1;
            v24 = v37;
          }

          else
          {
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v38 = v25 == 1;
      v37 = v24;
LABEL_24:
      self = selfCopy;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    fileURL = [(FPItem *)self->_destinationFolder fileURL];
    if (v38)
    {
      filePath2 = [v37 filePath];
      lastPathComponent = [filePath2 lastPathComponent];

      if (!lastPathComponent)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"FPArchiveOperation.m" lineNumber:1133 description:{@"missing name in descriptor: %@", v37}];
      }

      typeIdentifier = [v37 typeIdentifier];
      itemIdentifier2 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:typeIdentifier];
      providerDomainID3 = [(FPUnarchiveOperation *)self findUniqueUnarchivedName:lastPathComponent isFolder:itemIdentifier2 == *MEMORY[0x1E6982DC8] parent:fileURL];
      stitcher3 = [(FPActionOperation *)self stitcher];
      [(FPItem *)self->_destinationFolder itemIdentifier];
      v47 = obja = fileURL;
      providerDomainID2 = [(FPItem *)self->_destinationFolder providerDomainID];
      v49 = [stitcher3 createPlaceholderWithName:providerDomainID3 contentType:itemIdentifier2 contentAccessDate:0 underParent:v47 inProviderDomainID:providerDomainID2];
      v50 = self->_placeholderID;
      self->_placeholderID = v49;

      fileURL = obja;
    }

    else
    {
      displayName = [(FPItem *)self->_item displayName];
      lastPathComponent = [(FPUnarchiveOperation *)self findUniqueUnarchivedName:displayName isFolder:1 parent:fileURL];

      typeIdentifier = [(FPActionOperation *)self stitcher];
      itemIdentifier2 = [(FPItem *)self->_destinationFolder itemIdentifier];
      providerDomainID3 = [(FPItem *)self->_destinationFolder providerDomainID];
      v52 = [typeIdentifier createPlaceholderWithName:lastPathComponent isFolder:1 contentAccessDate:0 underParent:itemIdentifier2 inProviderDomainID:providerDomainID3];
      stitcher3 = self->_placeholderID;
      self->_placeholderID = v52;
    }

    self = selfCopy;
    v21 = v62;
    nameCopy = v58;
    descriptorsCopy = v59;
    identifierCopy = v57;
  }

  v53 = +[FPProgressManager defaultManager];
  progress = [(FPActionOperation *)self progress];
  [v53 registerCopyProgress:progress forItemID:self->_placeholderID];

  stitcher4 = [(FPActionOperation *)self stitcher];
  [stitcher4 flush];

  v56 = *MEMORY[0x1E69E9840];
}

- (void)initWithItem:destinationFolder:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)initWithItem:destinationFolder:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"destinationFolder" object:? file:? lineNumber:? description:?];
}

- (void)_importUnarchivedContentAtURL:archiveName:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] %@: Archive contains multiple top-level item, wrapping them in a folder named after the archive", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_importUnarchivedContentAtURL:archiveName:completionHandler:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  v4 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] failed to remove temporary folder at URL %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_importUnarchivedContentAtURL:(uint64_t)a1 archiveName:(void *)a2 completionHandler:.cold.3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_shortDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveURLInFPEnumeratedDomain:(uint64_t)a1 archiveName:(void *)a2 service:passphrase:completionHandler:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_shortDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_5_3(a1 a2)];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __107__FPUnarchiveOperation__unarchiveURLInFPEnumeratedDomain_archiveName_service_passphrase_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_5_3(a1 a2)];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: incorrect passphrase, asking for one", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: archive requires a passphrase, asking for one", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __115__FPUnarchiveOperation__unarchiveAndHandleIncorrectPassphraseURL_archiveName_service_passphrase_completionHandler___block_invoke_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getDSArchiveServiceErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPArchiveOperation.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)service:didReceiveArchivedItemsDescriptors:placeholderName:placeholderTypeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end