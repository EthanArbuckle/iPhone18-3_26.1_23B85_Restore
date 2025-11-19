@interface AVAssetResourceLoader
- (AVAssetResourceLoader)initWithURLRequestHelper:(id)a3 asset:(id)a4 remoteCustomURLHandlerContext:(id)a5;
- (BOOL)preloadsEligibleContentKeys;
- (BOOL)sendsCommonMediaClientDataAsHTTPHeaders;
- (NSURLSession)URLSession;
- (OpaqueFigCustomURLHandler)_copyContentKeySessionCustomURLHandler;
- (dispatch_queue_t)delegateQueue;
- (id)cachedContentInformationForURL:(id)a3;
- (id)delegate;
- (unint64_t)allowedCommonMediaClientDataKeys;
- (void)_cancelRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4;
- (void)_cancelRequestWithKey:(id)a3 fallbackHandler:(id)a4;
- (void)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4 willHandleRequest:(BOOL *)a5;
- (void)_issueLoadingRequestWithKey:(id)a3 loadingRequest:(id)a4 isRenewalRequest:(BOOL)a5 fallbackHandler:(id)a6;
- (void)_noteFinishingOfRequest:(id)a3;
- (void)_performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue:(id)a3 delegateCallbackBlock:(id)a4;
- (void)_performDelegateSelector:(SEL)a3 withObject:(id)a4 representingNewRequest:(BOOL)a5 key:(id)a6 fallbackHandler:(id)a7;
- (void)_poseAuthenticationChallengeWithKey:(id)a3 challenge:(id)a4 fallbackHandler:(id)a5;
- (void)_poseAuthenticationChallengeWithRequestInfo:(__CFDictionary *)a3 requestID:(unint64_t)a4 challenge:(id)a5;
- (void)_sendAuthResponseForChallenge:(id)a3 disposition:(int64_t)a4 credential:(id)a5 error:(id)a6;
- (void)_setContentKeySessionCustomURLHandler:(OpaqueFigCustomURLHandler *)a3;
- (void)_setDelegateOnStateQueue:(id)a3;
- (void)cacheContentInformation:(id)a3 forURL:(id)a4;
- (void)cancelAuthenticationChallenge:(id)a3;
- (void)cancelLoading;
- (void)dealloc;
- (void)performDefaultHandlingForAuthenticationChallenge:(id)a3;
- (void)setAllowedCommonMediaClientDataKeys:(unint64_t)a3;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
- (void)setPreloadsEligibleContentKeys:(BOOL)preloadsEligibleContentKeys;
- (void)setSendsCommonMediaClientDataAsHTTPHeaders:(BOOL)a3;
- (void)setURLSession:(id)a3;
@end

@implementation AVAssetResourceLoader

- (AVAssetResourceLoader)initWithURLRequestHelper:(id)a3 asset:(id)a4 remoteCustomURLHandlerContext:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AVAssetResourceLoader;
  v8 = [(AVAssetResourceLoader *)&v30 init];
  if (v8)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    v9 = objc_alloc_init(AVAssetResourceLoaderInternal);
    v8->_resourceLoader = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    CFRetain(v9);
    v8->_resourceLoader->URLRequestHelper = a3;
    v8->_resourceLoader->weakReferenceToAsset = [a4 _weakReference];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8->_resourceLoader->stateQueue = dispatch_queue_create("com.apple.avfoundation.avassetresourceloader.state", v10);
    v8->_resourceLoader->pendingRequests = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_resourceLoader->contentInformationCachingQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avassetresourceloader.contentInformationCaching");
    [(AVAssetClientURLRequestHelper *)v8->_resourceLoader->URLRequestHelper setResourceLoader:v8];
    v11 = [(AVAssetClientURLRequestHelper *)v8->_resourceLoader->URLRequestHelper figAsset];
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = v11;
    resourceLoader = v8->_resourceLoader;
    CMBaseObject = FigAssetGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v15 || v15(CMBaseObject, *MEMORY[0x1E6971200], *MEMORY[0x1E695E480], &resourceLoader->customURLLoader) || !v8->_resourceLoader->customURLLoader)
    {
      goto LABEL_15;
    }

    if (a5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![a5 endpoint])
      {
        if ([AVAssetResourceLoader initWithURLRequestHelper:asset:remoteCustomURLHandlerContext:])
        {
          return v8;
        }

        goto LABEL_15;
      }

      if (FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint() || avarl_createAndInstallRemoteHandler([a5 customURLHandlerObjectID], v8->_resourceLoader->remoteHandlerXPCRemoteClient, v8->_resourceLoader->customURLLoader, 600, &v8->_resourceLoader->customURLHandler) || avarl_createAndInstallRemoteHandler(objc_msgSend(a5, "authHandlerObjectID"), v8->_resourceLoader->remoteHandlerXPCRemoteClient, v8->_resourceLoader->customURLLoader, 900, &v8->_resourceLoader->authHandler) || avarl_createAndInstallRemoteHandler(objc_msgSend(a5, "contentKeySessionHandlerObjectID"), v8->_resourceLoader->remoteHandlerXPCRemoteClient, v8->_resourceLoader->customURLLoader, 400, &v8->_resourceLoader->contentKeySessionCustomURLHandler))
      {
LABEL_15:

        return 0;
      }
    }

    else
    {
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create("com.apple.avfoundation.avassetresourceloader.handler", v17);
      if ([a4 _clientURLLoadingRepresentsAccurateNetworkStatistics])
      {
        v31 = *MEMORY[0x1E69615E0];
        v32[0] = MEMORY[0x1E695E118];
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      }

      else
      {
        v19 = MEMORY[0x1E695E0F8];
      }

      v20 = v8->_resourceLoader;
      customURLLoader = v20->customURLLoader;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v23 = v22(customURLLoader, 600, "AVAssetResourceLoader", v8, v18, &initWithURLRequestHelper_asset_remoteCustomURLHandlerContext__sHandlerCallbacks, v19, &v20->customURLHandler) == 0;
      }

      else
      {
        v23 = 0;
      }

      if (v18)
      {
        dispatch_release(v18);
      }

      if (!v23)
      {
        goto LABEL_15;
      }

      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_create("com.apple.avfoundation.avassetresourceloader.authhandler", v24);
      v26 = v8->_resourceLoader;
      v27 = v26->customURLLoader;
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      v29 = v28 && v28(v27, 900, "AVAssetResourceLoader-authentication", v8, v25, &initWithURLRequestHelper_asset_remoteCustomURLHandlerContext__sAuthHandlerCallbacks, 0, &v26->authHandler) == 0;
      if (v25)
      {
        dispatch_release(v25);
      }

      if (!v29)
      {
        goto LABEL_15;
      }
    }

    v8->_resourceLoader->bridgeBetweenHandlerAndSession = [[AVAssetCustomURLBridgeForNSURLSession alloc] initWithFigAsset:v12];
    v8->_resourceLoader->URLSessionOperationQueue = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(NSOperationQueue *)v8->_resourceLoader->URLSessionOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v8;
}

- (void)dealloc
{
  resourceLoader = self->_resourceLoader;
  if (resourceLoader)
  {

    v4 = self->_resourceLoader;
    stateQueue = v4->stateQueue;
    if (stateQueue)
    {
      dispatch_release(stateQueue);
      v4 = self->_resourceLoader;
    }

    v6 = self->_resourceLoader;
    delegateQueue = v6->delegateQueue;
    if (delegateQueue)
    {
      dispatch_release(delegateQueue);
      v6 = self->_resourceLoader;
    }

    v8 = self->_resourceLoader;
    contentInformationCachingQueue = v8->contentInformationCachingQueue;
    if (contentInformationCachingQueue)
    {
      dispatch_release(contentInformationCachingQueue);
      v8 = self->_resourceLoader;
    }

    v10 = self->_resourceLoader;
    authHandler = v10->authHandler;
    if (authHandler)
    {
      CFRelease(authHandler);
      v10 = self->_resourceLoader;
    }

    customURLHandler = v10->customURLHandler;
    if (customURLHandler)
    {
      CFRelease(customURLHandler);
      v10 = self->_resourceLoader;
    }

    customURLLoader = v10->customURLLoader;
    if (customURLLoader)
    {
      CFRelease(customURLLoader);
      v10 = self->_resourceLoader;
    }

    contentKeySessionCustomURLHandler = v10->contentKeySessionCustomURLHandler;
    if (contentKeySessionCustomURLHandler)
    {
      CFRelease(contentKeySessionCustomURLHandler);
    }

    FigXPCRemoteClientDispose();

    CFRelease(self->_resourceLoader);
  }

  v15.receiver = self;
  v15.super_class = AVAssetResourceLoader;
  [(AVAssetResourceLoader *)&v15 dealloc];
}

- (void)_setDelegateOnStateQueue:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v3 = [[AVWeakReference alloc] initWithReferencedObject:a3];
  }

  self->_resourceLoader->weakReferenceToDelegate = v3;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue
{
  if (delegate && !delegateQueue)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"NULL delegateQueue passed", 0, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v12);
  }

  [(AVAssetResourceLoader *)self willChangeValueForKey:@"delegate"];
  [(AVAssetResourceLoader *)self willChangeValueForKey:@"delegateQueue"];
  stateQueue = self->_resourceLoader->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVAssetResourceLoader_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = delegate;
  block[6] = delegateQueue;
  dispatch_sync(stateQueue, block);
  [(AVAssetResourceLoader *)self didChangeValueForKey:@"delegate"];
  [(AVAssetResourceLoader *)self didChangeValueForKey:@"delegateQueue"];
}

void __43__AVAssetResourceLoader_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setDelegateOnStateQueue:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(*(a1 + 32) + 8);
  }

  *(v3 + 40) = *(a1 + 48);
}

- (id)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  v3 = [(AVAssetResourceLoader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AVAssetResourceLoader_delegate__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __33__AVAssetResourceLoader_delegate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDelegateOnStateQueue];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (dispatch_queue_t)delegateQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  stateQueue = self->_resourceLoader->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVAssetResourceLoader_delegateQueue__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__AVAssetResourceLoader_delegateQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDelegateQueueOnStateQueue];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)cancelLoading
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__35;
  v18 = __Block_byref_object_dispose__35;
  v19 = 0;
  atomic_compare_exchange_strong(&self->_resourceLoader->loadingCancelled, &v3, 1u);
  v4 = [(AVAssetResourceLoader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVAssetResourceLoader_cancelLoading__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(v4, block);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v15[5];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [objc_msgSend(objc_msgSend(v15[5] objectForKey:{*(*(&v9 + 1) + 8 * i)), "referencedObject"), "_performCancellationByClient"}];
      }

      v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __38__AVAssetResourceLoader_cancelLoading__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 96) copy];
  v2 = *(*(*(a1 + 32) + 8) + 96);

  return [v2 removeAllObjects];
}

- (void)_performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue:(id)a3 delegateCallbackBlock:(id)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__35;
  v22 = __Block_byref_object_dispose__35;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__35;
  v16 = __Block_byref_object_dispose__35;
  v17 = 0;
  v7 = [(AVAssetResourceLoader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__AVAssetResourceLoader__performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue_delegateCallbackBlock___block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  dispatch_sync(v7, block);
  v8 = v13[5];
  if (!v8 || v8 == a3)
  {
    (*(a4 + 2))(a4, v19[5]);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__AVAssetResourceLoader__performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue_delegateCallbackBlock___block_invoke_2;
    v10[3] = &unk_1E74659F8;
    v10[5] = a4;
    v10[6] = &v12;
    v10[4] = self;
    dispatch_async(v8, v10);
  }

  v9 = v13[5];
  if (v9)
  {
    dispatch_release(v9);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __114__AVAssetResourceLoader__performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue_delegateCallbackBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _getDelegateOnStateQueue];
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _getDelegateQueueOnStateQueue];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {

    dispatch_retain(v2);
  }
}

- (void)_performDelegateSelector:(SEL)a3 withObject:(id)a4 representingNewRequest:(BOOL)a5 key:(id)a6 fallbackHandler:(id)a7
{
  v13 = [MEMORY[0x1E696AF00] isMainThread];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__AVAssetResourceLoader__performDelegateSelector_withObject_representingNewRequest_key_fallbackHandler___block_invoke;
  v15[3] = &unk_1E7465A20;
  if (v13)
  {
    v14 = MEMORY[0x1E69E96A0];
  }

  else
  {
    v14 = 0;
  }

  v15[7] = a7;
  v15[8] = a3;
  v15[4] = self;
  v15[5] = a4;
  v16 = a5;
  v15[6] = a6;
  [(AVAssetResourceLoader *)self _performDelegateCallbackSynchronouslyIfCurrentDelegateQueueIsQueue:v14 delegateCallbackBlock:v15];
}

uint64_t __104__AVAssetResourceLoader__performDelegateSelector_withObject_representingNewRequest_key_fallbackHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (a2 && !*(*(*(a1 + 32) + 8) + 88) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:*(a1 + 64)];
    v5 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v4];
    [v5 setSelector:*(a1 + 64)];
    [v5 setTarget:a2];
    [v5 setArgument:a1 + 32 atIndex:2];
    [v5 setArgument:a1 + 40 atIndex:3];
    [v5 invoke];
    if ([v4 methodReturnLength] == 1)
    {
      [v5 getReturnValue:&v10];
    }

    else
    {
      v10 = 1;
    }
  }

  if (*(a1 + 72) == 1 && (v10 & 1) == 0)
  {
    v6 = [*(a1 + 32) stateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__AVAssetResourceLoader__performDelegateSelector_withObject_representingNewRequest_key_fallbackHandler___block_invoke_2;
    block[3] = &unk_1E7460DF0;
    v7 = *(a1 + 48);
    block[4] = *(a1 + 32);
    block[5] = v7;
    dispatch_sync(v6, block);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v10);
  }

  return result;
}

- (void)_cancelRequestWithKey:(id)a3 fallbackHandler:(id)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__35;
  v14 = __Block_byref_object_dispose__35;
  v15 = 0;
  v7 = [(AVAssetResourceLoader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVAssetResourceLoader__cancelRequestWithKey_fallbackHandler___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v10;
  block[4] = self;
  dispatch_sync(v7, block);
  if ([v11[5] _shouldInformDelegateOfFigCancellation])
  {
    v8 = [objc_opt_class() _selectorForInformingDelegateOfCancellationByFig];
    [(AVAssetResourceLoader *)self _performDelegateSelector:v8 withObject:v11[5] representingNewRequest:0 key:a3 fallbackHandler:a4];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __63__AVAssetResourceLoader__cancelRequestWithKey_fallbackHandler___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [objc_msgSend(*(*(a1[4] + 8) + 96) objectForKey:{a1[5]), "referencedObject"}];
  v2 = a1[5];
  v3 = *(*(a1[4] + 8) + 96);

  return [v3 removeObjectForKey:v2];
}

- (void)_cancelRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];

  [(AVAssetResourceLoader *)self _cancelRequestWithKey:v5 fallbackHandler:0];
}

- (void)_issueLoadingRequestWithKey:(id)a3 loadingRequest:(id)a4 isRenewalRequest:(BOOL)a5 fallbackHandler:(id)a6
{
  if (a4)
  {
    v10 = &selRef_resourceLoader_shouldWaitForRenewalOfRequestedResource_;
    if (!a5)
    {
      v10 = &selRef_resourceLoader_shouldWaitForLoadingOfRequestedResource_;
    }

    v11 = *v10;
    v12 = [(AVAssetResourceLoader *)self stateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__AVAssetResourceLoader__issueLoadingRequestWithKey_loadingRequest_isRenewalRequest_fallbackHandler___block_invoke;
    block[3] = &unk_1E7460E90;
    block[4] = self;
    block[5] = a4;
    block[6] = a3;
    dispatch_sync(v12, block);
    [(AVAssetResourceLoader *)self _performDelegateSelector:v11 withObject:a4 representingNewRequest:1 key:a3 fallbackHandler:a6];
  }
}

uint64_t __101__AVAssetResourceLoader__issueLoadingRequestWithKey_loadingRequest_isRenewalRequest_fallbackHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 96);
  v3 = [*(a1 + 40) _weakReference];
  v4 = *(a1 + 48);

  return [v2 setObject:v3 forKey:v4];
}

- (void)_poseAuthenticationChallengeWithKey:(id)a3 challenge:(id)a4 fallbackHandler:(id)a5
{
  if (a4)
  {
    v9 = [(AVAssetResourceLoader *)self stateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__AVAssetResourceLoader__poseAuthenticationChallengeWithKey_challenge_fallbackHandler___block_invoke;
    block[3] = &unk_1E7460E90;
    block[4] = self;
    block[5] = a4;
    block[6] = a3;
    dispatch_sync(v9, block);
    [(AVAssetResourceLoader *)self _performDelegateSelector:sel_resourceLoader_shouldWaitForResponseToAuthenticationChallenge_ withObject:a4 representingNewRequest:1 key:a3 fallbackHandler:a5];
  }
}

uint64_t __87__AVAssetResourceLoader__poseAuthenticationChallengeWithKey_challenge_fallbackHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 96);
  v3 = [*(a1 + 40) _weakReference];
  v4 = *(a1 + 48);

  return [v2 setObject:v3 forKey:v4];
}

- (void)_poseAuthenticationChallengeWithRequestInfo:(__CFDictionary *)a3 requestID:(unint64_t)a4 challenge:(id)a5
{
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  if (a5)
  {
    v10 = [[AVURLAuthenticationChallenge alloc] initWithAuthenticationChallenge:a5 sender:self requestInfo:a3 requestID:a4];
  }

  else
  {
    v10 = 0;
  }

  [(AVAssetResourceLoader *)self _poseAuthenticationChallengeWithKey:v9 challenge:MEMORY[0x1E69E9820] fallbackHandler:3221225472, __89__AVAssetResourceLoader__poseAuthenticationChallengeWithRequestInfo_requestID_challenge___block_invoke, &unk_1E7465A48, self, v10];
}

uint64_t __89__AVAssetResourceLoader__poseAuthenticationChallengeWithRequestInfo_requestID_challenge___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) performDefaultHandlingForAuthenticationChallenge:*(result + 40)];
  }

  return result;
}

- (void)_noteFinishingOfRequest:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "_requestID")}];
  if (v4)
  {
    v5 = v4;
    v6 = [(AVAssetResourceLoader *)self stateQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__AVAssetResourceLoader__noteFinishingOfRequest___block_invoke;
    v7[3] = &unk_1E7460DF0;
    v7[4] = self;
    v7[5] = v5;
    dispatch_sync(v6, v7);
  }
}

- (void)_handleRequest:(__CFDictionary *)a3 requestID:(unint64_t)a4 willHandleRequest:(BOOL *)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14 = 0;
  v9 = dispatch_semaphore_create(0);
  FigCustomURLRequestInfoGetIsRenewalRequest();
  v10 = [[AVAssetResourceLoadingRequest alloc] initWithResourceLoader:self requestInfo:a3 requestID:a4];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AVAssetResourceLoader__handleRequest_requestID_willHandleRequest___block_invoke;
  v13[3] = &unk_1E7463028;
  v13[4] = v9;
  v13[5] = &v15;
  [(AVAssetResourceLoader *)self _issueLoadingRequestWithKey:v11 loadingRequest:v10 isRenewalRequest:0 fallbackHandler:v13];
  if (dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v16 + 24);
  }

  *a5 = v12;
  dispatch_release(v9);
  _Block_object_dispose(&v15, 8);
}

- (void)_setContentKeySessionCustomURLHandler:(OpaqueFigCustomURLHandler *)a3
{
  stateQueue = self->_resourceLoader->stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVAssetResourceLoader__setContentKeySessionCustomURLHandler___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(stateQueue, v4);
}

void __63__AVAssetResourceLoader__setContentKeySessionCustomURLHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4 = *(v3 + 72);
  *(v3 + 72) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (OpaqueFigCustomURLHandler)_copyContentKeySessionCustomURLHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_resourceLoader->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVAssetResourceLoader__copyContentKeySessionCustomURLHandler__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __63__AVAssetResourceLoader__copyContentKeySessionCustomURLHandler__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 72);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)preloadsEligibleContentKeys
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AVAssetResourceLoader *)self stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__AVAssetResourceLoader_AVAssetResourceLoaderContentKeySupport__preloadsEligibleContentKeys__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setPreloadsEligibleContentKeys:(BOOL)preloadsEligibleContentKeys
{
  v5 = [(AVAssetResourceLoader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__AVAssetResourceLoader_AVAssetResourceLoaderContentKeySupport__setPreloadsEligibleContentKeys___block_invoke;
  v6[3] = &unk_1E7460E40;
  v7 = preloadsEligibleContentKeys;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void *__96__AVAssetResourceLoader_AVAssetResourceLoaderContentKeySupport__setPreloadsEligibleContentKeys___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (v2 != *(result[1] + 120))
  {
    [objc_msgSend(result "URLRequestHelper")];
    if (*(a1 + 40))
    {
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    CMBaseObject = FigAssetGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = (VTable + 8);
    v8 = *(v7 + 56);
    if (v8)
    {
      result = v8(CMBaseObject, *MEMORY[0x1E69712F8], *v4);
    }

    *(*(*(a1 + 32) + 8) + 120) = *(a1 + 40);
  }

  return result;
}

- (void)_sendAuthResponseForChallenge:(id)a3 disposition:(int64_t)a4 credential:(id)a5 error:(id)a6
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = objc_opt_class();
    v19 = @"The specified challenge must be an instance of NSURLAuthenticationChallenge previously provided by AVAssetResourceLoader";
    goto LABEL_9;
  }

  if (a5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = objc_opt_class();
      v19 = @"The specified credential must be an instance of NSURLCredential";
LABEL_9:
      v20 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithClassAndSelector(v13 userInfo:{a2, v19, v14, v15, v16, v17, v18, v21), 0}];
      objc_exception_throw(v20);
    }
  }

  +[AVAssetCustomURLAuthentication sendAuthResponse:requestID:disposition:credential:authHandler:](AVAssetCustomURLAuthentication, "sendAuthResponse:requestID:disposition:credential:authHandler:", [a3 _requestInfo], objc_msgSend(a3, "_requestID"), a4, a5, -[AVAssetResourceLoader _authHandler](self, "_authHandler"));

  [(AVAssetResourceLoader *)self _noteFinishingOfRequest:a3];
}

- (void)cancelAuthenticationChallenge:(id)a3
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1012 userInfo:0];

  [(AVAssetResourceLoader *)self _sendAuthResponseForChallenge:a3 disposition:2 credential:0 error:v5];
}

- (void)performDefaultHandlingForAuthenticationChallenge:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([a3 _requestInfo], !FigCustomURLRequestInfoCopyURL()) && (v5 = +[AVAssetCustomURLAuthentication copyKeychainCredentialForUrl:](AVAssetCustomURLAuthentication, "copyKeychainCredentialForUrl:", 0)) != 0)
  {
    v6 = v5;
    [(AVAssetResourceLoader *)self _sendAuthResponseForChallenge:a3 disposition:0 credential:v5 error:0];
  }

  else
  {
    [(AVAssetResourceLoader(AVAssetResourceLoaderURLAuthenticationChallengeSender) *)self performDefaultHandlingForAuthenticationChallenge:a3];
    v6 = 0;
  }
}

- (void)cacheContentInformation:(id)a3 forURL:(id)a4
{
  contentInformationCachingQueue = self->_resourceLoader->contentInformationCachingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__AVAssetResourceLoader_AVAssetResourceLoaderContentInformationCache__cacheContentInformation_forURL___block_invoke;
  v5[3] = &unk_1E7460E90;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  av_readwrite_dispatch_queue_write(contentInformationCachingQueue, v5);
}

uint64_t __102__AVAssetResourceLoader_AVAssetResourceLoaderContentInformationCache__cacheContentInformation_forURL___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 112);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 112) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = *(*(*(a1 + 32) + 8) + 112);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) absoluteString];

  return [v2 setValue:v3 forKey:v4];
}

- (id)cachedContentInformationForURL:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  contentInformationCachingQueue = self->_resourceLoader->contentInformationCachingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AVAssetResourceLoader_AVAssetResourceLoaderContentInformationCache__cachedContentInformationForURL___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(contentInformationCachingQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __102__AVAssetResourceLoader_AVAssetResourceLoaderContentInformationCache__cachedContentInformationForURL___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 112) objectForKey:{objc_msgSend(*(a1 + 40), "absoluteString")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (NSURLSession)URLSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  stateQueue = self->_resourceLoader->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AVAssetResourceLoader_AVAssetResourceLoaderURLSessionSupport__URLSession__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __75__AVAssetResourceLoader_AVAssetResourceLoaderURLSessionSupport__URLSession__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setURLSession:(id)a3
{
  stateQueue = self->_resourceLoader->stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__AVAssetResourceLoader_AVAssetResourceLoaderURLSessionSupport__setURLSession___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = a3;
  v6[5] = self;
  dispatch_sync(stateQueue, v6);
  if ([-[AVAssetResourceLoader asset](self "asset")])
  {
    [(AVAssetCustomURLBridgeForNSURLSession *)self->_resourceLoader->bridgeBetweenHandlerAndSession setSession:a3];
  }
}

void __79__AVAssetResourceLoader_AVAssetResourceLoaderURLSessionSupport__setURLSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 144) = *(a1 + 32);
}

- (BOOL)sendsCommonMediaClientDataAsHTTPHeaders
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AVAssetResourceLoader *)self stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __115__AVAssetResourceLoader_AVAssetResourceLoaderCommonMediaClientDataSupport__sendsCommonMediaClientDataAsHTTPHeaders__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setSendsCommonMediaClientDataAsHTTPHeaders:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVAssetResourceLoader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __119__AVAssetResourceLoader_AVAssetResourceLoaderCommonMediaClientDataSupport__setSendsCommonMediaClientDataAsHTTPHeaders___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = v3;
  dispatch_sync(v5, v6);
  [(AVAssetResourceLoader *)self setAllowedCommonMediaClientDataKeys:v3 << 63 >> 63];
}

- (unint64_t)allowedCommonMediaClientDataKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(AVAssetResourceLoader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __116__AVAssetResourceLoader_AVAssetResourceLoaderCommonMediaClientDataSupport_Private__allowedCommonMediaClientDataKeys__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setAllowedCommonMediaClientDataKeys:(unint64_t)a3
{
  v5 = [(AVAssetResourceLoader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __120__AVAssetResourceLoader_AVAssetResourceLoaderCommonMediaClientDataSupport_Private__setAllowedCommonMediaClientDataKeys___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void *__120__AVAssetResourceLoader_AVAssetResourceLoaderCommonMediaClientDataSupport_Private__setAllowedCommonMediaClientDataKeys___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) != *(result[1] + 128))
  {
    v4 = [result _customURLLoader];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = (VTable + 8);
    v8 = *(v7 + 56);
    if (v8)
    {
      result = v8(v4, *MEMORY[0x1E6961600], v5);
    }

    *(*(*(a1 + 32) + 8) + 128) = *(a1 + 40);
  }

  return result;
}

@end