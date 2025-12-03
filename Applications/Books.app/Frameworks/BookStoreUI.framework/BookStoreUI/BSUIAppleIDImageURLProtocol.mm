@interface BSUIAppleIDImageURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)startLoading;
@end

@implementation BSUIAppleIDImageURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];
  v5 = [scheme isEqualToString:@"x-apple-identity-image"];

  return v5;
}

- (void)startLoading
{
  request = [(BSUIAppleIDImageURLProtocol *)self request];
  v8 = [request URL];

  v4 = BSUIGetFamilyMemberImage(v8);
  client = [(BSUIAppleIDImageURLProtocol *)self client];
  if (v4)
  {
    v6 = UIImagePNGRepresentation(v4);
    v7 = [[NSURLResponse alloc] initWithURL:v8 MIMEType:@"image/png" expectedContentLength:objc_msgSend(v6 textEncodingName:{"length"), 0}];
    [client URLProtocol:self didReceiveResponse:v7 cacheStoragePolicy:1];
    [client URLProtocol:self didLoadData:v6];
    [client URLProtocolDidFinishLoading:self];
  }

  else
  {
    v6 = [NSError errorWithDomain:@"kBSUIAppleIDImageURLProtocolErrorDomain" code:0 userInfo:0];
    [client URLProtocol:self didFailWithError:v6];
  }
}

@end