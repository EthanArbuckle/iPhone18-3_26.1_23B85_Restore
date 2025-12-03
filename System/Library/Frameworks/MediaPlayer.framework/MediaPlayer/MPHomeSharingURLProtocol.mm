@interface MPHomeSharingURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (void)initialize;
- (void)startLoading;
@end

@implementation MPHomeSharingURLProtocol

- (void)startLoading
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = objc_autoreleasePoolPush();
  selfCopy = self;
  request = [(NSURLProtocol *)self request];
  v4 = [request URL];

  v5 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingURLProtocol] Starting loading for %{public}@", buf, 0xCu);
  }

  v6 = MEMORY[0x1E696AD60];
  absoluteString = [v4 absoluteString];
  v8 = [v6 stringWithString:absoluteString];

  v35 = v4;
  scheme = [v4 scheme];
  [v8 replaceCharactersInRange:0 withString:{objc_msgSend(scheme, "length"), @"http"}];

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
    client = [(NSURLProtocol *)selfCopy client];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HomeSharingURLProtocolErrorDomain" code:-1 userInfo:0];
    [client URLProtocol:selfCopy didFailWithError:v25];
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

    libraryDataProvider = [*(*(&v38 + 1) + 8 * v14) libraryDataProvider];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    client = [libraryDataProvider homeSharingLibrary];
    baseURL = [client baseURL];
    absoluteString2 = [baseURL absoluteString];
    v19 = [v37 hasPrefix:absoluteString2];

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

  if (!client)
  {
    goto LABEL_20;
  }

  homeSharingGroupID = [client homeSharingGroupID];
  v21 = [homeSharingGroupID length];

  v23 = v35;
  v22 = v36;
  if (v21)
  {
    homeSharingGroupID2 = [client homeSharingGroupID];
    [v37 appendFormat:@"&hsgid=%@", homeSharingGroupID2];
  }

  [v37 appendString:@"&hs-mobile-device-client=1"];
  v25 = [MEMORY[0x1E695DFF8] URLWithString:v37];
  v26 = [objc_alloc(MEMORY[0x1E696AF70]) initWithURL:v35 MIMEType:@"text/plain" expectedContentLength:0 textEncodingName:0];
  v27 = [MEMORY[0x1E696AD68] requestWithURL:v25];
  request2 = [(NSURLProtocol *)selfCopy request];
  allHTTPHeaderFields = [request2 allHTTPHeaderFields];
  v30 = [allHTTPHeaderFields mutableCopy];

  v31 = [client securityInfoForURL:v25];
  if (v31)
  {
    [v30 setObject:v31 forKey:@"Client-Daap-Validation"];
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", atomic_fetch_add_explicit(startLoading___requestID, 1u, memory_order_relaxed) + 1];
  [v30 setObject:v32 forKey:@"Client-Daap-Request-Id"];

  [v27 setAllHTTPHeaderFields:v30];
  client2 = [(NSURLProtocol *)selfCopy client];
  [client2 URLProtocol:selfCopy wasRedirectedToRequest:v27 redirectResponse:v26];
  [client2 URLProtocolDidFinishLoading:selfCopy];

LABEL_21:
  objc_autoreleasePoolPop(v22);
}

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_autoreleasePoolPush();
  v5 = [requestCopy URL];
  scheme = [v5 scheme];
  v7 = [scheme isEqualToString:@"home-sharing"];

  objc_autoreleasePoolPop(v4);
  return v7;
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = MEMORY[0x1E696AF58];

    [v4 registerClass:self];
  }
}

@end