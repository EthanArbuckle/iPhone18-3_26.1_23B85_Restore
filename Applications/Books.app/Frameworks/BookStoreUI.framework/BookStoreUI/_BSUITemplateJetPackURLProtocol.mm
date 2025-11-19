@interface _BSUITemplateJetPackURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
- (void)startLoading;
@end

@implementation _BSUITemplateJetPackURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"jetpack"];

  return v5;
}

- (void)startLoading
{
  v3 = [(_BSUITemplateJetPackURLProtocol *)self request];
  v4 = [v3 URL];

  v5 = +[JSABridge sharedInstance];
  v6 = [v5 currentPackage];

  v7 = [(_BSUITemplateJetPackURLProtocol *)self request];
  v8 = [v7 URL];
  v9 = [v8 path];
  v10 = [v6 dataAtPath:v9];

  v11 = [(_BSUITemplateJetPackURLProtocol *)self client];
  if (v10)
  {
    v12 = [[NSURLResponse alloc] initWithURL:v4 MIMEType:@"application/octet-stream" expectedContentLength:objc_msgSend(v10 textEncodingName:{"length"), 0}];
    [v11 URLProtocol:self didReceiveResponse:v12 cacheStoragePolicy:1];
    [v11 URLProtocol:self didLoadData:v10];
    [v11 URLProtocolDidFinishLoading:self];
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
    [v11 URLProtocol:self didFailWithError:v14];

    v12 = BSUITemplateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_2BD370();
    }
  }
}

@end