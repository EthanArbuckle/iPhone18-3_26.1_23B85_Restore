@interface LPImageFetcher
+ (id)imageFetcherForConfiguration:(id)a3;
- (void)_completedWithImage:(id)a3 error:(id)a4;
- (void)_failedWithErrorCode:(int64_t)a3 underlyingError:(id)a4;
- (void)cancel;
- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation LPImageFetcher

+ (id)imageFetcherForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchIsNotUserInitiated];
  v5 = off_1E7A346E0;
  if (!v4)
  {
    v5 = off_1E7A347A8;
  }

  v6 = objc_alloc_init(*v5);

  return v6;
}

- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
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
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [LPImageFetcher fetchWithConfiguration:v28 completionHandler:[(LPFetcher *)self _loggingID]];
  }

  v15 = [(LPImageFetcher *)self URL];
  v16 = [v15 _lp_requestWithAttribution:{objc_msgSend(v6, "loadingIsNonAppInitiated")}];

  v17 = [v6 webViewForProcessSharing];
  if (!v17)
  {
    v18 = LPLogChannelFetching();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [LPImageFetcher fetchWithConfiguration:v27 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v19 = objc_alloc(MEMORY[0x1E69853A0]);
    v20 = +[LPMetadataProvider _copyDefaultWebViewConfiguration];
    v21 = [v19 initWithFrame:v20 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    webView = self->_webView;
    self->_webView = v21;

    v23 = +[LPMetadataProvider _defaultUserAgent];
    [(WKWebView *)self->_webView setCustomUserAgent:v23];

    v17 = self->_webView;
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__LPImageFetcher_fetchWithConfiguration_completionHandler___block_invoke;
  v24[3] = &unk_1E7A36E50;
  objc_copyWeak(&v25, &location);
  [(WKWebView *)v17 _loadAndDecodeImage:v16 constrainedToSize:10485760 maximumBytesFromNetwork:v24 completionHandler:1024.0, 1024.0];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __59__LPImageFetcher_fetchWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LPLogChannelFetching();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 _loggingID];
        v11 = [v6 domain];
        v12[0] = 67109891;
        v12[1] = v10;
        v13 = 2112;
        v14 = v11;
        v15 = 2048;
        v16 = [v6 code];
        v17 = 2117;
        v18 = v6;
        _os_log_error_impl(&dword_1AE886000, v9, OS_LOG_TYPE_ERROR, "LPImageFetcher<%d>: subresource load completed with error: Domain=%@ Code=%ld Error=%{sensitive}@", v12, 0x26u);
      }

      [v8 _failedWithErrorCode:2 underlyingError:v6];
    }

    else
    {
      [WeakRetained _completedWithImage:v5 error:0];
    }
  }
}

- (void)cancel
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_completionHandler)
  {
    v3 = LPLogChannelFetching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(LPImageFetcher *)v4 cancel];
    }

    [(LPImageFetcher *)self _failedWithErrorCode:3 underlyingError:0];
  }
}

- (void)_failedWithErrorCode:(int64_t)a3 underlyingError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_completionHandler)
  {
    if (a3 != 3)
    {
      v7 = LPLogChannelFetching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [(LPFetcher *)self _loggingID];
        v10 = [v6 domain];
        v11[0] = 67109891;
        v11[1] = v9;
        v12 = 2112;
        v13 = v10;
        v14 = 2048;
        v15 = [v6 code];
        v16 = 2117;
        v17 = v6;
        _os_log_error_impl(&dword_1AE886000, v7, OS_LOG_TYPE_ERROR, "LPImageFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
      }
    }

    v8 = makeLPError(a3, v6);
    [(LPImageFetcher *)self _completedWithImage:0 error:v8];
  }
}

- (void)_completedWithImage:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v9 = _Block_copy(completionHandler);
    v10 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!v6)
    {
      goto LABEL_8;
    }

    v11 = LPLogChannelFetching();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [LPImageFetcher _completedWithImage:v19 error:[(LPFetcher *)self _loggingID]];
    }

    v12 = [(LPFetcher *)self responseClass];
    if (!v12)
    {
      v12 = objc_opt_class();
    }

    v13 = [(objc_class *)v12 responseForFetcher:self withImage:v6];
    if (!v13)
    {
LABEL_8:
      v13 = [[LPFetcherErrorResponse alloc] initWithError:v7 fetcher:self];
    }

    [(WKWebView *)self->_webView _close];
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__5;
    v17[4] = __Block_byref_object_dispose__5;
    v18 = self->_webView;
    webView = self->_webView;
    self->_webView = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__LPImageFetcher__completedWithImage_error___block_invoke;
    block[3] = &unk_1E7A35518;
    block[4] = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v15 = [(LPFetcher *)self _event];
    [v15 didCompleteWithErrorCode:{objc_msgSend(v7, "code")}];

    v9[2](v9, v13);
    _Block_object_dispose(v17, 8);
  }
}

void __44__LPImageFetcher__completedWithImage_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end