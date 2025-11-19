uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_100001614(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewControllerProxy];
  [v2 dismiss];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_100001BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventType:@"click"];
  [v3 setProperty:@"button" forBodyKey:@"targetType"];
  [v3 setProperty:@"com.apple.AskPermissionUI" forBodyKey:@"hostApp"];
  v4 = *(a1 + 32);
  if (v4 <= 2)
  {
    v5 = off_100018658[v4];
    [v3 setProperty:off_100018640[v4] forBodyKey:@"targetId"];
    [v3 setProperty:v5 forBodyKey:@"actionType"];
  }

  v6 = +[APLogConfig sharedUIServiceConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = *(a1 + 40);
    v10 = objc_opt_class();
    if (v8)
    {
      v11 = AMSLogKey();
      a1 = NSStringFromSelector(*(a1 + 48));
      [NSString stringWithFormat:@"%@: [%@] %@ ", v10, v11, a1];
    }

    else
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      [NSString stringWithFormat:@"%@: %@ ", v10, v11];
    }
    v12 = ;
    v13 = [v3 dictionaryForPosting];
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Created metrics event: %{public}@", buf, 0x16u);

    if (v8)
    {

      v12 = a1;
    }
  }

  v15 = [AMSPromise promiseWithResult:v3];

  return v15;
}

void sub_100002404(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = +[APLogConfig sharedUIServiceConfig];
  v7 = v6;
  if (v4)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v9 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error loading store product view controller. Error: %{public}@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002604;
    block[3] = &unk_1000184F8;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = objc_opt_class();
      v11 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Loaded store product view controller succesfully", buf, 0xCu);
    }
  }
}

void sub_1000028EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100002908(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedUIServiceConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Remote view controller proxy error. Error:%{public}@", &v8, 0x16u);
  }
}

void sub_100002BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002BF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_100002E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002E34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedUIServiceConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v3;
      v8 = v14;
      v9 = "%{public}@: Error updating request. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Updated request succesfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }
}

void sub_1000034C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100003500(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = +[APLogConfig sharedUIServiceConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v7;
      v11 = AMSLogKey();
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      if (v11)
      {
        v14 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: [%@] %@ ", v13, v14, v3];
      }

      else
      {
        v14 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: %@ ", v13, v14];
      }
      v15 = ;
      *buf = 138543362;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Created metrics event, enqueueing…", buf, 0xCu);
      v7 = v30;
      if (v11)
      {

        v15 = v3;
      }
    }

    v22 = [*(a1 + 32) bag];
    v23 = [AMSMetrics internalInstanceUsingBag:v22];
    [v23 enqueueEvent:v6];

    v9 = +[APLogConfig sharedUIServiceConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v24 = AMSLogKey();
      v25 = *(a1 + 32);
      v26 = objc_opt_class();
      if (v24)
      {
        v27 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: [%@] %@ ", v26, v27, a1];
      }

      else
      {
        v27 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: %@ ", v26, v27];
      }
      v28 = ;
      *buf = 138543362;
      v32 = v28;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Enqueued metrics event.", buf, 0xCu);
      if (v24)
      {

        v28 = a1;
      }
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = AMSLogKey();
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      if (v17)
      {
        v20 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: [%@] %@ ", v19, v20, a1];
      }

      else
      {
        v20 = NSStringFromSelector(*(a1 + 40));
        [NSString stringWithFormat:@"%@: %@ ", v19, v20];
      }
      v21 = ;
      v29 = AMSLogableError();
      *buf = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Error creating metrics event: %{public}@", buf, 0x16u);
      if (v17)
      {

        v21 = a1;
      }
    }
  }
}

void sub_100003954(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRequestWithAction:0];
}

void sub_100003998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRequestWithAction:1];
}

Class sub_100003B20(uint64_t a1)
{
  sub_100003B78();
  result = objc_getClass("SKStoreProductViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000D524();
  }

  qword_10001F4B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003B78()
{
  v3[0] = 0;
  if (!qword_10001F4C0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003C78;
    v3[4] = &unk_100018620;
    v3[5] = v3;
    v4 = off_100018608;
    v5 = 0;
    qword_10001F4C0 = _sl_dlopen();
  }

  v0 = qword_10001F4C0;
  v1 = v3[0];
  if (!qword_10001F4C0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100003C78(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001F4C0 = result;
  return result;
}

void *sub_100003CEC(uint64_t a1)
{
  v2 = sub_100003B78();
  result = dlsym(v2, "SKStoreProductParameterITunesItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001F4C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000A9CC(id a1)
{
  v1 = qword_10001F4D8;
  qword_10001F4D8 = &off_100019B98;
}

void sub_10000C6AC(id a1)
{
  v1 = +[APLogConfig sharedDaemonConfig];
  if (!v1)
  {
    v1 = +[APLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received SIGTERM, stopping daemon", v3, 2u);
  }

  exit(0);
}

void sub_10000CFD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v8 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v30 = 138543618;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v6;
      v15 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to authenticate user. Error: %{public}@", &v30, 0x16u);
    }

LABEL_26:

    v23 = APError();
    v22 = 0;
    goto LABEL_27;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 stringValue], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v25 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no DSID", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v9)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v27 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no password", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  v17 = +[APLogConfig sharedDaemonConfig];
  v12 = v17;
  if (!v11)
  {
    if (!v17)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      v30 = 138543362;
      v31 = objc_opt_class();
      v29 = v31;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no username", &v30, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v17)
  {
    v12 = +[APLogConfig sharedConfig];
  }

  v18 = [v12 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v30 = 138543362;
    v31 = objc_opt_class();
    v20 = v31;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticated user succesfully", &v30, 0xCu);
  }

  v21 = [v7 stringValue];
  v22 = [[User alloc] initWithDSID:v21 username:v11 password:v9 biometricsToken:0];

  v23 = 0;
LABEL_27:
  (*(*(a1 + 32) + 16))(*(a1 + 32), v22, v23);
}

void sub_10000D500()
{
  dlerror();
  abort_report_np();
  sub_10000D524();
}