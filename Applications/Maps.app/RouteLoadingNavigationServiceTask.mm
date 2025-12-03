@interface RouteLoadingNavigationServiceTask
- (BOOL)inProgress;
- (NSString)description;
- (Result)result;
- (RouteLoadingNavigationServiceTask)initWithNavigationService:(id)service routeRequestDetailsBuilder:(id)builder;
- (void)_createNavigationServiceTicketOnIsolationQueueWithCompletionHandler:(id)handler;
- (void)_createResultOnIsolationQueueWithRoutes:(id)routes error:(id)error completionHandler:(id)handler;
- (void)_handleNilNavdTicketOnIsolationQueueWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation RouteLoadingNavigationServiceTask

- (NSString)description
{
  v3 = objc_opt_class();
  taskState = [(RouteLoadingNavigationServiceTask *)self taskState];
  v5 = @"TaskStateNotStarted";
  if (taskState == 1)
  {
    v5 = @"TaskStateRunning";
  }

  if (taskState == 2)
  {
    v6 = @"TaskStateFinished";
  }

  else
  {
    v6 = v5;
  }

  ticket = [(RouteLoadingNavigationServiceTask *)self ticket];
  resultOnIsolationQueue = [(RouteLoadingNavigationServiceTask *)self resultOnIsolationQueue];
  v9 = [NSString stringWithFormat:@"<%@:%p state=%@ ticket=%@ result=%@>", v3, self, v6, ticket, resultOnIsolationQueue];

  return v9;
}

- (void)_createResultOnIsolationQueueWithRoutes:(id)routes error:(id)error completionHandler:(id)handler
{
  routesCopy = routes;
  errorCopy = error;
  handlerCopy = handler;
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  v12 = [routesCopy count];
  if (errorCopy && v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v26 = 2114;
      v27 = errorCopy;
      v28 = 2112;
      v29 = routesCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ – MNNavigationServiceDirectionsRequestTicket callback invoked with both an error %{public}@ and routes (%@) ", buf, 0x20u);
    }
  }

  v14 = [routesCopy count];
  if (!errorCopy && !v14)
  {
    errorCopy = [NSError errorWithDomain:@"com.apple.Maps.RouteLoadingNavigationServiceTask.Error" code:2 userInfo:&off_1016EE4E8];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v26 = 2114;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ – No Routes could be constructed from the MNNavigationServiceDirectionsRequestTicket's routes and no error was returned. Creating an error %{public}@ to send in completion handler", buf, 0x16u);
    }
  }

  if (errorCopy)
  {
    [Result resultWithError:errorCopy];
  }

  else
  {
    [Result resultWithValue:routesCopy];
  }
  v16 = ;
  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    selfCopy2 = "[RouteLoadingNavigationServiceTask _createResultOnIsolationQueueWithRoutes:error:completionHandler:]";
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}s created result: %@", buf, 0x16u);
  }

  [(RouteLoadingNavigationServiceTask *)self setTaskState:2];
  [(RouteLoadingNavigationServiceTask *)self setResultOnIsolationQueue:v16];
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC6630;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v22 = v16;
  v23 = handlerCopy;
  v19 = handlerCopy;
  v20 = v16;
  dispatch_async(callbackQueue, block);
}

- (void)_handleNilNavdTicketOnIsolationQueueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  ticket = [(RouteLoadingNavigationServiceTask *)self ticket];

  if (!ticket)
  {
    v7 = [NSError errorWithDomain:@"com.apple.Maps.RouteLoadingNavigationServiceTask.Error" code:1 userInfo:&off_1016EE4C0];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ – NavigationService returned a nil MNNavigationServiceDirectionsRequestTicket. Creating a error (%{public}@ and failing the route loading task", buf, 0x16u);
    }

    v9 = [Result resultWithError:v7];
    [(RouteLoadingNavigationServiceTask *)self setResultOnIsolationQueue:v9];
    [(RouteLoadingNavigationServiceTask *)self setTaskState:2];
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BC69A8;
    block[3] = &unk_1016605F8;
    block[4] = self;
    v13 = v9;
    v14 = handlerCopy;
    v11 = v9;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_createNavigationServiceTicketOnIsolationQueueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  routeRequestBuilder = [(RouteLoadingNavigationServiceTask *)self routeRequestBuilder];
  buildDirectionsRequestDetails = [routeRequestBuilder buildDirectionsRequestDetails];

  persistentData = [buildDirectionsRequestDetails persistentData];

  if (persistentData)
  {
    navigationService = [[_MapsCustomRouteDirectionsRequestTicket alloc] initWithRequestDetails:buildDirectionsRequestDetails];
    [(RouteLoadingNavigationServiceTask *)self setTicket:navigationService];
  }

  else
  {
    navigationService = [(RouteLoadingNavigationServiceTask *)self navigationService];
    v10 = [(_MapsCustomRouteDirectionsRequestTicket *)navigationService ticketForDirectionsRequest:buildDirectionsRequestDetails];
    [(RouteLoadingNavigationServiceTask *)self setTicket:v10];
  }

  ticket = [(RouteLoadingNavigationServiceTask *)self ticket];

  if (ticket)
  {
    navigationService2 = [(RouteLoadingNavigationServiceTask *)self navigationService];
    [navigationService2 openForClient:self];

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ - Submitting MNNavigationServiceDirectionsRequestTicket", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    ticket2 = [(RouteLoadingNavigationServiceTask *)self ticket];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BC6D24;
    v15[3] = &unk_101660620;
    objc_copyWeak(&v18, buf);
    v16 = buildDirectionsRequestDetails;
    v17 = handlerCopy;
    [ticket2 submitWithHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    [(RouteLoadingNavigationServiceTask *)self _handleNilNavdTicketOnIsolationQueueWithCompletionHandler:handlerCopy];
  }
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(handlerCopy);
    *buf = 136446466;
    *&buf[4] = "[RouteLoadingNavigationServiceTask startWithCompletionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v13 = 0;
    isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BC72FC;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(isolationQueue, block);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      isolationQueue2 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100BC736C;
      v9[3] = &unk_101661090;
      v9[4] = self;
      v10 = handlerCopy;
      dispatch_async(isolationQueue2, v9);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)cancel
{
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  isolationQueue2 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC7418;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(isolationQueue2, block);
}

- (Result)result
{
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100BC762C;
  v12 = sub_100BC763C;
  v13 = 0;
  isolationQueue2 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100BC7644;
  v7[3] = &unk_101661600;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(isolationQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)inProgress
{
  selfCopy = self;
  isolationQueue = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue2 = [(RouteLoadingNavigationServiceTask *)selfCopy isolationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BC7780;
  v6[3] = &unk_101661600;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(isolationQueue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (void)dealloc
{
  navigationService = [(RouteLoadingNavigationServiceTask *)self navigationService];
  [navigationService closeForClient:self];

  v4.receiver = self;
  v4.super_class = RouteLoadingNavigationServiceTask;
  [(RouteLoadingNavigationServiceTask *)&v4 dealloc];
}

- (RouteLoadingNavigationServiceTask)initWithNavigationService:(id)service routeRequestDetailsBuilder:(id)builder
{
  serviceCopy = service;
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = RouteLoadingNavigationServiceTask;
  v9 = [(RouteLoadingNavigationServiceTask *)&v21 init];
  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    bundleIdentifier = [v10 bundleIdentifier];
    v12 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", bundleIdentifier, objc_opt_class(), v9];

    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    isolationQueue = v9->_isolationQueue;
    v9->_isolationQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.Maps.RouteLoadingNavigationServiceTask.callback", v17);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v18;

    objc_storeStrong(&v9->_navigationService, service);
    objc_storeStrong(&v9->_routeRequestBuilder, builder);
  }

  return v9;
}

@end