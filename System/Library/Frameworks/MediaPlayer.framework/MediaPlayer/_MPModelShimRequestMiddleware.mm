@interface _MPModelShimRequestMiddleware
- (id)operationsForRequest:(id)request;
@end

@implementation _MPModelShimRequestMiddleware

- (id)operationsForRequest:(id)request
{
  v11[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    v6 = [_MPModelShimRequestMiddlewareOperation alloc];
    modelRequest = [v5 modelRequest];

    v8 = [(_MPModelShimRequestMiddlewareOperation *)v6 initWithMiddleware:self modelRequest:modelRequest];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

@end