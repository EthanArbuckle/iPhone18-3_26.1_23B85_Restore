@interface MKAppImageManager
+ (id)persistedCacheWithMemoryCapacity:(unint64_t)capacity diskCapacity:(unint64_t)diskCapacity directoryName:(id)name;
+ (id)sharedCollectionCoverImageManager;
+ (id)sharedImageManagerWithAuditToken:(id)token;
+ (id)sharedVisitedPlacesContainerImageManager;
- (MKAppImageManager)initWithURLCache:(id)cache auditToken:(id)token;
- (id)cachedImageAtURL:(id)l;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_dispatchOnManThread:(id)thread;
- (void)cancelLoadAppImageAtURL:(id)l;
- (void)clearImageCache;
- (void)loadAppImageAtURL:(id)l completionHandler:(id)handler;
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
  block[4] = self;
  if (sharedCollectionCoverImageManager_onceToken != -1)
  {
    dispatch_once(&sharedCollectionCoverImageManager_onceToken, block);
  }

  v2 = sharedCollectionCoverImageManager___collectionCoverImageManager;

  return v2;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = errorCopy;
  if (!errorCopy || [errorCopy code] != -999)
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
    selfCopy = self;
    v12 = taskCopy;
    v43 = v12;
    geo_isolate_sync();
    v13 = v46[5];
    if (v11)
    {
      if (v13)
      {
        v14 = MKGetAppImageManagerLog();
        signpostID = [v46[5] signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v14, OS_SIGNPOST_INTERVAL_END, signpostID, "DownloadImage", &unk_1A30FEA0E, buf, 2u);
        }

        iconCache = self->_iconCache;
        urlString = [v46[5] urlString];
        v18 = [(NSCache *)iconCache objectForKey:urlString];

        completionHandler = [v46[5] completionHandler];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_64;
        v33[3] = &unk_1E76CAA70;
        completionHandler2 = v18;
        v34 = completionHandler2;
        data = completionHandler;
        v36 = data;
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
      completionHandler2 = [v13 completionHandler];
      data = [v46[5] data];
      if ([data length])
      {
        v22 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:data];
      }

      else
      {
        v22 = 0;
      }

      v23 = MKGetAppImageManagerLog();
      signpostID2 = [v46[5] signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v23, OS_SIGNPOST_INTERVAL_END, signpostID2, "DownloadImage", &unk_1A30FEA0E, buf, 2u);
      }

      if (v22)
      {
        v25 = self->_iconCache;
        urlString2 = [v46[5] urlString];
        [(NSCache *)v25 setObject:v22 forKey:urlString2];

        v27 = v31;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __58__MKAppImageManager_URLSession_task_didCompleteWithError___block_invoke_66;
        v31[3] = &unk_1E76CDA20;
        v31[5] = completionHandler2;
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
        v28 = completionHandler2;
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

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = [(NSMapTable *)self->_containers objectForKey:task];
  v8 = v7;
  if (v7)
  {
    data = [v7 data];
    [data appendData:dataCopy];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  mIMEType = [response MIMEType];
  v8 = [mIMEType containsString:@"image"];

  handlerCopy[2](handlerCopy, v8);
}

- (void)_dispatchOnManThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      threadCopy[2](threadCopy);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__MKAppImageManager__dispatchOnManThread___block_invoke;
      block[3] = &unk_1E76CD4D0;
      v5 = threadCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: block", buf, 2u);
  }
}

- (void)cancelLoadAppImageAtURL:(id)l
{
  lCopy = l;
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
  selfCopy = self;
  v5 = lCopy;
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
    selfCopy2 = self;
    v20 = &v22;
    v21 = &v35;
    geo_isolate_sync();
    v7 = MKGetAppImageManagerLog();
    signpostID = [v23[5] signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_EVENT, signpostID, "DownloadCancelled", &unk_1A30FEA0E, buf, 2u);
    }

    completionHandler = [v23[5] completionHandler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MKAppImageManager_cancelLoadAppImageAtURL___block_invoke_58;
    v12[3] = &unk_1E76CD4D0;
    v10 = completionHandler;
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

- (void)loadAppImageAtURL:(id)l completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  absoluteString = [lCopy absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    iconCache = self->_iconCache;
    absoluteString2 = [lCopy absoluteString];
    v12 = [(NSCache *)iconCache objectForKey:absoluteString2];

    if (v12)
    {
      v13 = MKGetAppImageManagerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        absoluteString3 = [lCopy absoluteString];
        *buf = 138412290;
        v37 = absoluteString3;
        _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "[✔]Returning Cached image for url: %@", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, v12, 1, 1, 0);
    }

    else
    {
      v15 = objc_alloc_init(_MKAppImageManagerContainer);
      v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [(_MKAppImageManagerContainer *)v15 setData:v16];

      [(_MKAppImageManagerContainer *)v15 setCompletionHandler:handlerCopy];
      absoluteString4 = [lCopy absoluteString];
      [(_MKAppImageManagerContainer *)v15 setUrlString:absoluteString4];

      v18 = MKGetAppImageManagerLog();
      [(_MKAppImageManagerContainer *)v15 setSignpostID:os_signpost_id_generate(v18)];

      v19 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:lCopy cachePolicy:0 timeoutInterval:5.0];
      v20 = [(NSURLSession *)self->_session dataTaskWithRequest:v19];
      if (v20 && ([lCopy absoluteString], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
      {
        v34 = v15;
        v35 = v20;
        geo_isolate_sync();
        v31 = MEMORY[0x1E69E9820];
        selfCopy = self;
        v22 = v35;
        v33 = lCopy;
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
          absoluteString5 = [lCopy absoluteString];
          *buf = 138412546;
          v37 = v26;
          v38 = 2112;
          v39 = absoluteString5;
          _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_ERROR, "[X] Error: %@ for Url: %@", buf, 0x16u);
        }

        (handlerCopy)[2](handlerCopy, 0, 0, 0, v26);
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
      absoluteString6 = [lCopy absoluteString];
      *buf = 138412546;
      v37 = v12;
      v38 = 2112;
      v39 = absoluteString6;
      _os_log_impl(&dword_1A2EA0000, v29, OS_LOG_TYPE_ERROR, "[X] Error: %@ for Url: %@", buf, 0x16u);
    }

    (handlerCopy)[2](handlerCopy, 0, 0, 0, v12);
  }
}

void __57__MKAppImageManager_loadAppImageAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 48) absoluteString];
  [v2 setObject:v1 forKey:v3];
}

- (id)cachedImageAtURL:(id)l
{
  iconCache = self->_iconCache;
  absoluteString = [l absoluteString];
  v5 = [(NSCache *)iconCache objectForKey:absoluteString];

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

- (MKAppImageManager)initWithURLCache:(id)cache auditToken:(id)token
{
  cacheCopy = cache;
  tokenCopy = token;
  v25.receiver = self;
  v25.super_class = MKAppImageManager;
  v8 = [(MKAppImageManager *)&v25 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v9 setName:@"com.apple.MapKit.AppImageManager.URLSession"];
    [v9 setQualityOfService:25];
    [v9 setMaxConcurrentOperationCount:2];
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v11 = defaultSessionConfiguration;
    if (cacheCopy)
    {
      [defaultSessionConfiguration setURLCache:cacheCopy];
    }

    if (tokenCopy)
    {
      [v11 geo_setApplicationAttribution:tokenCopy];
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

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    containers = v8->_containers;
    v8->_containers = strongToStrongObjectsMapTable;

    v20 = geo_isolater_create();
    urlConnectionsLock = v8->_urlConnectionsLock;
    v8->_urlConnectionsLock = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    urlConnections = v8->_urlConnections;
    v8->_urlConnections = v22;
  }

  return v8;
}

+ (id)persistedCacheWithMemoryCapacity:(unint64_t)capacity diskCapacity:(unint64_t)diskCapacity directoryName:(id)name
{
  v7 = MEMORY[0x1E696AC08];
  nameCopy = name;
  defaultManager = [v7 defaultManager];
  v10 = [defaultManager URLsForDirectory:13 inDomains:1];
  firstObject = [v10 firstObject];

  v12 = [firstObject URLByAppendingPathComponent:nameCopy];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AF18]) initWithMemoryCapacity:capacity diskCapacity:diskCapacity directoryURL:v12];
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
  block[4] = self;
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

+ (id)sharedImageManagerWithAuditToken:(id)token
{
  tokenCopy = token;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MKAppImageManager_sharedImageManagerWithAuditToken___block_invoke;
  block[3] = &unk_1E76CDB38;
  v10 = tokenCopy;
  v4 = sharedImageManagerWithAuditToken__onceToken;
  v5 = tokenCopy;
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