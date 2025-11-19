@interface AVAssetCustomURLBridgeForNSURLSession
- (int)_cancelRequestID:(unint64_t)a3;
- (int)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4 canHandleRequestOut:(BOOL *)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)_registerRequest:(__CFDictionary *)a3 id:(unint64_t)a4 forDataTask:(id)a5;
- (void)dealloc;
@end

@implementation AVAssetCustomURLBridgeForNSURLSession

- (void)_registerRequest:(__CFDictionary *)a3 id:(unint64_t)a4 forDataTask:(id)a5
{
  taskToRequest = self->_taskToRequest;
  v7 = [AVAssetCustomURLRequest requestWithRequest:a3 id:a4];

  [(NSMutableDictionary *)taskToRequest setObject:v7 forKey:a5];
}

- (int)_cancelRequestID:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  taskToRequest = self->_taskToRequest;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AVAssetCustomURLBridgeForNSURLSession__cancelRequestID___block_invoke;
  v6[3] = &unk_1E7464B40;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSMutableDictionary *)taskToRequest enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[5])
  {
    [(AVAssetCustomURLBridgeForNSURLSession *)self _unregisterRequestForDataTask:?];
  }

  _Block_object_dispose(&v7, 8);
  return 0;
}

uint64_t __58__AVAssetCustomURLBridgeForNSURLSession__cancelRequestID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a3 requestID];
  if (result == *(a1 + 40))
  {
    result = [a2 cancel];
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__AVAssetCustomURLBridgeForNSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v7[3] = &unk_1E7461108;
  v7[4] = self;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  dispatch_async(callbackQueue, v7);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVAssetCustomURLBridgeForNSURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(callbackQueue, block);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AVAssetCustomURLBridgeForNSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(callbackQueue, block);
}

uint64_t __84__AVAssetCustomURLBridgeForNSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lookupRequestForDataTask:*(a1 + 40)];
  v3 = *(a1 + 48);

  return [v2 setMetrics:v3];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVAssetCustomURLBridgeForNSURLSession_URLSession_task_didCompleteWithError___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(callbackQueue, block);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 0);
  }
}

- (void)dealloc
{
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
  v5.super_class = AVAssetCustomURLBridgeForNSURLSession;
  [(AVAssetCustomURLBridgeForNSURLSession *)&v5 dealloc];
}

- (int)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4 canHandleRequestOut:(BOOL *)a5
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  if (![(AVAssetCustomURLBridgeForNSURLSession *)self session])
  {
    goto LABEL_25;
  }

  v9 = FigCustomURLRequestInfoCopyURL();
  if (v9)
  {
    v20 = v9;
    goto LABEL_23;
  }

  FigCustomURLRequestInfoGetIsPingRequest();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__AVAssetCustomURLBridgeForNSURLSession__handleRequest_requestID_canHandleRequestOut___block_invoke;
  v26[3] = &unk_1E7464AF8;
  v26[4] = v31;
  if ([&unk_1F0AD3790 indexOfObjectPassingTest:v26] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_25:
    v21 = 0;
    v20 = 0;
    goto LABEL_24;
  }

  if (!v27)
  {
    v14 = objc_alloc(MEMORY[0x1E695AC18]);
    v15 = [v14 initWithURL:v31];
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v15;
@end