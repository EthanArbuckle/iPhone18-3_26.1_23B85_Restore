@interface WFDropboxStorageService
- (INAppDescriptor)associatedAppDescriptor;
- (id)saveFiles:(id)a3 withManagedLevel:(unint64_t)a4 toPath:(id)a5 options:(unint64_t)a6 progress:(id)a7 completionHandler:(id)a8;
- (void)appendText:(id)a3 toPath:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)createFolderAtPath:(id)a3 completionHandler:(id)a4;
- (void)deleteFiles:(id)a3 deleteImmediately:(BOOL)a4 completionHandler:(id)a5;
- (void)finishRetrievalWithContentsOfFolderAtPath:(id)a3 sessionManager:(id)a4 retrievalHandler:(id)a5;
- (void)getSharingURLsForFiles:(id)a3 usePublicURLs:(BOOL)a4 completionHandler:(id)a5;
- (void)retrieveFilesAtPath:(id)a3 options:(unint64_t)a4 progress:(id)a5 completionHandler:(id)a6;
- (void)searchFiles:(id)a3 inPath:(id)a4 completionHandler:(id)a5;
@end

@implementation WFDropboxStorageService

- (INAppDescriptor)associatedAppDescriptor
{
  v2 = [objc_alloc(MEMORY[0x277CD3A58]) initWithLocalizedName:0 bundleIdentifier:@"com.getdropbox.Dropbox" extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:@"G7HH3F8CAK" supportedIntents:0 bundleURL:0 documentTypes:0];
  v3 = [MEMORY[0x277CD3A88] sharedResolver];
  v4 = [v3 resolvedAppMatchingDescriptor:v2];

  if ([v4 isInstalled])
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CFC238] platformFileManagerLocation];
    v5 = [v6 appDescriptor];
  }

  return v5;
}

- (void)searchFiles:(id)a3 inPath:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[(WFAccount *)WFDropboxAccount];
  v11 = [v10 firstObject];

  v12 = objc_alloc_init(WFDropboxSessionManager);
  v13 = [v11 credential];
  [(WFDropboxSessionManager *)v12 setCredential:v13];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__WFDropboxStorageService_searchFiles_inPath_completionHandler___block_invoke;
  v15[3] = &unk_278C20490;
  v16 = v7;
  v14 = v7;
  [(WFDropboxSessionManager *)v12 searchFiles:v9 inPath:v8 completionHandler:v15];
}

void __64__WFDropboxStorageService_searchFiles_inPath_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 count];
  if (v5 || !v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [v8 if_map:&__block_literal_global_258];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)appendText:(id)a3 toPath:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[(WFAccount *)WFDropboxAccount];
  v14 = [v13 firstObject];

  v15 = objc_alloc_init(WFDropboxSessionManager);
  v16 = [v14 credential];
  [(WFDropboxSessionManager *)v15 setCredential:v16];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke;
  aBlock[3] = &unk_278C1B4C0;
  v17 = v15;
  v34 = v17;
  v18 = v12;
  v35 = v18;
  v19 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_3;
  v25[3] = &unk_278C1B510;
  v26 = v11;
  v27 = self;
  v30 = v18;
  v31 = v19;
  v28 = v10;
  v29 = v17;
  v32 = a5;
  v20 = v17;
  v21 = v19;
  v22 = v10;
  v23 = v18;
  v24 = v11;
  [(WFDropboxSessionManager *)v20 getItemAtPath:v24 completionHandler:v25];
}

void __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_2;
  v9[3] = &unk_278C1B358;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = [v7 saveFile:a2 toPath:a3 overwrite:a4 progress:0 completionHandler:v9];
}

void __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![v5 isDirectory])
  {
    if (v5)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_4;
      v31[3] = &unk_278C1B4E8;
      v19 = *(a1 + 56);
      v20 = *(a1 + 48);
      v22 = *(a1 + 72);
      v21 = *(a1 + 80);
      v32 = v20;
      v34 = v21;
      v33 = v22;
      [v19 downloadFile:v5 ofType:0 proposedFilename:0 completionHandler:v31];

      goto LABEL_11;
    }

    v23 = [v6 domain];
    if ([v23 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v24 = [v6 code];

      if (v24 == 4)
      {
        v25 = MEMORY[0x277CFC3C8];
        v26 = [*(a1 + 48) dataUsingEncoding:4];
        v27 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
        v28 = [*(a1 + 32) lastPathComponent];
        v12 = [v25 fileWithData:v26 ofType:v27 proposedFilename:v28];

        v29 = *(a1 + 32);
        (*(*(a1 + 72) + 16))();
        goto LABEL_3;
      }
    }

    else
    {
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_11;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = WFLocalizedString(@"The path you tried to save to (%1$@) is an existing folder in your %2$@. When appending or prepending text to a file, you should specify a path to a file instead.");
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [objc_opt_class() serviceName];
  v12 = [v7 localizedStringWithFormat:v8, v10, v11];

  v13 = *(a1 + 64);
  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA050];
  v35[0] = *MEMORY[0x277CCA470];
  v16 = WFLocalizedString(@"Folder already exists");
  v35[1] = *MEMORY[0x277CCA450];
  v36[0] = v16;
  v36[1] = v12;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v18 = [v14 errorWithDomain:v15 code:516 userInfo:v17];
  (*(v13 + 16))(v13, 0, v18);

LABEL_3:
LABEL_11:

  v30 = *MEMORY[0x277D85DE8];
}

void __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a3;
  v10 = [WFAppendUtilities fileByAppendingText:v5 toFile:a2 options:v6];
  v8 = a1[5];
  v9 = [v7 path];

  (*(v8 + 16))(v8, v10, v9, 1);
}

void __71__WFDropboxStorageService_appendText_toPath_options_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = a3;
    v6 = [WFFileStorageServiceResult resultWithMetadata:a2];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    (*(v3 + 16))(v3, v7, v5);
  }

  else
  {
    v8 = *(v3 + 16);
    v6 = a3;
    v8(v3, 0, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createFolderAtPath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(WFAccount *)WFDropboxAccount];
  v9 = [v8 firstObject];

  v10 = objc_alloc_init(WFDropboxSessionManager);
  v11 = [v9 credential];
  [(WFDropboxSessionManager *)v10 setCredential:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__WFDropboxStorageService_createFolderAtPath_completionHandler___block_invoke;
  v15[3] = &unk_278C1B498;
  v16 = v6;
  v17 = v10;
  v18 = self;
  v19 = v7;
  v12 = v10;
  v13 = v7;
  v14 = v6;
  [(WFDropboxSessionManager *)v12 createFolderAtPath:v14 completionHandler:v15];
}

void __64__WFDropboxStorageService_createFolderAtPath_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v10 = [v5 domain];
    if ([v10 isEqualToString:@"WFDropboxErrorDomain"])
    {
      v11 = [v6 code];

      if (v11 == 105)
      {
        if ([*(a1 + 32) length] && !objc_msgSend(*(a1 + 32), "isEqualToString:", @"/"))
        {
          v15 = *(a1 + 32);
          v14 = *(a1 + 40);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __64__WFDropboxStorageService_createFolderAtPath_completionHandler___block_invoke_2;
          v18[3] = &unk_278C1B470;
          v21 = *(a1 + 56);
          v16 = *(a1 + 32);
          v17 = *(a1 + 48);
          v19 = v16;
          v20 = v17;
          [v14 getItemAtPath:v15 completionHandler:v18];

          goto LABEL_11;
        }

        v12 = *(*(a1 + 56) + 16);
        goto LABEL_10;
      }
    }

    else
    {
    }

    v12 = *(*(a1 + 56) + 16);
LABEL_10:
    v12();
    goto LABEL_11;
  }

  v7 = *(a1 + 56);
  v8 = [WFFileStorageServiceResult resultWithMetadata:a2];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  (*(v7 + 16))(v7, v9, v6);

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

void __64__WFDropboxStorageService_createFolderAtPath_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isDirectory])
  {
    v7 = a1[6];
    if (v5)
    {
      v8 = [WFFileStorageServiceResult resultWithMetadata:v5];
      v24[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      (*(v7 + 16))(v7, v9, v6);
    }

    else
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = WFLocalizedString(@"The path you tried to save to (%1$@) is an existing file in your %2$@.");
    v13 = a1[4];
    v12 = a1[5];
    v14 = [objc_opt_class() serviceName];
    v15 = [v10 localizedStringWithFormat:v11, v13, v14];

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v22[0] = *MEMORY[0x277CCA470];
    v18 = WFLocalizedString(@"File already exists");
    v22[1] = *MEMORY[0x277CCA450];
    v23[0] = v18;
    v23[1] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v20 = [v16 errorWithDomain:v17 code:516 userInfo:v19];

    (*(a1[6] + 16))();
    v6 = v20;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)deleteFiles:(id)a3 deleteImmediately:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke;
  v9[3] = &unk_278C1F398;
  v10 = v6;
  v7 = v6;
  v8 = a3;
  [v8 getObjectRepresentations:v9 forClass:objc_opt_class()];
}

void __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[(WFAccount *)WFDropboxAccount];
    v9 = [v8 firstObject];

    v10 = objc_alloc_init(WFDropboxSessionManager);
    v11 = [v9 credential];
    [(WFDropboxSessionManager *)v10 setCredential:v11];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke_2;
    v15[3] = &unk_278C1B448;
    v16 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke_4;
    v13[3] = &unk_278C1BCC0;
    v14 = *(a1 + 32);
    v12 = v10;
    [v6 if_enumerateAsynchronously:v15 completionHandler:v13];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__WFDropboxStorageService_deleteFiles_deleteImmediately_completionHandler___block_invoke_3;
  v9[3] = &unk_278C1B358;
  v10 = v6;
  v8 = v6;
  [v7 deleteItem:a2 completionHandler:v9];
}

- (void)getSharingURLsForFiles:(id)a3 usePublicURLs:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__WFDropboxStorageService_getSharingURLsForFiles_usePublicURLs_completionHandler___block_invoke;
  v9[3] = &unk_278C1F398;
  v10 = v6;
  v7 = v6;
  v8 = a3;
  [v8 getObjectRepresentations:v9 forClass:objc_opt_class()];
}

void __82__WFDropboxStorageService_getSharingURLsForFiles_usePublicURLs_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[(WFAccount *)WFDropboxAccount];
    v9 = [v8 firstObject];

    v10 = objc_alloc_init(WFDropboxSessionManager);
    v11 = [v9 credential];
    [(WFDropboxSessionManager *)v10 setCredential:v11];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__WFDropboxStorageService_getSharingURLsForFiles_usePublicURLs_completionHandler___block_invoke_2;
    v14[3] = &unk_278C1B420;
    v15 = v10;
    v12 = *(a1 + 32);
    v13 = v10;
    [v6 if_mapAsynchronously:v14 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __82__WFDropboxStorageService_getSharingURLsForFiles_usePublicURLs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__WFDropboxStorageService_getSharingURLsForFiles_usePublicURLs_completionHandler___block_invoke_3;
  v9[3] = &unk_278C1B3F8;
  v10 = v6;
  v8 = v6;
  [v7 getSharedLinkForFile:a2 completionHandler:v9];
}

- (id)saveFiles:(id)a3 withManagedLevel:(unint64_t)a4 toPath:(id)a5 options:(unint64_t)a6 progress:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  if (!v13)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"WFDropboxStorageService.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentations"}];
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__15951;
  v53[4] = __Block_byref_object_dispose__15952;
  v54 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = [WFStorageServiceCancellableOperation alloc];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke;
  v50[3] = &unk_278C224F0;
  v19 = v17;
  v51 = v19;
  v52 = v53;
  v20 = [(WFStorageServiceCancellableOperation *)v18 initWithCancelBlock:v50];
  v38 = a6;
  v37 = [v13 if_map:&__block_literal_global_206];
  v21 = [MEMORY[0x277CFC2E0] collectionWithItems:v37];
  v22 = +[(WFAccount *)WFDropboxAccount];
  v23 = [v22 firstObject];
  v36 = v13;

  v24 = objc_alloc_init(WFDropboxSessionManager);
  v25 = [v23 credential];
  [(WFDropboxSessionManager *)v24 setCredential:v25];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_3;
  v40[3] = &unk_278C1B3D0;
  v26 = v20;
  v41 = v26;
  v27 = v16;
  v47 = v27;
  v28 = v14;
  v49 = v38;
  v42 = v28;
  v43 = self;
  v29 = v15;
  v44 = v29;
  v30 = v19;
  v45 = v30;
  v48 = v53;
  v31 = v24;
  v46 = v31;
  [v21 getFileRepresentations:v40 forType:0];
  v32 = v46;
  v33 = v26;

  _Block_object_dispose(v53, 8);

  return v33;
}

uint64_t __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  result = [*(a1 + 32) unlock];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] && !objc_msgSend(*(a1 + 32), "isCancelled"))
  {
    if ([*(a1 + 40) length])
    {
      v7 = [*(a1 + 40) isEqualToString:@"/"];
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 96) & 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_4;
    aBlock[3] = &unk_278C1B3A8;
    v17 = *(a1 + 32);
    v22 = *(a1 + 80);
    v18 = *(a1 + 40);
    v24 = v7;
    v19 = v5;
    v25 = v8;
    v15 = *(a1 + 48);
    v9 = *(&v15 + 1);
    v10 = *(a1 + 64);
    v23 = *(a1 + 88);
    v11 = *(a1 + 72);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v20 = v15;
    v21 = v12;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (v7)
    {
      (*(v13 + 2))(v13, 0, 0);
    }

    else
    {
      [*(a1 + 72) getItemAtPath:*(a1 + 40) completionHandler:v13];
    }
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = *MEMORY[0x277CCA050];
  if ([v7 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v9 = [v6 code];

    if (v9 == 4)
    {

      goto LABEL_6;
    }
  }

  else
  {
  }

  if (!v6)
  {
LABEL_6:
    if ([*(a1 + 32) isCancelled])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v10 = *(a1 + 40);
    if ([v5 isDirectory] & 1) != 0 || (*(a1 + 104))
    {
      v11 = 1;
    }

    else
    {
      v11 = [*(a1 + 40) hasSuffix:@"/"];
    }

    if ([*(a1 + 48) count] < 2)
    {
      if ((v11 & 1) == 0)
      {
        if (v5 && (*(a1 + 105) & 1) != 0)
        {
          v21 = 0;
        }

        else
        {
          v26 = MEMORY[0x277CFC3C8];
          v27 = [v10 lastPathComponent];
          v28 = [*(a1 + 48) firstObject];
          v29 = [v28 wfType];
          v30 = [v26 proposedFilenameForFile:v27 ofType:v29];

          v31 = [v10 stringByDeletingLastPathComponent];
          v32 = [v31 stringByAppendingPathComponent:v30];

          v21 = 0;
          v10 = v32;
        }

        goto LABEL_18;
      }
    }

    else if (!((v5 == 0) | v11 & 1))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = WFLocalizedString(@"The path you tried to save to (%1$@) is an existing file in your %2$@. When saving multiple files at a time, you should specify a path to a folder instead.");
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v16 = [objc_opt_class() serviceName];
      v17 = [v12 localizedStringWithFormat:v13, v14, v16];

      v18 = MEMORY[0x277CCA9B8];
      v45[0] = *MEMORY[0x277CCA470];
      v19 = WFLocalizedString(@"File already exists");
      v45[1] = *MEMORY[0x277CCA450];
      v46[0] = v19;
      v46[1] = v17;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      v6 = [v18 errorWithDomain:v8 code:516 userInfo:v20];

      (*(*(a1 + 88) + 16))();
LABEL_19:

      goto LABEL_20;
    }

    v21 = 1;
LABEL_18:
    [*(a1 + 64) setTotalUnitCount:{objc_msgSend(*(a1 + 48), "count")}];
    [*(a1 + 64) setCompletedUnitCount:0];
    v22 = *(a1 + 48);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_5;
    v36[3] = &unk_278C1B380;
    v37 = *(a1 + 32);
    v38 = *(a1 + 64);
    v43 = v21;
    v10 = v10;
    v39 = v10;
    v23 = *(a1 + 72);
    v24 = *(a1 + 96);
    v40 = v23;
    v42 = v24;
    v41 = *(a1 + 80);
    v44 = *(a1 + 105);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_7;
    v33[3] = &unk_278C21AE8;
    v34 = *(a1 + 32);
    v35 = *(a1 + 88);
    [v22 if_mapAsynchronously:v36 completionHandler:v33];

    v6 = 0;
    v17 = v37;
    goto LABEL_19;
  }

LABEL_8:
  (*(*(a1 + 88) + 16))();
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

void __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([*(a1 + 32) isCancelled])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else if ([v6 representationType] == 1 && (objc_msgSend(v6, "fileURL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "wf_fileIsDirectory"), v8, v9))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = WFLocalizedString(@"“%@” is a folder");
    v12 = [v6 filename];
    v13 = [v10 localizedStringWithFormat:v11, v12];

    v14 = MEMORY[0x277CCACA8];
    v15 = WFLocalizedString(@"“%@” could not be saved because it is a folder or package. Consider zipping this file using Make Archive before saving.");
    v16 = [v6 filename];
    v17 = [v14 localizedStringWithFormat:v15, v16];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA5B8];
    v20 = *MEMORY[0x277CCA450];
    v34[0] = *MEMORY[0x277CCA470];
    v34[1] = v20;
    v35[0] = v13;
    v35[1] = v17;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v22 = [v18 errorWithDomain:v19 code:21 userInfo:v21];

    (*(v7 + 2))(v7, 0, v22);
  }

  else
  {
    [*(a1 + 40) becomeCurrentWithPendingUnitCount:1];
    v23 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:1];
    [*(a1 + 40) resignCurrent];
    v24 = *(a1 + 48);
    if (*(a1 + 80))
    {
      v25 = [v6 filename];
      v26 = [v24 stringByAppendingPathComponent:v25];
    }

    else
    {
      v26 = v24;
    }

    [*(a1 + 56) lock];
    v27 = *(a1 + 64);
    v28 = *(*(*(a1 + 72) + 8) + 40);
    v29 = *(a1 + 81);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_6;
    v32[3] = &unk_278C1B358;
    v33 = v7;
    v30 = [v27 saveFile:v6 toPath:v26 overwrite:v29 progress:v23 completionHandler:v32];
    [v28 addObject:v30];

    [*(a1 + 56) unlock];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __96__WFDropboxStorageService_saveFiles_withManagedLevel_toPath_options_progress_completionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 count];
  if (v5 || !v6 || [*(a1 + 32) isCancelled])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v8 if_map:&__block_literal_global_234];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)finishRetrievalWithContentsOfFolderAtPath:(id)a3 sessionManager:(id)a4 retrievalHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__WFDropboxStorageService_finishRetrievalWithContentsOfFolderAtPath_sessionManager_retrievalHandler___block_invoke;
  v9[3] = &unk_278C20490;
  v10 = v7;
  v8 = v7;
  [a4 getContentsOfFolderAtPath:a3 completionHandler:v9];
}

void __101__WFDropboxStorageService_finishRetrievalWithContentsOfFolderAtPath_sessionManager_retrievalHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a2 if_map:&__block_literal_global_15980];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveFilesAtPath:(id)a3 options:(unint64_t)a4 progress:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a6;
  v11 = +[(WFAccount *)WFDropboxAccount];
  v12 = [v11 firstObject];

  v13 = objc_alloc_init(WFDropboxSessionManager);
  v14 = [v12 credential];
  [(WFDropboxSessionManager *)v13 setCredential:v14];

  if ([v9 isEqualToString:@"/"])
  {
    [(WFDropboxStorageService *)self finishRetrievalWithContentsOfFolderAtPath:&stru_2850323E8 sessionManager:v13 retrievalHandler:v10];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__WFDropboxStorageService_retrieveFilesAtPath_options_progress_completionHandler___block_invoke;
    v15[3] = &unk_278C1B2F0;
    v20 = v7 & 1;
    v19 = v10;
    v16 = v9;
    v17 = self;
    v18 = v13;
    [(WFDropboxSessionManager *)v18 getItemAtPath:v16 completionHandler:v15];
  }
}

void __82__WFDropboxStorageService_retrieveFilesAtPath_options_progress_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [v6 domain];
  if (([v8 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_9:
    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

  v9 = [v7 code];

  if (v9 != 4 || *(a1 + 64) == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v5)
  {
    if ([v5 isDirectory])
    {
      [*(a1 + 40) finishRetrievalWithContentsOfFolderAtPath:*(a1 + 32) sessionManager:*(a1 + 48) retrievalHandler:*(a1 + 56)];
    }

    else
    {
      v18 = *(a1 + 56);
      v19 = [WFFileStorageServiceResult resultWithMetadata:v5];
      v22 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      (*(v18 + 16))(v18, v20, 0);
    }
  }

  else
  {
    v10 = *(a1 + 56);
    if (*(a1 + 64))
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA050];
      v23 = *MEMORY[0x277CCA450];
      v13 = MEMORY[0x277CCACA8];
      v14 = WFLocalizedString(@"No item was found at path: %@");
      v15 = [v13 localizedStringWithFormat:v14, *(a1 + 32)];
      v24[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v17 = [v11 errorWithDomain:v12 code:4 userInfo:v16];
      (*(v10 + 16))(v10, 0, v17);
    }

    else
    {
      (*(v10 + 16))(*(a1 + 56), 0, 0);
    }
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

@end