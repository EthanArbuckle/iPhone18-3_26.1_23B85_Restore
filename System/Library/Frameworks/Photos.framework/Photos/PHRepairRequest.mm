@interface PHRepairRequest
- (PHRepairRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 assetResource:(id)a8 errorCodes:(id)a9 delegate:(id)a10;
- (id)_sendRepairRequestWithReply:(id)a3;
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

- (id)_sendRepairRequestWithReply:(id)a3
{
  resource = self->_resource;
  if (resource)
  {
    v5 = a3;
    v6 = [(PHAssetResource *)resource backingResourceIdentity];
    v7 = [(PHMediaRequest *)self sendResourceRepairRequestForResource:v6 errorCodes:self->_errorCodes reply:v5];
  }

  else
  {
    errorCodes = self->_errorCodes;
    v6 = a3;
    v7 = [(PHMediaRequest *)self sendResourceRepairRequestWithErrorCodes:errorCodes reply:v6];
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

- (PHRepairRequest)initWithRequestID:(int)a3 requestIndex:(unint64_t)a4 contextType:(int64_t)a5 managerID:(unint64_t)a6 asset:(id)a7 assetResource:(id)a8 errorCodes:(id)a9 delegate:(id)a10
{
  v15 = *&a3;
  v21 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = PHRepairRequest;
  v18 = [(PHMediaRequest *)&v22 initWithRequestID:v15 requestIndex:a4 contextType:a5 managerID:a6 asset:a7 delegate:a10];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resource, a8);
    objc_storeStrong(&v19->_errorCodes, a9);
  }

  return v19;
}

@end