@interface AAURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
- (AAURLProtocol)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5;
- (id)_normalizedRequestForURL:(id)a3;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation AAURLProtocol

- (AAURLProtocol)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [AAURLProtocol initWithRequest:cachedResponse:client:];
  }

  v14.receiver = self;
  v14.super_class = AAURLProtocol;
  v11 = [(NSURLProtocol *)&v14 initWithRequest:v8 cachedResponse:v9 client:v10];
  v12 = v11;
  if (v11)
  {
    v11->_state = 0;
  }

  return v12;
}

- (id)_normalizedRequestForURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [AAURLProtocol _normalizedRequestForURL:];
  }

  v5 = [(NSURLProtocol *)self request];
  v6 = [v5 mutableCopy];

  [v6 setURL:v4];
  v7 = [v6 copy];

  return v7;
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[AAURLProtocol canInitWithRequest:];
  }

  v4 = [v3 URL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 scheme];
    v7 = [v6 compare:@"x-appleaccount" options:1] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AAURLProtocol;
  return objc_msgSendSuper2(&v5, sel_requestIsCacheEquivalent_toRequest_, a3, a4);
}

- (void)startLoading
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:"-[AAURLProtocol startLoading]" object:? file:? lineNumber:? description:?];
}

void __29__AAURLProtocol_startLoading__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v19)
  {
    v10 = [v9 request];
    v11 = [v10 URL];
    v12 = [v11 aa_endpoint];
    v13 = [v19 urlForEndpoint:v12];

    v14 = *(a1 + 32);
    if (v13)
    {
      v15 = [v14 request];
      v16 = [v15 mutableCopy];

      [v16 setURL:v13];
      v17 = [*(a1 + 32) client];
      [v17 URLProtocol:*(a1 + 32) wasRedirectedToRequest:v16 redirectResponse:v7];
    }

    else
    {
      v16 = [v14 client];
      v18 = *(a1 + 32);
      v17 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4401];
      [v16 URLProtocol:v18 didFailWithError:v17];
    }
  }

  else
  {
    v13 = [v9 client];
    [v13 URLProtocol:*(a1 + 32) didFailWithError:v8];
  }
}

- (void)stopLoading
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:"-[AAURLProtocol stopLoading]" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequest:cachedResponse:client:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)_normalizedRequestForURL:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"url" object:? file:? lineNumber:? description:?];
}

+ (void)canInitWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

@end