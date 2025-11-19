@interface MKAppImageManager
+ (id)persistedCacheWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4 directoryName:(id)a5;
+ (id)sharedCollectionCoverImageManager;
+ (id)sharedImageManagerWithAuditToken:(id)a3;
+ (id)sharedVisitedPlacesContainerImageManager;
- (MKAppImageManager)initWithURLCache:(id)a3 auditToken:(id)a4;
- (id)cachedImageAtURL:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_dispatchOnManThread:(id)a3;
- (void)cancelLoadAppImageAtURL:(id)a3;
- (void)clearImageCache;
- (void)loadAppImageAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation MKAppImageManager

void __54__MKAppImageManager_sharedCollectionCoverImageManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  UInteger = GEOConfigGetUInteger();
  v5 = [v1 persistedCacheWithMemoryCapacity:UInteger diskCapacity:GEOConfigGetUInteger() directoryName:@"MKCollectionCoverPhotoCache"];
  v3 = [[MKAppImageManager alloc] initWithURLCache:v5];
  v4 = sharedCollectionCoverImageManager___collectionCoverImageManager;
  sharedCollectionCoverImageManager___collectionCoverImageManager = v3;
}

+ (id)sharedCollectionCoverImageManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MKAppImageManager_sharedCollectionCoverImageManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedCollectionCoverImageManager_onceToken != -1)
  {
    dispatch_once(&sharedCollectionCoverImageManager_onceToken, block);
  }

  v2 = sharedCollectionCoverImageManager___collectionCoverImageManager;

  return v2;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10 || [v10 code] != -999)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__471;
    v49 = __Block_byref_object_dispose__472;
    v50 = 0;
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke;
    v41 = &unk_1E76C6CD0;
    v44 = &v45;
    v42 = self;
    v12 = v9;
    v43 = v12;
    geo_isolate_sync();
    v13 = v46[5];
    if (v11)
    {
      if (v13)
      {
        v14 = MKGetAppImageManagerLog();
        v15 = [v46[5] signpostID];
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v14, OS_SIGNPOST_INTERVAL_END, v15, "DownloadImage", &unk_1A30FEA0E, buf, 2u);
        }

        iconCache = self->_iconCache;
        v17 = [v46[5] urlString];
        v18 = [(NSCache *)iconCache objectForKey:v17];

        v19 = [v46[5] completionHandler];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_64;
        v33[3] = &unk_1E76CAA70;
        v20 = v18;
        v34 = v20;
        v21 = v19;
        v36 = v21;
        v35 = v11;
        [(MKAppImageManager *)self _dispatchOnManThread:v33];
        v31[12] = MEMORY[0x1E69E9820];
        v31[13] = 3221225472;
        v31[14] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_2;
        v31[15] = &unk_1E76CD810;
        v31[16] = self;
        v32 = v12;
        geo_isolate_sync();
        v31[6] = MEMORY[0x1E69E9820];
        v31[7] = 3221225472;
        v31[8] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_3;
        v31[9] = &unk_1E76CD7E8;
        v31[10] = self;
        v31[11] = &v45;
        geo_isolate_sync();

        v22 = v34;
LABEL_20:
      }
    }

    else if (v13)
    {
      v20 = [v13 completionHandler];
      v21 = [v46[5] data];
      if ([v21 length])
      {
        v22 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v21];
      }

      else
      {
        v22 = 0;
      }

      v23 = MKGetAppImageManagerLog();
      v24 = [v46[5] signpostID];
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v23, OS_SIGNPOST_INTERVAL_END, v24, "DownloadImage", &unk_1A30FEA0E, buf, 2u);
      }

      if (v22)
      {
        v25 = self->_iconCache;
        v26 = [v46[5] urlString];
        [(NSCache *)v25 setObject:v22 forKey:v26];

        v27 = v31;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_66;
        v31[3] = &unk_1E76CDA20;
        v31[5] = v20;
        v31[4] = v22;
        [(MKAppImageManager *)self _dispatchOnManThread:v31];
      }

      else
      {
        v27 = v30;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_2_67;
        v30[3] = &unk_1E76C6268;
        v30[6] = &v45;
        v28 = v20;
        v30[4] = 0;
        v30[5] = v28;
        [(MKAppImageManager *)self _dispatchOnManThread:v30];
      }

      v29 = v12;
      geo_isolate_sync();
      geo_isolate_sync();

      goto LABEL_20;
    }

    _Block_object_dispose(&v45, 8);
  }
}

void __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(*(*(a1 + 40) + 8) + 40) urlString];
  [v1 removeObjectForKey:v2];
}

void __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_2_67(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKAppImageManager" code:1002 userInfo:0];
  v3 = MKGetAppImageManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(*(*(a1 + 48) + 8) + 40) urlString];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "[X] Formatting Error: %@ for Url: %@", &v5, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_2_69(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(*(*(a1 + 40) + 8) + 40) urlString];
  [v1 removeObjectForKey:v2];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v10 = a5;
  v7 = [(NSMapTable *)self->_containers objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 data];
    [v9 appendData:v10];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v7 = [a5 MIMEType];
  v8 = [v7 containsString:@"image"];

  v9[2](v9, v8);
}

- (void)_dispatchOnManThread:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__MKAppImageManager__dispatchOnManThread___block_invoke;
      block[3] = &unk_1E76CD4D0;
      v5 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: block", buf, 2u);
  }
}

- (void)cancelLoadAppImageAtURL:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__471;
  v39 = __Block_byref_object_dispose__472;
  v40 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke;
  v31 = &unk_1E76C6CD0;
  v34 = &v35;
  v32 = self;
  v5 = v4;
  v33 = v5;
  geo_isolate_sync();
  v6 = v36[5];
  if (v6)
  {
    [v6 cancel];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__471;
    v26 = __Block_byref_object_dispose__472;
    v27 = 0;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke_2;
    v18 = &unk_1E76C6B88;
    v19 = self;
    v20 = &v22;
    v21 = &v35;
    geo_isolate_sync();
    v7 = MKGetAppImageManagerLog();
    v8 = [v23[5] signpostID];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_EVENT, v8, "DownloadCancelled", &unk_1A30FEA0E, buf, 2u);
    }

    v9 = [v23[5] completionHandler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke_58;
    v12[3] = &unk_1E76CD4D0;
    v10 = v9;
    v13 = v10;
    [(MKAppImageManager *)self _dispatchOnManThread:v12];
    geo_isolate_sync();
    v11 = v5;
    geo_isolate_sync();

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v35, 8);
}

void __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) absoluteString];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:*(*(a1[6] + 8) + 40)];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) absoluteString];
  [v1 removeObjectForKey:v2];
}

- (void)loadAppImageAtURL:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 absoluteString];
  v9 = [v8 length];

  if (v9)
  {
    iconCache = self->_iconCache;
    v11 = [v6 absoluteString];
    v12 = [(NSCache *)iconCache objectForKey:v11];

    if (v12)
    {
      v13 = MKGetAppImageManagerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v6 absoluteString];
        *buf = 138412290;
        v37 = v14;
        _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "[✔]Returning Cached image for url: %@", buf, 0xCu);
      }

      v7[2](v7, v12, 1, 1, 0);
    }

    else
    {
      v15 = objc_alloc_init(_MKAppImageManagerContainer);
      v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [(_MKAppImageManagerContainer *)v15 setData:v16];

      [(_MKAppImageManagerContainer *)v15 setCompletionHandler:v7];
      v17 = [v6 absoluteString];
      [(_MKAppImageManagerContainer *)v15 setUrlString:v17];

      v18 = MKGetAppImageManagerLog();
      [(_MKAppImageManagerContainer *)v15 setSignpostID:os_signpost_id_generate(v18)];

      v19 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:v6 cachePolicy:0 timeoutInterval:5.0];
      v20 = [(NSURLSession *)self->_session dataTaskWithRequest:v19];
      if (v20 && ([v6 absoluteString], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
      {
        v34 = v15;
        v35 = v20;
        geo_isolate_sync();
        v31 = MEMORY[0x1E69E9820];
        v32 = self;
        v22 = v35;
        v33 = v6;
        geo_isolate_sync();
        v23 = MKGetAppImageManagerLog();
        v24 = [(_MKAppImageManagerContainer *)v34 signpostID:v31];
        if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = v24;
          if (os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v25, "DownloadImage", &unk_1A30FEA0E, buf, 2u);
          }
        }

        [v22 resume];
      }

      else
      {
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKAppImageManager" code:1001 userInfo:0];
        v27 = MKGetAppImageManagerLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [v6 absoluteString];
          *buf = 138412546;
          v37 = v26;
          v38 = 2112;
          v39 = v28;
          _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_ERROR, "[X] Error: %@ for Url: %@", buf, 0x16u);
        }

        (v7)[2](v7, 0, 0, 0, v26);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKAppImageManager" code:1001 userInfo:0];
    v29 = MKGetAppImageManagerLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v6 absoluteString];
      *buf = 138412546;
      v37 = v12;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_1A2EA0000, v29, OS_LOG_TYPE_ERROR, "[X] Error: %@ for Url: %@", buf, 0x16u);
    }

    (v7)[2](v7, 0, 0, 0, v12);
  }
}

void __57__MKAppImageManager_loadAppImageAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 48) absoluteString];
  [v2 setObject:v1 forKey:v3];
}

- (id)cachedImageAtURL:(id)a3
{
  iconCache = self->_iconCache;
  v4 = [a3 absoluteString];
  v5 = [(NSCache *)iconCache objectForKey:v4];

  return v5;
}

- (void)clearImageCache
{
  v3 = MKGetAppImageManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "Clearing image cache.", v4, 2u);
  }

  [(NSCache *)self->_iconCache removeAllObjects];
}

- (MKAppImageManager)initWithURLCache:(id)a3 auditToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = MKAppImageManager;
  v8 = [(MKAppImageManager *)&v25 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v9 setName:@"com.apple.MapKit.AppImageManager.URLSession"];
    [v9 setQualityOfService:25];
    [v9 setMaxConcurrentOperationCount:2];
    v10 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v11 = v10;
    if (v6)
    {
      [v10 setURLCache:v6];
    }

    if (v7)
    {
      [v11 geo_setApplicationAttribution:v7];
    }

    v12 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v11 delegate:v8 delegateQueue:v9];
    session = v8->_session;
    v8->_session = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    iconCache = v8->_iconCache;
    v8->_iconCache = v14;

    v16 = geo_isolater_create();
    containersLock = v8->_containersLock;
    v8->_containersLock = v16;

    v18 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    containers = v8->_containers;
    v8->_containers = v18;

    v20 = geo_isolater_create();
    urlConnectionsLock = v8->_urlConnectionsLock;
    v8->_urlConnectionsLock = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    urlConnections = v8->_urlConnections;
    v8->_urlConnections = v22;
  }

  return v8;
}

+ (id)persistedCacheWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4 directoryName:(id)a5
{
  v7 = MEMORY[0x1E696AC08];
  v8 = a5;
  v9 = [v7 defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];
  v11 = [v10 firstObject];

  v12 = [v11 URLByAppendingPathComponent:v8];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AF18]) initWithMemoryCapacity:a3 diskCapacity:a4 directoryURL:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)sharedVisitedPlacesContainerImageManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MKAppImageManager_sharedVisitedPlacesContainerImageManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedVisitedPlacesContainerImageManager_onceToken != -1)
  {
    dispatch_once(&sharedVisitedPlacesContainerImageManager_onceToken, block);
  }

  v2 = sharedVisitedPlacesContainerImageManager___visitedPlacesContainerImageManager;

  return v2;
}

void __61__MKAppImageManager_sharedVisitedPlacesContainerImageManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  UInteger = GEOConfigGetUInteger();
  v5 = [v1 persistedCacheWithMemoryCapacity:UInteger diskCapacity:GEOConfigGetUInteger() directoryName:@"MKVisitedPlacesContainerPhotoCache"];
  v3 = [[MKAppImageManager alloc] initWithURLCache:v5];
  v4 = sharedVisitedPlacesContainerImageManager___visitedPlacesContainerImageManager;
  sharedVisitedPlacesContainerImageManager___visitedPlacesContainerImageManager = v3;
}

+ (id)sharedImageManagerWithAuditToken:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MKAppImageManager_sharedImageManagerWithAuditToken___block_invoke;
  block[3] = &unk_1E76CDB38;
  v10 = v3;
  v4 = sharedImageManagerWithAuditToken__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedImageManagerWithAuditToken__onceToken, block);
  }

  v6 = sharedImageManagerWithAuditToken____appImageManager;
  v7 = sharedImageManagerWithAuditToken____appImageManager;

  return v6;
}

void __54__MKAppImageManager_sharedImageManagerWithAuditToken___block_invoke(uint64_t a1)
{
  v1 = [[MKAppImageManager alloc] initWithURLCache:0 auditToken:*(a1 + 32)];
  v2 = sharedImageManagerWithAuditToken____appImageManager;
  sharedImageManagerWithAuditToken____appImageManager = v1;
}

@end