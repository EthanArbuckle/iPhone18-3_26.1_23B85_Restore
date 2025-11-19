@interface FRPrivateDataUpdateCoordinator
- (FRPrivateDataUpdateCoordinator)init;
- (FRPrivateDataUpdateCoordinator)initWithNetworkReachability:(id)a3;
- (void)_updatePrivateDataControllersWithCompletion:(id)a3;
- (void)markAllPrivateDataControllersAsNeedingUpdate;
- (void)networkReachabilityDidChange:(id)a3;
- (void)privateDataControllerDidBecomeDirty:(id)a3;
- (void)setPrivateDataControllers:(id)a3;
- (void)updatePrivateDataControllersWithCompletion:(id)a3;
@end

@implementation FRPrivateDataUpdateCoordinator

- (FRPrivateDataUpdateCoordinator)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRPrivateDataUpdateCoordinator init]";
    v8 = 2080;
    v9 = "FRPrivateDataUpdateCoordinator.m";
    v10 = 1024;
    v11 = 21;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRPrivateDataUpdateCoordinator init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRPrivateDataUpdateCoordinator)initWithNetworkReachability:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FRPrivateDataUpdateCoordinator;
  v5 = [(FRPrivateDataUpdateCoordinator *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(FCAsyncSerialQueue);
    updateQueue = v5->_updateQueue;
    v5->_updateQueue = v6;

    [v4 addObserver:v5];
  }

  return v5;
}

- (void)setPrivateDataControllers:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_privateDataControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9) removeStateObserver:self];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];
  privateDataControllers = self->_privateDataControllers;
  self->_privateDataControllers = v10;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) addStateObserver:{self, v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  [(FRPrivateDataUpdateCoordinator *)self _updatePrivateDataControllersWithCompletion:0];
}

- (void)updatePrivateDataControllersWithCompletion:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  [(FRPrivateDataUpdateCoordinator *)self _updatePrivateDataControllersWithCompletion:v4];
}

- (void)markAllPrivateDataControllersAsNeedingUpdate
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(FRPrivateDataUpdateCoordinator *)self privateDataControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) markAsDirty];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updatePrivateDataControllersWithCompletion:(id)a3
{
  v19 = a3;
  +[NSThread isMainThread];
  v4 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(FRPrivateDataUpdateCoordinator *)self privateDataControllers];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 isDirty])
        {
          v11 = ++qword_1000E6310;
          v12 = FCPrivateDataLog;
          if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = objc_opt_class();
            NSStringFromClass(v14);
            v15 = v5;
            v17 = v16 = self;
            *buf = 138543618;
            v28 = v17;
            v29 = 2048;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "update coordinator will get in line to trigger sync, target=%{public}@, instance=%lu", buf, 0x16u);

            self = v16;
            v5 = v15;
          }

          dispatch_group_enter(v4);
          v18 = [(FRPrivateDataUpdateCoordinator *)self updateQueue];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100052190;
          v20[3] = &unk_1000C5728;
          v20[4] = v10;
          v22 = v11;
          v21 = v4;
          [v18 enqueueBlockForMainThread:v20];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  if (v19)
  {
    if (FCDispatchGroupIsEmpty())
    {
      v19[2](v19);
    }

    else
    {
      dispatch_group_notify(v4, &_dispatch_main_q, v19);
    }
  }
}

- (void)privateDataControllerDidBecomeDirty:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_updatePrivateDataControllersWithCompletion:" object:0];

  [(FRPrivateDataUpdateCoordinator *)self performSelector:"_updatePrivateDataControllersWithCompletion:" withObject:0 afterDelay:1.0];
}

- (void)networkReachabilityDidChange:(id)a3
{
  if ([a3 isNetworkReachable])
  {

    [(FRPrivateDataUpdateCoordinator *)self updatePrivateDataControllersWithCompletion:0];
  }
}

@end