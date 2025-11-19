@interface _BSUITemplateBundleURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
- (void)startLoading;
@end

@implementation _BSUITemplateBundleURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"bundle"];

  return v5;
}

- (void)startLoading
{
  v3 = [(_BSUITemplateBundleURLProtocol *)self request];
  v4 = [v3 URL];

  v5 = [v4 URLByDeletingPathExtension];
  v6 = [v5 lastPathComponent];

  v7 = [v4 pathExtension];
  v8 = BSUIBundle();
  v9 = [v8 URLForResource:v6 withExtension:v7];

  if (v9)
  {
    v10 = [NSData dataWithContentsOfURL:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(_BSUITemplateBundleURLProtocol *)self client];
  if (v10)
  {
    v12 = [[NSURLResponse alloc] initWithURL:v4 MIMEType:@"application/octet-stream" expectedContentLength:objc_msgSend(v10 textEncodingName:{"length"), 0}];
    [v11 URLProtocol:self didReceiveResponse:v12 cacheStoragePolicy:1];
    [v11 URLProtocol:self didLoadData:v10];
    [v11 URLProtocolDidFinishLoading:self];
    v13 = BSUITemplateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Success Bundle resource: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    v14 = [NSError errorWithDomain:@"kBSUIJetPackURLProtocolErrorDomain" code:0 userInfo:0];
    [v11 URLProtocol:self didFailWithError:v14];

    v12 = BSUITemplateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_2BD2FC();
    }
  }
}

@end