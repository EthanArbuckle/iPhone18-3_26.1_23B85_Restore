void sub_100000F10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v5;
      v7 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Download queue request returned error: %{public}@", &v9, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 1024;
    LODWORD(v12) = a2;
    v7 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Download queue request complete with result: %{BOOL}d", &v9, 0x12u);
    goto LABEL_6;
  }
}

void sub_10000183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      v8 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Download failed. Error: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v5 items];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Download succeeded. Response items: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000019FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001A14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v7;
      v9 = v11;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to lookup AMSMetricsIdentifierStore due to error: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100001B20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001BD4;
  v8[3] = &unk_100004248;
  v9 = v3;
  v5 = v3;
  v6 = [v4 thenWithBlock:v8];

  return v6;
}

id sub_100001BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeAccountMatchStatus:1];
  v4 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = [v3 generateEventFieldsForKeys:v5];

  v7 = [v6 mutableCopy];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"clientId"];
  }

  v9 = [AMSPromise promiseWithResult:v7];

  return v9;
}