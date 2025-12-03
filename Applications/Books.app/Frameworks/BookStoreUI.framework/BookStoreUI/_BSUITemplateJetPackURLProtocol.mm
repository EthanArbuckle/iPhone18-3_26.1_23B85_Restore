@interface _BSUITemplateJetPackURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)startLoading;
@end

@implementation _BSUITemplateJetPackURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];
  v5 = [scheme isEqualToString:@"jetpack"];

  return v5;
}

- (void)startLoading
{
  request = [(_BSUITemplateJetPackURLProtocol *)self request];
  v4 = [request URL];

  v5 = +[JSABridge sharedInstance];
  currentPackage = [v5 currentPackage];

  request2 = [(_BSUITemplateJetPackURLProtocol *)self request];
  v8 = [request2 URL];
  path = [v8 path];
  v10 = [currentPackage dataAtPath:path];

  client = [(_BSUITemplateJetPackURLProtocol *)self client];
  if (v10)
  {
    v12 = [[NSURLResponse alloc] initWithURL:v4 MIMEType:@"application/octet-stream" expectedContentLength:objc_msgSend(v10 textEncodingName:{"length"), 0}];
    [client URLProtocol:self didReceiveResponse:v12 cacheStoragePolicy:1];
    [client URLProtocol:self didLoadData:v10];
    [client URLProtocolDidFinishLoading:self];
    v13 = BSUITemplateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 134218242;
      v16 = [v10 length];
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Success JetPack resource (%lu bytes): %{public}@", &v15, 0x16u);
    }
  }

  else
  {
    v14 = [NSError errorWithDomain:@"kBSUIJetPackURLProtocolErrorDomain" code:0 userInfo:0];
    [client URLProtocol:self didFailWithError:v14];

    v12 = BSUITemplateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_2BD370();
    }
  }
}

@end