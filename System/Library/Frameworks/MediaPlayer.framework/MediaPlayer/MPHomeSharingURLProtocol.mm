@interface MPHomeSharingURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (void)initialize;
- (void)startLoading;
@end

@implementation MPHomeSharingURLProtocol

- (void)startLoading
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = objc_autoreleasePoolPush();
  v34 = self;
  v3 = [(NSURLProtocol *)self request];
  v4 = [v3 URL];

  v5 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingURLProtocol] Starting loading for %{public}@", buf, 0xCu);
  }

  v6 = MEMORY[0x1E696AD60];
  v7 = [v4 absoluteString];
  v8 = [v6 stringWithString:v7];

  v35 = v4;
  v9 = [v4 scheme];
  [v8 replaceCharactersInRange:0 withString:{objc_msgSend(v9, "length"), @"http"}];

  v37 = v8;
  [v8 appendString:@"&daap-no-disconnect=1"];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = +[MPMediaLibrary mediaLibraries];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v11)
  {
LABEL_13:

LABEL_20:
    v16 = [(NSURLProtocol *)v34 client];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HomeSharingURLProtocolErrorDomain" code:-1 userInfo:0];
    [v16 URLProtocol:v34 didFailWithError:v25];
    v23 = v35;
    v22 = v36;
    goto LABEL_21;
  }

  v12 = v11;
  v13 = *v39;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v39 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = [*(*(&v38 + 1) + 8 * v14) libraryDataProvider];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v16 = [v15 homeSharingLibrary];
    v17 = [v16 baseURL];
    v18 = [v17 absoluteString];
    v19 = [v37 hasPrefix:v18];

    if (v19)
    {
      break;
    }

LABEL_11:
    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  if (!v16)
  {
    goto LABEL_20;
  }

  v20 = [v16 homeSharingGroupID];
  v21 = [v20 length];

  v23 = v35;
  v22 = v36;
  if (v21)
  {
    v24 = [v16 homeSharingGroupID];
    [v37 appendFormat:@"&hsgid=%@", v24];
  }

  [v37 appendString:@"&hs-mobile-device-client=1"];
  v25 = [MEMORY[0x1E695DFF8] URLWithString:v37];
  v26 = [objc_alloc(MEMORY[0x1E696AF70]) initWithURL:v35 MIMEType:@"text/plain" expectedContentLength:0 textEncodingName:0];
  v27 = [MEMORY[0x1E696AD68] requestWithURL:v25];
  v28 = [(NSURLProtocol *)v34 request];
  v29 = [v28 allHTTPHeaderFields];
  v30 = [v29 mutableCopy];

  v31 = [v16 securityInfoForURL:v25];
  if (v31)
  {
    [v30 setObject:v31 forKey:@"Client-Daap-Validation"];
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", atomic_fetch_add_explicit(startLoading___requestID, 1u, memory_order_relaxed) + 1];
  [v30 setObject:v32 forKey:@"Client-Daap-Request-Id"];

  [v27 setAllHTTPHeaderFields:v30];
  v33 = [(NSURLProtocol *)v34 client];
  [v33 URLProtocol:v34 wasRedirectedToRequest:v27 redirectResponse:v26];
  [v33 URLProtocolDidFinishLoading:v34];

LABEL_21:
  objc_autoreleasePoolPop(v22);
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 URL];
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"home-sharing"];

  objc_autoreleasePoolPop(v4);
  return v7;
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = MEMORY[0x1E696AF58];

    [v4 registerClass:a1];
  }
}

@end