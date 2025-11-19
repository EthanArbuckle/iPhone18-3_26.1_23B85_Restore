@interface PHImportUrlSource
+ (BOOL)treatAsReadonlyVolume:(id)a3;
- (BOOL)containsSupportedMediaWithImportExceptions:(id *)a3;
- (BOOL)isAvailable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImportUrlSource:(id)a3;
- (PHImportUrlSource)initWithURLs:(id)a3;
- (id)assetsByProcessingItem:(id)a3;
- (id)name;
- (id)resourcePathsInUrls:(id)a3;
- (id)rootUrlOfUrls:(id)a3;
- (void)beginProcessingWithCompletion:(id)a3;
- (void)dealloc;
- (void)dispatchAssetDataRequestAsyncUsingBlock:(id)a3;
- (void)endWork;
@end

@implementation PHImportUrlSource

- (id)rootUrlOfUrls:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 path];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count", 0) - 1}];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = v5;
        while (1)
        {
          v13 = [v11 path];
          v14 = [v13 hasPrefix:v12];

          if (v14)
          {
            break;
          }

          v5 = [v12 stringByDeletingLastPathComponent];

          v12 = v5;
          if ([v5 isEqualToString:@"/"])
          {
            goto LABEL_11;
          }
        }

        v5 = v12;
LABEL_11:
        ;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];

  return v15;
}

- (void)dispatchAssetDataRequestAsyncUsingBlock:(id)a3
{
  v4 = a3;
  pendingAssetDataRequestQueue = self->_pendingAssetDataRequestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PHImportUrlSource_dispatchAssetDataRequestAsyncUsingBlock___block_invoke;
  v7[3] = &unk_1E75AA820;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(pendingAssetDataRequestQueue, v7);
}

void __61__PHImportUrlSource_dispatchAssetDataRequestAsyncUsingBlock___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 344), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 336);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PHImportUrlSource_dispatchAssetDataRequestAsyncUsingBlock___block_invoke_2;
  v4[3] = &unk_1E75AA820;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

intptr_t __61__PHImportUrlSource_dispatchAssetDataRequestAsyncUsingBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 344);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)isAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_prefix];
  v12 = 0;
  v4 = *MEMORY[0x1E695DDE8];
  v11 = 0;
  v5 = [v3 getResourceValue:&v12 forKey:v4 error:&v11];
  v6 = v12;
  v7 = v11;

  if ((v5 & 1) == 0)
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      prefix = self->_prefix;
      *buf = 138412290;
      v14 = prefix;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Volume for path '%@' does not exist", buf, 0xCu);
    }
  }

  return v6 != 0;
}

- (id)name
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PHImportUrlSource *)self prefix];
  v5 = [v3 displayNameAtPath:v4];

  return v5;
}

- (void)endWork
{
  v3 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__PHImportUrlSource_endWork__block_invoke;
  v12[3] = &unk_1E75AB270;
  v4 = v3;
  v13 = v4;
  v5 = [(PHImportSource *)self progress];
  [v5 setCancellationHandler:v12];

  v6 = dispatch_time(0, 2000000000);
  v7 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PHImportUrlSource_endWork__block_invoke_2;
  block[3] = &unk_1E75AAEB0;
  block[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_after(v6, v7, block);

  v9.receiver = self;
  v9.super_class = PHImportUrlSource;
  [(PHImportSource *)&v9 endWork];
}

uint64_t __28__PHImportUrlSource_endWork__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 8) = 1;
  }

  return result;
}

void __28__PHImportUrlSource_endWork__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assets];
  v3 = [v2 count];
  if (PHImportConcurrencyLimit_onceToken != -1)
  {
    dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__PHImportUrlSource_endWork__block_invoke_3;
  v5[3] = &unk_1E75A5FF8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  PHImportDispatchApply(v3, PHImportConcurrencyLimit_concurrencyLimit, v4, v5);
}

void __28__PHImportUrlSource_endWork__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) assets];
  v3 = [v4 objectAtIndexedSubscript:a2];
  [v3 loadMetadataSync];
}

- (id)assetsByProcessingItem:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(NSDictionary *)self->_resourcePathsByIdentifier objectForKeyedSubscript:a3];
  v5 = [v4 mutableCopy];

  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
        v13 = [PHImportAsset assetFileForURL:v12 source:self];

        if (v13)
        {
          if ([v13 isSidecar])
          {
            if ([v13 resourceSubType] != 512)
            {
              [v18 insertObject:v13 atIndex:0];
            }
          }

          else
          {
            [v18 addObject:v13];
          }
        }

        else
        {
          v14 = [v11 lastPathComponent];
          v15 = [(PHImportExceptionRecorder *)self addExceptionWithType:1 path:v14 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportUrlSource.m" line:252];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v18 count])
  {
    v16 = [(PHImportSource *)self processAssets:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)beginProcessingWithCompletion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHImportUrlSource *)self urls];
  v6 = [v5 objectAtIndexedSubscript:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _PFAssertFailHandler();
  }

  v25 = v6;
  [(PHImportUrlSource *)self setIsReadonlyVolume:[PHImportUrlSource treatAsReadonlyVolume:v6]];
  v7 = [(PHImportUrlSource *)self urls];
  v8 = [(PHImportUrlSource *)self resourcePathsInUrls:v7];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 stringByDeletingPathExtension];
        v17 = [(NSDictionary *)v9 objectForKeyedSubscript:v16];
        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] array];
          [(NSDictionary *)v9 setObject:v17 forKeyedSubscript:v16];
        }

        [v17 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  resourcePathsByIdentifier = self->_resourcePathsByIdentifier;
  self->_resourcePathsByIdentifier = v9;
  v19 = v9;

  v20 = [(NSDictionary *)self->_resourcePathsByIdentifier allKeys];

  v21 = [v20 mutableCopy];
  [(PHImportSource *)self setItems:v21];

  v22 = [(PHImportSource *)self items];
  v23 = [v22 count];
  v24 = [(PHImportSource *)self progress];
  [v24 setTotalUnitCount:v23];

  v4[2](v4);
}

- (id)resourcePathsInUrls:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = malloc_type_malloc(8 * [v3 count] + 8, 0x10040436913F5uLL);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v39 + 1) + 8 * i) path];
        v4[v8] = [v11 fileSystemRepresentation];

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v4[v8] = 0;
  v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:100000];
  v12 = [MEMORY[0x1E695DFA8] setWithCapacity:100000];
  [(PHImportSource *)self setFolders:v12];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = fts_open(v4, 92, 0);
  v34 = *MEMORY[0x1E695DBA0];
  v33 = *MEMORY[0x1E6982E80];
  while (1)
  {
    v15 = fts_read(v14);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15->fts_info != 10)
    {
      v17 = [v13 stringWithFileSystemRepresentation:v15->fts_path length:strlen(v15->fts_path)];
      v18 = v17;
      fts_info = v16->fts_info;
      if (fts_info == 1)
      {
        v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
        v37 = 0;
        v38 = 0;
        v23 = [v22 getResourceValue:&v38 forKey:v34 error:&v37];
        v24 = v38;
        v25 = v37;
        if (v23)
        {
          if ([v24 BOOLValue])
          {
            fts_set(v14, v16, 4);
            v26 = [MEMORY[0x1E69C08F0] typeForURL:v22 error:0];
            if (([v26 conformsToType:v33] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69C0668], "contentType"), v27 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v26, "conformsToType:", v27), v27, v32))
            {
              v28 = v36;
              goto LABEL_27;
            }

            v30 = [(PHImportSource *)self folders];
            [v30 addObject:v18];

LABEL_28:
            goto LABEL_29;
          }
        }

        else
        {
          v29 = PLImportGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v44 = v22;
            v45 = 2112;
            v46 = v25;
            _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEBUG, "Could not determine if url: %@ is a package. Continuing as folder. Error: %@", buf, 0x16u);
          }
        }

        v28 = [(PHImportSource *)self folders];
        v26 = v28;
LABEL_27:
        [v28 addObject:v18];
        goto LABEL_28;
      }

      if (fts_info == 11 || fts_info == 8)
      {
        v20 = [v17 lastPathComponent];
        v21 = [v20 hasPrefix:@"."];

        if ((v21 & 1) == 0)
        {
          [v36 addObject:v18];
        }
      }

LABEL_29:
    }
  }

  fts_close(v14);
  free(v4);

  return v36;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PHImportUrlSource *)self isEqualToImportUrlSource:v4];
  }

  return v5;
}

- (BOOL)isEqualToImportUrlSource:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [v4 urls];
  v6 = [v5 count];
  if (v6 == [(NSArray *)self->_urls count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PHImportUrlSource_isEqualToImportUrlSource___block_invoke;
    v9[3] = &unk_1E75A5FD0;
    v9[4] = self;
    v9[5] = &v10;
    [v5 enumerateObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
  }

  else
  {
    v7 = 0;
    *(v11 + 24) = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

void __46__PHImportUrlSource_isEqualToImportUrlSource___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 376);
  v8 = a2;
  v11 = [v7 objectAtIndexedSubscript:a3];
  v9 = resourceIdentifierForURL(v8);

  v10 = resourceIdentifierForURL(v11);
  if (([v9 isEqual:v10] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_accessedURLs;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) stopAccessingSecurityScopedResource];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = PHImportUrlSource;
  [(PHImportUrlSource *)&v8 dealloc];
}

- (BOOL)containsSupportedMediaWithImportExceptions:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DF70] array];
  [(PHImportUrlSource *)self resourcePathsInUrls:self->_urls];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v23 = a3;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:{v10, v23}];
        v12 = [PHValidator mediaTypeForURL:v11];

        if (v12 <= 0x20 && ((1 << v12) & 0x100010004) != 0)
        {
          goto LABEL_22;
        }

        v14 = MEMORY[0x1E69C08F0];
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
        v16 = [v14 typeForURL:v15 error:0];

        if (PFIsLivePhotoBundleType())
        {

LABEL_22:
          v21 = 1;
          goto LABEL_23;
        }

        v17 = [MEMORY[0x1E69C0668] contentType];
        v18 = [v16 conformsToType:v17];

        if ((v18 & 1) != 0 || v12 > 1)
        {

          if (v18)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v19 = [[PHImportException alloc] initWithType:1 path:v10 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportUrlSource.m" line:94];
          [v24 addObject:v19];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      a3 = v23;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v20 = [v24 count];
  v21 = 0;
  if (a3 && v20)
  {
    v21 = 0;
    *a3 = v24;
  }

LABEL_23:

  return v21;
}

- (PHImportUrlSource)initWithURLs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PHImportSource *)self init];
    if (v5)
    {
      v6 = [v4 copy];
      urls = v5->_urls;
      v5->_urls = v6;

      v8 = [(NSArray *)v5->_urls mutableCopy];
      [(PHImportSource *)v5 setItems:v8];

      v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
      accessedURLs = v5->_accessedURLs;
      v5->_accessedURLs = v9;

      v11 = [(PHImportUrlSource *)v5 rootUrlOfUrls:v5->_urls];
      v12 = [v11 path];
      prefix = v5->_prefix;
      v5->_prefix = v12;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v4;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            if ((-[NSMutableSet containsObject:](v5->_accessedURLs, "containsObject:", v19, v31) & 1) == 0 && [v19 startAccessingSecurityScopedResource])
            {
              [(NSMutableSet *)v5->_accessedURLs addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INITIATED, -1);
      v22 = dispatch_queue_create("com.apple.photos.import.urlsource.pendingassetrequests", v21);
      pendingAssetDataRequestQueue = v5->_pendingAssetDataRequestQueue;
      v5->_pendingAssetDataRequestQueue = v22;

      v24 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_USER_INITIATED, 0);
      v26 = dispatch_queue_create("com.apple.photos.import.urlsource.activeassetrequests", v25);
      activeAssetDataRequestQueue = v5->_activeAssetDataRequestQueue;
      v5->_activeAssetDataRequestQueue = v26;

      if (PHImportConcurrencyLimit_onceToken != -1)
      {
        dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
      }

      v28 = dispatch_semaphore_create(PHImportConcurrencyLimit_concurrencyLimit);
      concurrentAssetDataRequestSemaphore = v5->_concurrentAssetDataRequestSemaphore;
      v5->_concurrentAssetDataRequestSemaphore = v28;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

+ (BOOL)treatAsReadonlyVolume:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = *MEMORY[0x1E695DDB0];
  v10 = 0;
  v4 = [a3 getResourceValue:&v11 forKey:v3 error:&v10];
  v5 = v11;
  v6 = v10;
  if (v4)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unable to value for key 'NSURLVolumeIsReadOnlyKey': %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end