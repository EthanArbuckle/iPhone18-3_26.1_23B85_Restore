@interface MessageContentRequestRetryMiddleware
+ (id)log;
- (BOOL)_shouldRetry;
- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)request handler:(id)handler;
- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)request registry:(id)registry handler:(id)handler;
- (void)_retry;
- (void)contentRequestDidReceiveContentRepresentation:(id)representation error:(id)error;
- (void)dealloc;
@end

@implementation MessageContentRequestRetryMiddleware

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147640;
  block[3] = &unk_10064C4F8;
  block[4] = self;
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

- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[_MFMessageContentRequestRetryRegistry sharedRegistry];
  v9 = [(MessageContentRequestRetryMiddleware *)self initWithMessageContentRequest:requestCopy registry:v8 handler:handlerCopy];

  return v9;
}

- (MessageContentRequestRetryMiddleware)initWithMessageContentRequest:(id)request registry:(id)registry handler:(id)handler
{
  requestCopy = request;
  registryCopy = registry;
  handlerCopy = handler;
  if (requestCopy)
  {
    if (registryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MessageContentRequestRetryMiddleware.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"contentRequest"}];

    if (registryCopy)
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
    objc_storeStrong(&v13->_contentRequest, request);
    objc_storeStrong(&v14->_registry, registry);
    v15 = objc_retainBlock(handlerCopy);
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
    networkObservable = [v25 networkObservable];
    v27 = [networkObservable observeOn:v14->_retryScheduler];

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
    v37 = registryCopy;
    v38 = requestCopy;
    [(EFManualCancelationToken *)v32 addCancelationBlock:v36];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)contentRequestDidReceiveContentRepresentation:(id)representation error:(id)error
{
  representationCopy = representation;
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    ef_match = [errorCopy ef_match];
    if (ef_match[2](ef_match, MFMIMEErrorDomain, 2000000) & 1) != 0 || (v9 = EMErrorDomain, (ef_match[2](ef_match, EMErrorDomain, 2048)) || (ef_match[2](ef_match, v9, 2050) & 1) != 0 || (ef_match[2](ef_match, v9, 2049) & 1) != 0 || ef_match[2](ef_match, v9, 1024))
    {
      [(MessageContentRequestRetryMiddleware *)self setShouldRetryOnNetworkChange:1];
      [(MessageContentRequestRetryMiddleware *)self _retry];
    }

    goto LABEL_8;
  }

  if (representationCopy)
  {
    registry = [(MessageContentRequestRetryMiddleware *)self registry];
    contentRequest = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    v12 = [registry numberOfRetryForContentRepresentation:contentRequest];

    cancellationToken = [(MessageContentRequestRetryMiddleware *)self cancellationToken];
    [cancellationToken cancel];

    if (v12)
    {
      handler = [(MessageContentRequestRetryMiddleware *)self handler];

      if (handler)
      {
        ef_match = [(MessageContentRequestRetryMiddleware *)self handler];
        (ef_match[2])();
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
      contentRequest = [(MessageContentRequestRetryMiddleware *)self contentRequest];
      message = [contentRequest message];
      v9 = 138543362;
      v10 = message;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Retrying load of content request for message: %{public}@", &v9, 0xCu);
    }

    registry = [(MessageContentRequestRetryMiddleware *)self registry];
    contentRequest2 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    [registry logRetryForContentRequest:contentRequest2];

    contentRequest3 = [(MessageContentRequestRetryMiddleware *)self contentRequest];
    [contentRequest3 retry];
  }
}

- (BOOL)_shouldRetry
{
  registry = [(MessageContentRequestRetryMiddleware *)self registry];
  contentRequest = [(MessageContentRequestRetryMiddleware *)self contentRequest];
  v5 = [registry numberOfRetryForContentRepresentation:contentRequest];

  v6 = +[MFNetworkController sharedInstance];
  LOBYTE(contentRequest) = [v6 isNetworkUp];

  return (v5 < 3) & contentRequest;
}

@end