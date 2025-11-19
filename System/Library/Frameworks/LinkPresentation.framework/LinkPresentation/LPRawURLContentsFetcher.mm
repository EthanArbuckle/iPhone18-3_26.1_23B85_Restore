@interface LPRawURLContentsFetcher
- (void)_completedWithData:(id)a3 MIMEType:(id)a4 error:(id)a5;
- (void)_failedWithErrorCode:(int64_t)a3 underlyingError:(id)a4;
- (void)cancel;
- (void)dataTask:(id)a3 didCompleteWithError:(id)a4;
- (void)dataTask:(id)a3 didReceiveData:(id)a4;
- (void)dataTask:(id)a3 didReceiveResponse:(id)a4 decisionHandler:(id)a5;
- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation LPRawURLContentsFetcher

- (void)fetchWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 fetchIsNotUserInitiated])
  {
    v8 = [LPFetcherErrorResponse alloc];
    v9 = makeLPError(5, 0);
    v10 = [(LPFetcherErrorResponse *)v8 initWithError:v9 fetcher:self];
    v7[2](v7, v10);
  }

  else
  {
    v11 = [v6 rootEvent];
    v12 = [v11 childWithType:2 subtitle:0];
    [(LPFetcher *)self set_event:v12];

    URL = self->_URL;
    v14 = [(LPFetcher *)self _event];
    [v14 setURL:URL];

    v15 = _Block_copy(v7);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v15;

    v17 = LPLogChannelFetching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v31 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v18 = [(LPRawURLContentsFetcher *)self URL];
    v19 = [v18 _lp_requestWithAttribution:{objc_msgSend(v6, "loadingIsNonAppInitiated")}];

    v20 = LPLogChannelFetching();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v30 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v21 = [v6 webViewForProcessSharing];
    if (!v21)
    {
      v22 = LPLogChannelFetching();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [LPRawURLContentsFetcher fetchWithConfiguration:v29 completionHandler:[(LPFetcher *)self _loggingID]];
      }

      v23 = objc_alloc(MEMORY[0x1E69853A0]);
      v24 = +[LPMetadataProvider _copyDefaultWebViewConfiguration];
      v25 = [v23 initWithFrame:v24 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      webView = self->_webView;
      self->_webView = v25;

      v27 = +[LPMetadataProvider _defaultUserAgent];
      [(WKWebView *)self->_webView setCustomUserAgent:v27];

      v21 = self->_webView;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__LPRawURLContentsFetcher_fetchWithConfiguration_completionHandler___block_invoke;
    v28[3] = &unk_1E7A37130;
    v28[4] = self;
    [(WKWebView *)v21 _dataTaskWithRequest:v19 runAtForegroundPriority:1 completionHandler:v28];
  }
}

- (void)dataTask:(id)a3 didReceiveResponse:(id)a4 decisionHandler:(id)a5
{
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    if ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v9, "statusCode")}])
    {
      v10 = LPLogChannelFetching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.3(v22, -[LPFetcher _loggingID](self, "_loggingID"), [v9 statusCode]);
      }

      v8[2](v8, 0);
      [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];

      goto LABEL_19;
    }
  }

  v11 = [(LPFetcher *)self responseClass];
  v12 = [v7 MIMEType];
  LOBYTE(v11) = [(objc_class *)v11 isValidMIMEType:v12];

  if (v11)
  {
    v13 = [v7 expectedContentLength];
    if (v13 == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v14 <= 10485760)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v14];
      data = self->_data;
      self->_data = v18;

      v20 = [v7 MIMEType];
      MIMEType = self->_MIMEType;
      self->_MIMEType = v20;

      v8[2](v8, 1);
      goto LABEL_19;
    }

    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.2(v22, -[LPFetcher _loggingID](self, "_loggingID"), [v7 expectedContentLength]);
    }
  }

  else
  {
    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(LPFetcher *)self _loggingID];
      v17 = [v7 MIMEType];
      [(LPRawURLContentsFetcher *)v17 dataTask:v22 didReceiveResponse:v16 decisionHandler:v15];
    }
  }

  v8[2](v8, 0);
  [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
LABEL_19:
}

- (void)dataTask:(id)a3 didReceiveData:(id)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableData *)self->_data length];
  v9 = [v7 length] + v8;
  if (v9 <= 0xA00000)
  {
    [(NSMutableData *)self->_data appendData:v7];
  }

  else
  {
    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(LPRawURLContentsFetcher *)v11 dataTask:v9 didReceiveData:?];
    }

    [v6 cancel];
    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
  }
}

- (void)dataTask:(id)a3 didCompleteWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = LPLogChannelFetching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(LPFetcher *)self _loggingID];
      v10 = [v7 domain];
      v11[0] = 67109891;
      v11[1] = v9;
      v12 = 2112;
      v13 = v10;
      v14 = 2048;
      v15 = [v7 code];
      v16 = 2117;
      v17 = v7;
      _os_log_error_impl(&dword_1AE886000, v8, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: subresource load completed with error: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
    }

    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:v7];
  }

  else
  {
    [(LPRawURLContentsFetcher *)self _completedWithData:self->_data MIMEType:self->_MIMEType error:0];
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
      [(LPRawURLContentsFetcher *)v4 cancel];
    }

    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:3 underlyingError:0];
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
        _os_log_error_impl(&dword_1AE886000, v7, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
      }
    }

    v8 = makeLPError(a3, v6);
    [(LPRawURLContentsFetcher *)self _completedWithData:0 MIMEType:0 error:v8];
  }
}

- (void)_completedWithData:(id)a3 MIMEType:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher _completedWithData:v21 MIMEType:[(LPFetcher *)self _loggingID] error:?];
    }

    v15 = [(objc_class *)[(LPFetcher *)self responseClass] responseForFetcher:self withData:v8 MIMEType:v9];
    if (!v15)
    {
LABEL_6:
      v15 = [[LPFetcherErrorResponse alloc] initWithError:v10 fetcher:self];
    }

    [(WKWebView *)self->_webView _close];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__8;
    v19[4] = __Block_byref_object_dispose__8;
    v20 = self->_webView;
    webView = self->_webView;
    self->_webView = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__LPRawURLContentsFetcher__completedWithData_MIMEType_error___block_invoke;
    block[3] = &unk_1E7A35518;
    block[4] = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v17 = [(LPFetcher *)self _event];
    [v17 didCompleteWithErrorCode:{objc_msgSend(v10, "code")}];

    v12[2](v12, v15);
    _Block_object_dispose(v19, 8);
  }
}

void __61__LPRawURLContentsFetcher__completedWithData_MIMEType_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)dataTask:(int)a3 didReceiveResponse:(NSObject *)a4 decisionHandler:.cold.1(void *a1, uint64_t a2, int a3, NSObject *a4)
{
  *a2 = 67109378;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = a1;
  OUTLINED_FUNCTION_3(&dword_1AE886000, "LPRawURLContentsFetcher<%d>: cancelling subresource load due to unknown MIME type: %@", a2, a4);
}

@end