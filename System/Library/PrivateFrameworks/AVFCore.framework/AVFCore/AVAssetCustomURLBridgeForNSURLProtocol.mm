@interface AVAssetCustomURLBridgeForNSURLProtocol
- (AVAssetCustomURLBridgeForNSURLProtocol)initWithFigAsset:(OpaqueFigAsset *)a3;
- (BOOL)_willSendRequest:(id)a3 request:(_CFURLRequest *)a4 redirectionResponse:(_CFURLResponse *)a5;
- (int)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4;
- (void)_cancelAndFinishRequest:(id)a3 error:(__CFError *)a4;
- (void)_cancelPendingRequests;
- (void)_cancelRequestID:(unint64_t)a3;
- (void)_didFinish:(id)a3 error:(__CFError *)a4;
- (void)_didReceiveData:(id)a3 data:(__CFData *)a4;
- (void)_didReceiveResponse:(id)a3 response:(_CFURLResponse *)a4;
- (void)dealloc;
- (void)reportSuccessfulURLLoad;
@end

@implementation AVAssetCustomURLBridgeForNSURLProtocol

- (void)dealloc
{
  [(AVAssetCustomURLBridgeForNSURLProtocol *)self _cancelPendingRequests];

  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
  }

  handler = self->_handler;
  if (handler)
  {
    CFRelease(handler);
  }

  v5.receiver = self;
  v5.super_class = AVAssetCustomURLBridgeForNSURLProtocol;
  [(AVAssetCustomURLBridgeForNSURLProtocol *)&v5 dealloc];
}

- (void)_cancelPendingRequests
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-999 userInfo:0];
  v4 = [(NSMutableDictionary *)self->_requestIDToDownload allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AVAssetCustomURLBridgeForNSURLProtocol *)self _cancelAndFinishRequest:*(*(&v9 + 1) + 8 * v8++) error:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)reportSuccessfulURLLoad
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v3 = *MEMORY[0x1E6960E68];
  v4 = *MEMORY[0x1E6960F08];
  v5.n128_u64[0] = 1.0;

  MEMORY[0x1EEDBC2F8](v2, v3, v4, v5);
}

- (AVAssetCustomURLBridgeForNSURLProtocol)initWithFigAsset:(OpaqueFigAsset *)a3
{
  v14.receiver = self;
  v14.super_class = AVAssetCustomURLBridgeForNSURLProtocol;
  cf = 0;
  v4 = [(AVAssetCustomURLBridgeForNSURLProtocol *)&v14 init];
  if (v4)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    v4->_requestIDToDownload = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_callbackQueue = dispatch_queue_create("com.apple.avfoundation.customurl.cfurlconnection", v5);
    CMBaseObject = FigAssetGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7(CMBaseObject, *MEMORY[0x1E6971200], *MEMORY[0x1E695E480], &cf);
    v9 = cf;
    if (v8)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }

    callbackQueue = v4->_callbackQueue;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v12 = v11 && v11(v9, 100, "com.apple.avfoundation.customurl.cfurlconnection", v4, callbackQueue, &initWithFigAsset__sAVAssetCustomURLCallbacksForNSURLSession_223, 0, &v4->_handler) == 0;
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v12)
    {
LABEL_11:

      return 0;
    }
  }

  return v4;
}

- (int)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4
{
  v7 = FigCustomURLRequestInfoCopyURL();
  if (v7)
  {
    v16 = v7;
    v8 = 0;
    Request = 0;
    v11 = 0;
LABEL_25:

    goto LABEL_16;
  }

  v8 = [(AVAssetCustomURLRequest *)[AVNSURLProtocolRequest alloc] initWithRequest:a3 id:a4];
  if (!v8)
  {
    Request = 0;
    goto LABEL_23;
  }

  v9 = *MEMORY[0x1E695E480];
  Request = CFHTTPMessageCreateRequest(*MEMORY[0x1E695E480], @"GET", 0, *MEMORY[0x1E695ADB8]);
  if (!Request)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (!FigCustomURLRequestInfoCopyHTTPHeaders())
  {
    CFDictionaryApplyFunction(0, SetHeaderFieldToCFHTTPMessageApplierFunc, Request);
  }

  if (!FigCustomURLRequestInfoCopyUserAgent())
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"User-Agent", 0);
  }

  if (FigCustomURLRequestInfoGetByteRange())
  {
    v11 = 0;
  }

  else
  {
    v11 = CFStringCreateWithFormat(v9, 0, @"bytes=%llu-%llu", 0, -1);
    if (!v11)
    {
LABEL_24:
      v16 = -12786;
      goto LABEL_25;
    }

    CFHTTPMessageSetHeaderFieldValue(Request, @"Range", v11);
  }

  CFURLGetBaseURL(0);
  HTTPRequest = CFURLRequestCreateHTTPRequest();
  if (!HTTPRequest)
  {
    goto LABEL_24;
  }

  v13 = HTTPRequest;
  v14 = CFURLConnectionCreate();
  if (v14)
  {
    v15 = v14;
    [(AVNSURLProtocolRequest *)v8 setConnection:v14];
    [(AVNSURLProtocolRequest *)v8 setBridge:self];
    -[NSMutableDictionary setObject:forKey:](self->_requestIDToDownload, "setObject:forKey:", v8, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]);
    FigThreadGetGlobalNetworkBufferingRunloop();
    CFURLConnectionScheduleWithRunLoop();
    CFURLConnectionStart();

    CFRelease(v15);
    v16 = 0;
  }

  else
  {

    v16 = -12786;
  }

  CFRelease(v13);
LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

  if (Request)
  {
    CFRelease(Request);
  }

  return v16;
}

- (void)_cancelRequestID:(unint64_t)a3
{
  v5 = -[NSMutableDictionary objectForKey:](self->_requestIDToDownload, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?]);
  if (v5)
  {
    [v5 connection];
    CFURLConnectionCancel();
    requestIDToDownload = self->_requestIDToDownload;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];

    [(NSMutableDictionary *)requestIDToDownload removeObjectForKey:v7];
  }
}

- (void)_cancelAndFinishRequest:(id)a3 error:(__CFError *)a4
{
  -[AVAssetCustomURLBridgeForNSURLProtocol _cancelRequestID:](self, "_cancelRequestID:", [a3 requestID]);
  handler = self->_handler;
  v8 = [a3 requestID];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v9)
  {

    v9(handler, v8, a4, 0);
  }
}

- (void)_didFinish:(id)a3 error:(__CFError *)a4
{
  if (a4)
  {
    CFRetain(a4);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVAssetCustomURLBridgeForNSURLProtocol__didFinish_error___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(callbackQueue, block);
}

void __59__AVAssetCustomURLBridgeForNSURLProtocol__didFinish_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelAndFinishRequest:*(a1 + 40) error:*(a1 + 48)];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (BOOL)_willSendRequest:(id)a3 request:(_CFURLRequest *)a4 redirectionResponse:(_CFURLResponse *)a5
{
  URL = CFURLRequestGetURL();
  if (a5)
  {
    v10 = URL == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = URL;
    if (a4)
    {
      CFRetain(a4);
    }

    CFRetain(v12);
    callbackQueue = self->_callbackQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__AVAssetCustomURLBridgeForNSURLProtocol__willSendRequest_request_redirectionResponse___block_invoke;
    v15[3] = &unk_1E7462CF8;
    v15[6] = v12;
    v15[7] = a4;
    v15[4] = self;
    v15[5] = a3;
    dispatch_async(callbackQueue, v15);
  }

  return v11;
}

- (void)_didReceiveResponse:(id)a3 response:(_CFURLResponse *)a4
{
  if (a4)
  {
    CFRetain(a4);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AVAssetCustomURLBridgeForNSURLProtocol__didReceiveResponse_response___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[5] = self;
  block[6] = a4;
  block[4] = a3;
  dispatch_async(callbackQueue, block);
}

- (void)_didReceiveData:(id)a3 data:(__CFData *)a4
{
  if (a4)
  {
    CFRetain(a4);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVAssetCustomURLBridgeForNSURLProtocol__didReceiveData_data___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

@end