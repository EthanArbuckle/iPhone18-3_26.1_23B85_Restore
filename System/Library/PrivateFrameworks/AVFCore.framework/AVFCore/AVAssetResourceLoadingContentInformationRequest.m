@interface AVAssetResourceLoadingContentInformationRequest
- (AVAssetResourceLoadingContentInformationRequest)initWithLoadingRequest:(id)a3 allowedContentTypes:(id)a4;
- (BOOL)isByteRangeAccessSupported;
- (BOOL)isEntireLengthAvailableOnDemand;
- (NSArray)allowedContentTypes;
- (NSDate)renewalDate;
- (NSString)contentType;
- (id)description;
- (id)propertyList;
- (void)dealloc;
- (void)setByteRangeAccessSupported:(BOOL)byteRangeAccessSupported;
- (void)setContentLength:(uint64_t)contentLength;
- (void)setContentType:(NSString *)contentType;
- (void)setEntireLengthAvailableOnDemand:(BOOL)entireLengthAvailableOnDemand;
- (void)setRenewalDate:(NSDate *)renewalDate;
@end

@implementation AVAssetResourceLoadingContentInformationRequest

- (AVAssetResourceLoadingContentInformationRequest)initWithLoadingRequest:(id)a3 allowedContentTypes:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVAssetResourceLoadingContentInformationRequest;
  v6 = [(AVAssetResourceLoadingContentInformationRequest *)&v9 init];
  if (v6)
  {
    if (a3 && (v7 = objc_alloc_init(AVAssetResourceLoadingContentInformationRequestInternal), (v6->_contentInformationRequest = v7) != 0))
    {
      v6->_contentInformationRequest->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avassetresourceloadingcontentinformationrequest.ivars");
      v6->_contentInformationRequest->diskCachingPermitted = 1;
      v6->_contentInformationRequest->allowedContentTypes = [a4 copy];
      CFRetain(v6->_contentInformationRequest);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  contentInformationRequest = self->_contentInformationRequest;
  if (contentInformationRequest)
  {

    v4 = self->_contentInformationRequest;
    ivarAccessQueue = v4->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      v4 = self->_contentInformationRequest;
    }

    CFRelease(self->_contentInformationRequest);
  }

  v6.receiver = self;
  v6.super_class = AVAssetResourceLoadingContentInformationRequest;
  [(AVAssetResourceLoadingContentInformationRequest *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetResourceLoadingContentInformationRequest *)self contentType];
  v7 = [(AVAssetResourceLoadingContentInformationRequest *)self contentLength];
  v8 = @"NO";
  if ([(AVAssetResourceLoadingContentInformationRequest *)self isByteRangeAccessSupported])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(AVAssetResourceLoadingContentInformationRequest *)self isDiskCachingPermitted])
  {
    v8 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p, content type = %@, content length = %lld, byte range access supported = %@, disk caching permitted = %@, renewal date = %@>", v5, self, v6, v7, v9, v8, -[AVAssetResourceLoadingContentInformationRequest renewalDate](self, "renewalDate")];
}

- (id)propertyList
{
  contentInformationRequest = self->_contentInformationRequest;
  if (!contentInformationRequest->contentType)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF20];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:contentInformationRequest->contentLength];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_contentInformationRequest->byteRangeAccessSupported];
  return [v4 dictionaryWithObjectsAndKeys:{v5, @"Content-Length", v6, @"Accept-Ranges", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", !self->_contentInformationRequest->diskCachingPermitted), @"no-cache", self->_contentInformationRequest->contentType, @"Content-Type", 0}];
}

- (void)setContentType:(NSString *)contentType
{
  v4 = [(NSString *)contentType copy];
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AVAssetResourceLoadingContentInformationRequest_setContentType___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

- (NSString)contentType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVAssetResourceLoadingContentInformationRequest_contentType__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__AVAssetResourceLoadingContentInformationRequest_contentType__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 16) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setContentLength:(uint64_t)contentLength
{
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVAssetResourceLoadingContentInformationRequest_setContentLength___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = contentLength;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (NSArray)allowedContentTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AVAssetResourceLoadingContentInformationRequest_allowedContentTypes__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __70__AVAssetResourceLoadingContentInformationRequest_allowedContentTypes__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 24) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setByteRangeAccessSupported:(BOOL)byteRangeAccessSupported
{
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AVAssetResourceLoadingContentInformationRequest_setByteRangeAccessSupported___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = byteRangeAccessSupported;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (BOOL)isByteRangeAccessSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__AVAssetResourceLoadingContentInformationRequest_isByteRangeAccessSupported__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRenewalDate:(NSDate *)renewalDate
{
  v4 = [(NSDate *)renewalDate copy];
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AVAssetResourceLoadingContentInformationRequest_setRenewalDate___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

- (NSDate)renewalDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVAssetResourceLoadingContentInformationRequest_renewalDate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__AVAssetResourceLoadingContentInformationRequest_renewalDate__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 48) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setEntireLengthAvailableOnDemand:(BOOL)entireLengthAvailableOnDemand
{
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__AVAssetResourceLoadingContentInformationRequest_setEntireLengthAvailableOnDemand___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = entireLengthAvailableOnDemand;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (BOOL)isEntireLengthAvailableOnDemand
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_contentInformationRequest->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__AVAssetResourceLoadingContentInformationRequest_isEntireLengthAvailableOnDemand__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end