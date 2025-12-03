@interface PHAdjustmentDataRequestContext
- (PHAdjustmentDataRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler;
- (id)initialRequests;
- (void)processMediaResult:(id)result forRequest:(id)request;
@end

@implementation PHAdjustmentDataRequestContext

- (void)processMediaResult:(id)result forRequest:(id)request
{
  resultHandler = self->super._resultHandler;
  if (resultHandler)
  {
    resultHandler[2](resultHandler, result, request, self);
  }
}

- (id)initialRequests
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PHAdjustmentDataRequestBehaviorSpec);
  [(PHAdjustmentDataRequestBehaviorSpec *)v3 setNetworkAccessAllowed:[(PHImageRequestOptions *)self->_options isNetworkAccessAllowed]];
  [(PHAdjustmentDataRequestBehaviorSpec *)v3 setSynchronous:[(PHImageRequestOptions *)self->_options isSynchronous]];
  v4 = [PHAdjustmentDataRequest alloc];
  requestID = [(PHMediaRequestContext *)self requestID];
  nextRequestIndex = [(PHMediaRequestContext *)self nextRequestIndex];
  type = [(PHAdjustmentDataRequestContext *)self type];
  managerID = [(PHMediaRequestContext *)self managerID];
  asset = [(PHMediaRequestContext *)self asset];
  v10 = [(PHAdjustmentDataRequest *)v4 initWithRequestID:requestID requestIndex:nextRequestIndex contextType:type managerID:managerID asset:asset behaviorSpec:v3 delegate:self];

  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

- (PHAdjustmentDataRequestContext)initWithRequestID:(int)d managerID:(unint64_t)iD asset:(id)asset options:(id)options resultHandler:(id)handler
{
  v11 = *&d;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = PHAdjustmentDataRequestContext;
  v14 = [(PHMediaRequestContext *)&v17 initWithRequestID:v11 managerID:iD asset:asset displaySpec:0 resultHandler:handler];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_options, options);
  }

  return v15;
}

@end