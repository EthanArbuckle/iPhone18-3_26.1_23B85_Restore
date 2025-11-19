@interface PHAssetResourceWriteRequest
- (BOOL)retryAssetResourceRequest:(id)a3 afterFailureWithError:(id)a4;
- (NSString)taskIdentifier;
- (PHAssetResourceRequestDelegate)delegate;
- (PHAssetResourceWriteRequest)initWithAssetResource:(id)a3 destinationFileURL:(id)a4 options:(id)a5 requestID:(int)a6 managerID:(unint64_t)a7 delegate:(id)a8 completionHandler:(id)a9;
- (id)_lazyDataRequest;
- (void)_handleDidFindFileURL:(id)a3;
- (void)assetResourceRequest:(id)a3 didFinishWithError:(id)a4;
- (void)configureWithError:(id)a3;
- (void)setErrorIfNone:(id)a3;
- (void)startRequest;
@end

@implementation PHAssetResourceWriteRequest

- (PHAssetResourceRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)retryAssetResourceRequest:(id)a3 afterFailureWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained retryAssetResourceRequest:self afterFailureWithError:v5];

  return self;
}

- (void)assetResourceRequest:(id)a3 didFinishWithError:(id)a4
{
  [(PHAssetResourceWriteRequest *)self setErrorIfNone:a4];
  os_unfair_lock_lock(&self->_completionHandlerLock);
  v8 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  os_unfair_lock_unlock(&self->_completionHandlerLock);
  if (v8)
  {
    v6 = PHPublicErrorFromError(self->_error);
    v8[2](v8, v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assetResourceRequest:self didFinishWithError:self->_error];
}

- (NSString)taskIdentifier
{
  taskIdentifier = self->_taskIdentifier;
  if (taskIdentifier)
  {
    v3 = taskIdentifier;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ARW-%lu-%lu", self->_managerID, self->_requestID];
  }

  return v3;
}

- (void)configureWithError:(id)a3
{
  v4 = a3;
  v5 = [(PHAssetResourceWriteRequest *)self _lazyDataRequest];
  [v5 configureWithError:v4];
}

- (void)startRequest
{
  v2 = [(PHAssetResourceWriteRequest *)self _lazyDataRequest];
  [v2 startRequest];
}

- (id)_lazyDataRequest
{
  dataRequest = self->_dataRequest;
  if (!dataRequest)
  {
    objc_initWeak(&location, self);
    v4 = [PHAssetResourceRequest alloc];
    assetResource = self->_assetResource;
    options = self->_options;
    requestID = self->_requestID;
    managerID = self->_managerID;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PHAssetResourceWriteRequest__lazyDataRequest__block_invoke;
    v12[3] = &unk_1E75AAFF8;
    objc_copyWeak(&v13, &location);
    v9 = [(PHAssetResourceRequest *)v4 initWithAssetResource:assetResource options:options requestID:requestID managerID:managerID delegate:self urlReceivedHandler:v12 dataReceivedHandler:0 completionHandler:0];
    v10 = self->_dataRequest;
    self->_dataRequest = v9;

    [(PHAssetResourceRequest *)self->_dataRequest setLoadURLOnly:1];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    dataRequest = self->_dataRequest;
  }

  return dataRequest;
}

void __47__PHAssetResourceWriteRequest__lazyDataRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFindFileURL:v3];
}

- (void)_handleDidFindFileURL:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PHAssetResourceWriteRequest *)self isCancelled])
  {
    destinationFileURL = self->_destinationFileURL;
    v15 = 0;
    v6 = [MEMORY[0x1E69BF238] copyItemAtURL:v4 toURL:destinationFileURL error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = self->_destinationFileURL;
      v9 = *MEMORY[0x1E69BFDE8];
      v14 = 0;
      v10 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:v8 inDomain:v9 error:&v14];
      v11 = v14;
      if ((v10 & 1) == 0)
      {
        v12 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_destinationFileURL;
          *buf = 138412546;
          v17 = v13;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to strip extended attributes from %@, %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [(PHAssetResourceWriteRequest *)self setErrorIfNone:v7];
    }
  }
}

- (void)setErrorIfNone:(id)a3
{
  v5 = a3;
  error = self->_error;
  p_error = &self->_error;
  if (!error)
  {
    v8 = v5;
    objc_storeStrong(p_error, a3);
    v5 = v8;
  }
}

- (PHAssetResourceWriteRequest)initWithAssetResource:(id)a3 destinationFileURL:(id)a4 options:(id)a5 requestID:(int)a6 managerID:(unint64_t)a7 delegate:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  if (!v15)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PHAssetResourceWriteRequest.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v28.receiver = self;
  v28.super_class = PHAssetResourceWriteRequest;
  v20 = [(PHAssetResourceWriteRequest *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_assetResource, a3);
    objc_storeStrong(&v21->_destinationFileURL, a4);
    objc_storeStrong(&v21->_options, a5);
    v21->_requestID = a6;
    v21->_managerID = a7;
    objc_storeWeak(&v21->_delegate, v18);
    v21->_completionHandlerLock._os_unfair_lock_opaque = 0;
    v22 = [v19 copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;
  }

  return v21;
}

@end