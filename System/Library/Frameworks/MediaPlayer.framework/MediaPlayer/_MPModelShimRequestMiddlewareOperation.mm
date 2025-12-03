@interface _MPModelShimRequestMiddlewareOperation
- (_MPModelShimRequestMiddlewareOperation)initWithMiddleware:(id)middleware modelRequest:(id)request;
- (void)execute;
@end

@implementation _MPModelShimRequestMiddlewareOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = _MPModelShimRequestMiddlewareOperation;
  [(MPAsyncOperation *)&v5 execute];
  modelRequest = self->_modelRequest;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49___MPModelShimRequestMiddlewareOperation_execute__block_invoke;
  v4[3] = &unk_1E767D7C8;
  v4[4] = self;
  [(MPModelRequest *)modelRequest performWithResponseHandler:v4];
}

- (_MPModelShimRequestMiddlewareOperation)initWithMiddleware:(id)middleware modelRequest:(id)request
{
  middlewareCopy = middleware;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = _MPModelShimRequestMiddlewareOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, middleware);
    objc_storeStrong(&v10->_modelRequest, request);
  }

  return v10;
}

@end