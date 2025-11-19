@interface RouteLoadingNavigationServiceTask
- (BOOL)inProgress;
- (NSString)description;
- (Result)result;
- (RouteLoadingNavigationServiceTask)initWithNavigationService:(id)a3 routeRequestDetailsBuilder:(id)a4;
- (void)_createNavigationServiceTicketOnIsolationQueueWithCompletionHandler:(id)a3;
- (void)_createResultOnIsolationQueueWithRoutes:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_handleNilNavdTicketOnIsolationQueueWithCompletionHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation RouteLoadingNavigationServiceTask

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(RouteLoadingNavigationServiceTask *)self taskState];
  v5 = @"TaskStateNotStarted";
  if (v4 == 1)
  {
    v5 = @"TaskStateRunning";
  }

  if (v4 == 2)
  {
    v6 = @"TaskStateFinished";
  }

  else
  {
    v6 = v5;
  }

  v7 = [(RouteLoadingNavigationServiceTask *)self ticket];
  v8 = [(RouteLoadingNavigationServiceTask *)self resultOnIsolationQueue];
  v9 = [NSString stringWithFormat:@"<%@:%p state=%@ ticket=%@ result=%@>", v3, self, v6, v7, v8];

  return v9;
}

- (void)_createResultOnIsolationQueueWithRoutes:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 count];
  if (v9 && v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = self;
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ – MNNavigationServiceDirectionsRequestTicket callback invoked with both an error %{public}@ and routes (%@) ", buf, 0x20u);
    }
  }

  v14 = [v8 count];
  if (!v9 && !v14)
  {
    v9 = [NSError errorWithDomain:@"com.apple.Maps.RouteLoadingNavigationServiceTask.Error" code:2 userInfo:&off_1016EE4E8];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = self;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ – No Routes could be constructed from the MNNavigationServiceDirectionsRequestTicket's routes and no error was returned. Creating an error %{public}@ to send in completion handler", buf, 0x16u);
    }
  }

  if (v9)
  {
    [Result resultWithError:v9];
  }

  else
  {
    [Result resultWithValue:v8];
  }
  v16 = ;
  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v25 = "[RouteLoadingNavigationServiceTask _createResultOnIsolationQueueWithRoutes:error:completionHandler:]";
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
  v23 = v10;
  v19 = v10;
  v20 = v16;
  dispatch_async(callbackQueue, block);
}

- (void)_handleNilNavdTicketOnIsolationQueueWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(RouteLoadingNavigationServiceTask *)self ticket];

  if (!v6)
  {
    v7 = [NSError errorWithDomain:@"com.apple.Maps.RouteLoadingNavigationServiceTask.Error" code:1 userInfo:&off_1016EE4C0];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = self;
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
    v14 = v4;
    v11 = v9;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_createNavigationServiceTicketOnIsolationQueueWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(RouteLoadingNavigationServiceTask *)self routeRequestBuilder];
  v7 = [v6 buildDirectionsRequestDetails];

  v8 = [v7 persistentData];

  if (v8)
  {
    v9 = [[_MapsCustomRouteDirectionsRequestTicket alloc] initWithRequestDetails:v7];
    [(RouteLoadingNavigationServiceTask *)self setTicket:v9];
  }

  else
  {
    v9 = [(RouteLoadingNavigationServiceTask *)self navigationService];
    v10 = [(_MapsCustomRouteDirectionsRequestTicket *)v9 ticketForDirectionsRequest:v7];
    [(RouteLoadingNavigationServiceTask *)self setTicket:v10];
  }

  v11 = [(RouteLoadingNavigationServiceTask *)self ticket];

  if (v11)
  {
    v12 = [(RouteLoadingNavigationServiceTask *)self navigationService];
    [v12 openForClient:self];

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ - Submitting MNNavigationServiceDirectionsRequestTicket", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14 = [(RouteLoadingNavigationServiceTask *)self ticket];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100BC6D24;
    v15[3] = &unk_101660620;
    objc_copyWeak(&v18, buf);
    v16 = v7;
    v17 = v4;
    [v14 submitWithHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    [(RouteLoadingNavigationServiceTask *)self _handleNilNavdTicketOnIsolationQueueWithCompletionHandler:v4];
  }
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(v4);
    *buf = 136446466;
    *&buf[4] = "[RouteLoadingNavigationServiceTask startWithCompletionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v13 = 0;
    v7 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BC72FC;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(v7, block);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v8 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100BC736C;
      v9[3] = &unk_101661090;
      v9[4] = self;
      v10 = v4;
      dispatch_async(v8, v9);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)cancel
{
  v3 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BC7418;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (Result)result
{
  v3 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100BC762C;
  v12 = sub_100BC763C;
  v13 = 0;
  v4 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100BC7644;
  v7[3] = &unk_101661600;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)inProgress
{
  v2 = self;
  v3 = [(RouteLoadingNavigationServiceTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(RouteLoadingNavigationServiceTask *)v2 isolationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100BC7780;
  v6[3] = &unk_101661600;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (void)dealloc
{
  v3 = [(RouteLoadingNavigationServiceTask *)self navigationService];
  [v3 closeForClient:self];

  v4.receiver = self;
  v4.super_class = RouteLoadingNavigationServiceTask;
  [(RouteLoadingNavigationServiceTask *)&v4 dealloc];
}

- (RouteLoadingNavigationServiceTask)initWithNavigationService:(id)a3 routeRequestDetailsBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = RouteLoadingNavigationServiceTask;
  v9 = [(RouteLoadingNavigationServiceTask *)&v21 init];
  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v11, objc_opt_class(), v9];

    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    isolationQueue = v9->_isolationQueue;
    v9->_isolationQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.Maps.RouteLoadingNavigationServiceTask.callback", v17);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v18;

    objc_storeStrong(&v9->_navigationService, a3);
    objc_storeStrong(&v9->_routeRequestBuilder, a4);
  }

  return v9;
}

@end