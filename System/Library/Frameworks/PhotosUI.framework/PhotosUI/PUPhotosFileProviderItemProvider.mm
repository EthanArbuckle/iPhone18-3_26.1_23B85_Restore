@interface PUPhotosFileProviderItemProvider
- (PUPhotosFileProviderItemProvider)initWithProgressURLs:(id)a3 progressURLSandboxExtensionTokens:(id)a4;
- (id)_progressURLForTypeIdentifier:(id)a3;
- (id)_startProgressForURL:(id)a3 UUID:(id)a4 cancellationHandler:(id)a5;
- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
- (id)loadFileRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
- (id)loadInPlaceFileRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
- (id)loadObjectOfClass:(Class)a3 completionHandler:(id)a4;
- (void)_completeProgressWithUUID:(id)a3 success:(BOOL)a4 completionHandler:(id)a5;
- (void)_startObservingProgressProxyIfNeeded:(id)a3 UUID:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PUPhotosFileProviderItemProvider

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (PUPhotosFileProviderItemProviderContext == a6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (NSStringFromSelector(sel_fractionCompleted), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v10 isEqualToString:v12], v12, v13))
    {
      v31 = v11;
      v32 = v10;
      v14 = v11;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
      v16 = [v15 allKeysForObject:v14];

      v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID:v31];
            v23 = [v22 objectForKeyedSubscript:v21];

            if (v23)
            {
              if ([v23 isCancelled])
              {
                v24 = PLUIGetLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  v25 = [v23 localizedDescription];
                  *buf = 138412290;
                  v39 = v25;
                  _os_log_impl(&dword_1D2128000, v24, OS_LOG_TYPE_DEBUG, "Ignored progress updates for local progress (%@) because it's already cancelled.", buf, 0xCu);
                }
              }

              else
              {
                [v14 fractionCompleted];
                [v23 setCompletedUnitCount:{(v28 * objc_msgSend(v23, "totalUnitCount"))}];
              }
            }

            else
            {
              v26 = PLUIGetLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v14 localizedDescription];
                *buf = 138412546;
                v39 = v27;
                v40 = 2112;
                v41 = v21;
                _os_log_impl(&dword_1D2128000, v26, OS_LOG_TYPE_DEFAULT, "No matching local progress is found for remote progress (%@) with UUID (%@).", buf, 0x16u);
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v18);
      }

      v11 = v31;
      v10 = v32;
    }

    else
    {
      v29 = PLUIGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = v11;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_1D2128000, v29, OS_LOG_TYPE_DEFAULT, "Received invalid object (%@) or keypath (%@) for the progress context.", buf, 0x16u);
      }
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = PUPhotosFileProviderItemProvider;
    [(PUPhotosFileProviderItemProvider *)&v33 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_progressURLForTypeIdentifier:(id)a3
{
  v4 = [(PUPhotosFileProviderItemProvider *)self _representationConformingToType:a3];
  v5 = [v4 typeIdentifier];

  if (v5)
  {
    v6 = [(PUPhotosFileProviderItemProvider *)self progressURLs];
    v7 = [v4 typeIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [(PUPhotosFileProviderItemProvider *)self progressURLSandboxExtensionTokens];
    v10 = [v4 typeIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v8 && v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v8 sandboxExtensionToken:v11 consume:1];

      goto LABEL_11;
    }

    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v13, OS_LOG_TYPE_DEBUG, "Can't find progress URL or its sandbox extension token.", buf, 2u);
    }
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEBUG, "Can't find item provider representation for the progress URL.", v15, 2u);
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_completeProgressWithUUID:(id)a3 success:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v19 = a3;
  v8 = a5;
  v9 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
  v10 = [v9 objectForKeyedSubscript:v19];

  if (v10)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v10];
  }

  v11 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
  [v11 setObject:0 forKeyedSubscript:v19];

  v12 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  v13 = [v12 objectForKeyedSubscript:v19];

  v14 = NSStringFromSelector(sel_fractionCompleted);
  [v13 removeObserver:self forKeyPath:v14 context:PUPhotosFileProviderItemProviderContext];

  v15 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  [v15 setObject:0 forKeyedSubscript:v19];

  v16 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  v17 = [v16 objectForKeyedSubscript:v19];

  v18 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  [v18 setObject:0 forKeyedSubscript:v19];

  if (([v17 isCancelled] & 1) == 0)
  {
    if (v6)
    {
      [v17 setCompletedUnitCount:{objc_msgSend(v17, "totalUnitCount")}];
    }

    v8[2](v8);
  }
}

- (void)_startObservingProgressProxyIfNeeded:(id)a3 UUID:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];

    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(PUPhotosFileProviderItemProvider *)self set_progressProxyByUUID:v10];
    }

    v11 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
    [v11 setObject:v13 forKeyedSubscript:v6];

    v12 = NSStringFromSelector(sel_fractionCompleted);
    [v13 addObserver:self forKeyPath:v12 options:4 context:PUPhotosFileProviderItemProviderContext];
  }
}

- (id)_startProgressForURL:(id)a3 UUID:(id)a4 cancellationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:10000];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke;
  v32[3] = &unk_1E83F76C0;
  v12 = v10;
  v33 = v12;
  [v11 setCancellationHandler:v32];
  v13 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PUPhotosFileProviderItemProvider *)self set_progressByUUID:v14];
  }

  v15 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  [v15 setObject:v11 forKeyedSubscript:v9];

  v16 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PUPhotosFileProviderItemProvider *)self set_progressSubscriberByUUID:v17];
  }

  v18 = MEMORY[0x1E696AE38];
  v19 = MEMORY[0x1E695DFF8];
  v20 = [v8 path];
  v21 = [v19 fileURLWithPath:v20];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke_2;
  v29 = &unk_1E83F7560;
  objc_copyWeak(&v31, &location);
  v22 = v9;
  v30 = v22;
  v23 = [v18 addSubscriberForFileURL:v21 withPublishingHandler:&v26];
  v24 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID:v26];
  [v24 setObject:v23 forKeyedSubscript:v22];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  return v11;
}

void __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A4D0] code:3072 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startObservingProgressProxyIfNeeded:v3 UUID:*(a1 + 32)];

  return 0;
}

- (id)loadInPlaceFileRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadInPlaceFileRepresentationForTypeIdentifier: %@", buf, 0xCu);
  }

  if (dyld_program_sdk_at_least() && ![(PUPhotosFileProviderItemProvider *)self _copyToTemporaryDirectoryBeforeCallingOpenInPlaceCompletionHandler])
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_FAULT, "loadInPlaceFileRepresentationForTypeIdentifier: is not supported. Use loadFileRepresentationForTypeIdentifier: instead.", buf, 2u);
    }
  }

  v10 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:v6];
  v11 = [v10 lastPathComponent];

  v12 = [(PUPhotosFileProviderItemProvider *)self _sanitizedSuggestedName];
  if (v6)
  {
    v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
  }

  else
  {
    v13 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__PUPhotosFileProviderItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke;
  v21[3] = &unk_1E83F7538;
  v24 = v13;
  v25 = v7;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v7;
  v18 = [(PUPhotosFileProviderItemProvider *)self loadFileRepresentationForTypeIdentifier:v6 completionHandler:v21];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __101__PUPhotosFileProviderItemProvider_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64))
  {
    if (!v5 || dyld_program_sdk_at_least() && ![*(a1 + 32) _copyToTemporaryDirectoryBeforeCallingOpenInPlaceCompletionHandler])
    {
LABEL_28:
      (*(*(a1 + 64) + 16))();
      goto LABEL_29;
    }

    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = dyld_program_sdk_at_least() ^ 1;
      v9 = [*(a1 + 32) _copyToTemporaryDirectoryBeforeCallingOpenInPlaceCompletionHandler];
      *buf = 138412802;
      *&buf[4] = v5;
      v47 = 2048;
      v48 = v8;
      v49 = 2048;
      v50 = v9;
      _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_DEFAULT, "Copying URL (%@) because (old SDK: %ld, explicit: %ld) (loadInPlaceFileRepresentationForTypeIdentifier:)", buf, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = v5;
    v14 = v10;
    v15 = v11;
    v44 = v12;
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v16 temporaryDirectory];
    v18 = [MEMORY[0x1E69C0708] protectedTemporaryItemsSubdirectoryName];
    v19 = [v17 URLByAppendingPathComponent:v18];
    v20 = [v19 URLByAppendingPathComponent:@"com.apple.Photos.NSItemProvider" isDirectory:1];

    if ([v14 length])
    {
      v21 = [v20 URLByAppendingPathComponent:v14 isDirectory:1];
    }

    else
    {
      v22 = [MEMORY[0x1E696AFB0] UUID];
      v23 = [v22 UUIDString];
      v21 = [v20 URLByAppendingPathComponent:v23 isDirectory:1];

      v20 = v22;
    }

    v24 = [MEMORY[0x1E696AC08] defaultManager];
    *buf = 0;
    v25 = [v24 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:buf];
    v26 = *buf;

    if (!v25)
    {
      v30 = v26;
      v5 = 0;
      v31 = v26;
      goto LABEL_25;
    }

    if (v15)
    {
      v27 = [v21 URLByAppendingPathComponent:v15];

      v28 = [v13 pathExtension];

      if (v28)
      {
        v29 = [v13 pathExtension];
        v21 = [v27 URLByAppendingPathExtension:v29];

        v27 = v29;
      }

      else
      {
        if (!v44)
        {
          v21 = v27;
          goto LABEL_21;
        }

        v21 = [v27 URLByAppendingPathExtensionForType:?];
      }
    }

    else
    {
      v32 = [v13 lastPathComponent];

      if (v32)
      {
        v27 = [v13 lastPathComponent];
        v33 = [v21 URLByAppendingPathComponent:v27];

        v21 = v33;
      }

      else
      {
        v27 = [MEMORY[0x1E696AFB0] UUID];
        v34 = [v27 UUIDString];
        v35 = [v21 URLByAppendingPathComponent:v34];

        v21 = v35;
      }
    }

LABEL_21:
    v36 = [MEMORY[0x1E696AC08] defaultManager];
    [v36 removeItemAtURL:v21 error:0];

    v37 = [MEMORY[0x1E696AC08] defaultManager];
    v45 = 0;
    v38 = [v37 copyItemAtURL:v13 toURL:v21 error:&v45];
    v39 = v45;

    if (v38)
    {
      v5 = v21;
      v31 = v6;
    }

    else
    {
      v40 = v39;
      v5 = 0;
      v31 = v39;
    }

LABEL_25:
    v41 = v31;

    v42 = PLUIGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_1D2128000, v42, OS_LOG_TYPE_DEFAULT, "Copied to URL (%@) (loadInPlaceFileRepresentationForTypeIdentifier:)", buf, 0xCu);
    }

    v6 = v41;
    goto LABEL_28;
  }

LABEL_29:

  v43 = *MEMORY[0x1E69E9840];
}

- (id)loadFileRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:v6];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadFileRepresentationForTypeIdentifier: %@", buf, 0xCu);
  }

  if (v8)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v23[3] = &unk_1E83F7498;
    v11 = v7;
    v24 = v11;
    v12 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v8 UUID:v10 cancellationHandler:v23];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_1E83F7510;
    objc_copyWeak(&v22, buf);
    v13 = v10;
    v20 = v13;
    v21 = v11;
    v18.receiver = self;
    v18.super_class = PUPhotosFileProviderItemProvider;
    v14 = [(PUPhotosFileProviderItemProvider *)&v18 loadFileRepresentationForTypeIdentifier:v6 completionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PUPhotosFileProviderItemProvider;
    v12 = [(PUPhotosFileProviderItemProvider *)&v17 loadFileRepresentationForTypeIdentifier:v6 completionHandler:v7];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3;
  v12[3] = &unk_1E83F78B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [WeakRetained _completeProgressWithUUID:v8 success:v5 != 0 completionHandler:v12];
}

uint64_t __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadDataRepresentationForTypeIdentifier: %@", buf, 0xCu);
  }

  v9 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:v6];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v23[3] = &unk_1E83F7498;
    v11 = v7;
    v24 = v11;
    v12 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v9 UUID:v10 cancellationHandler:v23];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_1E83F74E8;
    objc_copyWeak(&v22, buf);
    v13 = v10;
    v20 = v13;
    v21 = v11;
    v18.receiver = self;
    v18.super_class = PUPhotosFileProviderItemProvider;
    v14 = [(PUPhotosFileProviderItemProvider *)&v18 loadDataRepresentationForTypeIdentifier:v6 completionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PUPhotosFileProviderItemProvider;
    v12 = [(PUPhotosFileProviderItemProvider *)&v17 loadDataRepresentationForTypeIdentifier:v6 completionHandler:v7];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_3;
  v12[3] = &unk_1E83F78B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [WeakRetained _completeProgressWithUUID:v8 success:v5 != 0 completionHandler:v12];
}

uint64_t __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)loadObjectOfClass:(Class)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromClass(a3);
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadObjectOfClass: %@", buf, 0xCu);
  }

  if (objc_opt_class() == a3)
  {
    v10 = [*MEMORY[0x1E6982E30] identifier];
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (objc_opt_class() == a3)
  {
    v9 = PFCurrentPlatformLivePhotoBundleType();
    v10 = [v9 identifier];

    if (v10)
    {
LABEL_6:
      v11 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:v10];
      if (v11)
      {
        v12 = [MEMORY[0x1E696AFB0] UUID];
        objc_initWeak(buf, self);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke;
        v26[3] = &unk_1E83F7498;
        v13 = v6;
        v27 = v13;
        v14 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v11 UUID:v12 cancellationHandler:v26];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke_2;
        v22[3] = &unk_1E83F74C0;
        objc_copyWeak(&v25, buf);
        v15 = v12;
        v23 = v15;
        v24 = v13;
        v21.receiver = self;
        v21.super_class = PUPhotosFileProviderItemProvider;
        v16 = [(PUPhotosFileProviderItemProvider *)&v21 loadObjectOfClass:a3 completionHandler:v22];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      else
      {
        v20.receiver = self;
        v20.super_class = PUPhotosFileProviderItemProvider;
        v14 = [(PUPhotosFileProviderItemProvider *)&v20 loadObjectOfClass:a3 completionHandler:v6];
      }

      goto LABEL_12;
    }
  }

  v19.receiver = self;
  v19.super_class = PUPhotosFileProviderItemProvider;
  v14 = [(PUPhotosFileProviderItemProvider *)&v19 loadObjectOfClass:a3 completionHandler:v6];
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke_3;
  v12[3] = &unk_1E83F78B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [WeakRetained _completeProgressWithUUID:v8 success:v5 != 0 completionHandler:v12];
}

uint64_t __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)dealloc
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];

  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [MEMORY[0x1E696AE38] removeSubscriber:*(*(&v25 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  v10 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];

  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
    v12 = [v11 allValues];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * j);
          v18 = NSStringFromSelector(sel_fractionCompleted);
          [v17 removeObserver:self forKeyPath:v18 context:PUPhotosFileProviderItemProviderContext];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v20.receiver = self;
  v20.super_class = PUPhotosFileProviderItemProvider;
  [(PUPhotosFileProviderItemProvider *)&v20 dealloc];
  v19 = *MEMORY[0x1E69E9840];
}

- (PUPhotosFileProviderItemProvider)initWithProgressURLs:(id)a3 progressURLSandboxExtensionTokens:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PUPhotosFileProviderItemProvider;
  v8 = [(PUPhotosFileProviderItemProvider *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    progressURLs = v8->_progressURLs;
    v8->_progressURLs = v9;

    v11 = [v7 copy];
    progressURLSandboxExtensionTokens = v8->_progressURLSandboxExtensionTokens;
    v8->_progressURLSandboxExtensionTokens = v11;
  }

  return v8;
}

@end