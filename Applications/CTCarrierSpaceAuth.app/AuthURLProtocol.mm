@interface AuthURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
- (void)startLoading;
@end

@implementation AuthURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy URL];

  if (v4)
  {
    v5 = [requestCopy URL];
    scheme = [v5 scheme];
    LOBYTE(v4) = [scheme isEqualToString:@"carrierspaceauth"];
  }

  return v4;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AuthURLProtocol;
  return objc_msgSendSuper2(&v5, "requestIsCacheEquivalent:toRequest:", equivalent, request);
}

- (void)startLoading
{
  v3 = sub_100002CBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AuthURLProtocol *)self request];
    v5 = [request URL];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading URL: %@", buf, 0xCu);
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  request2 = [(AuthURLProtocol *)self request];
  v8 = [request2 URL];
  v9 = +[NSDictionary dictionary];
  v16 = 0;
  [v6 openSensitiveURL:v8 withOptions:v9 error:&v16];
  v10 = v16;

  client = [(AuthURLProtocol *)self client];
  v12 = sub_100002CBC();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to open URL, error: %@", buf, 0xCu);
    }

    [client URLProtocol:self didFailWithError:v10];
  }

  else
  {
    if (v13)
    {
      request3 = [(AuthURLProtocol *)self request];
      v15 = [request3 URL];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully loaded URL: %@", buf, 0xCu);
    }

    [client URLProtocolDidFinishLoading:self];
  }
}

@end