@interface NWURLLoader
- (OS_nw_connection)underlyingConnection;
- (id)initWithRequest:(void *)request configuration:(void *)configuration queue:(void *)queue client:(void *)client protocolClass:;
- (id)takeCachedResponse;
- (void)URLProtocol:(id)protocol cachedResponseIsValid:(id)valid;
- (void)URLProtocol:(id)protocol didFailWithError:(id)error;
- (void)URLProtocol:(id)protocol didLoadData:(id)data;
- (void)URLProtocol:(id)protocol didReceiveAuthenticationChallenge:(id)challenge;
- (void)URLProtocol:(id)protocol didReceiveResponse:(id)response cacheStoragePolicy:(unint64_t)policy;
- (void)URLProtocol:(id)protocol wasRedirectedToRequest:(id)request redirectResponse:(id)response;
- (void)URLProtocolDidFinishLoading:(id)loading;
- (void)afterCacheLookup:(uint64_t)lookup;
- (void)fulfillData:(int)data complete:;
- (void)fulfillError:(uint64_t)error;
- (void)fulfillResponse:(uint64_t)response;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler;
- (void)readResponse:(id)response;
- (void)start:(id)start;
- (void)stop;
- (void)updateClient:(id)client;
- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler;
@end

@implementation NWURLLoader

- (void)URLProtocol:(id)protocol didReceiveAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke;
  v8[3] = &unk_1E6A3D760;
  v8[4] = self;
  v9 = challengeCopy;
  v7 = challengeCopy;
  dispatch_async(queue, v8);
}

void __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke_2;
  v4[3] = &unk_1E6A35A68;
  v4[4] = v1;
  v5 = v3;
  [v2 loaderDidReceiveChallenge:v5 completionHandler:v4];
}

void __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke_3;
  v10[3] = &unk_1E6A3BCF0;
  v13 = a2;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v6;
  [v8 loaderRunDelegateBlock:v10];
}

void __61__NWURLLoader_URLProtocol_didReceiveAuthenticationChallenge___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = [*(a1 + 40) sender];
      [v5 cancelAuthenticationChallenge:*(a1 + 40)];
    }

    else
    {
      if (v2 != 3)
      {
        return;
      }

      v5 = [*(a1 + 40) sender];
      [v5 rejectProtectionSpaceAndContinueWithChallenge:*(a1 + 40)];
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return;
    }

    v5 = [*(a1 + 40) sender];
    [v5 performDefaultHandlingForAuthenticationChallenge:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sender];
    v5 = v4;
    if (v3)
    {
      [v4 useCredential:*(a1 + 32) forAuthenticationChallenge:*(a1 + 40)];
    }

    else
    {
      [v4 continueWithoutCredentialForAuthenticationChallenge:*(a1 + 40)];
    }
  }
}

- (void)URLProtocol:(id)protocol didFailWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NWURLLoader_URLProtocol_didFailWithError___block_invoke;
  v8[3] = &unk_1E6A3D760;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __44__NWURLLoader_URLProtocol_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) code];
  if (v2)
  {
    v4 = v3;
    v5 = [NWURLError alloc];
    v6 = [v2[4] loaderTask];
    v7 = v2;
    v8 = v6;
    if (v5 && (v9 = [(NWURLError *)v5 initWithErrorCode:v4]) != 0)
    {
      v10 = v9;
      [(NWURLError *)v9 fillErrorForLoader:v7 andTask:v8];
    }

    else
    {
      v10 = 0;
    }

    [(NWURLError *)v10 setUnderlyingError:*(a1 + 40)];
  }

  else
  {
    v10 = 0;
    [0 setUnderlyingError:*(a1 + 40)];
  }

  [(NWURLLoader *)*(a1 + 32) fulfillError:v10];
}

- (void)fulfillError:(uint64_t)error
{
  v4 = a2;
  if (error)
  {
    v8 = v4;
    if ((*(error + 8) & 1) == 0 && !*(error + 128))
    {
      objc_storeStrong((error + 128), a2);
    }

    v5 = *(error + 104);
    if (v5)
    {
      v6 = v5;
      objc_setProperty_nonatomic_copy(error, v7, 0, 104);
      v6[2](v6, 0, v8);
    }

    [(NWURLSessionReadRequest *)*(error + 120) putError:v8];
    v4 = v8;
  }
}

- (void)URLProtocolDidFinishLoading:(id)loading
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NWURLLoader_URLProtocolDidFinishLoading___block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fulfillData:(int)data complete:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 80);
    data2 = v5;
    if (v5)
    {
      if (v6)
      {
        v7 = v6;
        concat = dispatch_data_create_concat(v7, data2);
        v9 = *(self + 80);
        *(self + 80) = concat;

        v6 = *(self + 80);
        if (dispatch_data_get_size(v6) > *(self + 96))
        {
          *(self + 80) = 0;

          v6 = *(self + 80);
        }
      }
    }

    if (v6 && data)
    {
      v10 = objc_alloc(MEMORY[0x1E695ABF0]);
      v11 = *(self + 112);
      v12 = *(self + 72);
      v13 = *(self + 80);
      v14 = v11;
      v15 = [v10 initWithResponse:v14 data:v13 userInfo:0 storagePolicy:v12];
      v16 = *(self + 88);
      *(self + 88) = v15;

      v17 = *(self + 80);
      *(self + 80) = 0;
    }

    *(self + 8) = data;
    [(NWURLSessionReadRequest *)*(self + 120) putData:data complete:?];
    v5 = data2;
  }
}

- (void)URLProtocol:(id)protocol didLoadData:(id)data
{
  dataCopy = data;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NWURLLoader_URLProtocol_didLoadData___block_invoke;
  v8[3] = &unk_1E6A3D760;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(queue, v8);
}

void __39__NWURLLoader_URLProtocol_didLoadData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _createDispatchData];
  [(NWURLLoader *)v1 fulfillData:v2 complete:0];
}

- (void)URLProtocol:(id)protocol didReceiveResponse:(id)response cacheStoragePolicy:(unint64_t)policy
{
  responseCopy = response;
  if (self)
  {
    client = self->_client;
  }

  else
  {
    client = 0;
  }

  loaderDataTask = [(NWURLLoaderClient *)client loaderDataTask];

  if (loaderDataTask)
  {
    policyCopy = policy;
    if (!policy)
    {
      goto LABEL_11;
    }

    if (policy == 1)
    {
      if (self)
      {
        cache = self->_cache;
      }

      else
      {
        cache = 0;
      }

      v12 = cache;
      memoryCapacity = [(NSURLCache *)v12 memoryCapacity];
      if (self)
      {
        v14 = self->_cache;
      }

      else
      {
        v14 = 0;
      }

      [(NSURLCache *)v14 _maxCacheableEntrySizeRatio];
      policyCopy = (v15 * memoryCapacity);

LABEL_11:
      if (self)
      {
        v16 = self->_cache;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      diskCapacity = [(NSURLCache *)v17 diskCapacity];
      if (self)
      {
        v19 = self->_cache;
      }

      else
      {
        v19 = 0;
      }

      [(NSURLCache *)v19 _maxCacheableEntrySizeRatio];
      v21 = (v20 * diskCapacity);

      if (policyCopy <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = policyCopy;
      }

      if (self)
      {
        goto LABEL_19;
      }

LABEL_22:
      queue = 0;
      goto LABEL_20;
    }
  }

  v22 = 0;
  if (!self)
  {
    goto LABEL_22;
  }

LABEL_19:
  queue = self->_queue;
LABEL_20:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__NWURLLoader_URLProtocol_didReceiveResponse_cacheStoragePolicy___block_invoke;
  v25[3] = &unk_1E6A35A40;
  v26 = responseCopy;
  selfCopy = self;
  v28 = v22;
  policyCopy2 = policy;
  v24 = responseCopy;
  dispatch_async(queue, v25);
}

void __65__NWURLLoader_URLProtocol_didReceiveResponse_cacheStoragePolicy___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if ([*(a1 + 32) expectedContentLength] <= *(a1 + 48))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        *(v2 + 72) = *(a1 + 56);
        v3 = *(a1 + 40);
        if (v3)
        {
          objc_storeStrong((v3 + 80), MEMORY[0x1E69E9668]);
          v4 = *(a1 + 40);
          if (v4)
          {
            *(v4 + 96) = *(a1 + 48);
          }
        }
      }
    }
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  [(NWURLLoader *)v5 fulfillResponse:v6];
}

- (void)fulfillResponse:(uint64_t)response
{
  v7 = a2;
  if (response)
  {
    v4 = *(response + 104);
    if (v4)
    {
      v5 = v4;
      objc_setProperty_nonatomic_copy(response, v6, 0, 104);
      v5[2](v5, v7, 0);
    }

    objc_storeStrong((response + 112), a2);
  }
}

- (void)URLProtocol:(id)protocol cachedResponseIsValid:(id)valid
{
  validCopy = valid;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NWURLLoader_URLProtocol_cachedResponseIsValid___block_invoke;
  v8[3] = &unk_1E6A3D760;
  v8[4] = self;
  v9 = validCopy;
  v7 = validCopy;
  dispatch_async(queue, v8);
}

void __49__NWURLLoader_URLProtocol_cachedResponseIsValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) response];
  [(NWURLLoader *)v2 fulfillResponse:v3];

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 loaderDataTask];
  v7 = *(a1 + 32);
  v10 = v6;
  if (v6 && v7)
  {
    objc_storeStrong((v7 + 88), *(a1 + 40));
    v7 = *(a1 + 32);
  }

  v8 = [*(a1 + 40) data];
  v9 = [v8 _createDispatchData];
  [(NWURLLoader *)v7 fulfillData:v9 complete:1];
}

- (void)URLProtocol:(id)protocol wasRedirectedToRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
  v9 = responseCopy;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__NWURLLoader_URLProtocol_wasRedirectedToRequest_redirectResponse___block_invoke;
  block[3] = &unk_1E6A3B4E0;
  block[4] = self;
  v14 = responseCopy;
  v15 = requestCopy;
  v11 = requestCopy;
  v12 = v9;
  dispatch_async(queue, block);
}

void __67__NWURLLoader_URLProtocol_wasRedirectedToRequest_redirectResponse___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = a1[5];
  v4 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__NWURLLoader_URLProtocol_wasRedirectedToRequest_redirectResponse___block_invoke_2;
  v5[3] = &unk_1E6A35A18;
  v5[4] = v1;
  v6 = v3;
  [v2 loaderWillPerformHTTPRedirection:v6 newRequest:v4 completionHandler:v5];
}

void __67__NWURLLoader_URLProtocol_wasRedirectedToRequest_redirectResponse___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    _os_crash();
    __break(1u);
  }

  else
  {
    [(NWURLLoader *)*(a1 + 32) fulfillResponse:?];
    v3 = *(a1 + 32);

    [(NWURLLoader *)v3 fulfillData:1 complete:?];
  }
}

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _os_crash();
  __break(1u);
}

- (id)takeCachedResponse
{
  if (self)
  {
    v3 = self->_cachedResponseInternal;
    cachedResponseInternal = self->_cachedResponseInternal;
    self->_cachedResponseInternal = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler
{
  if (self)
  {
    readRequest = self->_readRequest;
    if (readRequest)
    {
      readRequest->_minimumLength = length;
      readRequest->_maximumLength = maximumLength;
      objc_setProperty_nonatomic_copy(readRequest, a2, handler, 32);

      [(NWURLSessionReadRequest *)readRequest tryFulfillRequest];
    }
  }
}

- (void)readResponse:(id)response
{
  responseCopy = response;
  if (self)
  {
    if (self->_error)
    {
      responseCopy[2](responseCopy, 0);
    }

    else
    {
      response = self->_response;
      if (response)
      {
        (responseCopy[2])(responseCopy, response, 0);
      }

      else
      {
        objc_setProperty_nonatomic_copy(self, 0, responseCopy, 104);
      }
    }
  }

  MEMORY[0x1EEE66C30]();
}

- (void)updateClient:(id)client
{
  clientCopy = client;
  if (self)
  {
    objc_storeStrong(&self->_client, client);
  }
}

- (void)stop
{
  if (self)
  {
    v3 = [NWURLError alloc];
    loaderTask = [(NWURLLoaderClient *)self->_client loaderTask];
    selfCopy = self;
    v6 = loaderTask;
    if (v3)
    {
      v7 = [(NWURLError *)v3 initWithErrorCode:-999];
      v3 = v7;
      if (v7)
      {
        [(NWURLError *)v7 fillErrorForLoader:selfCopy andTask:v6];
      }
    }

    [(NWURLLoader *)selfCopy fulfillError:v3];
    client = self->_client;
  }

  else
  {
    client = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __19__NWURLLoader_stop__block_invoke;
  v10[3] = &unk_1E6A3D868;
  v10[4] = self;
  [(NWURLLoaderClient *)client loaderCallCustomURLProtocol:v10];
  if (self)
  {
    v9 = self->_client;
    self->_client = 0;
  }
}

void __19__NWURLLoader_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  [v3 stopLoading];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;
  }
}

- (void)start:(id)start
{
  startCopy = start;
  v5 = objc_alloc_init(NWURLSessionReadRequest);
  if (self)
  {
    readRequest = self->_readRequest;
    self->_readRequest = v5;

    uRLCache = self->_configuration;
    v8 = uRLCache;
    if (uRLCache)
    {
      uRLCache = [(NSURLSessionConfiguration *)uRLCache->_configuration URLCache];
    }

    cache = self->_cache;
    self->_cache = uRLCache;

    client = self->_client;
  }

  else
  {

    client = 0;
  }

  v11 = client;
  loaderDataTask = [(NWURLLoaderClient *)v11 loaderDataTask];

  if (self && (v13 = self->_cache) != 0 && loaderDataTask)
  {
    v14 = v13;
    v15 = self->_client;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __21__NWURLLoader_start___block_invoke;
    v17[3] = &unk_1E6A3B4E0;
    v18 = v14;
    v19 = loaderDataTask;
    selfCopy = self;
    v16 = v14;
    [(NWURLLoaderClient *)v15 loaderRunDelegateBlock:v17];
  }

  else
  {
    [(NWURLLoader *)self afterCacheLookup:?];
  }

  startCopy[2](startCopy);
}

uint64_t __21__NWURLLoader_start___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __21__NWURLLoader_start___block_invoke_2;
  v4[3] = &unk_1E6A359F0;
  v4[4] = a1[6];
  return [v2 getCachedResponseForDataTask:v1 completionHandler:v4];
}

- (void)afterCacheLookup:(uint64_t)lookup
{
  v3 = a2;
  if (lookup && !*(lookup + 128))
  {
    v4 = *(lookup + 32);
    loaderTask = [v4 loaderTask];

    v6 = *(lookup + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__NWURLLoader_afterCacheLookup___block_invoke;
    v8[3] = &unk_1E6A3B4E0;
    v8[4] = lookup;
    v9 = loaderTask;
    v10 = v3;
    v7 = loaderTask;
    [v6 loaderCallCustomURLProtocol:v8];
  }
}

void __32__NWURLLoader_afterCacheLookup___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [[v3 alloc] initWithTask:a1[5] cachedResponse:a1[6] client:a1[4]];
  v5 = a1[4];
  if (v5)
  {
    objc_storeStrong((v5 + 64), v4);
  }

  v6 = a1[4];
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = 0;
  }

  [v7 startLoading];
  v8 = a1[4];
  if (v8)
  {
    if (*(v8 + 64))
    {
      return;
    }

    v9 = *(v8 + 40);
  }

  else
  {
    v9 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NWURLLoader_afterCacheLookup___block_invoke_2;
  block[3] = &unk_1E6A3D868;
  block[4] = v8;
  dispatch_async(v9, block);
}

void __32__NWURLLoader_afterCacheLookup___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NWURLError alloc];
    v3 = [v1[4] loaderTask];
    v4 = v1;
    v5 = v3;
    if (v2 && (v6 = [(NWURLError *)v2 initWithErrorCode:-999]) != 0)
    {
      [(NWURLError *)v6 fillErrorForLoader:v4 andTask:v5];
    }

    else
    {
      v6 = 0;
    }

    [(NWURLLoader *)v4 fulfillError:v6];
  }

  else
  {
    v6 = 0;
  }
}

void __21__NWURLLoader_start___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__NWURLLoader_start___block_invoke_3;
  v7[3] = &unk_1E6A3D760;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (id)initWithRequest:(void *)request configuration:(void *)configuration queue:(void *)queue client:(void *)client protocolClass:
{
  v11 = a2;
  requestCopy = request;
  configurationCopy = configuration;
  queueCopy = queue;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = NWURLLoader;
    self = objc_msgSendSuper2(&v18, sel_init);
    if (self)
    {
      v15 = [client canonicalRequestForRequest:v11];
      v16 = self[2];
      self[2] = v15;

      objc_storeStrong(self + 3, request);
      objc_storeStrong(self + 4, queue);
      objc_storeStrong(self + 5, configuration);
      objc_storeStrong(self + 6, client);
    }
  }

  return self;
}

void __111__NWURLLoader_makeLoaderForRequest_bodyKnownSize_configuration_queue_client_protocolClasses_completionHandler___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [a1[6] loaderTask];
        v10 = [v8 canInitWithTask:v9];

        if (v10)
        {
          v11 = [[NWURLLoader alloc] initWithRequest:a1[8] configuration:a1[9] queue:a1[6] client:v8 protocolClass:?];

          v2 = v11;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __111__NWURLLoader_makeLoaderForRequest_bodyKnownSize_configuration_queue_client_protocolClasses_completionHandler___block_invoke_2;
  v15[3] = &unk_1E6A3D710;
  v12 = a1[9];
  v13 = a1[10];
  v16 = v2;
  v17 = v13;
  v14 = v2;
  dispatch_async(v12, v15);
}

@end