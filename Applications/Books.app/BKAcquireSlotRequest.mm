@interface BKAcquireSlotRequest
- (BKAcquireSlotRequest)init;
- (void)_acquireSlotWithURL:(id)a3;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation BKAcquireSlotRequest

- (BKAcquireSlotRequest)init
{
  v7.receiver = self;
  v7.super_class = BKAcquireSlotRequest;
  v2 = [(BKAcquireSlotRequest *)&v7 init];
  if (v2)
  {
    v3 = [ICStoreRequestContext alloc];
    v4 = [v3 ae_initWithActiveAccountAllowAuthenticationOnceADay];
    requestContext = v2->_requestContext;
    v2->_requestContext = v4;
  }

  return v2;
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FD518;
  v5[3] = &unk_100A060C0;
  v6 = a3;
  v4 = v6;
  [(BKAcquireSlotRequest *)self performRequestWithCompletionHandler:v5];
}

- (void)execute
{
  v3 = +[BUBag defaultBag];
  objc_initWeak(&location, self);
  v4 = [v3 acquireSlotURL];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FD620;
  v5[3] = &unk_100A07340;
  objc_copyWeak(&v6, &location);
  [v4 valueWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_acquireSlotWithURL:(id)a3
{
  v4 = a3;
  v5 = [(BKAcquireSlotRequest *)self additionalParams];

  v6 = v4;
  if (v5)
  {
    if (v4)
    {
      v7 = [[NSURLComponents alloc] initWithURL:v4 resolvingAgainstBaseURL:0];
      v8 = [(BKAcquireSlotRequest *)self additionalParams];
      [v7 setQuery:v8];

      v6 = [v7 URL];
    }

    else
    {
      v9 = sub_1000AC6E8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Nil url, can't add additional query parms.", buf, 2u);
      }

      v6 = 0;
    }
  }

  v10 = [[NSMutableURLRequest alloc] initWithURL:v6];
  [v10 setHTTPMethod:@"GET"];
  objc_initWeak(buf, self);
  v11 = [[ICStoreURLRequest alloc] initWithURLRequest:v10 requestContext:self->_requestContext];
  v12 = +[ICURLSessionManager highPrioritySession];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000FD8FC;
  v13[3] = &unk_100A07368;
  objc_copyWeak(&v14, buf);
  [v12 enqueueDataRequest:v11 withCompletionHandler:v13];
  objc_destroyWeak(&v14);

  objc_destroyWeak(buf);
}

@end