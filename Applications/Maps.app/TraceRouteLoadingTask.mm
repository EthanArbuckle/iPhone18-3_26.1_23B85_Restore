@interface TraceRouteLoadingTask
- (BOOL)inProgress;
- (Result)result;
- (TraceRouteLoadingTask)initWithTracePath:(id)path;
- (void)cancel;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation TraceRouteLoadingTask

- (void)cancel
{
  isolationQueue = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  isolationQueue2 = [(TraceRouteLoadingTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD4C84;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(isolationQueue2, block);
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isolationQueue = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  isolationQueue2 = [(TraceRouteLoadingTask *)self isolationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD4E58;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(isolationQueue2, block);

  if ((v12[3] & 1) == 0)
  {
    isolationQueue3 = [(TraceRouteLoadingTask *)self isolationQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100FD4EC8;
    v8[3] = &unk_101661090;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_async(isolationQueue3, v8);
  }

  _Block_object_dispose(&v11, 8);
}

- (Result)result
{
  isolationQueue = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100FD5568;
  v12 = sub_100FD5578;
  v13 = 0;
  isolationQueue2 = [(TraceRouteLoadingTask *)self isolationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FD5580;
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
  isolationQueue = [(TraceRouteLoadingTask *)self isolationQueue];
  dispatch_assert_queue_not_V2(isolationQueue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue2 = [(TraceRouteLoadingTask *)selfCopy isolationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FD56BC;
  v6[3] = &unk_101661600;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(isolationQueue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (TraceRouteLoadingTask)initWithTracePath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = TraceRouteLoadingTask;
  v6 = [(TraceRouteLoadingTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracePath, path);
    v8 = +[NSBundle mainBundle];
    bundleIdentifier = [v8 bundleIdentifier];
    v10 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", bundleIdentifier, objc_opt_class(), v7];

    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    isolationQueue = v7->_isolationQueue;
    v7->_isolationQueue = v13;
  }

  return v7;
}

@end