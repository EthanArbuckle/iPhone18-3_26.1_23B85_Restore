@interface MFURLRouter
+ (id)log;
- (BOOL)canRouteRequest:(id)a3;
- (MFURLRouter)initWithRoutes:(id)a3;
- (MFURLRoutingDelegate)delegate;
- (id)_prioritizedRoutesForRequest:(id)a3;
- (id)_routeRequest:(id)a3 routes:(id)a4;
- (void)routeRequest:(id)a3;
@end

@implementation MFURLRouter

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002316E8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD738 != -1)
  {
    dispatch_once(&qword_1006DD738, block);
  }

  v2 = qword_1006DD730;

  return v2;
}

- (MFURLRouter)initWithRoutes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFURLRouter;
  v6 = [(MFURLRouter *)&v9 init];
  if (v6)
  {
    v7 = +[MFURLRouter log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Create new router with routes: %@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_routes, a3);
  }

  return v6;
}

- (BOOL)canRouteRequest:(id)a3
{
  v3 = [(MFURLRouter *)self _prioritizedRoutesForRequest:a3];
  v4 = [v3 ef_notEmpty];
  v5 = v4 != 0;

  return v5;
}

- (void)routeRequest:(id)a3
{
  v4 = a3;
  v5 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 ef_publicDescription];
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Router received new request: %{public}@", buf, 0xCu);
  }

  v7 = [(MFURLRouter *)self delegate];
  v8 = v7;
  if (!v7)
  {
    v15 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Router has no delegate. Assuming routing is allowed. request=%{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v9 = [v7 urlRouter:self decidePolicyForRoutingRequest:v4];
  v10 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1002315D8(v9);
    v12 = [v4 ef_publicDescription];
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Router delgate provided policy for request. policy=%{public}@ request=%{public}@", buf, 0x16u);
  }

  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v13 = [NSError mf_blockedURLErrorWithRequest:v4];
      v14 = [EFFuture futureWithError:v13];
      [v4 completeWithResultOfFuture:v14];

      goto LABEL_13;
    }

LABEL_12:
    v16 = +[EFScheduler globalAsyncScheduler];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100231C24;
    v17[3] = &unk_10064C660;
    v17[4] = self;
    v18 = v4;
    [v16 performBlock:v17];
  }

LABEL_13:
}

- (id)_routeRequest:(id)a3 routes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 ef_publicDescription];
      v11 = [v6 ef_publicDescription];
      *buf = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending request to route: %{public}@. request=%{public}@", buf, 0x16u);
    }

    v12 = [v8 routeRequest:v6];
    objc_initWeak(buf, self);
    v13 = +[EFScheduler globalAsyncScheduler];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100231F8C;
    v17[3] = &unk_100656148;
    objc_copyWeak(&v20, buf);
    v18 = v6;
    v19 = v7;
    v14 = [v12 onScheduler:v13 recover:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = [NSError mf_noSuitableRouteErrorWithRequest:v6];
    v14 = [EFFuture futureWithError:v15];
  }

  return v14;
}

- (id)_prioritizedRoutesForRequest:(id)a3
{
  v4 = a3;
  v5 = [(MFURLRouter *)self routes];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100232274;
  v10[3] = &unk_100656170;
  v6 = v4;
  v11 = v6;
  v7 = [v5 ef_filter:v10];

  v8 = [v7 sortedArrayUsingComparator:&stru_1006561B0];

  return v8;
}

- (MFURLRoutingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end