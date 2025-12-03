@interface PUPhotosFileProviderItemProvider
- (PUPhotosFileProviderItemProvider)initWithProgressURLs:(id)ls progressURLSandboxExtensionTokens:(id)tokens;
- (id)_progressURLForTypeIdentifier:(id)identifier;
- (id)_startProgressForURL:(id)l UUID:(id)d cancellationHandler:(id)handler;
- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (id)loadFileRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (id)loadInPlaceFileRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (id)loadObjectOfClass:(Class)class completionHandler:(id)handler;
- (void)_completeProgressWithUUID:(id)d success:(BOOL)success completionHandler:(id)handler;
- (void)_startObservingProgressProxyIfNeeded:(id)needed UUID:(id)d;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PUPhotosFileProviderItemProvider

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  if (PUPhotosFileProviderItemProviderContext == context)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (NSStringFromSelector(sel_fractionCompleted), v12 = objc_claimAutoreleasedReturnValue(), v13 = [pathCopy isEqualToString:v12], v12, v13))
    {
      v31 = objectCopy;
      v32 = pathCopy;
      v14 = objectCopy;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      _progressProxyByUUID = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
      v16 = [_progressProxyByUUID allKeysForObject:v14];

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
                  localizedDescription = [v23 localizedDescription];
                  *buf = 138412290;
                  v39 = localizedDescription;
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
                localizedDescription2 = [v14 localizedDescription];
                *buf = 138412546;
                v39 = localizedDescription2;
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

      objectCopy = v31;
      pathCopy = v32;
    }

    else
    {
      v29 = PLUIGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = objectCopy;
        v40 = 2112;
        v41 = pathCopy;
        _os_log_impl(&dword_1D2128000, v29, OS_LOG_TYPE_DEFAULT, "Received invalid object (%@) or keypath (%@) for the progress context.", buf, 0x16u);
      }
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = PUPhotosFileProviderItemProvider;
    [(PUPhotosFileProviderItemProvider *)&v33 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_progressURLForTypeIdentifier:(id)identifier
{
  v4 = [(PUPhotosFileProviderItemProvider *)self _representationConformingToType:identifier];
  typeIdentifier = [v4 typeIdentifier];

  if (typeIdentifier)
  {
    progressURLs = [(PUPhotosFileProviderItemProvider *)self progressURLs];
    typeIdentifier2 = [v4 typeIdentifier];
    v8 = [progressURLs objectForKeyedSubscript:typeIdentifier2];

    progressURLSandboxExtensionTokens = [(PUPhotosFileProviderItemProvider *)self progressURLSandboxExtensionTokens];
    typeIdentifier3 = [v4 typeIdentifier];
    v11 = [progressURLSandboxExtensionTokens objectForKeyedSubscript:typeIdentifier3];

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

- (void)_completeProgressWithUUID:(id)d success:(BOOL)success completionHandler:(id)handler
{
  successCopy = success;
  dCopy = d;
  handlerCopy = handler;
  _progressSubscriberByUUID = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
  v10 = [_progressSubscriberByUUID objectForKeyedSubscript:dCopy];

  if (v10)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v10];
  }

  _progressSubscriberByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
  [_progressSubscriberByUUID2 setObject:0 forKeyedSubscript:dCopy];

  _progressProxyByUUID = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  v13 = [_progressProxyByUUID objectForKeyedSubscript:dCopy];

  v14 = NSStringFromSelector(sel_fractionCompleted);
  [v13 removeObserver:self forKeyPath:v14 context:PUPhotosFileProviderItemProviderContext];

  _progressProxyByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  [_progressProxyByUUID2 setObject:0 forKeyedSubscript:dCopy];

  _progressByUUID = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  v17 = [_progressByUUID objectForKeyedSubscript:dCopy];

  _progressByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  [_progressByUUID2 setObject:0 forKeyedSubscript:dCopy];

  if (([v17 isCancelled] & 1) == 0)
  {
    if (successCopy)
    {
      [v17 setCompletedUnitCount:{objc_msgSend(v17, "totalUnitCount")}];
    }

    handlerCopy[2](handlerCopy);
  }
}

- (void)_startObservingProgressProxyIfNeeded:(id)needed UUID:(id)d
{
  neededCopy = needed;
  dCopy = d;
  _progressProxyByUUID = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
  v8 = [_progressProxyByUUID objectForKeyedSubscript:dCopy];

  if (!v8)
  {
    _progressProxyByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];

    if (!_progressProxyByUUID2)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(PUPhotosFileProviderItemProvider *)self set_progressProxyByUUID:v10];
    }

    _progressProxyByUUID3 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
    [_progressProxyByUUID3 setObject:neededCopy forKeyedSubscript:dCopy];

    v12 = NSStringFromSelector(sel_fractionCompleted);
    [neededCopy addObserver:self forKeyPath:v12 options:4 context:PUPhotosFileProviderItemProviderContext];
  }
}

- (id)_startProgressForURL:(id)l UUID:(id)d cancellationHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:10000];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke;
  v32[3] = &unk_1E83F76C0;
  v12 = handlerCopy;
  v33 = v12;
  [v11 setCancellationHandler:v32];
  _progressByUUID = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];

  if (!_progressByUUID)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PUPhotosFileProviderItemProvider *)self set_progressByUUID:v14];
  }

  _progressByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressByUUID];
  [_progressByUUID2 setObject:v11 forKeyedSubscript:dCopy];

  _progressSubscriberByUUID = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];

  if (!_progressSubscriberByUUID)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PUPhotosFileProviderItemProvider *)self set_progressSubscriberByUUID:v17];
  }

  v18 = MEMORY[0x1E696AE38];
  v19 = MEMORY[0x1E695DFF8];
  path = [lCopy path];
  v21 = [v19 fileURLWithPath:path];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __82__PUPhotosFileProviderItemProvider__startProgressForURL_UUID_cancellationHandler___block_invoke_2;
  v29 = &unk_1E83F7560;
  objc_copyWeak(&v31, &location);
  v22 = dCopy;
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

- (id)loadInPlaceFileRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = identifierCopy;
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

  v10 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:identifierCopy];
  lastPathComponent = [v10 lastPathComponent];

  _sanitizedSuggestedName = [(PUPhotosFileProviderItemProvider *)self _sanitizedSuggestedName];
  if (identifierCopy)
  {
    v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifierCopy];
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
  v25 = handlerCopy;
  v21[4] = self;
  v22 = lastPathComponent;
  v23 = _sanitizedSuggestedName;
  v14 = v13;
  v15 = _sanitizedSuggestedName;
  v16 = lastPathComponent;
  v17 = handlerCopy;
  v18 = [(PUPhotosFileProviderItemProvider *)self loadFileRepresentationForTypeIdentifier:identifierCopy completionHandler:v21];

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

- (id)loadFileRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:identifierCopy];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = identifierCopy;
    _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadFileRepresentationForTypeIdentifier: %@", buf, 0xCu);
  }

  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v23[3] = &unk_1E83F7498;
    v11 = handlerCopy;
    v24 = v11;
    v12 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v8 UUID:uUID cancellationHandler:v23];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__PUPhotosFileProviderItemProvider_loadFileRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_1E83F7510;
    objc_copyWeak(&v22, buf);
    v13 = uUID;
    v20 = v13;
    v21 = v11;
    v18.receiver = self;
    v18.super_class = PUPhotosFileProviderItemProvider;
    v14 = [(PUPhotosFileProviderItemProvider *)&v18 loadFileRepresentationForTypeIdentifier:identifierCopy completionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PUPhotosFileProviderItemProvider;
    v12 = [(PUPhotosFileProviderItemProvider *)&v17 loadFileRepresentationForTypeIdentifier:identifierCopy completionHandler:handlerCopy];
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

- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = identifierCopy;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadDataRepresentationForTypeIdentifier: %@", buf, 0xCu);
  }

  v9 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:identifierCopy];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v23[3] = &unk_1E83F7498;
    v11 = handlerCopy;
    v24 = v11;
    v12 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v9 UUID:uUID cancellationHandler:v23];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__PUPhotosFileProviderItemProvider_loadDataRepresentationForTypeIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_1E83F74E8;
    objc_copyWeak(&v22, buf);
    v13 = uUID;
    v20 = v13;
    v21 = v11;
    v18.receiver = self;
    v18.super_class = PUPhotosFileProviderItemProvider;
    v14 = [(PUPhotosFileProviderItemProvider *)&v18 loadDataRepresentationForTypeIdentifier:identifierCopy completionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PUPhotosFileProviderItemProvider;
    v12 = [(PUPhotosFileProviderItemProvider *)&v17 loadDataRepresentationForTypeIdentifier:identifierCopy completionHandler:handlerCopy];
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

- (id)loadObjectOfClass:(Class)class completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromClass(class);
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotosFileProviderItemProvider: loadObjectOfClass: %@", buf, 0xCu);
  }

  if (objc_opt_class() == class)
  {
    identifier = [*MEMORY[0x1E6982E30] identifier];
    if (identifier)
    {
      goto LABEL_6;
    }
  }

  else if (objc_opt_class() == class)
  {
    v9 = PFCurrentPlatformLivePhotoBundleType();
    identifier = [v9 identifier];

    if (identifier)
    {
LABEL_6:
      v11 = [(PUPhotosFileProviderItemProvider *)self _progressURLForTypeIdentifier:identifier];
      if (v11)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        objc_initWeak(buf, self);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke;
        v26[3] = &unk_1E83F7498;
        v13 = handlerCopy;
        v27 = v13;
        v14 = [(PUPhotosFileProviderItemProvider *)self _startProgressForURL:v11 UUID:uUID cancellationHandler:v26];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __72__PUPhotosFileProviderItemProvider_loadObjectOfClass_completionHandler___block_invoke_2;
        v22[3] = &unk_1E83F74C0;
        objc_copyWeak(&v25, buf);
        v15 = uUID;
        v23 = v15;
        v24 = v13;
        v21.receiver = self;
        v21.super_class = PUPhotosFileProviderItemProvider;
        v16 = [(PUPhotosFileProviderItemProvider *)&v21 loadObjectOfClass:class completionHandler:v22];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      else
      {
        v20.receiver = self;
        v20.super_class = PUPhotosFileProviderItemProvider;
        v14 = [(PUPhotosFileProviderItemProvider *)&v20 loadObjectOfClass:class completionHandler:handlerCopy];
      }

      goto LABEL_12;
    }
  }

  v19.receiver = self;
  v19.super_class = PUPhotosFileProviderItemProvider;
  v14 = [(PUPhotosFileProviderItemProvider *)&v19 loadObjectOfClass:class completionHandler:handlerCopy];
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
  _progressSubscriberByUUID = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];

  if (_progressSubscriberByUUID)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    _progressSubscriberByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressSubscriberByUUID];
    allValues = [_progressSubscriberByUUID2 allValues];

    v6 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [MEMORY[0x1E696AE38] removeSubscriber:*(*(&v25 + 1) + 8 * i)];
        }

        v7 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  _progressProxyByUUID = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];

  if (_progressProxyByUUID)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _progressProxyByUUID2 = [(PUPhotosFileProviderItemProvider *)self _progressProxyByUUID];
    allValues2 = [_progressProxyByUUID2 allValues];

    v13 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          v17 = *(*(&v21 + 1) + 8 * j);
          v18 = NSStringFromSelector(sel_fractionCompleted);
          [v17 removeObserver:self forKeyPath:v18 context:PUPhotosFileProviderItemProviderContext];
        }

        v14 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v20.receiver = self;
  v20.super_class = PUPhotosFileProviderItemProvider;
  [(PUPhotosFileProviderItemProvider *)&v20 dealloc];
  v19 = *MEMORY[0x1E69E9840];
}

- (PUPhotosFileProviderItemProvider)initWithProgressURLs:(id)ls progressURLSandboxExtensionTokens:(id)tokens
{
  lsCopy = ls;
  tokensCopy = tokens;
  v14.receiver = self;
  v14.super_class = PUPhotosFileProviderItemProvider;
  v8 = [(PUPhotosFileProviderItemProvider *)&v14 init];
  if (v8)
  {
    v9 = [lsCopy copy];
    progressURLs = v8->_progressURLs;
    v8->_progressURLs = v9;

    v11 = [tokensCopy copy];
    progressURLSandboxExtensionTokens = v8->_progressURLSandboxExtensionTokens;
    v8->_progressURLSandboxExtensionTokens = v11;
  }

  return v8;
}

@end