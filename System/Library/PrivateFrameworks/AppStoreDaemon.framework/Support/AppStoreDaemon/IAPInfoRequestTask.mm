@interface IAPInfoRequestTask
- (void)main;
@end

@implementation IAPInfoRequestTask

- (void)main
{
  v3 = sub_1003FA4F0(XPCRequestToken, 1);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v3;
    v22 = v34;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ Starting legacy request to get IAPs for active account", buf, 0x16u);
  }

  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v6 = options;
  v7 = [(ASDRequestOptions *)v6 adamIds];
  v8 = [v7 count];
  v9 = dispatch_semaphore_create(0);
  v10 = sub_100005CD4();
  if (v8)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100370730;
    v28 = &unk_10051FA18;
    v29 = self;
    v30 = v9;
    v11 = v9;
    sub_100349D3C(v10, v7, v3, &v25);

    v12 = dispatch_time(0, 60000000000);
    v13 = dispatch_semaphore_wait(v11, v12);
    v14 = v30;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003704FC;
    v31[3] = &unk_10051FA18;
    v31[4] = self;
    v32 = v9;
    v11 = v9;
    sub_10034AA74(v10, v3, v31);

    v15 = dispatch_time(0, 60000000000);
    v13 = dispatch_semaphore_wait(v11, v15);
    v14 = v32;
  }

  if (v13)
  {
    v16 = [ASDIAPInfoResponse alloc];
    v17 = [NSError errorWithDomain:ASDErrorDomain code:515 userInfo:0];
    v18 = [v16 initWithError:v17];
    sub_10020F258(self, v18);

    if (self)
    {
      self->super.super._success = 0;
    }

    v20 = [NSError errorWithDomain:@"IAPInfoRequestOperationErrorDomain" code:1 userInfo:0, v25, v26, v27, v28, v29];
    if (self)
    {
      objc_setProperty_atomic_copy(self, v19, v20, 32);
    }

    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      *buf = 138543618;
      v34 = v23;
      v35 = 2114;
      v36 = v3;
      v24 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ Timed out on semaphore", buf, 0x16u);
    }
  }
}

@end