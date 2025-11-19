@interface TraceRouteLoadingTask
- (BOOL)inProgress;
- (Result)result;
- (TraceRouteLoadingTask)initWithTracePath:(id)a3;
- (void)cancel;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation TraceRouteLoadingTask

- (void)cancel
{
  v3 = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(TraceRouteLoadingTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD4C84;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v5);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [(TraceRouteLoadingTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD4E58;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(v6, block);

  if ((v12[3] & 1) == 0)
  {
    v7 = [(TraceRouteLoadingTask *)self isolationQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100FD4EC8;
    v8[3] = &unk_101661090;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }

  _Block_object_dispose(&v11, 8);
}

- (Result)result
{
  v3 = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100FD5568;
  v12 = sub_100FD5578;
  v13 = 0;
  v4 = [(TraceRouteLoadingTask *)self isolationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FD5580;
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
  v3 = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(TraceRouteLoadingTask *)v2 isolationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FD56BC;
  v6[3] = &unk_101661600;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (TraceRouteLoadingTask)initWithTracePath:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = TraceRouteLoadingTask;
  v6 = [(TraceRouteLoadingTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracePath, a3);
    v8 = +[NSBundle mainBundle];
    v9 = [v8 bundleIdentifier];
    v10 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v9, objc_opt_class(), v7];

    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    isolationQueue = v7->_isolationQueue;
    v7->_isolationQueue = v13;
  }

  return v7;
}

@end