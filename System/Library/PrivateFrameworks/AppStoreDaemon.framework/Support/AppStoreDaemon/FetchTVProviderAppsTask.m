@interface FetchTVProviderAppsTask
- (void)main;
@end

@implementation FetchTVProviderAppsTask

- (void)main
{
  if (self)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1001C69B0;
    v20 = sub_1001C69C0;
    v21 = 0;
    objc_initWeak(&location, self);
    v3 = dispatch_semaphore_create(0);
    v4 = +[VSIdentityProviderInfoCenter sharedCenter];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C69C8;
    v11[3] = &unk_10051B118;
    objc_copyWeak(&v14, &location);
    v11[4] = self;
    v13 = &v16;
    v5 = v3;
    v12 = v5;
    [v4 enqueueIdentityProviderAppsQueryWithCompletion:v11];

    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        logKey = self->_logKey;
        *buf = 138412290;
        v23 = logKey;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Timed out waiting for identity provider apps", buf, 0xCu);
      }
    }

    v8 = v17[5];
    if (v8)
    {
      v9 = v8;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v16, 8);
  }

  [(Task *)self completeWithSuccess];
}

@end