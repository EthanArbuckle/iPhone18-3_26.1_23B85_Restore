@interface AuthURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
- (void)startLoading;
@end

@implementation AuthURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 URL];

  if (v4)
  {
    v5 = [v3 URL];
    v6 = [v5 scheme];
    LOBYTE(v4) = [v6 isEqualToString:@"carrierspaceauth"];
  }

  return v4;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AuthURLProtocol;
  return objc_msgSendSuper2(&v5, "requestIsCacheEquivalent:toRequest:", a3, a4);
}

- (void)startLoading
{
  v3 = sub_100002CBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(AuthURLProtocol *)self request];
    v5 = [v4 URL];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading URL: %@", buf, 0xCu);
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [(AuthURLProtocol *)self request];
  v8 = [v7 URL];
  v9 = +[NSDictionary dictionary];
  v16 = 0;
  [v6 openSensitiveURL:v8 withOptions:v9 error:&v16];
  v10 = v16;

  v11 = [(AuthURLProtocol *)self client];
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

    [v11 URLProtocol:self didFailWithError:v10];
  }

  else
  {
    if (v13)
    {
      v14 = [(AuthURLProtocol *)self request];
      v15 = [v14 URL];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully loaded URL: %@", buf, 0xCu);
    }

    [v11 URLProtocolDidFinishLoading:self];
  }
}

@end