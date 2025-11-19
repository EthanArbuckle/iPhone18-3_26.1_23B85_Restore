@interface MessageContentRequestRetryMiddleware
+ (id)log;
- (BOOL)_shouldRetry;
- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)a3 handler:(id)a4;
- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)a3 registry:(id)a4 handler:(id)a5;
- (void)_retry;
- (void)contentRequestDidReceiveContentRepresentation:(id)a3 error:(id)a4;
- (void)dealloc;
@end

@implementation MessageContentRequestRetryMiddleware

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147640;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD288 != -1)
  {
    dispatch_once(&qword_1006DD288, block);
  }

  v2 = qword_1006DD280;

  return v2;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancellationToken cancel];
  v3.receiver = self;
  v3.super_class = MessageContentRequestRetryMiddleware;
  [(MessageContentRequestRetryMiddleware *)&v3 dealloc];
}

- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_MFMessageContentRequestRetryRegistry sharedRegistry];
  v9 = [(MessageContentRequestRetryMiddleware *)self initWithMessageContentRequest:v6 registry:v8 handler:v7];

  return v9;
}

- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)a3 registry:(id)a4 handler:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MessageContentRequestRetryMiddleware.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"contentRequest"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v35 = +[NSAssertionHandler currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"MessageContentRequestRetryMiddleware.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"registry"}];

LABEL_3:
  v46.receiver = self;
  v46.super_class = MessageContentRequestRetryMiddleware;
  v13 = [(MessageContentRequestRetryMiddleware *)&v46 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentRequest, a3);
    objc_storeStrong(&v14->_registry, a4);
    v15 = objc_retainBlock(v12);
    handler = v14->_handler;
    v14->_handler = v15;

    v17 = objc_alloc_init(EFManualCancelationToken);
    cancellationToken = v14->_cancellationToken;
    v14->_cancellationToken = v17;

    v14->_shouldRetryOnNetworkChange = 0;
    v19 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.MessageContentRequestRetryScheduler" qualityOfService:25];
    retryScheduler = v14->_retryScheduler;
    v14->_retryScheduler = v19;

    objc_initWeak(&location, v14);
    contentRequest = v14->_contentRequest;
    v22 = v14->_cancellationToken;
    v23 = v14->_retryScheduler;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100147CB8;
    v43[3] = &unk_1006515E8;
    objc_copyWeak(&v44, &location);
    v24 = [(MessageContentRepresentationRequest *)contentRequest onScheduler:v23 addLoadObserver:v43];
    [(EFManualCancelationToken *)v22 addCancelable:v24];

    v25 = +[MFNetworkController sharedInstance];
    v26 = [v25 networkObservable];
    v27 = [v26 observeOn:v14->_retryScheduler];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100147D4C;
    v41[3] = &unk_100651610;
    objc_copyWeak(&v42, &location);
    v28 = [v27 filter:v41];
    v29 = v14->_cancellationToken;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100147DC8;
    v39[3] = &unk_1006502E8;
    objc_copyWeak(&v40, &location);
    v30 = [EFObserver observerWithResultBlock:v39];
    v31 = [v28 subscribe:v30];
    [(EFManualCancelationToken *)v29 addCancelable:v31];

    v32 = v14->_cancellationToken;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100147EE8;
    v36[3] = &unk_10064C660;
    v37 = v11;
    v38 = v10;
    [(EFManualCancelationToken *)v32 addCancelationBlock:v36];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)contentRequestDidReceiveContentRepresentation:(id)a3 error:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 ef_match];
    if (v8[2](v8, MFMIMEErrorDomain, 2000000) & 1) != 0 || (v9 = EMErrorDomain, (v8[2](v8, EMErrorDomain, 2048)) || (v8[2](v8, v9, 2050) & 1) != 0 || (v8[2](v8, v9, 2049) & 1) != 0 || v8[2](v8, v9, 1024))
    {
      [(MessageContentRequestRetryMiddleware *)self setShouldRetryOnNetworkChange:1];
      [(MessageContentRequestRetryMiddleware *)self _retry];
    }

    goto LABEL_8;
  }

  if (v15)
  {
    v10 = [(MessageContentRequestRetryMiddleware *)self registry];
    v11 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    v12 = [v10 numberOfRetryForContentRepresentation:v11];

    v13 = [(MessageContentRequestRetryMiddleware *)self cancellationToken];
    [v13 cancel];

    if (v12)
    {
      v14 = [(MessageContentRequestRetryMiddleware *)self handler];

      if (v14)
      {
        v8 = [(MessageContentRequestRetryMiddleware *)self handler];
        (v8[2])();
LABEL_8:
      }
    }
  }
}

- (void)_retry
{
  if ([(MessageContentRequestRetryMiddleware *)self _shouldRetry])
  {
    v3 = +[MessageContentRequestRetryMiddleware log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
      v5 = [v4 message];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Retrying load of content request for message: %{public}@", &v9, 0xCu);
    }

    v6 = [(MessageContentRequestRetryMiddleware *)self registry];
    v7 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    [v6 logRetryForContentRequest:v7];

    v8 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    [v8 retry];
  }
}

- (BOOL)_shouldRetry
{
  v3 = [(MessageContentRequestRetryMiddleware *)self registry];
  v4 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
  v5 = [v3 numberOfRetryForContentRepresentation:v4];

  v6 = +[MFNetworkController sharedInstance];
  LOBYTE(v4) = [v6 isNetworkUp];

  return (v5 < 3) & v4;
}

@end