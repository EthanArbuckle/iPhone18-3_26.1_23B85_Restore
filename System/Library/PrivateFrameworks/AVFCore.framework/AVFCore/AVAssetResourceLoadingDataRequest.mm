@interface AVAssetResourceLoadingDataRequest
- (AVAssetResourceLoadingDataRequest)initWithLoadingRequest:(id)a3 requestedOffset:(int64_t)a4 requestedLength:(int64_t)a5 requestsAllDataToEndOfResource:(BOOL)a6 canSupplyIncrementalDataImmediately:(BOOL)a7;
- (__CFDictionary)_requestInfo;
- (id)description;
- (uint64_t)currentOffset;
- (void)dealloc;
- (void)respondWithData:(NSData *)data;
@end

@implementation AVAssetResourceLoadingDataRequest

- (AVAssetResourceLoadingDataRequest)initWithLoadingRequest:(id)a3 requestedOffset:(int64_t)a4 requestedLength:(int64_t)a5 requestsAllDataToEndOfResource:(BOOL)a6 canSupplyIncrementalDataImmediately:(BOOL)a7
{
  v15.receiver = self;
  v15.super_class = AVAssetResourceLoadingDataRequest;
  v12 = [(AVAssetResourceLoadingDataRequest *)&v15 init];
  if (v12)
  {
    if (a3 && (v13 = objc_alloc_init(AVAssetResourceLoadingDataRequestInternal), (v12->_dataRequest = v13) != 0))
    {
      v12->_dataRequest->weakReferenceToLoadingRequest = [a3 _weakReference];
      v12->_dataRequest->requestedOffset = a4;
      v12->_dataRequest->requestedLength = a5;
      v12->_dataRequest->currentOffset = a4;
      v12->_dataRequest->dataResponseQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avassetresourceloadingdatarequest");
      v12->_dataRequest->requestsAllDataToEndOfResource = a6;
      v12->_dataRequest->canSupplyIncrementalDataImmediately = a7;
      CFRetain(v12->_dataRequest);
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  dataRequest = self->_dataRequest;
  if (dataRequest)
  {

    v4 = self->_dataRequest;
    if (v4[4])
    {
      dispatch_release(v4[4]);
      v4 = self->_dataRequest;
    }

    CFRelease(v4);
  }

  v5.receiver = self;
  v5.super_class = AVAssetResourceLoadingDataRequest;
  [(AVAssetResourceLoadingDataRequest *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetResourceLoadingDataRequest *)self requestedOffset];
  v7 = [(AVAssetResourceLoadingDataRequest *)self requestedLength];
  if ([(AVAssetResourceLoadingDataRequest *)self requestsAllDataToEndOfResource])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p, requested offset = %lld, requested length = %lld, requests all data to end of resource = %@, current offset = %lld>", v5, self, v6, v7, v8, -[AVAssetResourceLoadingDataRequest currentOffset](self, "currentOffset")];
}

- (uint64_t)currentOffset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataResponseQueue = self->_dataRequest->dataResponseQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVAssetResourceLoadingDataRequest_currentOffset__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(dataResponseQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CFDictionary)_requestInfo
{
  v2 = [(AVAssetResourceLoadingDataRequest *)self _loadingRequest];

  return [v2 _requestInfo];
}

- (void)respondWithData:(NSData *)data
{
  v5 = [(NSData *)data length];
  if (v5)
  {
    v6 = v5;
    canSupplyIncrementalDataImmediately = self->_dataRequest->canSupplyIncrementalDataImmediately;
    v8 = [(AVAssetResourceLoadingDataRequest *)self _loadingRequest];
    if (canSupplyIncrementalDataImmediately)
    {
      [v8 _sendDataToCustomURLHandler:data];
    }

    else
    {
      [v8 _appendToCachedData:data];
    }

    dataResponseQueue = self->_dataRequest->dataResponseQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__AVAssetResourceLoadingDataRequest_respondWithData___block_invoke;
    v10[3] = &unk_1E7460FA8;
    v10[4] = self;
    v10[5] = v6;
    av_readwrite_dispatch_queue_write(dataResponseQueue, v10);
  }
}

@end