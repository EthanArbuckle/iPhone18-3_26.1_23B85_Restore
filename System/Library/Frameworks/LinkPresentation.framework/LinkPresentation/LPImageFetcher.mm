@interface LPImageFetcher
+ (id)imageFetcherForConfiguration:(id)configuration;
- (void)_completedWithImage:(id)image error:(id)error;
- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error;
- (void)cancel;
- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LPImageFetcher

+ (id)imageFetcherForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fetchIsNotUserInitiated = [configurationCopy fetchIsNotUserInitiated];
  v5 = off_1E7A346E0;
  if (!fetchIsNotUserInitiated)
  {
    v5 = off_1E7A347A8;
  }

  v6 = objc_alloc_init(*v5);

  return v6;
}

- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  rootEvent = [configurationCopy rootEvent];
  v9 = [rootEvent childWithType:2 subtitle:0];
  [(LPFetcher *)self set_event:v9];

  URL = self->_URL;
  _event = [(LPFetcher *)self _event];
  [_event setURL:URL];

  v12 = _Block_copy(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v12;

  v14 = LPLogChannelFetching();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [LPImageFetcher fetchWithConfiguration:v28 completionHandler:[(LPFetcher *)self _loggingID]];
  }

  v15 = [(LPImageFetcher *)self URL];
  v16 = [v15 _lp_requestWithAttribution:{objc_msgSend(configurationCopy, "loadingIsNonAppInitiated")}];

  webViewForProcessSharing = [configurationCopy webViewForProcessSharing];
  if (!webViewForProcessSharing)
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

    webViewForProcessSharing = self->_webView;
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__LPImageFetcher_fetchWithConfiguration_completionHandler___block_invoke;
  v24[3] = &unk_1E7A36E50;
  objc_copyWeak(&v25, &location);
  [(WKWebView *)webViewForProcessSharing _loadAndDecodeImage:v16 constrainedToSize:10485760 maximumBytesFromNetwork:v24 completionHandler:1024.0, 1024.0];
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

- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_completionHandler)
  {
    if (code != 3)
    {
      v7 = LPLogChannelFetching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _loggingID = [(LPFetcher *)self _loggingID];
        domain = [errorCopy domain];
        v11[0] = 67109891;
        v11[1] = _loggingID;
        v12 = 2112;
        v13 = domain;
        v14 = 2048;
        code = [errorCopy code];
        v16 = 2117;
        v17 = errorCopy;
        _os_log_error_impl(&dword_1AE886000, v7, OS_LOG_TYPE_ERROR, "LPImageFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
      }
    }

    v8 = makeLPError(code, errorCopy);
    [(LPImageFetcher *)self _completedWithImage:0 error:v8];
  }
}

- (void)_completedWithImage:(id)image error:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v9 = _Block_copy(completionHandler);
    v10 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!imageCopy)
    {
      goto LABEL_8;
    }

    v11 = LPLogChannelFetching();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [LPImageFetcher _completedWithImage:v19 error:[(LPFetcher *)self _loggingID]];
    }

    responseClass = [(LPFetcher *)self responseClass];
    if (!responseClass)
    {
      responseClass = objc_opt_class();
    }

    v13 = [(objc_class *)responseClass responseForFetcher:self withImage:imageCopy];
    if (!v13)
    {
LABEL_8:
      v13 = [[LPFetcherErrorResponse alloc] initWithError:errorCopy fetcher:self];
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
    _event = [(LPFetcher *)self _event];
    [_event didCompleteWithErrorCode:{objc_msgSend(errorCopy, "code")}];

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