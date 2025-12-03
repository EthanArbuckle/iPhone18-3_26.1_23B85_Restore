@interface MKPlaceCollectionImageDownloadOperation
- (MKPlaceCollectionImageDownloadOperation)initWithUrl:(id)url downloadCache:(id)cache cacheId:(id)id;
- (NSCache)downloadCache;
- (void)cancel;
- (void)main;
- (void)markOperationAsComplete;
- (void)start;
@end

@implementation MKPlaceCollectionImageDownloadOperation

- (NSCache)downloadCache
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadCache);

  return WeakRetained;
}

- (void)cancel
{
  downloadTask = [(MKPlaceCollectionImageDownloadOperation *)self downloadTask];
  [downloadTask cancel];

  v4.receiver = self;
  v4.super_class = MKPlaceCollectionImageDownloadOperation;
  [(MKPlaceCollectionImageDownloadOperation *)&v4 cancel];
}

- (void)markOperationAsComplete
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(MKPlaceCollectionImageDownloadOperation *)self name];
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "Download operation finished %@", &v5, 0xCu);
  }

  [(MKPlaceCollectionImageDownloadOperation *)self willChangeValueForKey:@"isFinished"];
  [(MKPlaceCollectionImageDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
  [(MKPlaceCollectionImageDownloadOperation *)self setExecuting:0];
  [(MKPlaceCollectionImageDownloadOperation *)self setFinished:1];
  [(MKPlaceCollectionImageDownloadOperation *)self didChangeValueForKey:@"isExecuting"];
  [(MKPlaceCollectionImageDownloadOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)main
{
  v24 = *MEMORY[0x1E69E9840];
  downloadCache = [(MKPlaceCollectionImageDownloadOperation *)self downloadCache];
  cacheId = [(MKPlaceCollectionImageDownloadOperation *)self cacheId];
  v5 = [downloadCache objectForKey:cacheId];

  if (v5)
  {
    v6 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      name = [(MKPlaceCollectionImageDownloadOperation *)self name];
      *buf = 138412290;
      v23 = name;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[!]Download cache already has image: %@", buf, 0xCu);
    }

    [(MKPlaceCollectionImageDownloadOperation *)self markOperationAsComplete];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AF68]);
    v9 = [(MKPlaceCollectionImageDownloadOperation *)self url];
    v10 = [v8 initWithURL:v9 cachePolicy:2 timeoutInterval:15.0];

    objc_initWeak(&location, self);
    date = [MEMORY[0x1E695DF00] date];
    mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__MKPlaceCollectionImageDownloadOperation_main__block_invoke;
    v18[3] = &unk_1E76C8C28;
    objc_copyWeak(&v20, &location);
    v13 = date;
    v19 = v13;
    v14 = [mEMORY[0x1E696AF78] dataTaskWithRequest:v10 completionHandler:v18];
    downloadTask = self->_downloadTask;
    self->_downloadTask = v14;

    if ([(MKPlaceCollectionImageDownloadOperation *)self isCancelled])
    {
      v16 = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        cacheId2 = [(MKPlaceCollectionImageDownloadOperation *)self cacheId];
        *buf = 138412290;
        v23 = cacheId2;
        _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "Download Operation is cancelled for: %@", buf, 0xCu);
      }
    }

    else
    {
      [(NSURLSessionDataTask *)self->_downloadTask resume];
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __47__MKPlaceCollectionImageDownloadOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9 || ![v7 length])
  {
    v11 = MKGetCuratedCollectionsLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = [WeakRetained name];
    v23 = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "[!!]Image download failed for: %@. Error: %@", &v23, 0x16u);
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v7];
    v13 = MKGetCuratedCollectionsLog();
    v12 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [WeakRetained name];
        v15 = [MEMORY[0x1E695DF00] date];
        [v15 timeIntervalSinceDate:*(a1 + 32)];
        v23 = 138412802;
        v24 = v14;
        v25 = 2048;
        v26 = v16;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_DEBUG, "[⌛]Completed image download for (%@) in: %f seconds. Image: %@. ", &v23, 0x20u);
      }

      v12 = [WeakRetained downloadCache];
      v17 = [WeakRetained cacheId];
      [v12 setObject:v11 forKey:v17];
      goto LABEL_11;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = [WeakRetained cacheId];
      v23 = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "[⌛] Failed to build UIImage from data: %@, \nResponse: %@. \nCache ID: %@", &v23, 0x20u);
LABEL_11:
    }
  }

LABEL_13:
  v18 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [WeakRetained downloadCache];
    v20 = [WeakRetained downloadCache];
    v21 = [v20 allObjects];
    v22 = [v21 count];
    v23 = 138412546;
    v24 = v19;
    v25 = 2048;
    v26 = v22;
    _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_DEBUG, "Download cache %@ has %ld items.", &v23, 0x16u);
  }

  [WeakRetained markOperationAsComplete];
}

- (void)start
{
  if ([(MKPlaceCollectionImageDownloadOperation *)self isCancelled])
  {
    [(MKPlaceCollectionImageDownloadOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(MKPlaceCollectionImageDownloadOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(MKPlaceCollectionImageDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(MKPlaceCollectionImageDownloadOperation *)self didChangeValueForKey:@"isExecuting"];

    [(MKPlaceCollectionImageDownloadOperation *)self main];
  }
}

- (MKPlaceCollectionImageDownloadOperation)initWithUrl:(id)url downloadCache:(id)cache cacheId:(id)id
{
  urlCopy = url;
  cacheCopy = cache;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = MKPlaceCollectionImageDownloadOperation;
  v12 = [(MKPlaceCollectionImageDownloadOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, url);
    objc_storeWeak(&v13->_downloadCache, cacheCopy);
    objc_storeStrong(&v13->_cacheId, id);
    [(MKPlaceCollectionImageDownloadOperation *)v13 setName:idCopy];
    v13->_executing = 0;
    v13->_finished = 0;
  }

  return v13;
}

@end