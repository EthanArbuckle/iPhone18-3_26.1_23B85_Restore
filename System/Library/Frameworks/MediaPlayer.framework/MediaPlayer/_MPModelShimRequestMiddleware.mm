@interface _MPModelShimRequestMiddleware
- (id)operationsForRequest:(id)a3;
@end

@implementation _MPModelShimRequestMiddleware

- (id)operationsForRequest:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [_MPModelShimRequestMiddlewareOperation alloc];
    v7 = [v5 modelRequest];

    v8 = [(_MPModelShimRequestMiddlewareOperation *)v6 initWithMiddleware:self modelRequest:v7];
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