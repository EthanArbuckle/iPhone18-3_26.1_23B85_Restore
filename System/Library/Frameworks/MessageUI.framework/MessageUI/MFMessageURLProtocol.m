@interface MFMessageURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (OS_os_log)log;
+ (_MFMessageURLProtocolRegistry)registry;
+ (id)canonicalRequestForRequest:(id)a3;
+ (id)contentRepresentationForURL:(id)a3;
+ (void)initialize;
+ (void)registerContentRepresentation:(id)a3;
- (MFMessageURLProtocol)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5;
- (id)_cachedResponseWithData:(id)a3 mimeType:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation MFMessageURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = MEMORY[0x1E696AF58];

    [v3 registerClass:a1];
  }
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MFMessageURLProtocol_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

void __27__MFMessageURLProtocol_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_9;
  log_log_9 = v1;
}

+ (_MFMessageURLProtocolRegistry)registry
{
  v2 = sPreferredRegistry;
  if (!sPreferredRegistry)
  {
    v3 = +[_MFMessageURLProtocolRegistry sharedRegistry];
    v4 = sPreferredRegistry;
    sPreferredRegistry = v3;

    v2 = sPreferredRegistry;
  }

  return v2;
}

+ (void)registerContentRepresentation:(id)a3
{
  v5 = a3;
  v4 = [a1 registry];
  [v4 registerContentRepresentation:v5];
}

+ (id)contentRepresentationForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 registry];
  v6 = [v5 contentRepresentationForURL:v4];

  return v6;
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 URL];
  v5 = [v4 scheme];

  v6 = [*MEMORY[0x1E69B1540] caseInsensitiveCompare:v5] == 0;
  v7 = [v3 URL];
  v8 = [v7 resourceSpecifier];
  v9 = [v8 length];

  if (!v9)
  {
    v10 = +[MFMessageURLProtocol log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MFMessageURLProtocol *)v3 canInitWithRequest:v10];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)canonicalRequestForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 URL];
  v5 = [v4 query];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    [v6 setQuery:0];
    v7 = [v3 mutableCopy];
    v8 = [v6 URL];
    [v7 setURL:v8];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (void)dealloc
{
  [(MFMessageURLProtocol *)self stopLoading];
  v3.receiver = self;
  v3.super_class = MFMessageURLProtocol;
  [(NSURLProtocol *)&v3 dealloc];
}

- (MFMessageURLProtocol)initWithRequest:(id)a3 cachedResponse:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = MFMessageURLProtocol;
  v11 = [(NSURLProtocol *)&v26 initWithRequest:v8 cachedResponse:v9 client:v10];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E699B868]);
    promise = v11->_promise;
    v11->_promise = v12;

    v14 = objc_opt_class();
    v15 = [v8 mainDocumentURL];
    v16 = [v14 contentRepresentationForURL:v15];
    contentRepresentation = v11->_contentRepresentation;
    v11->_contentRepresentation = v16;

    objc_initWeak(&location, v11);
    v18 = [(EFPromise *)v11->_promise future];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__MFMessageURLProtocol_initWithRequest_cachedResponse_client___block_invoke;
    v23[3] = &unk_1E8070330;
    objc_copyWeak(&v24, &location);
    [v18 addSuccessBlock:v23];

    v19 = [(EFPromise *)v11->_promise future];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__MFMessageURLProtocol_initWithRequest_cachedResponse_client___block_invoke_2;
    v21[3] = &unk_1E806FBB8;
    objc_copyWeak(&v22, &location);
    [v19 addFailureBlock:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __62__MFMessageURLProtocol_initWithRequest_cachedResponse_client___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained client];
  v5 = [v9 response];
  [v4 URLProtocol:WeakRetained didReceiveResponse:v5 cacheStoragePolicy:2];

  v6 = [WeakRetained client];
  v7 = [v9 data];
  [v6 URLProtocol:WeakRetained didLoadData:v7];

  v8 = [WeakRetained client];
  [v8 URLProtocolDidFinishLoading:WeakRetained];
}

void __62__MFMessageURLProtocol_initWithRequest_cachedResponse_client___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained client];
  [v4 URLProtocol:WeakRetained didFailWithError:v5];
}

- (id)_cachedResponseWithData:(id)a3 mimeType:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 length];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = -1;
    }

    v12 = objc_alloc(MEMORY[0x1E696AF70]);
    v13 = [(NSURLProtocol *)self request];
    v14 = [v13 URL];
    v15 = [v12 initWithURL:v14 MIMEType:v9 expectedContentLength:v11 textEncodingName:0];

    v16 = [objc_alloc(MEMORY[0x1E696AAF8]) initWithResponse:v15 data:v8 userInfo:0 storagePolicy:2];
    v17 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A980];
    v19 = [(NSURLProtocol *)self request];
    v20 = [v19 URL];
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v18 errorWithDomain:*MEMORY[0x1E696A978] code:-1008 userInfo:v21];

    v16 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }
  }

  v22 = v17;
  *a5 = v17;
LABEL_9:

  return v16;
}

- (void)startLoading
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSURLProtocol *)self request];
  v5 = [v4 URL];

  v6 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  v7 = [v6 path];
  v8 = [(EMContentRepresentation *)self->_contentRepresentation relatedContentItems];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __36__MFMessageURLProtocol_startLoading__block_invoke;
  v50[3] = &unk_1E8070358;
  v9 = v7;
  v51 = v9;
  v10 = [v8 ef_firstObjectPassingTest:v50];

  if (v10)
  {
    v11 = [v10 mailDropMetadata];
    v12 = v11 == 0;

    if (v12)
    {
      v13 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A710] networkUsage:1];
      v14 = [MEMORY[0x1E699B868] promise];
      v15 = [v14 completionHandlerAdapter];
      v16 = [v10 requestRepresentationWithOptions:v13 completionHandler:v15];
      [(MFMessageURLProtocol *)self setCancelable:v16];

      v17 = [v14 future];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __36__MFMessageURLProtocol_startLoading__block_invoke_2;
      v47[3] = &unk_1E80703A8;
      v48 = v10;
      v49 = self;
      v18 = [v17 then:v47];

      v19 = [(MFMessageURLProtocol *)self promise];
      [v19 finishWithFuture:v18];

      goto LABEL_8;
    }

LABEL_7:
    v23 = [(MFMessageURLProtocol *)self promise];
    v24 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A980];
    v14 = [(NSURLProtocol *)self request];
    v25 = [v14 URL];
    v53 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v27 = [v24 errorWithDomain:*MEMORY[0x1E696A978] code:-1008 userInfo:v26];
    [v23 finishWithError:v27];

    v13 = v23;
    goto LABEL_8;
  }

  v20 = [MEMORY[0x1E69B15D0] defaultManager];
  v13 = [v20 attachmentForContentID:v9 preferredSchemes:&unk_1F3D167C0];

  if (!v13)
  {
    goto LABEL_7;
  }

  v21 = [v13 url];
  v22 = [v21 scheme];
  if ([@"x-attach-compose" caseInsensitiveCompare:v22])
  {
  }

  else
  {
    v28 = [v13 isDisplayableInline];

    if ((v28 & 1) == 0)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __36__MFMessageURLProtocol_startLoading__block_invoke_4;
      v44[3] = &unk_1E806C520;
      v13 = v13;
      v45 = v13;
      v46 = self;
      v37 = [MEMORY[0x1E699B978] mainThreadScheduler];
      [v37 performBlock:v44];

      v14 = v45;
      goto LABEL_8;
    }
  }

  if ([v13 isDisplayableInline])
  {
    v29 = [v13 mimeType];
    objc_initWeak(&location, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __36__MFMessageURLProtocol_startLoading__block_invoke_5;
    v39[3] = &unk_1E80703D0;
    objc_copyWeak(&v42, &location);
    v40 = v5;
    v14 = v29;
    v41 = v14;
    [v13 setFetchCompletionBlock:v39];
    [v13 setWantsCompletionBlockOffMainThread:1];
    v30 = [(MFMessageURLProtocol *)self cancelable];
    LOBYTE(v29) = v30 == 0;

    if ((v29 & 1) == 0)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      [v38 handleFailureInMethod:a2 object:self file:@"MFMessageURLProtocol.m" lineNumber:280 description:@"should only get here once"];
    }

    v31 = [v13 fetchData];
    [(MFMessageURLProtocol *)self setCancelable:v31];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [(MFMessageURLProtocol *)self promise];
    v32 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A980];
    v33 = [(NSURLProtocol *)self request];
    v34 = [v33 URL];
    v55[0] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v36 = [v32 errorWithDomain:*MEMORY[0x1E696A978] code:-1103 userInfo:v35];
    [v14 finishWithError:v36];
  }

LABEL_8:
}

uint64_t __36__MFMessageURLProtocol_startLoading__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __36__MFMessageURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B7C8];
  v5 = [MEMORY[0x1E699B978] immediateScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__MFMessageURLProtocol_startLoading__block_invoke_3;
  v11[3] = &unk_1E8070380;
  v6 = v3;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v9 = [v4 onScheduler:v5 futureWithBlock:v11];

  return v9;
}

id __36__MFMessageURLProtocol_startLoading__block_invoke_3(id *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = [a1[4] contentURL];
  v6 = [v4 dataWithContentsOfURL:v5 options:8 error:a2];

  if (v6)
  {
    v7 = [a1[5] type];
    v8 = [v7 preferredMIMEType];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"application/octet-stream";
    }

    v10 = [a1[6] _cachedResponseWithData:v6 mimeType:v9 error:a2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __36__MFMessageURLProtocol_startLoading__block_invoke_4(uint64_t a1)
{
  v2 = [MFAttachmentImageGenerator pngDataForAttachment:*(a1 + 32)];
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v3 _cachedResponseWithData:v2 mimeType:@"image/png" error:&v7];
  v5 = v7;
  v6 = [*(a1 + 40) promise];
  [v6 finishWithResult:v4 error:v5];
}

void __36__MFMessageURLProtocol_startLoading__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (v6)
  {
    v10 = *(a1 + 40);
    v19 = 0;
    v11 = [WeakRetained _cachedResponseWithData:v6 mimeType:v10 error:&v19];
    v12 = v19;
    v13 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *(a1 + 32);
    v16 = *MEMORY[0x1E696AA08];
    v20[0] = *MEMORY[0x1E696A980];
    v20[1] = v16;
    v21[0] = v15;
    v21[1] = v7;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v12 = [v14 errorWithDomain:*MEMORY[0x1E696A978] code:-1008 userInfo:v17];

    v13 = 0;
  }

  v18 = [v9 promise];
  [v18 finishWithResult:v13 error:v12];
}

- (void)stopLoading
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFMessageURLProtocol *)self promise];
  v4 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A980];
  v5 = [(NSURLProtocol *)self request];
  v6 = [v5 URL];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:*MEMORY[0x1E696A978] code:-999 userInfo:v7];
  [v3 finishWithError:v8];

  v9 = [(MFMessageURLProtocol *)self cancelable];
  [v9 cancel];
}

+ (void)canInitWithRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Attempting to load a request via CID without a resource specifier: %@", &v2, 0xCu);
}

@end