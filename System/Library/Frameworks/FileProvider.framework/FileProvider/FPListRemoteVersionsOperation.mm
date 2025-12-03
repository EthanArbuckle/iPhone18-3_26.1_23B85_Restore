@interface FPListRemoteVersionsOperation
- (BOOL)isSandboxExtensionConsumed;
- (FPListRemoteVersionsOperation)initWithDocumentURL:(id)l;
- (id)fp_prettyDescription;
- (void)isSandboxExtensionConsumed;
- (void)main;
@end

@implementation FPListRemoteVersionsOperation

- (FPListRemoteVersionsOperation)initWithDocumentURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [(FPListRemoteVersionsOperation *)a2 initWithDocumentURL:?];
  }

  v12.receiver = self;
  v12.super_class = FPListRemoteVersionsOperation;
  v7 = [(FPOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_documentURL, l);
    v9 = objc_opt_new();
    queue = v8->_queue;
    v8->_queue = v9;

    [(NSOperationQueue *)v8->_queue setMaxConcurrentOperationCount:1];
  }

  return v8;
}

- (void)main
{
  FPPrecheckTCCReadAccess(self->_documentURL);
  v3 = +[FPDaemonConnection sharedConnectionProxy];
  documentURL = self->_documentURL;
  includeCachedVersions = [(FPListRemoteVersionsOperation *)self includeCachedVersions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__FPListRemoteVersionsOperation_main__block_invoke;
  v6[3] = &unk_1E793DD60;
  v6[4] = self;
  [v3 listRemoteVersionsOfItemAtURL:documentURL includeCachedVersions:includeCachedVersions completionHandler:v6];
}

void __37__FPListRemoteVersionsOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __37__FPListRemoteVersionsOperation_main__block_invoke_cold_1(v9, v10);
    }

    v11 = [*(a1 + 32) finishedBlock];
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v8, v9);
      [*(a1 + 32) setFinishedBlock:0];
    }

LABEL_26:

    goto LABEL_27;
  }

  v13 = *(a1 + 32);
  if (v7)
  {
    if ([v13 isSandboxExtensionConsumed])
    {
      v32 = v7;
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v8;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            if (([v19 hasThumbnail] & 1) == 0)
            {
              v20 = [v19 version];
              v21 = [v20 contentVersion];
              [v12 setObject:v19 forKey:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v16);
      }

      if ([v12 count])
      {
        v22 = +[FPItemManager defaultManager];
        v23 = [v12 allValues];
        v24 = [v23 fp_map:&__block_literal_global_45];
        v7 = v32;
        v25 = [v22 thumbnailsFetchOperationForItem:v32 withVersions:v24 withSize:1024.0 scale:{1024.0, 2.0}];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __37__FPListRemoteVersionsOperation_main__block_invoke_2;
        v34[3] = &unk_1E793DD38;
        v35 = v12;
        [v25 setPerThumbnailWithVersionCompletionBlock:v34];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __37__FPListRemoteVersionsOperation_main__block_invoke_15;
        v33[3] = &unk_1E7939C00;
        v33[4] = *(a1 + 32);
        [v25 setThumbnailsFetchCompletionBlock:v33];
        [*(a1 + 32) addDependency:v25];
        [*(*(a1 + 32) + 312) addOperation:v25];
        v26 = [*(a1 + 32) finishedBlock];
        v27 = v26;
        if (v26)
        {
          (*(v26 + 16))(v26, v14, 0);
          [*(a1 + 32) setFinishedBlock:0];
        }
      }

      else
      {
        v28 = [*(a1 + 32) finishedBlock];
        v29 = v28;
        v7 = v32;
        if (v28)
        {
          (*(v28 + 16))(v28, v14, 0);
          [*(a1 + 32) setFinishedBlock:0];
        }

        [*(a1 + 32) completedWithResult:0 error:0];
      }

      v8 = v31;
      goto LABEL_26;
    }
  }

  else
  {
    [v13 completedWithResult:MEMORY[0x1E695E0F0] error:0];
  }

LABEL_27:

  v30 = *MEMORY[0x1E69E9840];
}

void __37__FPListRemoteVersionsOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    v17 = *(a1 + 32);
    v18 = [v13 contentVersion];
    v19 = [v17 objectForKey:v18];

    v20 = [v19 physicalURL];
    v37 = 0;
    v21 = [v20 fp_associateThumbnailToVersionAtURL:v14 thumbnailMetadata:v15 error:&v37];
    v22 = v37;

    v23 = fp_current_or_default_log();
    v24 = v23;
    if (v21)
    {
      v36 = v16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = [v19 url];
        v26 = [v19 physicalURL];
        *buf = 138413314;
        v39 = v14;
        v40 = 2112;
        v41 = v25;
        v42 = 2112;
        v43 = v26;
        v44 = 2112;
        v45 = v12;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_INFO, "[INFO] Associated thumbnail %@ for %@ on the promised URL %@ for identifier: %@, version: %@", buf, 0x34u);
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = [v19 url];
      v29 = [v28 path];
      [v27 stringWithFormat:@"com.apple.fileprovider.thumbnail-available.%@", v29];
      v31 = v30 = v12;
      v24 = [v31 fp_libnotifyPerUserNotificationName];

      v12 = v30;
      notify_post([v24 UTF8String]);
      v16 = v36;
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [v19 physicalURL];
      v34 = v33 = v12;
      v35 = [v22 fp_prettyDescription];
      *buf = 138413314;
      v39 = v34;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v13;
      v44 = 2112;
      v45 = v14;
      v46 = 2114;
      v47 = v35;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Failed to associate thumbnail data to promised URL %@ for identifier: %@, version: %@, thumbnailDataURL: %@, error: %{public}@", buf, 0x34u);

      v12 = v33;
    }

    goto LABEL_11;
  }

  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v19 = [v16 fp_prettyDescription];
    *buf = 138412802;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v19;
    _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] No data for thumbnail with identifier: %@, version: %@, error: %@", buf, 0x20u);
LABEL_11:
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __37__FPListRemoteVersionsOperation_main__block_invoke_15(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 304);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] finished fetching all thumbnails for: %@", &v6, 0xCu);
  }

  result = [*(a1 + 32) completedWithResult:0 error:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSandboxExtensionConsumed
{
  manager = [MEMORY[0x1E69A07C0] manager];
  documentURL = self->_documentURL;
  v9 = 0;
  v5 = [manager permanentStorageForItemAtURL:documentURL allocateIfNone:0 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FPListRemoteVersionsOperation *)&self->_documentURL isSandboxExtensionConsumed];
    }
  }

  return v6 == 0;
}

- (id)fp_prettyDescription
{
  v2 = MEMORY[0x1E696AEC0];
  fp_shortDescription = [(NSURL *)self->_documentURL fp_shortDescription];
  v4 = [v2 stringWithFormat:@"list remote versions for URL (%@)", fp_shortDescription];

  return v4;
}

- (void)initWithDocumentURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPListRemoteVersionsOperation.m" lineNumber:34 description:{@"url can not be nil: %@", 0}];
}

void __37__FPListRemoteVersionsOperation_main__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] failed to list version from the provider with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)isSandboxExtensionConsumed
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *self;
  fp_prettyDescription = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = fp_prettyDescription;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Failed to consume sandbox extension for URL %@. Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end