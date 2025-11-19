@interface LPAssociatedApplicationMetadataFetcher
- (void)_completedWithClipMetadata:(id)a3 iconURL:(id)a4 error:(id)a5;
- (void)_failedWithErrorCode:(int64_t)a3 underlyingError:(id)a4;
- (void)cancel;
- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation LPAssociatedApplicationMetadataFetcher

- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 rootEvent];
  v9 = [v8 childWithType:2 subtitle:0];
  [(LPFetcher *)self set_event:v9];

  URL = self->_URL;
  v11 = [(LPFetcher *)self _event];
  [v11 setURL:URL];

  v12 = _Block_copy(v7);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v12;

  v14 = LPLogChannelFetching();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [(LPFetcher *)self _loggingID];
    _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPAssociatedApplicationMetadataFetcher<%d>: retrieving URL", buf, 8u);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v15 = getCPSClipURLClass_softClass;
  v27 = getCPSClipURLClass_softClass;
  if (!getCPSClipURLClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getCPSClipURLClass_block_invoke;
    v31 = &unk_1E7A35518;
    v32 = &v24;
    __getCPSClipURLClass_block_invoke(buf);
    v15 = v25[3];
  }

  v16 = v15;
  _Block_object_dispose(&v24, 8);
  if ([v15 isSupported])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v17 = getCPSClipMetadataRequestClass_softClass;
    v27 = getCPSClipMetadataRequestClass_softClass;
    if (!getCPSClipMetadataRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getCPSClipMetadataRequestClass_block_invoke;
      v31 = &unk_1E7A35518;
      v32 = &v24;
      __getCPSClipMetadataRequestClass_block_invoke(buf);
      v17 = v25[3];
    }

    v18 = v17;
    _Block_object_dispose(&v24, 8);
    v19 = [[v17 alloc] initWithURL:self->_URL fallbackClipBundleID:self->_bundleIdentifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke;
    v21[3] = &unk_1E7A35C60;
    v22 = v19;
    v23 = self;
    v20 = v19;
    [v20 requestMetadataWithCompletion:v21];
  }

  else
  {
    [(LPAssociatedApplicationMetadataFetcher *)self _failedWithErrorCode:2 underlyingError:0];
  }
}

void __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7A35C38;
    v6 = v5;
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    v11 = v3;
    [v6 requestDownloadedIconWithMetadata:v11 completion:v8];
  }

  else
  {
    [*(a1 + 40) _failedWithErrorCode:2 underlyingError:0];
  }
}

void __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke_3;
  v8[3] = &unk_1E7A35C10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __83__LPAssociatedApplicationMetadataFetcher_fetchWithConfiguration_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  [v1 _completedWithClipMetadata:v2 iconURL:v3 error:0];
}

- (void)cancel
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_completionHandler)
  {
    v3 = LPLogChannelFetching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = [(LPFetcher *)self _loggingID];
      _os_log_impl(&dword_1AE886000, v3, OS_LOG_TYPE_DEFAULT, "LPAssociatedApplicationMetadataFetcher<%d>: cancelling subresource load explicitly", v4, 8u);
    }

    [(LPAssociatedApplicationMetadataFetcher *)self _failedWithErrorCode:3 underlyingError:0];
  }
}

- (void)_failedWithErrorCode:(int64_t)a3 underlyingError:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_completionHandler)
  {
    if (a3 != 3)
    {
      v7 = LPLogChannelFetching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 67109379;
        v9[1] = [(LPFetcher *)self _loggingID];
        v10 = 2117;
        v11 = v6;
        _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPAssociatedApplicationMetadataFetcher<%d>: failed to retrieve URL: %{sensitive}@", v9, 0x12u);
      }
    }

    v8 = makeLPError(a3, v6);
    [(LPAssociatedApplicationMetadataFetcher *)self _completedWithClipMetadata:0 iconURL:0 error:v8];
  }
}

- (void)_completedWithClipMetadata:(id)a3 iconURL:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v12 = _Block_copy(completionHandler);
    v13 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!v8)
    {
      goto LABEL_6;
    }

    v14 = LPLogChannelFetching();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = [(LPFetcher *)self _loggingID];
      _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPAssociatedApplicationMetadataFetcher<%d>: successfully retrieved metadata", buf, 8u);
    }

    v15 = [[LPFetcherClipMetadataResponse alloc] initWithClipMetadata:v8 iconURL:v9 fetcher:self];
    if (!v15)
    {
LABEL_6:
      v15 = [[LPFetcherErrorResponse alloc] initWithError:v10 fetcher:self];
    }

    v16 = [(LPFetcher *)self _event];
    [v16 didCompleteWithErrorCode:{objc_msgSend(v10, "code")}];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__LPAssociatedApplicationMetadataFetcher__completedWithClipMetadata_iconURL_error___block_invoke;
    v19[3] = &unk_1E7A35428;
    v20 = v15;
    v21 = v12;
    v17 = v15;
    v18 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

@end