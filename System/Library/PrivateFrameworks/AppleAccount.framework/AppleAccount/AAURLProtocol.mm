@interface AAURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
- (AAURLProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (id)_normalizedRequestForURL:(id)l;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation AAURLProtocol

- (AAURLProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  requestCopy = request;
  responseCopy = response;
  clientCopy = client;
  if (!requestCopy)
  {
    [AAURLProtocol initWithRequest:cachedResponse:client:];
  }

  v14.receiver = self;
  v14.super_class = AAURLProtocol;
  v11 = [(NSURLProtocol *)&v14 initWithRequest:requestCopy cachedResponse:responseCopy client:clientCopy];
  v12 = v11;
  if (v11)
  {
    v11->_state = 0;
  }

  return v12;
}

- (id)_normalizedRequestForURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [AAURLProtocol _normalizedRequestForURL:];
  }

  request = [(NSURLProtocol *)self request];
  v6 = [request mutableCopy];

  [v6 setURL:lCopy];
  v7 = [v6 copy];

  return v7;
}

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    +[AAURLProtocol canInitWithRequest:];
  }

  v4 = [requestCopy URL];
  v5 = v4;
  if (v4)
  {
    scheme = [v4 scheme];
    v7 = [scheme compare:@"x-appleaccount" options:1] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AAURLProtocol;
  return objc_msgSendSuper2(&v5, sel_requestIsCacheEquivalent_toRequest_, equivalent, request);
}

- (void)startLoading
{
  OUTLINED_FUNCTION_0_4();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
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