@interface LPRawURLContentsFetcher
- (void)_completedWithData:(id)data MIMEType:(id)type error:(id)error;
- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error;
- (void)cancel;
- (void)dataTask:(id)task didCompleteWithError:(id)error;
- (void)dataTask:(id)task didReceiveData:(id)data;
- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler;
- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LPRawURLContentsFetcher

- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy fetchIsNotUserInitiated])
  {
    v8 = [LPFetcherErrorResponse alloc];
    v9 = makeLPError(5, 0);
    v10 = [(LPFetcherErrorResponse *)v8 initWithError:v9 fetcher:self];
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    rootEvent = [configurationCopy rootEvent];
    v12 = [rootEvent childWithType:2 subtitle:0];
    [(LPFetcher *)self set_event:v12];

    URL = self->_URL;
    _event = [(LPFetcher *)self _event];
    [_event setURL:URL];

    v15 = _Block_copy(handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v15;

    v17 = LPLogChannelFetching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v31 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v18 = [(LPRawURLContentsFetcher *)self URL];
    v19 = [v18 _lp_requestWithAttribution:{objc_msgSend(configurationCopy, "loadingIsNonAppInitiated")}];

    v20 = LPLogChannelFetching();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v30 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    webViewForProcessSharing = [configurationCopy webViewForProcessSharing];
    if (!webViewForProcessSharing)
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

      webViewForProcessSharing = self->_webView;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__LPRawURLContentsFetcher_fetchWithConfiguration_completionHandler___block_invoke;
    v28[3] = &unk_1E7A37130;
    v28[4] = self;
    [(WKWebView *)webViewForProcessSharing _dataTaskWithRequest:v19 runAtForegroundPriority:1 completionHandler:v28];
  }
}

- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler
{
  v22[3] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = responseCopy;
    if ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v9, "statusCode")}])
    {
      v10 = LPLogChannelFetching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.3(v22, -[LPFetcher _loggingID](self, "_loggingID"), [v9 statusCode]);
      }

      handlerCopy[2](handlerCopy, 0);
      [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];

      goto LABEL_19;
    }
  }

  responseClass = [(LPFetcher *)self responseClass];
  mIMEType = [responseCopy MIMEType];
  LOBYTE(responseClass) = [(objc_class *)responseClass isValidMIMEType:mIMEType];

  if (responseClass)
  {
    expectedContentLength = [responseCopy expectedContentLength];
    if (expectedContentLength == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = expectedContentLength;
    }

    if (v14 <= 10485760)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v14];
      data = self->_data;
      self->_data = v18;

      mIMEType2 = [responseCopy MIMEType];
      MIMEType = self->_MIMEType;
      self->_MIMEType = mIMEType2;

      handlerCopy[2](handlerCopy, 1);
      goto LABEL_19;
    }

    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.2(v22, -[LPFetcher _loggingID](self, "_loggingID"), [responseCopy expectedContentLength]);
    }
  }

  else
  {
    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      _loggingID = [(LPFetcher *)self _loggingID];
      mIMEType3 = [responseCopy MIMEType];
      [(LPRawURLContentsFetcher *)mIMEType3 dataTask:v22 didReceiveResponse:_loggingID decisionHandler:v15];
    }
  }

  handlerCopy[2](handlerCopy, 0);
  [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
LABEL_19:
}

- (void)dataTask:(id)task didReceiveData:(id)data
{
  v11[3] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dataCopy = data;
  v8 = [(NSMutableData *)self->_data length];
  v9 = [dataCopy length] + v8;
  if (v9 <= 0xA00000)
  {
    [(NSMutableData *)self->_data appendData:dataCopy];
  }

  else
  {
    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(LPRawURLContentsFetcher *)v11 dataTask:v9 didReceiveData:?];
    }

    [taskCopy cancel];
    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
  }
}

- (void)dataTask:(id)task didCompleteWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = LPLogChannelFetching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
      _os_log_error_impl(&dword_1AE886000, v8, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: subresource load completed with error: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
    }

    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:errorCopy];
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
        _os_log_error_impl(&dword_1AE886000, v7, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v11, 0x26u);
      }
    }

    v8 = makeLPError(code, errorCopy);
    [(LPRawURLContentsFetcher *)self _completedWithData:0 MIMEType:0 error:v8];
  }
}

- (void)_completedWithData:(id)data MIMEType:(id)type error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  typeCopy = type;
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v12 = _Block_copy(completionHandler);
    v13 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!dataCopy)
    {
      goto LABEL_6;
    }

    v14 = LPLogChannelFetching();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher _completedWithData:v21 MIMEType:[(LPFetcher *)self _loggingID] error:?];
    }

    v15 = [(objc_class *)[(LPFetcher *)self responseClass] responseForFetcher:self withData:dataCopy MIMEType:typeCopy];
    if (!v15)
    {
LABEL_6:
      v15 = [[LPFetcherErrorResponse alloc] initWithError:errorCopy fetcher:self];
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
    _event = [(LPFetcher *)self _event];
    [_event didCompleteWithErrorCode:{objc_msgSend(errorCopy, "code")}];

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