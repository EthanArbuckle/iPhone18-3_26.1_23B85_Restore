@interface MPResponse
+ (id)builderProtocol;
- (MPResponse)initWithRequest:(id)request middleware:(id)middleware;
- (id)_stateDumpObject;
- (id)chain;
- (void)invalidate;
@end

@implementation MPResponse

- (id)chain
{
  v3 = [MPMiddlewareChain alloc];
  middleware = [(MPResponse *)self middleware];
  builderProtocol = [objc_opt_class() builderProtocol];
  v6 = [(MPMiddlewareChain *)v3 initWithMiddleware:middleware protocol:builderProtocol];

  return v6;
}

- (id)_stateDumpObject
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v10[0] = v3;
  v9[1] = @"valid";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_valid];
  v5 = v4;
  v9[2] = @"_middleware";
  middleware = self->_middleware;
  if (!middleware)
  {
    middleware = MEMORY[0x1E695E0F0];
  }

  v10[1] = v4;
  v10[2] = middleware;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_valid)
  {
    [(MPResponse *)self willChangeValueForKey:@"valid"];
    self->_valid = 0;
    [(MPResponse *)self didChangeValueForKey:@"valid"];
    v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      request = [(MPResponse *)self request];
      v6 = 138543362;
      v7 = request;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "INVALIDATE: Notifying invalidation for request: %{public}@", &v6, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:MPResponseDidInvalidateNotification object:self];
  }
}

- (MPResponse)initWithRequest:(id)request middleware:(id)middleware
{
  requestCopy = request;
  middlewareCopy = middleware;
  v15.receiver = self;
  v15.super_class = MPResponse;
  v9 = [(MPResponse *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_middleware, middleware);
    v10->_valid = 1;
    builderProtocol = [objc_opt_class() builderProtocol];
    v12 = [MPMiddlewareChain builderProxyForProtocol:builderProtocol];
    builder = v10->_builder;
    v10->_builder = v12;
  }

  return v10;
}

+ (id)builderProtocol
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRequest.m" lineNumber:282 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPResponse class]"}];
  }

  return &unk_1F150BA00;
}

@end