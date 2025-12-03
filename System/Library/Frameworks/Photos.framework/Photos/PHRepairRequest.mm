@interface PHRepairRequest
- (PHRepairRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset assetResource:(id)resource errorCodes:(id)codes delegate:(id)self0;
- (id)_sendRepairRequestWithReply:(id)reply;
- (void)dealloc;
- (void)startRequest;
@end

@implementation PHRepairRequest

- (void)startRequest
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__PHRepairRequest_startRequest__block_invoke;
  v10[3] = &unk_1E75A89F8;
  v10[4] = self;
  v3 = [(PHRepairRequest *)self _sendRepairRequestWithReply:v10];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69BE6E8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PHRepairRequest_startRequest__block_invoke_2;
  v7[3] = &unk_1E75A9CB0;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithSourceProgress:v3 progressHandler:v7];
  progressFollower = self->_progressFollower;
  self->_progressFollower = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __31__PHRepairRequest_startRequest__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = -[PHCompositeMediaResult initWithRequestID:]([PHCompositeMediaResult alloc], "initWithRequestID:", [*(a1 + 32) requestID]);
  [(PHCompositeMediaResult *)v6 setErrorIfNone:v4];

  v5 = [*(a1 + 32) delegate];
  [v5 mediaRequest:*(a1 + 32) didFinishWithResult:v6];
}

void __31__PHRepairRequest_startRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 mediaRequest:WeakRetained didReportProgress:v3];
}

- (id)_sendRepairRequestWithReply:(id)reply
{
  resource = self->_resource;
  if (resource)
  {
    replyCopy = reply;
    replyCopy2 = [(PHAssetResource *)resource backingResourceIdentity];
    v7 = [(PHMediaRequest *)self sendResourceRepairRequestForResource:replyCopy2 errorCodes:self->_errorCodes reply:replyCopy];
  }

  else
  {
    errorCodes = self->_errorCodes;
    replyCopy2 = reply;
    v7 = [(PHMediaRequest *)self sendResourceRepairRequestWithErrorCodes:errorCodes reply:replyCopy2];
  }

  return v7;
}

- (void)dealloc
{
  [(PLProgressFollower *)self->_progressFollower invalidate];
  v3.receiver = self;
  v3.super_class = PHRepairRequest;
  [(PHMediaRequest *)&v3 dealloc];
}

- (PHRepairRequest)initWithRequestID:(int)d requestIndex:(unint64_t)index contextType:(int64_t)type managerID:(unint64_t)iD asset:(id)asset assetResource:(id)resource errorCodes:(id)codes delegate:(id)self0
{
  v15 = *&d;
  resourceCopy = resource;
  codesCopy = codes;
  v22.receiver = self;
  v22.super_class = PHRepairRequest;
  v18 = [(PHMediaRequest *)&v22 initWithRequestID:v15 requestIndex:index contextType:type managerID:iD asset:asset delegate:delegate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resource, resource);
    objc_storeStrong(&v19->_errorCodes, codes);
  }

  return v19;
}

@end