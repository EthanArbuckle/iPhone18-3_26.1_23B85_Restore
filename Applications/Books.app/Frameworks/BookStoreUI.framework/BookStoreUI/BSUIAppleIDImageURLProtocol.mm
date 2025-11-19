@interface BSUIAppleIDImageURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
- (void)startLoading;
@end

@implementation BSUIAppleIDImageURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"x-apple-identity-image"];

  return v5;
}

- (void)startLoading
{
  v3 = [(BSUIAppleIDImageURLProtocol *)self request];
  v8 = [v3 URL];

  v4 = BSUIGetFamilyMemberImage(v8);
  v5 = [(BSUIAppleIDImageURLProtocol *)self client];
  if (v4)
  {
    v6 = UIImagePNGRepresentation(v4);
    v7 = [[NSURLResponse alloc] initWithURL:v8 MIMEType:@"image/png" expectedContentLength:objc_msgSend(v6 textEncodingName:{"length"), 0}];
    [v5 URLProtocol:self didReceiveResponse:v7 cacheStoragePolicy:1];
    [v5 URLProtocol:self didLoadData:v6];
    [v5 URLProtocolDidFinishLoading:self];
  }

  else
  {
    v6 = [NSError errorWithDomain:@"kBSUIAppleIDImageURLProtocolErrorDomain" code:0 userInfo:0];
    [v5 URLProtocol:self didFailWithError:v6];
  }
}

@end