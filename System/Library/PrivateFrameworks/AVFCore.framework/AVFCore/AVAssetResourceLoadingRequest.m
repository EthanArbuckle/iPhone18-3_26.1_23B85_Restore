@interface AVAssetResourceLoadingRequest
- (AVAssetResourceLoadingRequest)initWithResourceLoader:(id)a3 URL:(id)a4 httpRequestHeaders:(id)a5 requestOffset:(id)a6 requestLength:(id)a7 allowedContentTypes:(id)a8 figCryptor:(OpaqueFigCPECryptor *)a9 cryptorKeyRequestID:(unint64_t)a10;
- (AVAssetResourceLoadingRequestor)requestor;
- (BOOL)_contentKeySessionIsAttached;
- (BOOL)_tryToMarkAsCancelled;
- (NSData)persistentContentKeyFromKeyVendorResponse:(NSData *)keyVendorResponse options:(NSDictionary *)options error:(NSError *)outError;
- (NSData)streamingContentKeyRequestDataForApp:(NSData *)appIdentifier contentIdentifier:(NSData *)contentIdentifier options:(NSDictionary *)options error:(NSError *)outError;
- (NSString)description;
- (NSURLRequest)redirect;
- (NSURLResponse)response;
- (OpaqueFigCustomURLHandler)_copyContentKeySessionCustomURLHandler;
- (id)_getAndClearCachedData;
- (id)keyRequestDataUsingCryptorForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 performAsync:(BOOL)a6 error:(id *)a7;
- (id)serializableRepresentation;
- (void)_appendToCachedData:(id)a3;
- (void)_cacheContentInformation:(id)a3;
- (void)_ensureResponseInfoSentToCustomURLHandler;
- (void)_performCancellationByClient;
- (void)_sendDataToCustomURLHandler:(id)a3;
- (void)_sendFinishLoadingToCustomURLHandlerWithError:(id)a3;
- (void)_sendResponseInfoToCustomURLHandler;
- (void)_setContentInformationRequest:(id)a3;
- (void)_setDataRequest:(id)a3;
- (void)dealloc;
- (void)finishLoading;
- (void)finishLoadingWithError:(NSError *)error;
- (void)finishLoadingWithResponse:(NSURLResponse *)response data:(NSData *)data redirect:(NSURLRequest *)redirect;
- (void)forwardRequestToContentKeySession;
- (void)generateStreamingContentKeyRequestDataAsynchronouslyForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)setRedirect:(NSURLRequest *)redirect;
- (void)setResponse:(NSURLResponse *)response;
@end

@implementation AVAssetResourceLoadingRequest

- (AVAssetResourceLoadingRequest)initWithResourceLoader:(id)a3 URL:(id)a4 httpRequestHeaders:(id)a5 requestOffset:(id)a6 requestLength:(id)a7 allowedContentTypes:(id)a8 figCryptor:(OpaqueFigCPECryptor *)a9 cryptorKeyRequestID:(unint64_t)a10
{
  v32.receiver = self;
  v32.super_class = AVAssetResourceLoadingRequest;
  v16 = [(AVAssetResourceLoadingRequest *)&v32 init];
  if (v16)
  {
    v17 = objc_alloc_init(AVAssetResourceLoadingRequestInternal);
    v16->_loadingRequest = v17;
    if (v17 && (CFRetain(v17), v16->_loadingRequest->weakReference = -[AVWeakReference initWithReferencedObject:]([AVWeakReference alloc], "initWithReferencedObject:", v16), v16->_loadingRequest->weakReferenceToResourceLoader = -[AVWeakReference initWithReferencedObject:]([AVWeakReference alloc], "initWithReferencedObject:", a3), v16->_loadingRequest->URLRequest = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:a4], v16->_loadingRequest->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avassetresourceloadingrequest.ivars"), v16->_loadingRequest->dataCachingQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avassetresourceloadingrequest.dataCaching"), loadingRequest = v16->_loadingRequest, loadingRequest->weakReference) && a4 && loadingRequest->weakReferenceToResourceLoader && loadingRequest->URLRequest && loadingRequest->ivarAccessQueue && loadingRequest->dataCachingQueue)
    {
      v16->_loadingRequest->cachedContentInformation = [a3 cachedContentInformationForURL:a4];
      if (a5)
      {
        [(NSMutableURLRequest *)v16->_loadingRequest->URLRequest setAllHTTPHeaderFields:a5];
      }

      if (!v16->_loadingRequest->cachedContentInformation)
      {
        [(AVAssetResourceLoadingRequest *)v16 _setContentInformationRequest:[[AVAssetResourceLoadingContentInformationRequest alloc] initWithLoadingRequest:v16 allowedContentTypes:a8]];
      }

      v19 = 0;
      v20 = 1;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = 0;
      if (a6 && a7)
      {
        v23 = [-[NSDictionary objectForKey:](v16->_loadingRequest->cachedContentInformation objectForKey:{@"Content-Length", "longLongValue"}];
        v22 = [a6 longLongValue];
        v24 = [a7 longLongValue];
        v21 = v24;
        v19 = 0;
        v25 = v24 + v22;
        v26 = v23 <= 0 || v25 < v23;
        v20 = !v26;
        if (v24 >= 1 && (v22 & 0x8000000000000000) == 0)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=%lld-%lld", v22, v25 - 1];
        }
      }

      [(NSMutableURLRequest *)v16->_loadingRequest->URLRequest setValue:v19 forHTTPHeaderField:@"Range"];
      if (a9)
      {
        v27 = CFRetain(a9);
      }

      else
      {
        v27 = 0;
      }

      v16->_loadingRequest->figCryptor = v27;
      v16->_loadingRequest->cryptorKeyRequestID = a10;
      v29 = [a3 _customURLHandler];
      if (v29)
      {
        v29 = CFRetain(v29);
      }

      v16->_loadingRequest->customURLHandler = v29;
      v30 = [a3 _customURLLoader];
      if (v30)
      {
        v30 = CFRetain(v30);
      }

      v16->_loadingRequest->customURLLoader = v30;
      v31 = [[AVAssetResourceLoadingDataRequest alloc] initWithLoadingRequest:v16 requestedOffset:v22 requestedLength:v21 requestsAllDataToEndOfResource:v20 canSupplyIncrementalDataImmediately:v16->_loadingRequest->figCryptor == 0];
      [(AVAssetResourceLoadingRequest *)v16 _setDataRequest:v31];

      v16->_loadingRequest->responseInfoSentOnceToken = objc_alloc_init(AVDispatchOnce);
    }

    else
    {

      return 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  loadingRequest = self->_loadingRequest;
  if (loadingRequest)
  {

    v4 = self->_loadingRequest;
    dataCachingQueue = v4->dataCachingQueue;
    if (dataCachingQueue)
    {
      dispatch_release(dataCachingQueue);
      v4 = self->_loadingRequest;
    }

    v6 = self->_loadingRequest;
    figCryptor = v6->figCryptor;
    if (figCryptor)
    {
      CFRelease(figCryptor);
      v6 = self->_loadingRequest;
    }

    customURLHandler = v6->customURLHandler;
    if (customURLHandler)
    {
      CFRelease(customURLHandler);
      v6 = self->_loadingRequest;
    }

    customURLLoader = v6->customURLLoader;
    if (customURLLoader)
    {
      CFRelease(customURLLoader);
      v6 = self->_loadingRequest;
    }

    requestInfo = v6->requestInfo;
    if (requestInfo)
    {
      CFRelease(requestInfo);
      v6 = self->_loadingRequest;
    }

    v11 = self->_loadingRequest;
    if (v11->streamingKeyRequestCompletionHandler)
    {
      NSLog(&cfstr_Avassetresourc_2.isa, self);
      v11 = self->_loadingRequest;
    }

    ivarAccessQueue = v11->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      v11 = self->_loadingRequest;
    }

    CFRelease(self->_loadingRequest);
  }

  v13.receiver = self;
  v13.super_class = AVAssetResourceLoadingRequest;
  [(AVAssetResourceLoadingRequest *)&v13 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, URL request = %@, request ID = %llu, content information request = %@, data request = %@>", NSStringFromClass(v4), self, -[AVAssetResourceLoadingRequest request](self, "request"), -[AVAssetResourceLoadingRequest _requestID](self, "_requestID"), -[AVAssetResourceLoadingRequest contentInformationRequest](self, "contentInformationRequest"), -[AVAssetResourceLoadingRequest dataRequest](self, "dataRequest")];
}

- (BOOL)_tryToMarkAsCancelled
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_loadingRequest->cancelled, &v2, 1u);
  return v2 == 0;
}

- (void)_performCancellationByClient
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];

  [(AVAssetResourceLoadingRequest *)self finishLoadingWithError:v3];
}

- (void)_setContentInformationRequest:(id)a3
{
  v5 = a3;

  self->_loadingRequest->contentInformationRequest = a3;
}

- (void)_setDataRequest:(id)a3
{
  v5 = a3;

  self->_loadingRequest->dataRequest = a3;
}

- (void)setResponse:(NSURLResponse *)response
{
  v4 = [(NSURLResponse *)response copy];
  ivarAccessQueue = self->_loadingRequest->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVAssetResourceLoadingRequest_setResponse___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

- (NSURLResponse)response
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  ivarAccessQueue = self->_loadingRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVAssetResourceLoadingRequest_response__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__AVAssetResourceLoadingRequest_response__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 80) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setRedirect:(NSURLRequest *)redirect
{
  v4 = [(NSURLRequest *)redirect copy];
  ivarAccessQueue = self->_loadingRequest->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVAssetResourceLoadingRequest_setRedirect___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

- (id)_getAndClearCachedData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  dataCachingQueue = self->_loadingRequest->dataCachingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVAssetResourceLoadingRequest__getAndClearCachedData__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_write(dataCachingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __55__AVAssetResourceLoadingRequest__getAndClearCachedData__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 104);
  *(*(*(a1 + 40) + 8) + 40) = result;
  *(*(*(a1 + 32) + 8) + 104) = 0;
  return result;
}

- (void)_appendToCachedData:(id)a3
{
  dataCachingQueue = self->_loadingRequest->dataCachingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVAssetResourceLoadingRequest__appendToCachedData___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(dataCachingQueue, v4);
}

uint64_t __53__AVAssetResourceLoadingRequest__appendToCachedData___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 104);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 104) = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(*(a1 + 40), "length")}];
    v2 = *(*(*(a1 + 32) + 8) + 104);
  }

  v3 = *(a1 + 40);

  return [v2 appendData:v3];
}

- (void)_cacheContentInformation:(id)a3
{
  if (self->_loadingRequest->cachedContentInformation)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Already have a cachedContentInformation", v3, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v12);
  }

  if ([(AVAssetResourceLoadingRequest *)self _canSetOrUseCachedContentInformation])
  {
    v10 = [(AVAssetResourceLoadingRequest *)self _resourceLoader];
    v11 = [(NSMutableURLRequest *)self->_loadingRequest->URLRequest URL];

    [v10 cacheContentInformation:a3 forURL:v11];
  }
}

- (NSURLRequest)redirect
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  ivarAccessQueue = self->_loadingRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVAssetResourceLoadingRequest_redirect__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__AVAssetResourceLoadingRequest_redirect__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 88) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)serializableRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AVAssetResourceLoadingRequest *)self _requestInfo];
  v11 = [(AVAssetResourceLoadingRequest *)self _isRequestForContentKey];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", -[AVAssetResourceLoadingRequest _requestID](self, "_requestID")), @"FCUP_Response_RequestID"}];
  [v4 setObject:-[NSURL absoluteString](-[NSURLRequest URL](-[AVAssetResourceLoadingRequest request](self forKeyedSubscript:{"request"), "URL"), "absoluteString"), @"FCUP_Response_URL"}];
  [v4 setObject:-[NSURLRequest allHTTPHeaderFields](-[AVAssetResourceLoadingRequest request](self forKeyedSubscript:{"request"), "allHTTPHeaderFields"), @"FCUP_Response_Headers"}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(__CFDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v4 objectForKey:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [v4 removeObjectForKey:v9];
                  }
                }
              }
            }
          }
        }
      }

      v6 = [(__CFDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v11), @"FCUP_Response_IsContentKeyRequest"}];
  return v4;
}

- (void)_sendResponseInfoToCustomURLHandler
{
  cf = 0;
  if (![(AVAssetResourceLoadingRequest *)self isCancelled])
  {
    if (!FigCustomURLResponseInfoCreateMutable())
    {
      [(AVAssetResourceLoadingRequest *)self response];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = [(AVAssetResourceLoadingRequest *)self response], [(NSURLResponse *)v3 statusCode], !FigCustomURLResponseInfoSetHTTPStatusCode()) && ([(NSURLResponse *)v3 allHeaderFields], !FigCustomURLResponseInfoSetHTTPHeaders()))
      {
        [(AVAssetResourceLoadingRequest *)self _sendResponseInfoToCustomURLHandler];
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_ensureResponseInfoSentToCustomURLHandler
{
  responseInfoSentOnceToken = self->_loadingRequest->responseInfoSentOnceToken;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__AVAssetResourceLoadingRequest__ensureResponseInfoSentToCustomURLHandler__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  [(AVDispatchOnce *)responseInfoSentOnceToken runBlockOnce:v3];
}

- (void)_sendDataToCustomURLHandler:(id)a3
{
  v5 = 0;
  if (![(AVAssetResourceLoadingRequest *)self isCancelled])
  {
    [(AVAssetResourceLoadingRequest *)self _sendDataToCustomURLHandler:a3, &v5];
  }
}

- (void)_sendFinishLoadingToCustomURLHandlerWithError:(id)a3
{
  if (![(AVAssetResourceLoadingRequest *)self isCancelled])
  {
    [(AVAssetResourceLoadingRequest *)self _ensureResponseInfoSentToCustomURLHandler];
    if (!self->_loadingRequest->cachedContentInformation && [(AVAssetResourceLoadingRequest *)self _canSetOrUseCachedContentInformation])
    {
      [(AVAssetResourceLoadingRequest *)self _cacheContentInformation:[(AVAssetResourceLoadingContentInformationRequest *)[(AVAssetResourceLoadingRequest *)self contentInformationRequest] propertyList]];
    }

    v5 = [(AVAssetResourceLoadingRequest *)self _customURLHandler];
    requestID = self->_loadingRequest->requestID;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v7(v5, requestID, a3, 0);
    }

    v8 = [(AVAssetResourceLoadingRequest *)self _resourceLoader];

    [v8 _noteFinishingOfRequest:self];
  }
}

- (void)forwardRequestToContentKeySession
{
  v4 = [(AVAssetResourceLoadingRequest *)self _customURLLoader];
  v5 = [(AVAssetResourceLoadingRequest *)self _customURLHandler];
  v6 = [(AVAssetResourceLoadingRequest *)self _copyContentKeySessionCustomURLHandler];
  requestID = self->_loadingRequest->requestID;
  if (![(AVAssetResourceLoadingRequest *)self _contentKeySessionIsAttached])
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"no contentKeySession", v8, v9, v10, v11, v12, v16), 0}];
    objc_exception_throw(v15);
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v13)
  {
    v14 = -12782;
LABEL_9:
    [(AVAssetResourceLoadingRequest *)self _sendFinishLoadingToCustomURLHandlerWithError:AVLocalizedErrorWithUnderlyingOSStatus(v14, 0)];
    if (!v6)
    {
      return;
    }

    goto LABEL_5;
  }

  v14 = v13(v4, v5, v6, requestID);
  if (v14)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    return;
  }

LABEL_5:

  CFRelease(v6);
}

- (void)finishLoading
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_loadingRequest->finished, &v2, 1u);
  if (v2)
  {
    NSLog(&cfstr_Avassetresourc_3.isa, a2);
  }

  else
  {
    v5 = [(AVAssetResourceLoadingContentInformationRequest *)[(AVAssetResourceLoadingRequest *)self contentInformationRequest] contentType];
    v6 = [(AVAssetResourceLoadingContentInformationRequest *)[(AVAssetResourceLoadingRequest *)self contentInformationRequest] allowedContentTypes];
    if (v6 && v5 && ![(NSArray *)v6 containsObject:v5])
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Must respond with a contentType contained in AVAssetResourceLoadingContentInformationRequest.allowedContentTypes.", v7, v8, v9, v10, v11, v15), 0}];
      objc_exception_throw(v14);
    }

    if ([(AVAssetResourceLoadingRequest *)self _contentKeySessionIsAttached]&& ([(NSString *)v5 isEqualToString:@"com.apple.streamingkeydelivery.contentkey"]|| [(NSString *)v5 isEqualToString:@"com.apple.streamingkeydelivery.persistentcontentkey"]))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [(AVAssetResourceLoadingRequest *)self forwardRequestToContentKeySession];
    }

    else
    {
      v13 = [(AVAssetResourceLoadingRequest *)self _getAndClearCachedData];
      if (v13)
      {
        [(AVAssetResourceLoadingRequest *)self _sendDataToCustomURLHandler:v13];
      }

      [(AVAssetResourceLoadingRequest *)self _sendFinishLoadingToCustomURLHandler];
    }
  }
}

- (void)finishLoadingWithError:(NSError *)error
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_loadingRequest->finished, &v3, 1u);
  if (v3)
  {
    NSLog(&cfstr_Avassetresourc_5.isa, a2, error);
  }

  else
  {
    v4 = error;
    v6 = [(NSError *)error userInfo];
    v7 = *MEMORY[0x1E696AA08];
    v8 = [(NSDictionary *)v6 objectForKey:*MEMORY[0x1E696AA08]];
    if (v8)
    {
      do
      {
        v4 = v8;
        v8 = [objc_msgSend(v8 "userInfo")];
      }

      while (v8);
    }

    else if (!v4)
    {
      v4 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    }

    [(AVAssetResourceLoadingRequest *)self _sendFinishLoadingToCustomURLHandlerWithError:v4];
  }
}

- (void)finishLoadingWithResponse:(NSURLResponse *)response data:(NSData *)data redirect:(NSURLRequest *)redirect
{
  [(AVAssetResourceLoadingRequest *)self setResponse:response];
  [(AVAssetResourceLoadingRequest *)self _appendToCachedData:data];
  [(AVAssetResourceLoadingRequest *)self setRedirect:redirect];

  [(AVAssetResourceLoadingRequest *)self finishLoading];
}

- (id)keyRequestDataUsingCryptorForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 performAsync:(BOOL)a6 error:(id *)a7
{
  v35 = a6;
  v40[4] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v12 = [objc_msgSend(a5 objectForKey:{@"StreamingContentKeyIsForAirPlayKey", "BOOLValue"}];
  v13 = [a5 objectForKey:@"CSKRO_RemoteContext"];
  v14 = *MEMORY[0x1E6962AB0];
  v15 = [a5 objectForKey:*MEMORY[0x1E6962AB0]];
  figCryptor = self->_loadingRequest->figCryptor;
  if (!figCryptor)
  {
    [AVAssetResourceLoadingRequest keyRequestDataUsingCryptorForApp:? contentIdentifier:? options:? performAsync:? error:?];
    v32 = v38;
    goto LABEL_22;
  }

  v17 = v15;
  v34 = a7;
  v18 = [objc_msgSend(a5 objectForKey:{@"StreamingContentKeyRequestRequiresPersistentKey", "BOOLValue"}];
  v19 = [objc_msgSend(a5 objectForKey:{@"StreamingContentKeyRequiresiTunesProvisioningKey", "BOOLValue"}];
  v20 = *MEMORY[0x1E6962AC8];
  v39[0] = *MEMORY[0x1E6962AC0];
  v39[1] = v20;
  v40[0] = a3;
  v40[1] = a4;
  v39[2] = *MEMORY[0x1E6962AD0];
  v40[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadingRequest->requestID];
  v39[3] = *MEMORY[0x1E6962AE8];
  v40[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadingRequest->cryptorKeyRequestID];
  v21 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:{4), "mutableCopy"}];
  v22 = v21;
  if (v13)
  {
    [v21 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6962B10]];
  }

  if (v19)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6962B18]];
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else if (!v12)
  {
LABEL_6:
    if (!v17)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v22 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6962AE0]];
  if (v17)
  {
LABEL_7:
    [v22 setObject:v17 forKeyedSubscript:v14];
  }

LABEL_8:
  if (v18)
  {
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v24)
    {
LABEL_20:
      figCryptor = 0;
      v32 = -12782;
LABEL_21:
      a7 = v34;
      goto LABEL_22;
    }

    v25 = v24(figCryptor, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
    if (v25)
    {
      v32 = v25;
      figCryptor = 0;
      goto LABEL_21;
    }
  }

  if (v35)
  {
    v26 = self;
    v27 = v22;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__AVAssetResourceLoadingRequest_keyRequestDataUsingCryptorForApp_contentIdentifier_options_performAsync_error___block_invoke;
    block[3] = &unk_1E7460FF0;
    block[5] = self;
    block[6] = figCryptor;
    block[4] = v22;
    dispatch_async(global_queue, block);
    return 0;
  }

  v30 = *(CMBaseObjectGetVTable() + 16);
  if (*v30 < 4uLL)
  {
    goto LABEL_20;
  }

  v31 = v30[11];
  a7 = v34;
  if (v31)
  {
    v32 = v31(figCryptor, v22, *MEMORY[0x1E695E480], &v37);
    if (v37)
    {
      figCryptor = v37;
    }

    else
    {
      figCryptor = 0;
    }
  }

  else
  {
    figCryptor = 0;
    v32 = -12782;
  }

LABEL_22:
  if (a7 && v32)
  {
    *a7 = AVLocalizedErrorWithUnderlyingOSStatus(v32, 0);
  }

  return figCryptor;
}

void __111__AVAssetResourceLoadingRequest_keyRequestDataUsingCryptorForApp_contentIdentifier_options_performAsync_error___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 4uLL && (v5 = v4[11]) != 0)
  {
    v6 = v5(v2, v3, *MEMORY[0x1E695E480], &v9);
  }

  else
  {
    v6 = -12782;
  }

  v7 = *(*(*(a1 + 40) + 8) + 152);
  if (v7)
  {
    if (v6)
    {
      v8 = AVLocalizedErrorWithUnderlyingOSStatus(v6, 0);
      v7 = *(*(*(a1 + 40) + 8) + 152);
    }

    else
    {
      v8 = 0;
    }

    (*(v7 + 16))(v7, v9, v8);

    *(*(*(a1 + 40) + 8) + 152) = 0;
  }
}

- (BOOL)_contentKeySessionIsAttached
{
  v2 = [-[AVAssetResourceLoadingRequest _resourceLoader](self "_resourceLoader")];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [v2 contentKeySession] != 0;
}

- (OpaqueFigCustomURLHandler)_copyContentKeySessionCustomURLHandler
{
  v2 = [(AVAssetResourceLoadingRequest *)self _resourceLoader];

  return [v2 _copyContentKeySessionCustomURLHandler];
}

- (NSData)streamingContentKeyRequestDataForApp:(NSData *)appIdentifier contentIdentifier:(NSData *)contentIdentifier options:(NSDictionary *)options error:(NSError *)outError
{
  if ([(AVAssetResourceLoadingRequest *)self _contentKeySessionIsAttached])
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = @"Cannot generate content key request when AVAsset is attached to AVContentKeySession";
    goto LABEL_11;
  }

  v24 = 0;
  if (!appIdentifier)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "appIdentifier != nil";
LABEL_10:
    v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, v23);
    v18 = v21;
    v19 = v22;
LABEL_11:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  if (!contentIdentifier)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "contentIdentifier != nil";
    goto LABEL_10;
  }

  result = [(AVAssetResourceLoadingRequest *)self keyRequestDataUsingCryptorForApp:appIdentifier contentIdentifier:contentIdentifier options:options performAsync:0 error:&v24];
  if (outError)
  {
    *outError = v24;
  }

  return result;
}

- (void)generateStreamingContentKeyRequestDataAsynchronouslyForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  if ([(AVAssetResourceLoadingRequest *)self _contentKeySessionIsAttached])
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = @"Cannot generate content key request when AVAsset is attached to AVContentKeySession";
    goto LABEL_16;
  }

  v24 = 0;
  if (!a3)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "appIdentifier != nil";
LABEL_14:
    v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, v23);
    v18 = v21;
    v19 = v22;
    goto LABEL_16;
  }

  if (!a4)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "contentIdentifier != nil";
    goto LABEL_14;
  }

  if (!a6)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "handler != nil";
    goto LABEL_14;
  }

  if (self->_loadingRequest->streamingKeyRequestCompletionHandler)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = @"A streaming content key request is already being generated on this AVAssetResourceLoadingRequest.";
LABEL_16:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  self->_loadingRequest->streamingKeyRequestCompletionHandler = [a6 copy];
  [(AVAssetResourceLoadingRequest *)self keyRequestDataUsingCryptorForApp:a3 contentIdentifier:a4 options:a5 performAsync:1 error:&v24];
  if (v24)
  {
    streamingKeyRequestCompletionHandler = self->_loadingRequest->streamingKeyRequestCompletionHandler;
    if (streamingKeyRequestCompletionHandler)
    {
      streamingKeyRequestCompletionHandler[2](streamingKeyRequestCompletionHandler, 0);

      self->_loadingRequest->streamingKeyRequestCompletionHandler = 0;
    }
  }
}

- (NSData)persistentContentKeyFromKeyVendorResponse:(NSData *)keyVendorResponse options:(NSDictionary *)options error:(NSError *)outError
{
  v18 = 0;
  if (!keyVendorResponse)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", options, outError, v5, v6, v7, "keyVendorResponse != NULL"), 0}];
    objc_exception_throw(v17);
  }

  figCryptor = self->_loadingRequest->figCryptor;
  if (figCryptor)
  {
    v11 = *(CMBaseObjectGetVTable() + 16);
    if (*v11 < 4uLL)
    {
      goto LABEL_9;
    }

    v12 = v11[12];
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = v12(figCryptor, keyVendorResponse, 0);
    if (v13)
    {
      goto LABEL_10;
    }

    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v13 = v14(figCryptor, *MEMORY[0x1E69610F0], *MEMORY[0x1E695E480], &v18);
      if (!v13)
      {
        return v18;
      }
    }

    else
    {
LABEL_9:
      v13 = -12782;
    }
  }

  else
  {
    [AVAssetResourceLoadingRequest persistentContentKeyFromKeyVendorResponse:? options:? error:?];
    v13 = v19;
    if (!v19)
    {
      return v18;
    }
  }

LABEL_10:
  if (!outError)
  {
    return 0;
  }

  v16 = AVLocalizedErrorWithUnderlyingOSStatus(v13, 0);
  result = 0;
  *outError = v16;
  return result;
}

- (AVAssetResourceLoadingRequestor)requestor
{
  result = self->_loadingRequest->requestor;
  if (!result)
  {
    self->_loadingRequest->requestor = [[AVAssetResourceLoadingRequestor alloc] initWithRequestInfo:self->_loadingRequest->requestInfo];
    return self->_loadingRequest->requestor;
  }

  return result;
}

@end