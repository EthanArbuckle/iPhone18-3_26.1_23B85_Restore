void sub_10034AA74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10034AB3C;
    v8[3] = &unk_10051C078;
    v8[4] = a1;
    v9 = v5;
    v10 = v6;
    sub_100005D90(v7, v8);
  }
}

void sub_10034AB3C(void *a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100349D24;
  v36 = sub_100349D34;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100349D24;
  v30 = sub_100349D34;
  v31 = 0;
  v2 = +[ActiveAccountObserver activeAccount];
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = a1[5];
      v6 = [v2 hashedDescription];
      *buf = 138412802;
      v39 = v4;
      v40 = 2114;
      v41 = v5;
      v42 = 2114;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Get IAPs for account: %{public}@", buf, 0x20u);
    }

    v7 = *(a1[4] + 8);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10034AFD8;
    v22[3] = &unk_1005244C8;
    v24 = &v26;
    v8 = v2;
    v23 = v8;
    v25 = &v32;
    [v7 readUsingSession:v22];
    if (v27[5])
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = a1[5];
        v12 = [v27[5] count];
        v13 = [v8 hashedDescription];
        *buf = 138413058;
        v39 = v10;
        v40 = 2114;
        v41 = v11;
        v42 = 2048;
        v43 = v12;
        v44 = 2112;
        v45 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Got %li IAPs for account: %@", buf, 0x2Au);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = a1[5];
        v20 = v33[5];
        *buf = 138412802;
        v39 = v18;
        v40 = 2114;
        v41 = v19;
        v42 = 2114;
        v43 = v20;
        v21 = v18;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs with error: %{public}@", buf, 0x20u);
      }
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = a1[5];
      *buf = 138412546;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      v17 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs - no active account DSID", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_10034AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10034AFD8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 ams_DSID];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = sub_100300D70(v4, v5);

  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_10034B07C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10034B144;
    v8[3] = &unk_10051C078;
    v8[4] = a1;
    v9 = v5;
    v10 = v6;
    sub_100005D90(v7, v8);
  }
}

void sub_10034B144(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = +[ActiveAccountObserver activeAccount];
    v6 = v5;
    if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      if (*(v1 + 24) == 1)
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = objc_opt_class();
          *&buf[12] = 2114;
          *&buf[14] = v3;
          v9 = *&buf[4];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Ignoring update request - currently updating", buf, 0x16u);
        }

        v10 = sub_1001C1764(5, 0);
        v4[2](v4, v10);
      }

      else
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = sub_100349D24;
        v34 = sub_100349D34;
        v35 = 0;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = sub_100349D24;
        v28 = sub_100349D34;
        v29 = 0;
        v12 = *(v1 + 8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10034C620;
        v20[3] = &unk_1005244C8;
        v22 = &v30;
        v13 = v6;
        v21 = v13;
        v23 = &v24;
        [v12 readUsingSession:v20];
        if (v25[5])
        {
          v14 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = v25[5];
            *buf = 138412546;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            v19 = v17;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: Error getting last updated date: %@", buf, 0x16u);
          }
        }

        if (v31[5])
        {
          v15 = +[BagService appstoredService];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10034C6C4;
          v37 = &unk_100524590;
          v42 = &v30;
          v38 = v1;
          v39 = v13;
          v40 = v3;
          v41 = v4;
          [v15 bagWithCompletionHandler:buf];
        }

        else
        {
          sub_10034C51C(v1, v13, v3, v4);
        }

        _Block_object_dispose(&v24, 8);
        _Block_object_dispose(&v30, 8);
      }
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2114;
        *&buf[14] = v3;
        v16 = *&buf[4];
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Ignoring update request - there is no active account DSID", buf, 0x16u);
      }

      v4[2](v4, 0);
    }
  }
}

void sub_10034B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10034B5E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10034B6A8;
    v8[3] = &unk_10051C078;
    v8[4] = a1;
    v9 = v5;
    v10 = v6;
    sub_100005D90(v7, v8);
  }
}

void sub_10034B6A8(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100349D24;
  v20[4] = sub_100349D34;
  v21 = 0;
  v2 = +[ActiveAccountObserver activeAccount];
  v3 = v2;
  if (v2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = sub_100349D24;
    v24 = sub_100349D34;
    v25 = 0;
    v4 = *(*(a1 + 32) + 8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10034B9C0;
    v16[3] = &unk_1005244C8;
    v18 = buf;
    v17 = v2;
    v19 = v20;
    [v4 readUsingSession:v16];
    if (*(*&buf[8] + 40))
    {
      v5 = +[BagService appstoredService];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10034BC5C;
      v12[3] = &unk_100524518;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v15 = buf;
      v12[4] = v6;
      v13 = v7;
      v14 = *(a1 + 48);
      [v5 bagWithCompletionHandler:v12];
    }

    else
    {
      sub_10034BA64(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      v11 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to update IAPs - no active account DSID", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(v20, 8);
}

void sub_10034B984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10034B9C0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 ams_DSID];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = sub_1003019F8(v4, v5);

  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_10034BA64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[ActiveAccountObserver activeAccount];
    v8 = v7;
    if (v7 && ([v7 ams_DSID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = [v8 hashedDescription];
        v16 = 138412802;
        v17 = v11;
        v18 = 2114;
        v19 = v5;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%@]: %{public}@ Starting update for account: %{public}@", &v16, 0x20u);
      }

      sub_10034C51C(a1, v8, v5, v6);
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = v5;
        v15 = v17;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Ignoring update request - there is no active account DSID", &v16, 0x16u);
      }

      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_10034BC5C(double *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(*(*(a1 + 7) + 8) + 40)];
  v6 = v5;
  v7 = v3;
  objc_opt_self();
  [v7 doubleForKey:@"iap-daap/forced-refresh-frequency-minutes" defaultValue:10080.0];
  v9 = v8;

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v22 = 138543618;
    v23 = objc_opt_class();
    v24 = 2048;
    v25 = v9;
    v11 = v23;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@]: Force refresh interval: %.0f", &v22, 0x16u);
  }

  if (v6 <= v9 * 60.0)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = a1[5];
      v18 = *(*(*(a1 + 7) + 8) + 40);
      v19 = v16;
      if (v18)
      {
        [v18 timeIntervalSince1970];
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = 138412802;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      v26 = 2048;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%@]: %{public}@ Update not needed. Last updated: %{time_t}ld", &v22, 0x20u);
    }

    (*(*(a1 + 6) + 16))();
  }

  else
  {
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v14 = *(a1 + 6);

    sub_10034BA64(v12, v13, v14);
  }
}

void sub_10034C050(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1003FA4F0(XPCRequestToken, 1);
  sub_10034BA64(v2, v3, *(a1 + 40));
}

void sub_10034C0B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 ams_DSID];
  v6 = sub_100300D70(v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v12 = [*(a1 + 32) ams_DSID];
  v9 = sub_100301C50(v4, v12);

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10034C184(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 ams_DSID];
  v5 = sub_100301C50(v4, v8);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10034C288(uint64_t a1)
{
  v2 = +[ActiveAccountObserver activeAccount];
  if (v2)
  {
    v3 = sub_1003FA4F0(XPCRequestToken, 1);
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = [v2 hashedDescription];
      *buf = 138412802;
      v13 = v5;
      v14 = 2114;
      v15 = v3;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Refreshing IAPs after account change for: %{public}@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10034C42C;
    v10[3] = &unk_10051B230;
    v10[4] = v8;
    v11 = v3;
    v9 = v3;
    sub_10034B07C(v8, v9, v10);
  }
}

void sub_10034C42C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v8 = 138412802;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      v7 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to refresh after active account changed error: %{public}@", &v8, 0x20u);
    }
  }
}

void sub_10034C51C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = +[BagService appstoredService];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10034CD68;
    v11[3] = &unk_10051B920;
    v14 = v9;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    [v10 recentBagWithCompletionHandler:v11];
  }
}

void sub_10034C620(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 ams_DSID];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = sub_1003019F8(v4, v5);

  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_10034C6C4(double *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSDate);
  [v4 timeIntervalSinceDate:*(*(*(a1 + 8) + 8) + 40)];
  v6 = v5;
  v7 = v3;
  objc_opt_self();
  [v7 doubleForKey:@"iap-daap/update-polling-frequency-secs" defaultValue:3600.0];
  v9 = v8;

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v23 = 138543618;
    v24 = objc_opt_class();
    v25 = 2048;
    v26 = v9;
    v11 = v24;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@]: Update polling frequency interval: %.0f", &v23, 0x16u);
  }

  if (v6 <= v9)
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = a1[6];
      v19 = *(*(*(a1 + 8) + 8) + 40);
      v20 = v17;
      if (v19)
      {
        [v19 timeIntervalSince1970];
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = 138412802;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2048;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%@]: %{public}@ Polling update not needed. Last updated: %{time_t}ld", &v23, 0x20u);
    }

    (*(*(a1 + 7) + 16))();
  }

  else
  {
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v14 = *(a1 + 6);
    v15 = *(a1 + 7);

    sub_10034C51C(v12, v13, v14, v15);
  }
}

void sub_10034C92C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[4];
    v7 = a2;
    v8 = v7;
    if (v6)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 1;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_100349D24;
      v37 = sub_100349D34;
      v38 = 0;
      v9 = v6[1];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10034D7D0;
      v44 = &unk_100524608;
      *&v45 = v7;
      *(&v45 + 1) = &v39;
      v46 = &v33;
      [v9 modifyUsingTransaction:buf];
      if (*(v40 + 24) == 1 && (notify_post("com.apple.appstored.IAPInfoDatabaseUpdated"), (v40[3] & 1) != 0))
      {
        v6 = 0;
        v10 = 1;
      }

      else
      {
        v6 = v34[5];
        v11 = v6;
        v10 = *(v40 + 24);
      }

      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v10 = 0;
    }

    v12 = v6;
    v13 = ASDLogHandleForCategory();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v17 = a1[5];
        v16 = a1[6];
        v18 = v15;
        v19 = [v16 hashedDescription];
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v44 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%@]: %{public}@ Completed update for account: %{public}@", buf, 0x20u);
      }

      (*(a1[8] + 16))();
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v30 = a1[5];
        v29 = a1[6];
        v31 = v28;
        v32 = [v29 hashedDescription];
        *buf = 138413058;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        *&buf[22] = 2114;
        v44 = v32;
        LOWORD(v45) = 2114;
        *(&v45 + 2) = v12;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to import for account %{public}@ error: %{public}@", buf, 0x2Au);
      }

      v21 = a1[8];
      v22 = sub_1001C1764(0, v12);
      (*(v21 + 16))(v21, v22);
    }
  }

  else
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v25 = a1[5];
      v24 = a1[6];
      v26 = v23;
      v27 = [v24 hashedDescription];
      *buf = 138413058;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2114;
      v44 = v27;
      LOWORD(v45) = 2114;
      *(&v45 + 2) = v5;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed update for acccount %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(a1[8] + 16))();
  }

  *(a1[4] + 24) = 0;
}

void sub_10034CD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10034CD68(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v22 = *(*(a1 + 56) + 16);

    v22();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = a2;
    v10 = v6;
    if (v4)
    {
      v35 = 0;
      v11 = v7;
      v12 = v8;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_100349D24;
      v40 = sub_100349D34;
      v41 = 0;
      v13 = *(v4 + 8);
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_10034C184;
      v27 = &unk_100524568;
      v29 = &v36;
      v14 = v11;
      v28 = v14;
      v30 = &v35;
      [v13 readUsingSession:&v24];
      v15 = sub_100407C30(IAPInfoUpdateRequestContext, v37[5], v14, v12);

      _Block_object_dispose(&v36, 8);
      v16 = v35;
      if (v15)
      {
        *(v4 + 24) = 1;
        v17 = [KeepAlive keepAliveWithName:@"com.apple.appstoredaemon.IAPInfoManager.update"];
        v23 = v8;
        v18 = v7;
        v19 = sub_1003053CC([IAPInfoUpdateRequest alloc], v9, v15);
        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_10034D08C;
        v27 = &unk_1005245E0;
        v28 = v15;
        v29 = v4;
        v30 = v14;
        v31 = v12;
        v32 = v9;
        v20 = v10;
        v33 = v17;
        v34 = v20;
        v21 = v17;
        sub_100305468(v19, &v24);

        v7 = v18;
        v8 = v23;
      }

      else
      {
        *(v4 + 24) = 0;
        (*(v10 + 2))(v10, v16);
      }
    }
  }
}

void sub_10034D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10034D08C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    *(*(a1 + 40) + 24) = 0;
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v33 = v30;
      v34 = [v31 hashedDescription];
      *buf = 138413058;
      *&buf[4] = v30;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      *&buf[22] = 2114;
      v55 = v34;
      LOWORD(v56) = 2114;
      *(&v56 + 2) = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed update for acccount %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 32, 1);
    }

    v10 = Property;
    v11 = [v10 intValue];
    v12 = [v5 intValue];

    if (v11 >= v12)
    {
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      LOBYTE(v51) = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v55 = sub_100349D24;
      *&v56 = sub_100349D34;
      *(&v56 + 1) = 0;
      v28 = *(*(a1 + 40) + 8);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10034D708;
      v43[3] = &unk_100524608;
      v45 = &v48;
      v44 = *(a1 + 48);
      v46 = buf;
      [v28 modifyUsingTransaction:v43];
      if (*(*&buf[8] + 40))
      {
        v29 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = [*(a1 + 48) ams_DSID];
          v37 = [*(a1 + 48) hashedDescription];
          v38 = *(*&buf[8] + 40);
          *v60 = 138413058;
          *&v60[4] = v35;
          *&v60[12] = 2114;
          *&v60[14] = v36;
          *&v60[22] = 2114;
          v61 = v37;
          LOWORD(v62) = 2114;
          *(&v62 + 2) = v38;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@]: Update call success, but failed updating DB for account: %{public}@ authenticated account: %{public}@ error: %{public}@", v60, 0x2Au);
        }
      }

      *(*(a1 + 40) + 24) = 0;
      (*(*(a1 + 80) + 16))();

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v48, 8);
    }

    else
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 80);
      v41 = v13;
      v42 = v15;
      v39 = v16;
      v40 = v17;
      if (v14)
      {
        v47 = 0;
        v18 = v41;
        v19 = v42;
        *v60 = 0;
        *&v60[8] = v60;
        *&v60[16] = 0x3032000000;
        v61 = sub_100349D24;
        *&v62 = sub_100349D34;
        *(&v62 + 1) = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x3032000000;
        v51 = sub_100349D24;
        v52 = sub_100349D34;
        v53 = 0;
        v20 = *(v14 + 8);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10034C0B8;
        v55 = &unk_100524540;
        *(&v56 + 1) = v60;
        v21 = v18;
        v57 = &v48;
        v58 = &v47;
        *&v56 = v21;
        [v20 readUsingSession:buf];
        v22 = sub_1001C71B4(IAPInfoItemsRequestContext, *(*&v60[8] + 40), v49[5], v21, v19);

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(v60, 8);

        v23 = v47;
        if (v22)
        {
          *(v14 + 24) = 1;
          v24 = [KeepAlive keepAliveWithName:@"com.apple.appstoredaemon.IAPInfoManager.update"];
          v25 = sub_100226550([IAPInfoItemsRequest alloc], v39, v22);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10034C92C;
          v55 = &unk_1005245B8;
          *&v56 = v14;
          *(&v56 + 1) = v19;
          v57 = v21;
          v26 = v40;
          v58 = v24;
          v59 = v26;
          v27 = v24;
          sub_1002265FC(v25, buf);
        }

        else
        {
          *(v14 + 24) = 0;
          (*(v40 + 2))(v40, v23);
        }
      }
    }
  }
}

void sub_10034D6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = [*(a1 + 32) ams_DSID];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = sub_1001C65CC(v3, v4, v5, &obj);

  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) &= v7;

  return *(*(*(a1 + 40) + 8) + 24);
}

uint64_t sub_10034D7D0(void *a1, void *a2)
{
  v4 = a2;
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 16, 1);
  }

  v6 = Property;
  v7 = [v6 ams_DSID];

  v9 = a1[4];
  if (v9 && (v9[8] & 1) != 0)
  {
    v10 = objc_getProperty(v9, v8, 32, 1);
    v11 = *(a1[6] + 8);
    obj = *(v11 + 40);
    v12 = sub_1001C5BA8(v4, v10, v7, &obj);
    objc_storeStrong((v11 + 40), obj);
    *(*(a1[5] + 8) + 24) &= v12;
  }

  else
  {
    v14 = *(a1[6] + 8);
    v33 = *(v14 + 40);
    v15 = sub_1001C6334(v4, v7, &v33);
    objc_storeStrong((v14 + 40), v33);
    *(*(a1[5] + 8) + 24) &= v15;
  }

  v16 = a1[4];
  if (v16)
  {
    v16 = objc_getProperty(v16, v13, 24, 1);
  }

  v17 = v16;
  v18 = *(a1[6] + 8);
  v32 = *(v18 + 40);
  v19 = sub_1001C5EB8(v4, v17, v7);
  objc_storeStrong((v18 + 40), v32);
  *(*(a1[5] + 8) + 24) &= v19;

  v21 = a1[4];
  if (v21)
  {
    v21 = objc_getProperty(v21, v20, 40, 1);
  }

  v22 = v21;
  v23 = *(a1[6] + 8);
  v31 = *(v23 + 40);
  v24 = sub_1001C6418(v4, v22, v7, &v31);
  objc_storeStrong((v23 + 40), v31);
  *(*(a1[5] + 8) + 24) &= v24;

  v25 = +[NSDate date];
  v26 = *(a1[6] + 8);
  v30 = *(v26 + 40);
  v27 = sub_1001C65CC(v4, v25, v7, &v30);
  objc_storeStrong((v26 + 40), v30);
  *(*(a1[5] + 8) + 24) &= v27;

  v28 = *(*(a1[5] + 8) + 24);
  return v28;
}

void sub_10034DBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10034DBE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = sub_100214AEC(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_10034DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10034DD5C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 mode])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 mode];
    *a4 = 1;
  }
}

void sub_10034DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10034DF24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10034DF3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_10034DFE0(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = off_100506480;
  if (!a2)
  {
    v3 = off_100506398;
  }

  v4 = *v3;
  v5 = [a1 connection];
  v6 = sub_1002D3F5C(v4, v5, 0);

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 countOfEntities];
    v11 = @"legacy";
    v15 = 138544130;
    v16 = v8;
    v17 = 2048;
    if (a2)
    {
      v12 = @"modern";
    }

    else
    {
      v12 = @"legacy";
    }

    v18 = v10;
    if (!a2)
    {
      v11 = @"modern";
    }

    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting data for %ld %{public}@ update(s) as we've switched to %{public}@ updates", &v15, 0x2Au);
  }

  v13 = [v6 deleteAllEntities];
  return v13;
}

id sub_10034E15C(id result, double a2)
{
  if (result)
  {
    v2 = result;
    v3 = [[NSNumber alloc] initWithDouble:a2];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"install_date" value:v3 comparisonType:3];
    v5 = [v2 connection];
    v6 = sub_1002D3F5C(AppUpdateEntity, v5, v4);

    v7 = [v6 deleteAllEntities];
    return v7;
  }

  return result;
}

BOOL sub_10034E224(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = [v3 count];
      v8 = [v3 firstObject];
      *buf = 138543874;
      v30 = v5;
      v31 = 2048;
      v32 = v7;
      v33 = 2114;
      v34 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting %lu update(s) of type %{public}@", buf, 0x20u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if ([v14 databaseID])
          {
            v15 = objc_alloc([objc_opt_class() databaseEntityClass]);
            v16 = [v14 databaseID];
            v17 = [a1 connection];
            v18 = [v15 initWithPersistentID:v16 onConnection:v17];

            if (([v18 deleteFromDatabase] & 1) == 0)
            {
              v19 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v20 = objc_opt_class();
                *buf = 138543618;
                v30 = v20;
                v31 = 2114;
                v32 = v18;
                v21 = v20;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to delete update %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v3 = v23;
  }

  return a1 != 0;
}

uint64_t sub_10034E4D8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:a2];
  v4 = [a1 connection];
  v5 = sub_1002D3F5C(AppUpdateEntity, v4, v3);

  if ([v5 countOfEntities] >= 1 && objc_msgSend(v5, "deleteAllEntities"))
  {
    v6 = +[UpdatesManager sharedManager];
    [v6 noteUpdatesStateChanged:@"Apps uninstalled" logKey:0];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_TtC9appstored26UpdatesDatabaseMergeResult *sub_10034E5BC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10034E944;
    v34 = sub_10034E954;
    v35 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = +[_TtC9appstored20MediaAPIUpdateEntity itemIDPropertyKey];
    v44[0] = v10;
    v11 = +[_TtC9appstored20MediaAPIUpdateEntity updateStatePropertyKey];
    v44[1] = v11;
    v12 = [NSArray arrayWithObjects:v44 count:2];

    v13 = [a1 connection];
    v14 = sub_1002D4C68(_TtC9appstored14MediaAPIUpdate, v13, 0);

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10034E95C;
    v28[3] = &unk_10051B038;
    v15 = v9;
    v29 = v15;
    [v14 enumerateMemoryEntitiesWithProperties:v12 usingBlock:v28];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10034E9D8;
    v20[3] = &unk_100524630;
    v24 = &v30;
    v16 = v15;
    v21 = v16;
    v22 = a1;
    v27 = a3;
    v23 = v8;
    v25 = &v40;
    v26 = &v36;
    [v7 enumerateObjectsUsingBlock:v20];
    if (*(v41 + 24) == 1)
    {
      if (v37[3] > 0)
      {
        a3 = 1;
      }

      else
      {
        a3 = a3;
      }
    }

    v17 = [_TtC9appstored26UpdatesDatabaseMergeResult alloc];
    v18 = [(UpdatesDatabaseMergeResult *)v17 initWithAvailableUpdateCount:v37[3] shouldNotifyOfChanges:a3 bundleIDs:v31[5] result:*(v41 + 24)];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_10034E8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10034E944(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10034E95C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 itemID];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSNumber numberWithLongLong:v3];
    [v4 setObject:v6 forKey:v5];
  }
}

void sub_10034E9D8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 itemID];
  v8 = [v6 bundleID];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithLongLong:v7];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = sub_10034EC58(*(a1 + 40), v6, v11, *(a1 + 48), *(a1 + 80), 1);

  v13 = [_TtC9appstored20MediaAPIUpdateEntity alloc];
  if (v11)
  {
    v14 = [v11 databaseID];
    v15 = [*(a1 + 40) connection];
    v16 = [(MediaAPIUpdateEntity *)v13 initWithPersistentID:v14 onConnection:v15];

    *(*(*(a1 + 64) + 8) + 24) = [(SQLiteEntity *)v16 setValuesWithDictionary:v12];
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to set values %{public}@ on entity: %{public}@", &v22, 0x16u);
      }
    }

    ++*(*(*(a1 + 72) + 8) + 24);
    v18 = *(a1 + 32);
    v19 = [NSNumber numberWithLongLong:v7];
    [v18 removeObjectForKey:v19];
  }

  else
  {
    v20 = [*(a1 + 40) connection];
    v21 = [(MediaAPIUpdateEntity *)v13 initWithPropertyValues:v12 onConnection:v20];

    if (!v21)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    ++*(*(*(a1 + 72) + 8) + 24);
  }
}

id sub_10034EC58(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v56 = a4;
  if (a1)
  {
    v54 = a5;
    if (v11)
    {
      v13 = v11[2];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 mutableCopy];

    v16 = +[NSNull null];
    [v15 setObject:v16 forKey:@"install_date"];

    v17 = sub_10023E51C(v11, @"store_software_version_id");
    if (!v17)
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v53 = sub_10023E644(v11, @"bundle_id");
        *buf = 138543362;
        v58 = v53;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Expected evid missing for %{public}@", buf, 0xCu);
      }
    }

    v55 = sub_10023E51C(v11, @"store_item_id");
    if (!v55)
    {
LABEL_17:
      v29 = objc_opt_new();
      v30 = sub_10023E0F8(v11, @"current_version_release_date");
      v31 = v30;
      if (v30)
      {
        [v30 timeIntervalSinceReferenceDate];
        v32 = [NSNumber numberWithDouble:?];
        sub_1001D7988(v29, v32, ASDUpdateItemMetricsAvailableDate);
      }

      v33 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      sub_1001D7988(v29, v33, ASDUpdateItemMetricsDiscoveryDate);

      if (v29)
      {
        v34 = [v29[1] copy];
      }

      else
      {
        v34 = 0;
      }

      [v15 setObject:v34 forKeyedSubscript:@"metrics_data"];

      if (!v12)
      {
        goto LABEL_34;
      }

      v35 = a6;
      +[NSDate timeIntervalSinceReferenceDate];
      v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:round(v36)];
      [v15 setObject:v37 forKeyedSubscript:@"timestamp"];

      v38 = v12;
      v39 = sub_10023E0F8(v12, @"update_state");
      v40 = [v39 integerValue];

      if ((v40 - 1) >= 2)
      {
        if ((v40 - 3) >= 2)
        {
          v12 = v38;
          if (v40 == 5)
          {
            v46 = sub_10023E51C(v38, @"store_software_version_id");
            v47 = sub_10023E51C(v11, @"store_software_version_id");
            if (([v46 isEqualToNumber:v47]& 1) == 0)
            {
              [v15 setObject:&off_100548130 forKeyedSubscript:@"update_state"];
            }

            goto LABEL_33;
          }
        }

        else
        {
          v12 = v38;
          if (v54)
          {
            if (v35)
            {
              v41 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
              v42 = [v15 objectForKeyedSubscript:v41];
              v43 = [v42 integerValue];

              v44 = [NSNumber numberWithInteger:v43 | 1];
              v45 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
              [v15 setObject:v44 forKeyedSubscript:v45];
            }

            else
            {
              [v15 setObject:&__kCFBooleanTrue forKey:@"is_background"];
            }

            v46 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v50 = objc_opt_class();
              v51 = v50;
              v52 = sub_10023E644(v11, @"bundle_id");
              *buf = 138543618;
              v58 = v50;
              v59 = 2114;
              v60 = v52;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hiding update for %{public}@ following server sync", buf, 0x16u);
            }

            goto LABEL_28;
          }
        }

LABEL_34:
        v48 = [v15 copy];

        goto LABEL_35;
      }

      v46 = [NSNumber numberWithInteger:0];
      [v15 setObject:v46 forKey:@"update_state"];
LABEL_28:
      v12 = v38;
LABEL_33:

      goto LABEL_34;
    }

    if (v17)
    {
      v19 = [v56 objectForKeyedSubscript:v55];
      v20 = [v19 longLongValue];
      v21 = v20 == [v17 longLongValue];

      if (a6)
      {
LABEL_11:
        v22 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
        [v15 objectForKeyedSubscript:v22];
        v24 = v23 = a6;
        v25 = [v24 integerValue];

        a6 = v23;
        v26 = 2;
        if (!v21)
        {
          v26 = 0;
        }

        v27 = [NSNumber numberWithInteger:v25 & 0xFFFFFFFFFFFFFFFDLL | v26];
        v28 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
        [v15 setObject:v27 forKeyedSubscript:v28];

        goto LABEL_16;
      }
    }

    else
    {
      v21 = 0;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    v27 = [NSNumber numberWithBool:v21];
    [v15 setObject:v27 forKeyedSubscript:@"is_code_signature_update"];
LABEL_16:

    goto LABEL_17;
  }

  v48 = 0;
LABEL_35:

  return v48;
}

uint64_t sub_10034F274(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, char *a7, void *a8)
{
  v31 = a2;
  v29 = a4;
  v14 = a5;
  if (a1)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 1;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_10034E944;
    v47 = sub_10034E954;
    v48 = objc_opt_new();
    v15 = objc_opt_new();
    v59[0] = @"store_item_id";
    v59[1] = @"update_state";
    v16 = [NSArray arrayWithObjects:v59 count:2];
    v17 = [a1 connection];
    v18 = sub_1002D4C68(AppUpdateMemoryEntity, v17, 0);

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10034F6E8;
    v41[3] = &unk_10051B038;
    v19 = v15;
    v42 = v19;
    [v18 enumerateMemoryEntitiesWithProperties:v16 usingBlock:v41];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10034F750;
    v33[3] = &unk_100524658;
    v37 = &v43;
    v20 = v19;
    v34 = v20;
    v35 = a1;
    v36 = v14;
    v38 = &v53;
    v39 = &v49;
    v40 = a3;
    [v31 enumerateObjectsUsingBlock:v33];
    v21 = v54;
    v22 = *(v54 + 24);
    v23 = (a3 == 2) & v22;
    if (v23 == 1)
    {
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        *buf = 138543362;
        v58 = v25;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Syncing updates with server ", buf, 0xCu);
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10034F914;
      v32[3] = &unk_100524680;
      v32[4] = a1;
      v32[5] = &v53;
      [v20 enumerateKeysAndObjectsUsingBlock:v32];
      v21 = v54;
      v22 = *(v54 + 24);
    }

    if (a7 && (v22 & 1) != 0)
    {
      if (v50[3] > 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = v23;
      }

      *a7 = v27;
      v22 = *(v21 + 24);
    }

    if (a6 && (v22 & 1) != 0)
    {
      *a6 = v50[3];
    }

    if (a8 != 0 && (v22 & 1) != 0)
    {
      *a8 = [v44[5] copy];
      v22 = *(v54 + 24);
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void sub_10034F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10034F6E8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 itemID];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void sub_10034F750(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v15 = [v6 itemID];
  v7 = [v6 bundleID];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v7];
  v8 = [*(a1 + 32) objectForKey:v15];
  v9 = sub_10034EC58(*(a1 + 40), v6, v8, *(a1 + 48), *(a1 + 80) == 2, 0);

  v10 = [AppUpdateEntity alloc];
  if (v8)
  {
    v11 = [v8 databaseID];
    v12 = [*(a1 + 40) connection];
    v13 = [(SQLiteEntity *)v10 initWithPersistentID:v11 onConnection:v12];

    *(*(*(a1 + 64) + 8) + 24) = [(SQLiteEntity *)v13 setValuesWithDictionary:v9];
    *a4 = *(*(*(a1 + 64) + 8) + 24) ^ 1;
    ++*(*(*(a1 + 72) + 8) + 24);
    [*(a1 + 32) removeObjectForKey:v15];
  }

  else
  {
    v14 = [*(a1 + 40) connection];
    v13 = [(SQLiteEntity *)v10 initWithPropertyValues:v9 onConnection:v14];

    if (!v13)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    ++*(*(*(a1 + 72) + 8) + 24);
  }
}

void sub_10034F914(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v6 = sub_10023E0F8(v12, @"update_state");
  v7 = [v6 integerValue];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    v8 = [AppUpdateEntity alloc];
    v9 = [v12 databaseID];
    v10 = [*(a1 + 32) connection];
    v11 = [(SQLiteEntity *)v8 initWithPersistentID:v9 onConnection:v10];

    *(*(*(a1 + 40) + 8) + 24) = [(SQLiteEntity *)v11 deleteFromDatabase];
    *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }
}

uint64_t sub_10034FA04(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (!v9)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to record update download time without a bundle ID", v20, 2u);
    }

    goto LABEL_12;
  }

  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v9];
  v12 = [a1 connection];
  v13 = sub_1002D3DF0(AppUpdateEntity, v12, v11);

  if (![(UpdateItemMetrics *)v13 existsInDatabase])
  {

LABEL_12:
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v14 = sub_1002153E4(v13);
  if (!v14)
  {
    v14 = objc_opt_new();
  }

  [v7 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  sub_1001D7988(v14, v15, ASDUpdateItemMetricsDownloadStartDate);

  [v8 timeIntervalSinceReferenceDate];
  v16 = [NSNumber numberWithDouble:?];
  sub_1001D7988(v14, v16, ASDUpdateItemMetricsDownloadCompleteDate);

  if (v14)
  {
    v17 = [v14[1] copy];
  }

  else
  {
    v17 = 0;
  }

  [(UpdateItemMetrics *)v13 setValue:v17 forProperty:@"metrics_data"];

  v18 = 1;
LABEL_14:

  return v18;
}

id sub_10034FC0C(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    v6 = [v5 bundleID];
    v7 = [v5 itemID];
    v8 = [v5 purchaseID];
    v9 = [v5 isDiscretionary];
    v10 = [v5 logKey];

    v11 = sub_10034FCDC(v4, a2, v6, v7, v8, v9 ^ 1, v10);
    return v11;
  }

  return result;
}

id sub_10034FCDC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (a1)
  {
    if (v14)
    {
      v46 = a6;
      v17 = [SQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToValue:v14];
      v18 = [a1 connection];
      v19 = sub_1002D3DF0(AppUpdateEntity, v18, v17);

      if (v19 && (-[UpdateItemMetrics valueForProperty:](v19, "valueForProperty:", @"bundle_id"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v13 isEqualToString:v20], v20, v21))
      {
        v22 = v13;
        v23 = v16;
        objc_opt_self();
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v48 = v23;
          v49 = 2114;
          v50 = v22;
          v51 = 2080;
          v52 = &aAvailable[16 * a2 - a2];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Transitioning to state %s", buf, 0x20u);
        }

        v25 = objc_alloc_init(NSMutableDictionary);
        v26 = v25;
        if (v15)
        {
          [v25 setObject:v15 forKeyedSubscript:@"purchase_id"];
        }

        if ((a2 - 3) <= 1)
        {
          v27 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
          v28 = sub_1002153E4(v19);
          if (!v28)
          {
            v28 = objc_opt_new();
          }

          v29 = &ASDUpdateItemMetricsPurchaseStartDate;
          if (a2 != 3)
          {
            v29 = &ASDUpdateItemMetricsPurchaseCompleteDate;
          }

          v44 = v27;
          sub_1001D7988(v28, v27, *v29);
          if (v28)
          {
            v30 = [v28[1] copy];
          }

          else
          {
            v30 = 0;
          }

          [v26 setObject:v30 forKeyedSubscript:@"metrics_data"];
        }

        v45 = v16;
        if (+[UpdatesManager shouldUseModernUpdates])
        {
          v31 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
          v32 = [v26 objectForKeyedSubscript:v31];
          v33 = [v32 integerValue];

          v34 = [NSNumber numberWithInteger:v33 & 0xFFFFFFFFFFFFFFFELL | v46 ^ 1u];
          v35 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
          [v26 setObject:v34 forKeyedSubscript:v35];
        }

        else
        {
          v34 = [NSNumber numberWithInt:v46 ^ 1u];
          [v26 setObject:v34 forKeyedSubscript:@"is_background"];
        }

        v40 = [NSNumber numberWithInteger:a2];
        [v26 setObject:v40 forKeyedSubscript:@"update_state"];

        v39 = [(UpdateItemMetrics *)v19 setValuesWithDictionary:v26];
        v16 = v45;
      }

      else
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v48 = objc_opt_class();
          v49 = 2114;
          v50 = v13;
          v51 = 2114;
          v52 = v14;
          v37 = v16;
          v38 = v48;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update does not exist for purchase: %{public}@ with storeID: %{public}@", buf, 0x20u);

          v16 = v37;
        }

        v39 = 0;
      }
    }

    else
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v48 = objc_opt_class();
        v49 = 2114;
        v50 = v13;
        v42 = v16;
        v43 = v48;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Could not find update for purchase: %{public}@ due to missing storeID", buf, 0x16u);

        v16 = v42;
      }

      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t sub_100350204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_17;
  }

  v7 = sub_100340328(v5, @"bundle_id");
  v8 = [ApplicationProxy proxyForBundleID:v7];
  v9 = [v5 valueForProperty:@"install_date"];
  v10 = sub_100340154(v5, @"store_software_version_id");
  v11 = [v10 unsignedLongLongValue];

  if (v8)
  {
    if (sub_1003D11A0(v8, v6))
    {
      v12 = [v8[15] iTunesMetadata];
      v13 = [v12 versionIdentifier];

      if (v9)
      {
        if (v11 <= v13)
        {
          v14 = +[NSDate date];
          [v14 timeIntervalSinceDate:v9];
          v16 = v15;

          if (v16 > 2592000.0)
          {
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 138543618;
              v27 = @"app was updated more than 30 days ago";
              v28 = 2114;
              v29 = v7;
LABEL_13:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing update because the app is %{public}@: %{public}@", &v26, 0x16u);
              goto LABEL_14;
            }

            goto LABEL_14;
          }
        }

        v21 = [v8[15] iTunesMetadata];
        v22 = [v21 versionIdentifier];

        if (v11 <= v22)
        {
          if (sub_1003402E8(v5, @"update_state") != 1)
          {
LABEL_26:
            v23 = &off_100548148;
            goto LABEL_27;
          }

LABEL_24:
          v19 = 0;
          goto LABEL_16;
        }
      }

      else if (v11 <= v13)
      {
        v24 = +[NSDate date];
        [v5 setValue:v24 forProperty:@"install_date"];

        if (sub_1003402E8(v5, @"update_state") == 1)
        {
LABEL_28:
          v25 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 138543362;
            v27 = v7;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Fixing update state for installed update %{public}@", &v26, 0xCu);
          }

          goto LABEL_15;
        }

        goto LABEL_26;
      }

      if (sub_1003402E8(v5, @"update_state"))
      {
        v23 = &off_100548130;
LABEL_27:
        [v5 setValue:v23 forProperty:@"update_state"];
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v18 = @"not eligible for updates";
  }

  else
  {
    v18 = @"no longer installed";
  }

  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543618;
    v27 = v18;
    v28 = 2114;
    v29 = v7;
    goto LABEL_13;
  }

LABEL_14:

  [v5 deleteFromDatabase];
LABEL_15:
  v19 = 1;
LABEL_16:

LABEL_17:
  return v19;
}

void sub_100350634(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (!a2)
  {
    *a3 = 19002;
    v4 = *a4;
    *a4 = &stru_1005246C0;
  }
}

void sub_100350658(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS purchase_history_apps (pid INTEGER PRIMARY KEY, app_icon_artwork_url TEXT, app_icon_artwork_token TEXT, app_icon_compatible_artwork_url TEXT, bundle_id TEXT, content_rating_flags INTEGER, circular_app_icon_artwork_url TEXT, circular_app_icon_artwork_token TEXT, circular_app_icon_compatible_artwork_url, TEXT, date_purchased DATETIME, developer_name TEXT, family_shared INTEGER, first_party INTEGER, is_ios_binary_macos_available INTEGER, is_ios_binary_macos_compatible INTEGER, has_messages_extension INTEGER, hidden INTEGER, hidden_from_springboard INTEGER, icon_url_template TEXT, is_32_bit_only INTEGER, is_eligible_for_games_app INTEGER, is_preorder INTEGER, is_verified_for_macos INTEGER, long_title TEXT, mac_app_required_capabilities JSON, media_kind INTEGER, oval_icon_url_template TEXT, preflight_package_url URL, product_url URL, purchaser_dsid INTEGER, redownload_params TEXT, required_capabilities JSON, requires_rosetta INTEGER, runs_on_apple_silicon INTEGER, runs_on_intel INTEGER, store_item_id INTEGER, supports_ipad INTEGER, supports_iphone INTEGER, supports_mac INTEGER, supports_reality_device INTEGER, purchase_token INTEGER, locker_item_id INTEGER, genre_id INTEGER, genre_name TEXT, watch_app_delivered_in_ios_app INTEGER, watch_app_runs_independently INTEGER, watch_app_watch_only INTEGER, supports_layered_image INTEGER, has_p3 INTEGER, title TEXT, circular_icon_url TEXT, ros_app_required_capabilities JSON, ios_to_ros_release_date DATETIME, opted_in_for_ros_eligibility INTEGER, currently_opted_in_for_ros_eligibility INTEGER, min_os_for_ros_eligibility INTEGER, UNIQUE(purchaser_dsid, store_item_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS purchase_history_db_properties (key TEXT PRIMARY KEY, value TEXT)", 1, 0);
    v2 = v3;
  }
}

uint64_t sub_1003507EC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___TFAppleWatch__osVersion;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___TFAppleWatch__model;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100350A5C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100350A74(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

InstallAppReviewAppsTask *sub_100352B70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [InstallAppReviewAppsTask alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100352C8C;
  v10[3] = &unk_1005246E0;
  v10[4] = v3;
  v5 = sub_10036FDEC(v2, v10);

  v6 = v5;
  if (v4)
  {
    v11.receiver = v4;
    v11.super_class = InstallAppReviewAppsTask;
    v4 = objc_msgSendSuper2(&v11, "init");
    if (v4)
    {
      v7 = [v6 copy];
      installs = v4->_installs;
      v4->_installs = v7;
    }
  }

  return v4;
}

AppInstall *sub_100352C8C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [v2 bundleID];
  [v3 setObject:v4 forKeyedSubscript:@"bundle_id"];

  v5 = +[NSUUID UUID];
  [v3 setObject:v5 forKeyedSubscript:@"external_id"];

  v6 = [v2 artworkURL];
  [v3 setObject:v6 forKeyedSubscript:@"artwork_url"];

  v7 = [v2 itemID];
  [v3 setObject:v7 forKeyedSubscript:@"item_id"];

  v8 = [v2 itemName];
  [v3 setObject:v8 forKeyedSubscript:@"bundle_name"];

  v9 = [v2 messagesArtworkURL];
  [v3 setObject:v9 forKeyedSubscript:@"messages_artwork_url"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 hasMessagesExtension]);
  [v3 setObject:v10 forKeyedSubscript:@"has_messages_extension"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isLaunchProhibited]);
  [v3 setObject:v11 forKeyedSubscript:@"launch_prohibited"];

  [v3 setObject:&off_100548190 forKeyedSubscript:@"bootstrapped"];
  if ([v2 isBeta])
  {
    v12 = &off_100548190;
  }

  else
  {
    v12 = &off_1005481A8;
  }

  [v3 setObject:v12 forKeyedSubscript:@"source_type"];
  [v3 setObject:&off_1005481C0 forKeyedSubscript:@"priority"];
  [v3 setObject:@"APR" forKeyedSubscript:@"log_code"];
  v13 = [v2 storeMetadata];
  v14 = v13;
  if (v13)
  {
    v15 = sub_1003E364C(v13, 0);
    [v3 setObject:v15 forKeyedSubscript:@"store_metadata"];
  }

  v16 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithPropertyValues:v3];
  v17 = [v2 backgroundAssetMetadata];
  if (os_variant_has_internal_content())
  {
    v19 = [v2 bundleID];
    v20 = [BAApplicationConfigurationOverrides asd_overriddenDictionaryForBundleIdentifier:v19 startingDictionary:v17];

    v17 = v20;
  }

  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v18, v17, 56);
  }

  v21 = v2;
  objc_opt_self();
  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = [v21 packageDPInfo];
  [v22 setObject:v23 forKeyedSubscript:@"dp_info"];

  v24 = [v21 packageSINF];
  [v22 setObject:v24 forKeyedSubscript:@"sinf"];

  v25 = [v21 initialODRSize];
  [v22 setObject:v25 forKeyedSubscript:@"initial_odr_size"];

  v26 = [v21 backgroundAssetMetadata];
  [v22 setObject:v26 forKeyedSubscript:@"background_asset_metadata"];

  v27 = [v21 clearHashes];
  if (![v27 count])
  {
    goto LABEL_16;
  }

  v28 = [v21 cryptHashes];
  if (![v28 count])
  {

    goto LABEL_16;
  }

  v29 = [v21 chunkSize];
  v30 = [v29 integerValue];

  if (v30 < 1)
  {
    goto LABEL_17;
  }

  v31 = [v21 cryptHashes];
  [v22 setObject:v31 forKeyedSubscript:@"hash_array"];

  v32 = [v21 clearHashes];
  [v22 setObject:v32 forKeyedSubscript:@"clear_hash_array"];

  v33 = [v21 chunkSize];
  [v22 setObject:v33 forKeyedSubscript:@"hash_size"];

  if ([v21 hashType])
  {
    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 hashType]);
    [v22 setObject:v27 forKeyedSubscript:@"hash_type"];
LABEL_16:

    goto LABEL_17;
  }

  [v22 setObject:&off_1005481C0 forKeyedSubscript:@"hash_type"];
LABEL_17:
  if ([v21 packageFormat])
  {
    v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 packageFormat]);
    [v22 setObject:v34 forKeyedSubscript:@"archive_type"];
  }

  else
  {
    [v22 setObject:&off_1005481C0 forKeyedSubscript:@"archive_type"];
  }

  v35 = [v21 packageURL];
  [v22 setObject:v35 forKeyedSubscript:@"package_url"];

  [v22 setObject:&off_1005481A8 forKeyedSubscript:@"package_type"];
  v36 = [v21 packageSize];
  [v22 setObject:v36 forKeyedSubscript:@"bytes_total"];

  v37 = [(SQLiteMemoryEntity *)[AppPackage alloc] initWithPropertyValues:v22];
  if (v37)
  {
    v46 = v37;
    v39 = [NSArray arrayWithObjects:&v46 count:1];
    if (v16)
    {
      objc_setProperty_atomic_copy(v16, v38, v39, 48);
    }
  }

  v40 = [v21 onDemandResourceManifest];

  if (v40)
  {
    v41 = sub_100208FBC();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100353790;
    v43[3] = &unk_10051F2A8;
    v44 = v21;
    v45 = v16;
    [v41 modifyUsingTransaction:v43];
  }

  return v16;
}

id sub_1003533B8(id *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = [a1[6] copy];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10035369C(id a1, AppInstall *a2)
{
  v2 = sub_10023E0F8(a2, @"external_id");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[NSUUID alloc] initWithUUIDString:v2];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100353724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSOrderedSet orderedSetWithArray:*(*(a1 + 32) + 40)];
  v5 = sub_100207ABC(v3, v4);

  return 1;
}

BOOL sub_100353790(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 onDemandResourceManifest];
  v6 = [*(a1 + 32) bundleID];
  v7 = sub_100408EB0(*(a1 + 40));
  v8 = sub_10021A63C(v4, v5, v6, v7);

  return v8;
}

id sub_10035387C()
{
  objc_opt_self();
  if (qword_1005AAC90 != -1)
  {
    dispatch_once(&qword_1005AAC90, &stru_100524720);
  }

  v0 = qword_1005AAC88;

  return v0;
}

void sub_1003538D4(id a1)
{
  v1 = objc_alloc_init(StoreKitExternalNotificationService);
  v2 = qword_1005AAC88;
  qword_1005AAC88 = v1;
}

void sub_1003539C0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[GaletteStore shared];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100353B3C;
        v10[3] = &unk_100524748;
        v10[4] = v8;
        [v9 modifyUsingTransaction:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_100353B48(uint64_t a1)
{
  if (a1)
  {
    v2 = +[BagService appstoredService];
    v8[0] = @"storekit-external-purchases-app-launch-sheet";
    v8[1] = @"countryCode";
    v8[2] = @"currentStorefrontCountryCodeISO3A";
    v3 = [NSArray arrayWithObjects:v8 count:3];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100353CC4;
    v7[3] = &unk_1005232C0;
    v7[4] = a1;
    v4 = [v2 addChangeObserverLimitedToKeys:v3 observer:v7];

    v5 = +[BagService appstoredService];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100353D74;
    v6[3] = &unk_100521D88;
    v6[4] = a1;
    [v5 upToDateBagNoTimeoutWithCompletionHandler:v6];
  }
}

void sub_100353CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100354CEC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100353D74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100353CCC(*(a1 + 32), a2);
  }
}

void sub_100353E7C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    *buf = 138543874;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v81 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ presentSheetIfNeededForProcessHandle: %{public}@ for client: %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    dispatch_assert_queue_V2(*(v7 + 8));
    v8 = sub_1003D3F18(AppDefaultsManager, @"LastKnownGaletteValues");
    v9 = [v8 objectForKeyedSubscript:@"fe"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 BOOLValue];

      if (v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = +[BagService appstoredService];
      v24 = [v23 lastBag];
      v25 = [v24 BOOLForKey:@"storekit-external-purchases-app-launch-sheet" defaultValue:0];

      if (v25)
      {
LABEL_6:
        v11 = [*(a1 + 40) bundleIdentifier];
        if (!v11)
        {
          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            v65 = *(a1 + 32);
            *buf = 138543362;
            *&buf[4] = v65;
            _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%{public}@ Process handle has no bundle identifier", buf, 0xCu);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_69;
        }

        v78 = 0;
        v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v78];
        v67 = v78;
        v13 = *(a1 + 48);
        v14 = *(a1 + 32);
        v68 = v12;
        v15 = v14;
        v16 = v15;
        if (v13)
        {
          if (v68)
          {
            v17 = v15;
            v18 = sub_1003D3F18(AppDefaultsManager, @"LastKnownGaletteValues");
            v19 = [v18 objectForKeyedSubscript:@"c2"];
            v20 = [v18 objectForKeyedSubscript:@"c3"];
            v21 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v17;
              *&buf[12] = 2114;
              *&buf[14] = v19;
              *&buf[22] = 2114;
              v81 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Found cached values: %{public}@ %{public}@", buf, 0x20u);
            }

            if (v19 && v20)
            {
              *buf = v19;
              *&buf[8] = v20;
              v22 = [NSArray arrayWithObjects:buf count:2];
            }

            else
            {
              v28 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = v17;
                *&buf[12] = 2114;
                *&buf[14] = v19;
                *&buf[22] = 2114;
                v81 = v20;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking bag directly; cached values incomplete: %{public}@ %{public}@", buf, 0x20u);
              }

              v29 = +[BagService appstoredService];
              v30 = [v29 lastBag];

              v31 = [v30 stringForKey:@"countryCode"];

              v32 = [v30 stringForKey:@"currentStorefrontCountryCodeISO3A"];

              if (v31 && v32)
              {
                *buf = v31;
                *&buf[8] = v32;
                v22 = [NSArray arrayWithObjects:buf count:2];
              }

              else
              {
                v33 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v17;
                  *&buf[12] = 2114;
                  *&buf[14] = v31;
                  *&buf[22] = 2114;
                  v81 = v32;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@ Expected 2 but missing at least one country code: %{public}@ %{public}@", buf, 0x20u);
                }

                v22 = 0;
              }

              v20 = v32;
              v19 = v31;
            }

            if (v22)
            {
              v34 = [v68 asd_galetteMode];
              if (v34)
              {
                if (v34 == 1)
                {
                  v37 = [v68 asd_firstExternalLinkURLForCountryCodes:v22];
                  v38 = v37 == 0;

                  if (!v38)
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  if (v34 != 2)
                  {

                    goto LABEL_52;
                  }

                  v35 = [v68 asd_canMakeExternalPurchasesForAnyCountryCodeInCountryCodes:v22];

                  if (v35)
                  {
LABEL_52:
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x2020000000;
                    LOBYTE(v81) = 0;
                    v42 = +[GaletteStore shared];
                    v75[0] = _NSConcreteStackBlock;
                    v75[1] = 3221225472;
                    v75[2] = sub_100354AA0;
                    v75[3] = &unk_100524770;
                    v77 = buf;
                    v43 = v11;
                    v76 = v43;
                    [v42 readUsingSession:v75];

                    if (*(*&buf[8] + 24))
                    {
                      if (![*(*(a1 + 48) + 16) containsObject:v43])
                      {
                        [*(*(a1 + 48) + 16) addObject:v43];
                        (*(*(a1 + 56) + 16))();
                        v46 = objc_opt_new();
                        v47 = [v68 iTunesMetadata];
                        v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v47 storeItemIdentifier]);
                        [v46 setObject:v48 forKeyedSubscript:@"adamId"];

                        v49 = [v68 iTunesMetadata];
                        v50 = [v49 artistName];
                        v51 = v50;
                        if (!v50)
                        {
                          v51 = [v68 signerOrganization];
                        }

                        [v46 setObject:v51 forKeyedSubscript:@"developerName"];
                        if (!v50)
                        {
                        }

                        v52 = +[ACAccountStore ams_sharedAccountStore];
                        v53 = [v52 ams_activeiTunesAccount];
                        v54 = [v53 ams_DSID];
                        v55 = [v54 stringValue];
                        [v46 setObject:v55 forKeyedSubscript:@"dsId"];

                        v56 = [v46 objectForKeyedSubscript:@"dsId"];
                        v57 = [NSNumber numberWithInt:v56 != 0];
                        [v46 setObject:v57 forKeyedSubscript:@"isSignedIn"];

                        v59 = [ExternalNotificationConfiguration alloc];
                        Property = *(a1 + 32);
                        if (Property)
                        {
                          Property = objc_getProperty(Property, v58, 32, 1);
                        }

                        v61 = Property;
                        v62 = sub_1001D1AB8(&v59->super.isa, v46, v61, *(a1 + 40));

                        v63 = sub_1001D1BC8([StoreKitExternalNotificationPresentationTask alloc], v62);
                        objc_initWeak(location, v63);
                        objc_initWeak(&from, *(a1 + 48));
                        v69[0] = _NSConcreteStackBlock;
                        v69[1] = 3221225472;
                        v69[2] = sub_100354AD8;
                        v69[3] = &unk_100524798;
                        objc_copyWeak(&v72, location);
                        objc_copyWeak(&v73, &from);
                        v70 = v43;
                        v71 = *(a1 + 32);
                        [v63 setCompletionBlock:v69];
                        v64 = *(*(a1 + 48) + 24);
                        if (v64)
                        {
                          [*(v64 + 8) addOperation:v63];
                        }

                        objc_destroyWeak(&v73);
                        objc_destroyWeak(&v72);
                        objc_destroyWeak(&from);
                        objc_destroyWeak(location);

                        goto LABEL_67;
                      }

                      v44 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                      {
                        v66 = *(a1 + 32);
                        LODWORD(location[0]) = 138543362;
                        *(location + 4) = v66;
                        _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%{public}@ Not presenting sheet due to existing sheet presentation", location, 0xCu);
                      }
                    }

                    (*(*(a1 + 56) + 16))();
LABEL_67:

                    _Block_object_dispose(buf, 8);
LABEL_68:

LABEL_69:
                    return;
                  }
                }

LABEL_48:
                v40 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = *(a1 + 32);
                  *buf = 138543362;
                  *&buf[4] = v41;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Application not eligible to show sheet", buf, 0xCu);
                }

                (*(*(a1 + 56) + 16))();
                goto LABEL_68;
              }

              v39 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                *&buf[4] = v17;
                _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%{public}@ Application doesn't have the required entitlements", buf, 0xCu);
              }
            }

            else
            {
              v36 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v17;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get current storefront", buf, 0xCu);
              }

              v22 = 0;
            }
          }

          else
          {
            v22 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              *&buf[4] = v16;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "%{public}@ No application found", buf, 0xCu);
            }
          }
        }

        goto LABEL_48;
      }
    }
  }

  v26 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a1 + 32);
    *buf = 138543362;
    *&buf[4] = v45;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}@ Not presenting sheet due to bag value", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100354A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a29);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_100354AA0(uint64_t a1, void *a2)
{
  result = [a2 needsThirdPartyPurchaseConfirmationWithBundleID:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100354AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  [v3[2] removeObject:*(a1 + 32)];
  if (WeakRetained && (WeakRetained[24] & 1) != 0)
  {
    v4 = +[GaletteStore shared];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100354CE0;
    v12[3] = &unk_100524748;
    v13 = *(a1 + 32);
    [v4 modifyUsingTransaction:v12];

    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ task presentation finished successfully", buf, 0xCu);
    }

    v7 = v13;
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      if (WeakRetained)
      {
        Property = objc_getProperty(WeakRetained, v8, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v11 = Property;
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ task presentation failed with error: %{public}@", buf, 0x16u);
    }
  }
}

void sub_100354CEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    v3 = *(a1 + 40);
    dispatch_assert_queue_V2(v2);
    v4 = [v3 BOOLForKey:@"storekit-external-purchases-app-launch-sheet" defaultValue:0];
    v5 = [v3 stringForKey:@"countryCode"];
    v6 = [v3 stringForKey:@"currentStorefrontCountryCodeISO3A"];

    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to cache current feature value from the bag as it was missing values", buf, 2u);
      }
    }

    else
    {
      v10[0] = @"fe";
      v8 = [NSNumber numberWithBool:v4];
      *buf = v8;
      v12 = v5;
      v10[1] = @"c2";
      v10[2] = @"c3";
      v13 = v6;
      v9 = [NSDictionary dictionaryWithObjects:buf forKeys:v10 count:3];

      sub_1003D4024(AppDefaultsManager, v9, @"LastKnownGaletteValues");
    }
  }
}

void sub_100355274(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = +[ACAccountStore ams_sharedAccountStore];
    v6 = [v5 ams_activeiTunesAccount];

    if (v6)
    {
      *(v3 + 96) = [v6 ams_isDemoAccount];
      if (*(v3 + 96) == 1)
      {
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 ams_DSID];
          v15 = 138543362;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using retail demo account: %{public}@", &v15, 0xCu);
        }
      }
    }
  }

  v9 = sub_100227468();
  v10 = [v9 isConnected];

  if (v10)
  {
    sub_10035549C(*(a1 + 32), @"Startup with network");
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating listener to initialize network dependent items", &v15, 2u);
    }

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = *(a1 + 32);
    v14 = sub_100227468();
    [v12 addObserver:v13 selector:"_handleNetworkStateDidChangeNotification:" name:@"NetworkStateDidChangeNotification" object:v14];
  }

  sub_100355594(*(a1 + 32), v4, 0);

  sub_100355AB8(*(a1 + 32));
}

void sub_10035549C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    v5 = +[BagService appstoredService];
    v6 = *(a1 + 64);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10035FD44;
    v8[3] = &unk_1005247F0;
    v8[4] = a1;
    v9 = v4;
    v10 = v3;
    v7 = v4;
    [v5 recentBagOnQueue:v6 completionHandler:v8];
  }
}

void sub_100355594(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[AMSDevice deviceGUID];
    v8 = sub_1003D4D04();

    v37 = v6;
    if (v8)
    {
      v9 = sub_1003D4CC8();
      if ([v9 isEqualToString:v7])
      {
        v10 = sub_1003D4D40();
        v11 = v10;
        if (v10 && ([v10 timeIntervalSinceNow], v12 > 129600.0))
        {
          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Arcade] Resetting device ID because its creation date is invalid", buf, 2u);
          }

          v14 = @"DateMismatch";
        }

        else
        {
          v16 = [v5 integerForKey:@"ocelot-device-id-days-valid" defaultValue:366];
          if (!v16)
          {
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Arcade] Got invalid value for days valid, using default value", buf, 2u);
            }

            v16 = 366;
          }

          v18 = 0;
          if (v11 && (v16 & 0x8000000000000000) == 0)
          {
            v19 = 730;
            if (v16 < 0x2DA)
            {
              v19 = v16;
            }

            v20 = [v11 dateByAddingTimeInterval:(86400 * v19)];
            v18 = v20;
            if (v20)
            {
              [v20 timeIntervalSinceNow];
              if (v21 >= 0.0)
              {
                goto LABEL_38;
              }
            }
          }

          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Arcade] Resetting device ID because it has expired", buf, 2u);
          }

          v14 = @"Expired";
        }
      }

      else
      {
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Arcade] Resetting device ID because of device mismatch", buf, 2u);
        }

        v14 = @"DeviceMismatch";
      }

      v15 = v5;
    }

    else
    {
      v15 = v5;
      v14 = @"None";
    }

    v9 = +[NSDate date];
    v11 = sub_1003D4D40();
    v18 = sub_1003D4CC8();
    v23 = +[NSUUID UUID];
    v24 = [v23 UUIDString];
    sub_1003D4EEC(AppDefaultsManager, v24);

    sub_1003D4E84(AppDefaultsManager, v7);
    sub_1003D4F54(AppDefaultsManager, v9);
    if (!v18)
    {
      goto LABEL_37;
    }

    if (v11)
    {
      v25 = +[NSCalendar currentCalendar];
      v26 = [v25 components:16 fromDate:v11 toDate:v9 options:0];
      v27 = [v26 day];
    }

    else
    {
      v27 = 0;
    }

    v39[0] = @"deviceIdentifierRefreshed";
    v28 = [NSNumber numberWithInteger:v27];
    v39[1] = @"refreshReason";
    v40[0] = v28;
    v40[1] = v14;
    v29 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    sub_1003F25C4(Analytics, v29, 30);

    if (os_variant_has_internal_content())
    {
      v6 = v37;
      if (sub_1003D516C())
      {
        v30 = [AMSDialogRequest alloc];
        v31 = [NSString stringWithFormat:@"The Arcade device identifier rolled over after %ld days.", v27];
        v32 = [v30 initWithTitle:@"Arcade Device ID Rollover" message:v31];

        if (v37)
        {
          v33 = v37[9];
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;
        v35 = [v34 description];
        [v32 setLogKey:v35];

        v36 = [AMSDialogAction actionWithTitle:@"OK"];
        [v32 setDefaultAction:v36];

        sub_1003124D4(InteractiveRequestPresenter, v32, 0);
      }

      v5 = v15;
    }

    else
    {
LABEL_37:
      v5 = v15;
      v6 = v37;
    }

LABEL_38:
  }
}

void sub_100355AB8(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1001E5E74();
    v2 = sub_1001E66CC(v1);

    v3 = +[ACAccountStore ams_sharedAccountStore];
    v4 = [v3 ams_activeiTunesAccount];

    v5 = [v2 lastObject];
    v7 = v5;
    if (v5)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!v4)
      {
        v15 = 0;
        goto LABEL_18;
      }

      [v2 count];
      v9 = 0;
    }

    else
    {
      v10 = objc_getProperty(v5, v6, 8, 1);
      v11 = sub_1001F0558(v10);
      v12 = [v4 ams_DSID];
      v14 = v12;
      if (v11 == v12)
      {
        v9 = 1;
        v16 = objc_getProperty(v7, v13, 8, 1);
        if (sub_1001F0600(v16) != 2)
        {
          v18 = objc_getProperty(v7, v17, 8, 1);
          v9 = sub_1001F0600(v18) == 1;
        }
      }

      else
      {
        v9 = 0;
      }

      if ([v2 count] && v9)
      {
        v15 = 1;
LABEL_18:
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *v29 = v15;
          *&v29[4] = 2048;
          *&v29[6] = [v2 count];
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[AccountEvent] Not adding an initial account event hasInitialEventForCurrentAccount: %d eventCount: %ld", buf, 0x12u);
        }

LABEL_23:

        return;
      }
    }

    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v4 ams_DSID];
      *buf = 138543874;
      *v29 = v21;
      *&v29[8] = 1024;
      *&v29[10] = v9;
      v30 = 2048;
      v31 = [v2 count];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[AccountEvent] There is not an initial account event for account: %{public}@. Attempting to add one. hasInitialEventForCurrentAccount: %{BOOL}d eventCount: %ld", buf, 0x1Cu);
    }

    v22 = sub_1001F03F8([AccountEvent alloc], v4);
    v19 = +[NSDate date];
    sub_10023E000(v22, v19, @"active_start_time");
    sub_10023E000(v22, &off_100548208, @"event_type");
    v23 = sub_10036C90C();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100361CC8;
    v25[3] = &unk_10051C838;
    v26 = v22;
    v27 = v4;
    v24 = v22;
    [v23 modifyUsingTransaction:v25];

    goto LABEL_23;
  }
}

id sub_100355E58()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100355EFC;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AACA0 != -1)
  {
    dispatch_once(&qword_1005AACA0, block);
  }

  v0 = qword_1005AAC98;

  return v0;
}

void sub_100355EFC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAC98;
  qword_1005AAC98 = v1;
}

uint64_t sub_100355F34(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10035600C;
  v3[3] = &unk_10051DFF0;
  v3[4] = a1;
  v3[5] = &v4;
  sub_1003D31A8(ApplicationProxy, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100355FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10035600C(uint64_t a1, void *a2)
{
  result = sub_10035604C(*(a1 + 32), a2);
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

BOOL sub_10035604C(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = v3 && ([v3[15] isPlaceholder] & 1) == 0 && (sub_1003D2BDC(v4) & 1) != 0;
  }

  return a1;
}

id sub_1003560A8(double a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_self();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v15)
  {
    v16 = *v31;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = sub_10023AC10(v18);
        v20 = [v19 isEqualToString:v10];

        if (v20)
        {
          v21 = sub_10023ACB8(v18);
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          [v11 timeIntervalSinceReferenceDate];
          v25 = v24;
          v26 = v23 - v24;

          v27 = ASDLogHandleForCategory();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
          if (vabdd_f64(v23, v25) < a1)
          {
            if (v28)
            {
              *buf = 138412802;
              v35 = v13;
              v36 = 2112;
              v37 = v10;
              v38 = 2048;
              v39 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%@][ArcadeAppLaunchEvent][%@] Found candidate with time difference: %f", buf, 0x20u);
            }

            v15 = v18;
            goto LABEL_17;
          }

          if (v28)
          {
            *buf = 138412802;
            v35 = v13;
            v36 = 2112;
            v37 = v10;
            v38 = 2048;
            v39 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%@][ArcadeAppLaunchEvent][%@] Skipping candidate with time difference: %f", buf, 0x20u);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v15;
}

void sub_100356338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100356408;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_100356408(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_100386854(MetricsContext, 0);
  sub_10035647C(v2, v3, v4, *(a1 + 48));
}

void sub_10035647C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v11 = v8[9];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      *buf = 138412546;
      v18 = v12;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%@] Flushing metrics with reason: %{public}@", buf, 0x16u);
    }

    v13 = +[BagService appstoredService];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10035F7F4;
    v14[3] = &unk_10051D998;
    v16 = v9;
    v15 = v8;
    [v13 recentBagNoTimeoutWithCompletionHandler:v14];
  }
}

void sub_100356614(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003566E0;
    v6[3] = &unk_10051ED90;
    v6[4] = a1;
    v7 = v3;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_1003566E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_100356830(*(a1 + 32), v3))
  {
    sub_1003568CC(*(a1 + 32), 4, v3, *(a1 + 40));
  }

  else
  {
    v4 = sub_10038680C(MetricsContext, 4);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] User not opted-in to list app events", &v7, 0xCu);
    }

    if (*(a1 + 40))
    {
      v6 = ASDErrorWithTitleAndMessage();
      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t sub_100356830(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003BBF50();
    if ([v4 isHRNMode])
    {
      v5 = 0;
    }

    else
    {
      v6 = v3;
      v7 = v6;
      if (v6)
      {
        v5 = [v6 BOOLForKey:@"arcade-payout-enabled" defaultValue:1];
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1003568CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_15;
  }

  v9 = sub_100386854(MetricsContext, a2);
  v10 = v9;
  if (a2 == 4)
  {
    v11 = [v7 integerForKey:@"ocelot-payout-qualifying-duration-seconds" defaultValue:60];
    if (v10)
    {
      *(v10 + 80) = v11;
LABEL_6:
      *(v10 + 8) = 1;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  v12 = objc_opt_new();
  v13 = sub_10035ECFC(a1, v10, v7);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = sub_1003D6D24(*(*(&v27 + 1) + 8 * v17));
        [v12 addObject:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = *(a1 + 56);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10035FA28;
  v22[3] = &unk_10051C710;
  v23 = v12;
  v24 = 0;
  v25 = v10;
  v26 = v8;
  v20 = v10;
  v21 = v12;
  dispatch_async(v19, v22);

LABEL_15:
}

id sub_100356B10(uint64_t a1, char a2)
{
  objc_opt_self();
  v3 = +[NSMutableArray array];
  v4 = sub_10036C90C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100356BEC;
  v7[3] = &unk_1005247C8;
  v9 = a2;
  v5 = v3;
  v8 = v5;
  [v4 readUsingSession:v7];

  return v5;
}

void sub_100356BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = 0;
  }

  else
  {
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"has_been_posted" equalToValue:&off_1005481D8];
    v15 = v5;
    v6 = [NSArray arrayWithObjects:&v15 count:1];
    v4 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];
  }

  v7 = [v3 connection];
  v14 = @"timestamp";
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v9 = objc_opt_class();
  v10 = sub_1002D4974(SQLiteEntity, v7, v4, v8, v9);

  v11 = sub_100268030();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100356DD0;
  v12[3] = &unk_10051B038;
  v13 = *(a1 + 32);
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v12];
}

void sub_100356DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100356EA8;
    v6[3] = &unk_10051ED90;
    v6[4] = a1;
    v7 = v3;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_100356EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10038680C(MetricsContext, 3);
  if (sub_1001F36A0(*(a1 + 32)))
  {
    sub_1003568CC(*(a1 + 32), 3, v3, *(a1 + 40));
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] User not opted-in to list app events", &v7, 0xCu);
    }

    if (*(a1 + 40))
    {
      v6 = ASDErrorWithTitleAndMessage();
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_100356FF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_1003BBF50();
    v8 = [v7 isHRNMode];

    if ((v8 & 1) == 0)
    {
      v9 = +[BagService appstoredService];
      v10 = *(a1 + 64);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10035710C;
      v11[3] = &unk_1005247F0;
      v11[4] = a1;
      v12 = v5;
      v13 = v6;
      [v9 recentBagOnQueue:v10 completionHandler:v11];
    }
  }
}

void sub_10035710C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = v4;
  if (!v3)
  {
    goto LABEL_56;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] handleAppSubscriptionChange", buf, 0xCu);
  }

  v9 = +[ACAccountStore ams_sharedAccountStore];
  v10 = [v9 ams_activeiTunesAccount];

  if (v10)
  {
    *(v3 + 96) = [v10 ams_isDemoAccount];
    if (*(v3 + 96) == 1)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 ams_DSID];
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Using retail demo account: %{public}@", buf, 0x16u);
      }
    }
  }

  v75 = [*(v3 + 32) copy];
  v13 = *(v3 + 40);
  if (v13)
  {
    v14 = [v13 BOOLValue] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v74 = *(v3 + 48);
  v15 = [v5 firstObject];
  sub_10035FDD8(v3, v15, v10, v6, v7);

  v16 = [*(v3 + 40) BOOLValue];
  if (v75 && ([v10 ams_DSID], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v10, "ams_DSID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v75, "isEqualToNumber:", v19), v19, v18, !(v14 & 1 | ((v16 & 1) == 0))) && v20)
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v10 ams_DSID];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Skipping as subscription state has not changed for account: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v16)
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v10 ams_DSID];
        *buf = 138412802;
        *&buf[4] = v7;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        *&buf[22] = 2114;
        v84 = v75;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Handling subscription change due to fsEntitlement change with account: %{public}@ original: %{public}@", buf, 0x20u);
      }

      if (v14)
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v10 ams_DSID];
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Resetting arcade activities due to fsEntitlement change with account: %{public}@", buf, 0x16u);
        }

        v27 = sub_100386854(MetricsContext, 4);
        v28 = sub_100386854(MetricsContext, 3);
        if (v27)
        {
          v27[9] = 1;
        }

        sub_100359848(v3, @"Subscription change", 1, v27, v6);
        sub_100359848(v3, @"Subscription change", 1, v28, v6);
      }

      v29 = *(v3 + 128);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100360730;
      v84 = &unk_10051B570;
      *&v85 = v3;
      *(&v85 + 1) = v6;
      dispatch_async(v29, buf);
      sub_1003607E8(v3);

      goto LABEL_53;
    }

    v30 = [NSNumber numberWithBool:0];
    v31 = *(v3 + 40);
    *(v3 + 40) = v30;

    v21 = ASDLogHandleForCategory();
    v32 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if ((v14 & 1) == 0)
    {
      if (v32)
      {
        v33 = [v10 ams_DSID];
        *buf = 138413058;
        *&buf[4] = v7;
        *&buf[12] = 2114;
        *&buf[14] = v74;
        *&buf[22] = 2114;
        v84 = v75;
        LOWORD(v85) = 2114;
        *(&v85 + 2) = v33;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] fsEntitlement changed to Unsubscribed from: %{public}@ originalAccountID: %{public}@ currentAccount: %{public}@", buf, 0x2Au);
      }

      v34 = sub_1001DA8BC();
      sub_1001DC8D4(v34, 1);

      v35 = sub_1001DA8BC();
      sub_1001DC8D4(v35, 2);

      if (v10)
      {
        v36 = [v10 ams_DSID];
        v37 = v36;
        if (v75 && v36)
        {
          v38 = [v10 ams_DSID];
          v39 = [v38 isEqualToNumber:v75];

          if (v39)
          {
            v40 = *(v3 + 128);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10036086C;
            block[3] = &unk_10051B570;
            block[4] = v3;
            v77 = v6;
            dispatch_async(v40, block);
          }
        }

        else
        {
        }
      }

      v70 = v6;
      v41 = v75;
      v42 = v74;
      v43 = v7;
      v44 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = v41;
        *&buf[22] = 2114;
        v84 = v42;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] Sign out start for subscribed accountID: %{public}@ with subscriptionState: %{public}@", buf, 0x20u);
      }

      v71 = v5;
      v72 = v43;

      v45 = sub_100386854(MetricsContext, 4);
      v46 = sub_100386854(MetricsContext, 3);
      v68 = v42;
      sub_10024BCB0(v46, v42);
      if (v41)
      {
        v47 = +[ACAccountStore ams_sharedAccountStore];
        v49 = [v47 ams_iTunesAccountWithDSID:v41];
        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v48, v49, 128);
        }

        v50 = +[ACAccountStore ams_sharedAccountStore];
        v52 = [v50 ams_iTunesAccountWithDSID:v41];
        if (v46)
        {
          objc_setProperty_nonatomic_copy(v46, v51, v52, 128);
        }

        v53 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          if (v46)
          {
            v54 = v46[16];
          }

          else
          {
            v54 = 0;
          }

          v55 = v54;
          *buf = 138412802;
          *&buf[4] = v72;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          *&buf[22] = 2114;
          v84 = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%@] Using subscribed accountID: %{public}@ account: %{public}@ for metrics summary / payout posting", buf, 0x20u);
        }
      }

      *&v91 = _NSConcreteStackBlock;
      *(&v91 + 1) = 3221225472;
      v92 = sub_10036142C;
      v93 = &unk_100524990;
      v94 = v3;
      v56 = v45;
      v95 = v56;
      v57 = objc_retainBlock(&v91);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_10036157C;
      v81[3] = &unk_100524990;
      v81[4] = v3;
      v58 = v46;
      v82 = v58;
      v59 = objc_retainBlock(v81);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003615F8;
      v84 = &unk_100520B28;
      v90 = 1;
      *&v85 = v3;
      *(&v85 + 1) = v56;
      v86 = v58;
      v60 = v72;
      v87 = v60;
      v61 = v41;
      v88 = v61;
      v62 = v68;
      v89 = v62;
      v73 = v58;
      v69 = v56;
      v63 = objc_retainBlock(buf);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_1003618D0;
      v78[3] = &unk_1005249B8;
      v79 = v59;
      v80 = v63;
      v64 = *(v57 + 2);
      v65 = v63;
      v66 = v59;
      v64(v57, v78);

      v6 = v70;
      v5 = v71;
      goto LABEL_53;
    }

    if (v32)
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Not subscribed prior to fsEntitlement change", buf, 0xCu);
    }
  }

LABEL_53:
  v67 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v91) = 138412290;
    *(&v91 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%@] handleAppSubscriptionChange complete", &v91, 0xCu);
  }

LABEL_56:
}

uint64_t sub_100357C60(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 64);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100357D20;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100357D20(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    LOBYTE(v7) = 0;
    goto LABEL_16;
  }

  v3 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Activity" base:@"Sbsync"];
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  if (!v5)
  {
    v6 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:
      LOBYTE(v7) = 0;
      goto LABEL_15;
    }

    v15 = 138412290;
    v16 = v3;
    v9 = "[%@] Sbsync check enabled: NO reason: no account";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v9, &v15, 0xCu);
    goto LABEL_9;
  }

  if (sub_100355F34(v2) >= 1)
  {
    v6 = ASDLogHandleForCategory();
    LOBYTE(v7) = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      v8 = "[%@] Sbsync check enabled: YES reason: arcade apps found";
LABEL_13:
      v11 = v6;
      v12 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v8, &v15, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v10 = [v5 ams_DSID];
  v7 = sub_1002A1944(SbsyncTask, v10, 0);

  if (!v7)
  {
    v13 = sub_1003581BC(v2, 0, v3, 0, 0, 60.0);
    v6 = ASDLogHandleForCategory();
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v13)
    {
      LOBYTE(v7) = 1;
      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = 138412546;
      v16 = v3;
      v17 = 1024;
      v18 = 1;
      v8 = "[%@] Sbsync check enabled: %{BOOL}d reason: found arcade subscription";
      v11 = v6;
      v12 = 18;
      goto LABEL_14;
    }

    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = 138412290;
    v16 = v3;
    v9 = "[%@] Sbsync check enabled: NO reason: no subscription found";
    goto LABEL_8;
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v3;
    v8 = "[%@] Sbsync check enabled: YES reason: subscription bag subscribed";
    LOBYTE(v7) = 1;
    goto LABEL_13;
  }

LABEL_15:

LABEL_16:
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

uint64_t sub_100357FE0(uint64_t a1, char a2, void *a3, double a4)
{
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100358118;
    v15 = sub_100358128;
    v16 = 0;
    v5 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100358130;
    block[3] = &unk_100524818;
    block[4] = a1;
    block[5] = &v17;
    v10 = a2;
    *&block[7] = a4;
    block[6] = &v11;
    dispatch_sync(v5, block);
    if (a3)
    {
      v6 = v12[5];
      if (v6)
      {
        *a3 = v6;
      }
    }

    v7 = *(v18 + 24);
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100358118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100358130(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = sub_1003581BC(v3, v4, v2, 0, &obj, v5);
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

void *sub_1003581BC(void *a1, int a2, void *a3, void *a4, void *a5, double a6)
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = a1[5];
    if (v13)
    {
      v14 = a2 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = sub_100358118;
      v44 = sub_100358128;
      v45 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_100358118;
      v38 = sub_100358128;
      v39 = 0;
      v15 = +[ACAccountStore ams_sharedAccountStore];
      v16 = [v15 ams_activeiTunesAccount];

      if (v16)
      {
        v17 = dispatch_semaphore_create(0);
        v18 = +[SubscriptionEntitlementsCoordinator sharedInstance];
        v19 = sub_1003FA4F0(XPCRequestToken, 1);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10035FA78;
        v47 = &unk_100522D20;
        v49 = &v34;
        v50 = &v40;
        v20 = v17;
        v48 = v20;
        sub_1002F4DEC(v18, 1uLL, v19, 0, 0, 0, buf);

        if (a6 <= 0.0)
        {
          dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          v21 = dispatch_time(0, (a6 * 1000000000.0));
          if (dispatch_semaphore_wait(v20, v21))
          {
            v22 = ASDErrorWithTitleAndMessage();
            v23 = v41[5];
            v41[5] = v22;
          }
        }

        v26 = v35[5];
        if (v26)
        {
          v24 = 0;
        }

        else
        {
          v24 = v41[5];
          if (v24)
          {
            v27 = v24;
            v26 = v35[5];
          }

          else
          {
            v26 = 0;
          }
        }

        v25 = v26;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);

      v28 = v24;
      v29 = +[ACAccountStore ams_sharedAccountStore];
      v30 = [v29 ams_activeiTunesAccount];

      if (v28)
      {
        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%@] Skipping subscription state update due to entitlement lookup error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        sub_10035FDD8(a1, v25, v30, v12, v11);
      }

      if (a5)
      {
        v32 = v28;
        *a5 = v28;
      }

      v13 = a1[5];
    }

    a1 = [v13 BOOLValue];
  }

  return a1;
}

void sub_1003585A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1003585D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003586A0;
    block[3] = &unk_10051C078;
    v9 = v5;
    v10 = a1;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1003586A0(void *a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Arcade] Record app event: [%{public}@]", &buf, 0xCu);
  }

  v4 = a1[5];
  v15 = a1[4];
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = a1[6];
  v7 = v5;
  v8 = v6;
  if (v4)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = sub_10036C90C();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v17 = sub_100361970;
    v18 = &unk_1005249E0;
    v19 = v7;
    v20 = v9;
    v21 = v10;
    [v11 modifyUsingTransaction:&buf];

    if (v8)
    {
      v12 = *(v4 + 56);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100361CA8;
      v13[3] = &unk_10051BD28;
      v14 = v8;
      dispatch_async(v12, v13);
    }
  }
}

void sub_1003588AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10035895C;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10035895C(uint64_t a1)
{
  v2 = sub_100386854(MetricsContext, 3);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v4 = v2[9];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Recording launch events", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = sub_100386854(MetricsContext, 4);
  sub_100358A88(v6);

  (*(*(a1 + 40) + 16))();
}

void sub_100358A88(uint64_t a1)
{
  if (a1)
  {
    v1 = dispatch_semaphore_create(0);
    v2 = sub_1002B5560();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100361CC0;
    v8[3] = &unk_10051B348;
    v3 = v1;
    v9 = v3;
    sub_1002B8DC8(v2, 9, v8);

    v4 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        *buf = 138543362;
        v11 = v6;
        v7 = v6;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Timed out waiting to sync launches", buf, 0xCu);
      }
    }
  }
}

void sub_100358C08(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100358D1C;
    v14[3] = &unk_10051C7A8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v13, v14);
  }
}

void sub_100358D1C(uint64_t a1)
{
  v2 = sub_100386854(MetricsContext, 3);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v4 = v2[9];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412802;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Recording launch event bundleID: %{public}@ sourceBundleID: %{public}@", buf, 0x20u);
  }

  v8 = sub_10023AB14([ArcadeAppLaunchEvent alloc], *(a1 + 32), *(a1 + 40), *(a1 + 48));
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = sub_100358118;
  v19 = sub_100358128;
  v20 = 0;
  v9 = sub_10036C90C();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100358F84;
  v11[3] = &unk_100524840;
  v10 = v8;
  v12 = v10;
  v13 = v15;
  v14 = buf;
  [v9 modifyUsingTransaction:v11];

  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v15, 8);
}

void sub_100358F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100358F84(void *a1, void *a2)
{
  v12 = a1[4];
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = 0;
  v5 = sub_1003F1D50(v3, v4, &v11);

  v6 = v11;
  v7 = [v5 count] != 0;

  *(*(a1[5] + 8) + 24) = v7;
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return v7;
}

void sub_100359080(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10035914C;
    v6[3] = &unk_10051ED90;
    v6[4] = a1;
    v7 = v3;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_10035914C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10038680C(MetricsContext, 4);
  v5 = sub_100356830(*(a1 + 32), v3);

  v6 = ASDLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting Metrics", &v10, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = sub_100386854(MetricsContext, 4);
    sub_1003592C8(v8, v9, *(a1 + 40));
  }

  else
  {
    if (v7)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not enabled", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1003592C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v7 = +[BagService appstoredService];
      v8 = *(a1 + 64);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100360A6C;
      v10[3] = &unk_100524940;
      v11 = v5;
      v12 = a1;
      v13 = v6;
      [v7 recentBagOnQueue:v8 completionHandler:v10];
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error creating context to post", buf, 2u);
      }

      (*(v6 + 2))(v6, 1, 0);
    }
  }
}

void sub_100359424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003594D4;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003594D4(uint64_t a1)
{
  v2 = sub_10038680C(MetricsContext, 3);
  v3 = sub_1001F36A0(*(a1 + 32));
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting Metrics", &v8, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = sub_100386854(MetricsContext, 3);
    sub_1003592C8(v6, v7, *(a1 + 40));
  }

  else
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not enabled", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10035963C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100359708;
    v6[3] = &unk_10051C6E8;
    v6[4] = a1;
    v7 = v3;
    [v4 recentBagOnQueue:v5 completionHandler:v6];
  }
}

void sub_100359708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100386854(MetricsContext, 3);
  v5 = v4;
  if (v4)
  {
    *(v4 + 10) = 1;
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = v5[9];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Resetting metrics", &v9, 0xCu);
  }

  sub_100359848(*(a1 + 32), @"External request", 1, v5, v3);
  (*(*(a1 + 40) + 16))();
}

void sub_100359848(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v19 = a2;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    if (v9)
    {
      v11 = v9[4];
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          goto LABEL_19;
        }

        v12 = sub_1003D4D7C();

        if (!v12)
        {
          v13 = +[NSUUID UUID];
          v14 = [v13 UUIDString];

          sub_1003D5020(AppDefaultsManager, v14);
        }

        if ((*(v9 + 9) & 1) != 0 || (sub_1002B57AC(MetricsCoordinator, 4), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          sub_1003868F4(v9);
        }

        sub_1003616EC(a1, v9);
        if (!a3 || (sub_100356830(a1, v10) & 1) == 0)
        {
          goto LABEL_19;
        }

        v16 = 2;
        goto LABEL_16;
      }

      sub_1003868F4(v9);
      sub_1003616EC(a1, v9);
      if (a3 && sub_1001F36A0(a1))
      {
        v16 = 1;
LABEL_16:
        v17 = sub_1001DA8BC();
        v18 = v17;
        if (v17)
        {
          sub_1001DBEB4(v17, v16, v19, 1, 0);
        }
      }
    }

LABEL_19:
    sub_100355AB8(a1);
  }
}

void sub_1003599F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100359A94;
    block[3] = &unk_10051BD28;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

void sub_100359A94(uint64_t a1)
{
  v2 = sub_10038680C(MetricsContext, 4);
  v3 = sub_1003D4DB8();
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      [v3 timeIntervalSince1970];
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v9 = 138543618;
    v10 = v2;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payout metrics reset with current payout reset time: %{time_t}ld", &v9, 0x16u);
  }

  v7 = sub_1001DA8BC();
  v8 = v7;
  if (v7)
  {
    sub_1001DBEB4(v7, 5, @"Rescheduling", 1, 0);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100359BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100359CB8;
    v6[3] = &unk_10051C6E8;
    v6[4] = a1;
    v7 = v3;
    [v4 recentBagOnQueue:v5 completionHandler:v6];
  }
}

void sub_100359CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100386854(MetricsContext, 4);
  v5 = v4;
  if (v4)
  {
    *(v4 + 9) = 257;
  }

  v6 = sub_1001DA8BC();
  v7 = v6;
  if (v6)
  {
    sub_1001DBEB4(v6, 5, @"Rescheduling", 1, 0);
  }

  sub_100359848(*(a1 + 32), @"External request", 1, v5, v3);
  v8 = sub_1002B57AC(MetricsCoordinator, 4);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v10 = v5[9];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (v8)
    {
      [v8 timeIntervalSince1970];
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = 138412546;
    v15 = v11;
    v16 = 2048;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] External payout metrics reset with current interval start time: %{time_t}ld", &v14, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100359E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 1, 0);
    }

    v8 = +[BagService appstoredService];
    v9 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100359F6C;
    v10[3] = &unk_10051B458;
    v11 = v5;
    v12 = a1;
    [v8 recentBagOnQueue:v9 completionHandler:v10];
  }
}

void sub_100359F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Arcade/Sbsync"];
  if (v5)
  {
    v8 = [*(a1 + 32) ams_DSID];
    v9 = ASDLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Signout sbsync started for accountID: %{public}@", &v14, 0x16u);
      }

      v9 = sub_1002A05F8([SbsyncTask alloc], 1, v5);
      sub_1002A1DDC(v9, v7);
      if (v9)
      {
        objc_setProperty_nonatomic_copy(v9, v11, *(a1 + 32), 72);
      }

      [v9 setCompletionBlock:&stru_100524860];
      v12 = *(*(a1 + 40) + 136);
      if (v12)
      {
        [*(v12 + 8) addOperation:v9];
      }

      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Signout sbsync complete", &v14, 0xCu);
      }
    }

    else if (v10)
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Skipping signout sbsync due to missing accountID", &v14, 0xCu);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Sbsync failed due to failed bag load: %{public}@", &v14, 0x16u);
    }
  }
}

void sub_10035A1E8(id a1)
{
  v1 = sub_1001DA8BC();
  if (v1)
  {
    v2 = v1;
    sub_1001DBEB4(v1, 7, @"Activity Complete", 1, 0);
    v1 = v2;
  }
}

void sub_10035A248(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = +[BagService appstoredService];
    v11 = *(a1 + 64);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10035A358;
    v12[3] = &unk_10051C780;
    v13 = v7;
    v16 = v9;
    v14 = v8;
    v15 = a1;
    [v10 recentBagOnQueue:v11 completionHandler:v12];
  }
}

void sub_10035A358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Sbsync" base:*(a1 + 32)];
  if (v5)
  {
    v8 = sub_1002A05F8([SbsyncTask alloc], 0, v5);
    sub_1002A1DDC(v8, v7);
    v10 = *(a1 + 40);
    if (v8)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      objc_setProperty_nonatomic_copy(v8, v9, v10, 104);
    }

    objc_initWeak(location, v8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10035A5AC;
    v14[3] = &unk_100524888;
    objc_copyWeak(&v17, location);
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    [v8 setCompletionBlock:v14];
    v12 = *(*(a1 + 48) + 136);
    if (v12)
    {
      [*(v12 + 8) addOperation:v8];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v7;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Sbsync failed due to failed bag load: %{public}@", location, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10035A584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10035A5AC(uint64_t a1)
{
  self = objc_loadWeakRetained((a1 + 48));
  v2 = sub_1001DA8BC();
  v3 = v2;
  if (v2)
  {
    sub_1001DBEB4(v2, 7, *(a1 + 32), 1, 0);
  }

  v5 = *(a1 + 40);
  Property = self;
  if (self)
  {
    v7 = self[24];
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = Property;
  (*(v5 + 16))(v5, v7 & 1, v8);
}

void sub_10035A684(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10035A8C0;
    v28[3] = &unk_1005248B0;
    v28[4] = a1;
    v12 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Sbsync" base:v9];
    v29 = v12;
    v32 = a3;
    v30 = v9;
    v31 = v11;
    v13 = objc_retainBlock(v28);
    v14 = v13;
    if (v10)
    {
      v15 = *(a1 + 128);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10035AEF4;
      block[3] = &unk_10051B790;
      v16 = &v27;
      v27 = v13;
      v17 = &v26;
      v26 = v10;
      v18 = v14;
      dispatch_async(v15, block);
    }

    else
    {
      v19 = +[BagService appstoredService];
      v20 = *(a1 + 128);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10035AF08;
      v22[3] = &unk_10051C6E8;
      v16 = &v23;
      v17 = &v24;
      v23 = v12;
      v24 = v14;
      v21 = v14;
      [v19 recentBagOnQueue:v20 completionHandler:v22];
    }
  }
}

void sub_10035A8C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v12 = 0;
  v7 = sub_10035A970(v4, v5, v6, a2, &v12);
  v8 = v12;
  v9 = sub_1001DA8BC();
  v10 = v9;
  if (v9)
  {
    sub_1001DBEB4(v9, 7, *(a1 + 48), 1, 0);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8);
  }
}

uint64_t sub_10035A970(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v11 = +[ACAccountStore ams_sharedAccountStore];
  v12 = [v11 ams_activeiTunesAccount];

  if ([v10 BOOLForKey:@"arcade-refresh-keybag-on-demand" defaultValue:0])
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Skipping sbsync because sbsync on demand enabled", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v12)
  {
    if (sub_100355F34(a1) > 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = a3;
    }

    if (v14)
    {
      v15 = 0;
      v38 = 0;
      v16 = 0;
      goto LABEL_25;
    }

    v20 = [v12 ams_DSID];
    v39 = 0;
    v21 = sub_1002A1944(SbsyncTask, v20, &v39);
    v15 = v39;
    v38 = !v21;

    if (v15)
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v9;
        v44 = 2114;
        v45 = v15;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ Error looking up subscription status. Error: %{public}@", buf, 0x16u);
      }
    }

    if (v21)
    {
      v25 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_24:

        v16 = 1;
LABEL_25:
        v25 = sub_1002A05F8([SbsyncTask alloc], v16, v10);
        sub_1002A1DDC(v25, v9);
        v27 = *(a1 + 136);
        v41 = v25;
        v28 = [NSArray arrayWithObjects:&v41 count:1];
        if (v27)
        {
          [*(v27 + 8) addOperations:v28 waitUntilFinished:1];
        }

        if (v25)
        {
          v30 = objc_getProperty(v25, v29, 32, 1);

          v17 = *(v25 + 24);
          v15 = v30;
        }

        else
        {

          v15 = 0;
          v17 = 0;
        }

        if (v38)
        {
          if (!v15 || ([v15 userInfo], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", @"AMSServerErrorCode"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "integerValue"), v32, v31, v33 == 5002))
          {
            v34 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v9;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ Clearing previous failed attempt to opt-out.", buf, 0xCu);
            }

LABEL_40:

            sub_1003D5090(AppDefaultsManager, !v38);
          }
        }

        else
        {
          if (v15)
          {
            v35 = v14;
          }

          else
          {
            v35 = 1;
          }

          if ((v35 & 1) == 0)
          {
            v34 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v9;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@ Failed to opt-out, will attempt again next time.", buf, 0xCu);
            }

            goto LABEL_40;
          }
        }

LABEL_41:

        if (a5 && v15)
        {
          v36 = v15;
          *a5 = v15;
        }

        else if (!a5 && v15)
        {
          v37 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = v9;
            v44 = 2114;
            v45 = v15;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@ Complete with error: %{public}@", buf, 0x16u);
          }
        }

        goto LABEL_13;
      }

      *buf = 138412290;
      v43 = v9;
      v26 = "%@ Opting out of slot since no apps are installed.";
    }

    else
    {
      v23 = sub_1003D4DF4();
      v24 = ASDLogHandleForCategory();
      v25 = v24;
      if (!v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v9;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ Skipping sbsync because there are no arcade apps", buf, 0xCu);
        }

        v17 = 0;
        goto LABEL_41;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      v43 = v9;
      v26 = "%@ Retrying opt-out of slot because a previous attempt failed";
    }

    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    goto LABEL_24;
  }

LABEL_12:
  v17 = 0;
  v15 = 0;
LABEL_13:
  v40 = v17 & 1;

  v18 = v40;
LABEL_14:

  return v18;
}

void sub_10035AF08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Sbsync failed due to failed bag load: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_10035AFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10035B0C0;
    v6[3] = &unk_10051ED90;
    v6[4] = a1;
    v7 = v3;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_10035B0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10038680C(MetricsContext, 4);
  v5 = sub_100356830(*(a1 + 32), v3);

  v6 = ASDLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] External Request", &v10, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = sub_100386854(MetricsContext, 4);
    sub_1003592C8(v8, v9, *(a1 + 40));
  }

  else
  {
    if (v7)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not enabled to send metrics", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10035B23C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10035B2EC;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10035B2EC(uint64_t a1)
{
  v2 = sub_10038680C(MetricsContext, 3);
  v3 = sub_1001F36A0(*(a1 + 32));
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] External Request", &v8, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = sub_100386854(MetricsContext, 3);
    sub_1003592C8(v6, v7, *(a1 + 40));
  }

  else
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not enabled", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10035B454(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003BBF50();
    v5 = [v4 isHRNMode];

    if ((v5 & 1) == 0)
    {
      v6 = +[BagService appstoredService];
      v7 = *(a1 + 64);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10035B540;
      v8[3] = &unk_10051C008;
      v9 = v3;
      v10 = a1;
      [v6 bagOnQueue:v7 completionHandler:v8];
    }
  }
}

void sub_10035B540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setup with reason: %{public}@", buf, 0xCu);
  }

  v6 = [KeepAlive keepAliveWithName:@"com.apple.PersonalizationManager.setupFollowingMigration"];
  v7 = sub_10036C90C();
  [v7 modifyUsingTransaction:&stru_1005248D0];

  if (sub_100356830(*(a1 + 40), v3))
  {
    v8 = sub_100386854(MetricsContext, 4);
    v9 = v8;
    if (v8)
    {
      *(v8 + 9) = 0;
    }

    v10 = sub_1002B57AC(MetricsCoordinator, 4);

    if (v10)
    {
      sub_100358A88(*(a1 + 40));
    }

    sub_100359848(*(a1 + 40), *(a1 + 32), 0, v9, v3);
  }

  if (sub_1001F36A0(*(a1 + 40)))
  {
    v11 = sub_100386854(MetricsContext, 3);
    v12 = sub_1002B57AC(MetricsCoordinator, 4);

    if (v12)
    {
      sub_100358A88(*(a1 + 40));
    }

    sub_100359848(*(a1 + 40), *(a1 + 32), 0, v11, v3);
  }

  v13 = *(a1 + 40);
  v14 = *(v13 + 144);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10035B81C;
  v16[3] = &unk_10051B570;
  v16[4] = v13;
  v17 = v6;
  v15 = v6;
  dispatch_async(v14, v16);
}

BOOL sub_10035B794(id a1, AppUsageDatabaseTransaction *a2)
{
  v2 = a2;
  v3 = [(AppUsageDatabaseTransaction *)v2 connection];
  v4 = v3;
  if (v3)
  {
    sub_10022C810(v3, @"DELETE FROM app_events_ocelot where event_type != 2;", 0, 0);
  }

  v5 = [(AppUsageDatabaseTransaction *)v2 connection];

  if (v5)
  {
    sub_10022C810(v5, @"DELETE FROM app_events_ocelot_payout where event_type != 4;", 0, 0);
  }

  return 1;
}

void sub_10035B81C(uint64_t a1)
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  v4 = [v2 ams_activeiTunesAccount];

  v3 = v4;
  if (v4)
  {
    sub_10035B894(*(a1 + 32), v4, 0);
    v3 = v4;
  }
}

void sub_10035B894(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v146 = a3;
  if (!a1)
  {
    goto LABEL_147;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = sub_100386520([MetricsContext alloc], 0);
  v8 = [[_TtC9appstored6LogKey alloc] initWithBase:@"TopApps"];
  sub_1003869F8(v7, v8);

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v10 = v7[9];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v5 ams_DSID];
    *buf = 138412546;
    v177 = v11;
    v178 = 2114;
    v179 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] Start for account: %{public}@", buf, 0x16u);
  }

  v13 = sub_100362368();
  if (!v13)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[TopApps] Unable to generate the path in order to load cached", buf, 2u);
    }

    goto LABEL_15;
  }

  v14 = [[NSData alloc] initWithContentsOfFile:v13];
  if (!v14)
  {
LABEL_15:
    v145 = &__NSDictionary0__struct;
    goto LABEL_20;
  }

  v15 = v5;
  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[TopApps] Load cached top apps data", buf, 2u);
  }

  *&v163 = 0;
  v17 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v163];
  v18 = v163;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v17)
  {
    v145 = v17;
  }

  else
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v177 = v18;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[TopApps] Failed to deserialize the top apps. Error: %{public}@", buf, 0xCu);
    }

    v145 = &__NSDictionary0__struct;
  }

  v5 = v15;
LABEL_20:

  v20 = [v5 ams_DSID];
  if (!v20)
  {
    v100 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v101 = v7[9];
      }

      else
      {
        v101 = 0;
      }

      v102 = v101;
      *buf = 138412290;
      v177 = v102;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] No account to lookup top apps", buf, 0xCu);
    }

    v103 = 0;
    if (v146)
    {
      v146[2](v146, &__NSArray0__struct, 0);
    }

    goto LABEL_146;
  }

  v21 = +[NSDate date];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  v148 = v20;
  v24 = [v20 stringValue];
  v25 = [v145 objectForKeyedSubscript:v24];

  v144 = v25;
  if (v25)
  {
    v26 = [v25 objectForKeyedSubscript:@"lastCache"];
    v27 = [v26 longLongValue];
    v28 = v27;

    if (v27 < 1 || (v23 - v27) < 901)
    {
      if (v146)
      {
        v104 = [v144 objectForKeyedSubscript:@"apps"];
        v105 = ASDLogHandleForCategory();
        v103 = v148;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v106 = v7[9];
          }

          else
          {
            v106 = 0;
          }

          v107 = v106;
          v108 = [v104 componentsJoinedByString:@", "];
          *buf = 138413058;
          v177 = v107;
          v178 = 2114;
          v179 = v148;
          v180 = 2048;
          *&v181 = (v23 - v28);
          v182 = 2114;
          v183 = v108;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] Returning cached top apps data for account: %{public}@ cache age: %llu seconds apps: [%{public}@]", buf, 0x2Au);
        }

        v146[2](v146, v104, 0);
      }

      else
      {
        v104 = ASDLogHandleForCategory();
        v103 = v148;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v109 = v7[9];
          }

          else
          {
            v109 = 0;
          }

          v110 = v109;
          *buf = 138412802;
          v177 = v110;
          v178 = 2114;
          v179 = v148;
          v180 = 2048;
          *&v181 = (v23 - v28);
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] No handler to return cached top apps for account: %{public}@ cache age: %llu seconds", buf, 0x20u);
        }
      }

      v111 = CFAbsoluteTimeGetCurrent();
      v112 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v113 = v7[9];
        }

        else
        {
          v113 = 0;
        }

        v114 = v113;
        v115 = [v5 ams_DSID];
        *buf = 138412802;
        v177 = v114;
        v178 = 2114;
        v179 = v115;
        v180 = 2048;
        v181 = v111 - Current;
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] topAppsForAccount: %{public}@ completed in %f seconds", buf, 0x20u);
      }

      goto LABEL_145;
    }

    v29 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v30 = v7[9];
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      *buf = 138412802;
      v177 = v31;
      v178 = 2114;
      v179 = v148;
      v180 = 2048;
      *&v181 = (v23 - v28);
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] Clearing cached top apps data for account: %{public}@ cache age: %llu seconds", buf, 0x20u);
    }
  }

  +[NSMutableDictionary dictionary];
  v161[0] = _NSConcreteStackBlock;
  v161[1] = 3221225472;
  v161[2] = sub_1003627C4;
  v161[3] = &unk_100522830;
  v32 = v161[4] = a1;
  v162 = v32;
  sub_1003D31A8(ApplicationProxy, 0, v161);
  v147 = +[NSMutableArray array];
  v149 = v7;
  v150 = v32;
  if (![v32 count])
  {
    goto LABEL_126;
  }

  v33 = +[_TtC9appstored13LaunchHistory shared];
  if (v7)
  {
    v34 = v7[9];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = [v33 syncIfNeededWithLogKey:v35];

  v141 = v36;
  v37 = [v36 error];

  if (v37)
  {
    v38 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      if (v7)
      {
        v39 = v7[9];
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      *buf = 138412290;
      v177 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[TopApps] [%@] History sync complete", buf, 0xCu);
    }
  }

  v41 = +[NSDate now];
  v42 = [v41 dateByAddingTimeInterval:-604800.0];

  v140 = v42;
  v143 = [[NSDateInterval alloc] initWithStartDate:v42 duration:604800.0];
  v43 = +[_TtC9appstored13LaunchHistory shared];
  v142 = v5;
  if (v7)
  {
    v44 = v7[9];
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  v46 = [v43 getLaunchesWithLogKey:v45 dateInterval:v143];

  v152 = sub_1001E5E74();
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = v46;
  v47 = [obj countByEnumeratingWithState:&v157 objects:v169 count:16];
  if (!v47)
  {
    goto LABEL_125;
  }

  v48 = v47;
  v49 = *v158;
  v151 = *v158;
LABEL_42:
  v50 = 0;
  v153 = v48;
  while (1)
  {
    if (*v158 != v49)
    {
      objc_enumerationMutation(obj);
    }

    v51 = *(*(&v157 + 1) + 8 * v50);
    v52 = sub_10038AD6C(v51);
    v53 = [v32 objectForKeyedSubscript:v52];

    if (v53)
    {
      break;
    }

LABEL_93:
    if (++v50 == v48)
    {
      v99 = [obj countByEnumeratingWithState:&v157 objects:v169 count:16];
      v48 = v99;
      if (!v99)
      {
        goto LABEL_125;
      }

      goto LABEL_42;
    }
  }

  v54 = sub_10038ADA4(v51);
  v55 = sub_1001E60F4(AccountEventCoordinator, v54);

  if (!v55)
  {
    v55 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v74 = v7[9];
      }

      else
      {
        v74 = 0;
      }

      v75 = v74;
      v76 = sub_10038AD6C(v51);
      *buf = 138412546;
      v177 = v75;
      v178 = 2114;
      v179 = v76;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] [%{public}@] Skipping app launch event without an end time", buf, 0x16u);
    }

LABEL_92:

    goto LABEL_93;
  }

  v56 = sub_1001E61E0(v152, v55);
  v57 = v51;
  v58 = v7;
  v59 = v56;
  if (!v59)
  {
    v66 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v95 = v7[9];
      }

      else
      {
        v95 = 0;
      }

      v96 = v95;
      v97 = sub_10038AD6C(v57);
      *buf = 138412546;
      v177 = v96;
      v178 = 2114;
      v179 = v97;
      _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[%@] Unable to find launch account for event with bundleID: %{public}@ due to no active accounts", buf, 0x16u);
    }

    v68 = 0;
    goto LABEL_76;
  }

  v60 = sub_10038ADA4(v57);
  [v60 timeIntervalSinceReferenceDate];
  v62 = v61;

  v63 = sub_10038AE18(v57);
  [v63 timeIntervalSinceReferenceDate];
  v65 = v64;

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v66 = v59;
  v68 = [v66 countByEnumeratingWithState:&v163 objects:buf count:16];
  if (!v68)
  {
    goto LABEL_76;
  }

  v69 = *v164;
  v70 = v65 < 0.0 && v62 > 0.0;
  while (2)
  {
    v71 = 0;
LABEL_53:
    if (*v164 != v69)
    {
      objc_enumerationMutation(v66);
    }

    v72 = *(*(&v163 + 1) + 8 * v71);
    if (!v72)
    {
      if (v70)
      {
        Property = 0;
        goto LABEL_71;
      }

LABEL_58:
      if (v68 == ++v71)
      {
        v73 = [v66 countByEnumeratingWithState:&v163 objects:buf count:16];
        v68 = v73;
        if (!v73)
        {
          v7 = v149;
          v32 = v150;
          goto LABEL_76;
        }

        continue;
      }

      goto LABEL_53;
    }

    break;
  }

  if (v62 <= v72[2] || v65 >= v72[3])
  {
    goto LABEL_58;
  }

  Property = objc_getProperty(v72, v67, 8, 1);
LABEL_71:
  v77 = Property;
  v68 = sub_1001F0558(v77);

  v7 = v149;
  v32 = v150;
  if (v149 && v149[4])
  {
    v78 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = v149[9];
      v80 = sub_10038AD6C(v57);
      *v170 = 138412802;
      v171 = v79;
      v172 = 2114;
      v173 = v68;
      v174 = 2114;
      v175 = v80;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%@] Found app launch accountID: %{public}@ for event with bundleID: %{public}@", v170, 0x20u);

      v32 = v150;
      v7 = v149;
    }
  }

LABEL_76:

  if (!v68)
  {
    v87 = ASDLogHandleForCategory();
    v49 = v151;
    v48 = v153;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v88 = v7[9];
      }

      else
      {
        v88 = 0;
      }

      v89 = v88;
      v90 = sub_10038AD6C(v57);
      v91 = sub_10038ADA4(v57);
      v92 = v91;
      if (v91)
      {
        [v91 timeIntervalSince1970];
        v94 = v93;
      }

      else
      {
        *&v94 = 0.0;
      }

      *buf = 138412802;
      v177 = v89;
      v178 = 2114;
      v179 = v90;
      v180 = 2048;
      v181 = *&v94;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] [%{public}@] Skipping top app launch event due to no active account at launch time ending: %{time_t}ld", buf, 0x20u);
    }

    goto LABEL_92;
  }

  v81 = sub_10038AD6C(v57);
  v82 = [v32 objectForKeyedSubscript:v81];
  v83 = sub_1003820BC(v82);

  objc_opt_class();
  v84 = v83;
  v85 = v84;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_83;
  }

  if (!v84 || (v86 = [v68 isEqualToNumber:v148], v84, !v86))
  {
LABEL_84:

    v49 = v151;
    v48 = v153;
    goto LABEL_92;
  }

  v85 = [v84 stringValue];
  if (!v85 || ([v147 containsObject:v85] & 1) != 0 || (objc_msgSend(v147, "addObject:", v85), objc_msgSend(v147, "count") <= 0xB))
  {
LABEL_83:

    goto LABEL_84;
  }

LABEL_125:
  v5 = v142;
LABEL_126:
  v116 = ASDLogHandleForCategory();
  v103 = v148;
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v117 = v7[9];
    }

    else
    {
      v117 = 0;
    }

    v118 = v117;
    v119 = [v147 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v177 = v118;
    v178 = 2114;
    v179 = v119;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] Found apps: [%{public}@]", buf, 0x16u);
  }

  if (v146)
  {
    v146[2](v146, v147, 0);
    v120 = CFAbsoluteTimeGetCurrent();
    v121 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v122 = v7[9];
      }

      else
      {
        v122 = 0;
      }

      v123 = v122;
      v124 = [v5 ams_DSID];
      *buf = 138412802;
      v177 = v123;
      v178 = 2114;
      v179 = v124;
      v180 = 2048;
      v181 = v120 - Current;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] topAppsForAccount: %{public}@ completed in %f seconds", buf, 0x20u);
    }
  }

  v125 = v5;
  v167[0] = @"lastCache";
  v126 = [NSNumber numberWithDouble:v23];
  v167[1] = @"apps";
  v168[0] = v126;
  v168[1] = v147;
  v127 = [NSDictionary dictionaryWithObjects:v168 forKeys:v167 count:2];

  v128 = [v145 mutableCopy];
  v129 = [v148 stringValue];
  [v128 setObject:v127 forKeyedSubscript:v129];

  v156 = 0;
  v130 = [NSPropertyListSerialization dataWithPropertyList:v128 format:200 options:0 error:&v156];
  v131 = v156;
  if (v130)
  {
    v132 = sub_100362368();
    if (v132)
    {
      v155 = v131;
      v133 = [v130 writeToFile:v132 options:1 error:&v155];
      v134 = v155;

      v135 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        v136 = v149;
        if (v149)
        {
          v136 = v149[9];
        }

        v137 = v136;
        *buf = 138412546;
        v177 = v137;
        v178 = 1024;
        LODWORD(v179) = v133;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[TopApps] [%@] Serialized top apps with result: %d", buf, 0x12u);
      }

      v131 = v134;
      v7 = v149;
      v103 = v148;
    }
  }

  else
  {
    v132 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v138 = v7[9];
      }

      else
      {
        v138 = 0;
      }

      v139 = v138;
      *buf = 138412546;
      v177 = v139;
      v178 = 2114;
      v179 = v131;
      _os_log_error_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "[TopApps] [%@] Failed to serialize. Error: %{public}@", buf, 0x16u);
    }
  }

  v5 = v125;
  v112 = v150;
LABEL_145:

LABEL_146:
LABEL_147:
}

void sub_10035CBE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 152);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035CCB0;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v11 = v7;
    v12 = v6;
    dispatch_sync(v9, block);
  }
}

void sub_10035CCB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 168))
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 40);
      *buf = 138412290;
      v42 = v38;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%@] Invalidating existing remote view handle was invalid", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 168);
    }

    else
    {
      v5 = 0;
    }

    [v5 unregisterObserver:?];
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 168);
    *(v7 + 168) = 0;

    objc_sync_exit(v6);
  }

  v9 = dispatch_semaphore_create(0);
  v10 = *(a1 + 32);
  v11 = *(v10 + 160);
  *(v10 + 160) = v9;

  v12 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceOcelotUpsellViewController"];
  v13 = objc_opt_new();
  v14 = *(a1 + 48);
  if (v14)
  {
    v39 = @"itemID";
    v40 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v13 setUserInfo:v15];
  }

  v16 = *(a1 + 32);
  objc_sync_enter(v16);
  v17 = [SBSRemoteAlertHandle newHandleWithDefinition:v12 configurationContext:v13];
  v18 = *(a1 + 32);
  v19 = *(v18 + 168);
  *(v18 + 168) = v17;

  objc_sync_exit(v16);
  v20 = *(a1 + 32);
  if (v20 && ((v21 = *(v20 + 168)) == 0 || (([v21 registerObserver:?], v22 = objc_alloc_init(SBSRemoteAlertActivationContext), (v23 = *(a1 + 32)) == 0) ? (v24 = 0) : (v24 = *(v23 + 168)), objc_msgSend(v24, "activateWithContext:", v22), dispatch_semaphore_wait(*(*(a1 + 32) + 160), 0xFFFFFFFFFFFFFFFFLL), v22, (v20 = *(a1 + 32)) != 0)))
  {
    v25 = *(v20 + 168);
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  if ([v26 isValid])
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = *(v27 + 168);
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 isActive];

    if (v29)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 168);
  }

  else
  {
    v31 = 0;
  }

  if (([v31 isValid] & 1) == 0)
  {
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 40);
      *buf = 138412290;
      v42 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Remote view handle was invalid", buf, 0xCu);
    }
  }

  v34 = *(a1 + 32);
  if (v34)
  {
    v35 = *(v34 + 168);
  }

  else
  {
    v35 = 0;
  }

  if (([v35 isActive] & 1) == 0)
  {
    v36 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 40);
      *buf = 138412290;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%@] Remote view handle was not active", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 160));
LABEL_35:
}

void sub_10035D09C(uint64_t a1)
{
  if (a1)
  {
    v2 = +[BagService appstoredService];
    v3 = *(a1 + 64);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10035D140;
    v4[3] = &unk_10051DFC8;
    v4[4] = a1;
    [v2 recentBagOnQueue:v3 completionHandler:v4];
  }
}

void sub_10035D140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[BagService emptyBag];
  }

  v8 = v7;
  v9 = sub_100386854(MetricsContext, 7);
  v10 = sub_10038680C(MetricsContext, 7);
  if (sub_1001F36A0(*(a1 + 32)) && *(a1 + 32) && [v8 BOOLForKey:@"arcade-account-event-daily-enabled" defaultValue:0])
  {
    v11 = +[ACAccountStore ams_sharedAccountStore];
    v12 = [v11 ams_activeiTunesAccount];

    if (!v12)
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (v9)
        {
          v40 = *(v9 + 72);
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        *buf = 138412290;
        v49 = v41;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Unable to determine active account", buf, 0xCu);
      }

      goto LABEL_48;
    }

    v13 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
    if (v9)
    {
      v14 = *(v9 + 72);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = [v13 removeStaleSubscriptionInfoWithLogKey:v15];

    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v18 = *(v9 + 72);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      *buf = 138412546;
      v49 = v19;
      v50 = 1024;
      LODWORD(v51) = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%@] Cleaned up subscription state with result: %{BOOL}d", buf, 0x12u);
    }

    v20 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
    if (v9)
    {
      v21 = *(v9 + 72);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v20 subscriptionInfoDictionaryWithAccount:v12 onlyReturnForPreviouslySubscribedAccount:1 logKey:v22];

    if (!v23)
    {
      v33 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
LABEL_47:

LABEL_48:
        goto LABEL_49;
      }

      if (v9)
      {
        v42 = *(v9 + 72);
      }

      else
      {
        v42 = 0;
      }

      v38 = v42;
      *buf = 138412290;
      v49 = v38;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%@] There are no subscription details for the active account", buf, 0xCu);
LABEL_46:

      goto LABEL_47;
    }

    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v24, v23, 136);
      objc_setProperty_nonatomic_copy(v9, v25, v12, 128);
    }

    v26 = ASDLogHandleForCategory();
    v46 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v27 = *(v9 + 72);
        v28 = *(v9 + 128);
        v45 = v27;
      }

      else
      {
        v27 = 0;
        v45 = 0;
        v28 = 0;
      }

      v44 = v28;
      v29 = [v44 ams_DSID];
      *buf = 138412802;
      v49 = v27;
      v50 = 2114;
      v51 = v10;
      v52 = 2114;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Enqueuing %{public}@ event for account: %{public}@", buf, 0x20u);
    }

    v30 = [AppUsageMetricsEvent alloc];
    if (v9)
    {
      v31 = *(v9 + 152);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [(AppUsageMetricsEvent *)v30 initWithTopic:v32];

    [v33 setEventType:@"account"];
    [*(a1 + 32) decorateMetricsEvent:v33 context:v9];
    if (os_variant_has_internal_content())
    {
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        if (v9)
        {
          v35 = *(v9 + 72);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [v33 underlyingDictionary];
        *buf = 138412802;
        v49 = v36;
        v50 = 2114;
        v51 = v10;
        v52 = 2114;
        v53 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[%@] %{public}@ event: %{public}@", buf, 0x20u);
      }
    }

    if (v5)
    {
      v38 = [[_TtC9appstored10ASEMetrics alloc] initWithType:1 bag:v5];
      v47 = v33;
      v39 = [NSArray arrayWithObjects:&v47 count:1];
      [(ASEMetrics *)v38 enqueueEvents:v39 flushEvents:1 completionHandler:&stru_1005248F0];
    }

    else
    {
      v38 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(&v38->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      if (v9)
      {
        v43 = *(v9 + 72);
      }

      else
      {
        v43 = 0;
      }

      v39 = v43;
      *buf = 138412546;
      v49 = v39;
      v50 = 2114;
      v51 = v6;
      _os_log_error_impl(&_mh_execute_header, &v38->super, OS_LOG_TYPE_ERROR, "[%@] Unable to load bag: %{public}@", buf, 0x16u);
    }

LABEL_45:
    v23 = v46;
    goto LABEL_46;
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not enabled", buf, 0xCu);
  }

LABEL_49:
}

void sub_10035D794(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003623C4;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_10035D818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 144);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035D8E8;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

id sub_10035E7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v18 = *(v5 + 9);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        *buf = 138412290;
        v24 = v19;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Unable to find find subscribed accountID to associate katanaID", buf, 0xCu);
      }

      v14 = 0;
      goto LABEL_20;
    }

    v9 = objc_opt_new();
    [v9 setIncludeAccountMatchStatus:1];
    if ([v6 BOOLForKey:@"arcade-should-emit-diagnostic-fields" defaultValue:1])
    {
      [v9 setShouldEmitDiagnosticFields:1];
    }

    if ([v6 BOOLForKey:@"arcade-should-emit-previous-userId" defaultValue:1])
    {
      [v9 setShouldEmitPreviousUserId:1];
    }

    if (v5)
    {
      v10 = *(v5 + 16);
      [v9 setAccount:v10];

      v11 = *(v5 + 4);
      v12 = @"com.apple.appstored.AracadeAnonymous";
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          v12 = @"com.apple.appstored.AracadePayout";
        }

        else if (v11 != 7)
        {
LABEL_13:
          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            if (v5)
            {
              v20 = *(v5 + 9);
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;
            *buf = 138412290;
            v24 = v21;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] KatanaIDs not supported for this context type", buf, 0xCu);
          }

          v14 = 0;
          goto LABEL_19;
        }
      }

      [v9 setDomain:v12];
      v15 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.appstored"];
      [v9 setClientInfo:v15];

      v13 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
      v22 = v13;
      v16 = [NSArray arrayWithObjects:&v22 count:1];
      v14 = [v9 generateEventFieldsForKeys:v16];

LABEL_19:
LABEL_20:

      goto LABEL_21;
    }

    [v9 setAccount:0];
    goto LABEL_13;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

id sub_10035ECFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v81 = a3;
  if (a1)
  {
    v6 = objc_opt_new();
    v79 = a1;
    sub_100358A88(a1);
    if (v5 && v5[4] == 4)
    {
      v94 = @"launch_end_time";
      v7 = [NSArray arrayWithObjects:&v94 count:1];
      v8 = sub_1002AAAD8(a1, 4, v5, v7);

      v9 = 0;
    }

    else
    {
      v93 = @"launch_end_time";
      v11 = [NSArray arrayWithObjects:&v93 count:1];
      v8 = sub_1002AAAD8(a1, 2, v5, v11);

      if (v5)
      {
        v12 = *(v5 + 8);
      }

      else
      {
        v12 = 0;
      }

      v9 = sub_100356B10(ArcadeManager, v12 & 1);
    }

    if ([v9 count])
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v8;
        if (v5)
        {
          v15 = v5[9];
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v9 count];
        *buf = 138412546;
        v96 = v16;
        v97 = 2048;
        v98 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] found %ld event(s)", buf, 0x16u);

        v8 = v14;
      }
    }

    v78 = objc_opt_new();
    if ([v8 count])
    {
      v74 = v8;
      v75 = v6;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = v8;
      v18 = v79;
      v82 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (!v82)
      {
        goto LABEL_84;
      }

      v80 = *v89;
      v83 = v9;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v89 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v88 + 1) + 8 * v19);
          v87 = v9;
          v21 = v5;
          v86 = v81;
          v22 = sub_1001FC8C8(v20);
          v23 = sub_1001FD214(v20);
          v85 = v21;
          v24 = sub_1002AA480(v18, v22, v23, v21);

          v25 = sub_1001FC69C(v20);
          if (v25)
          {
            sub_1003D844C(v24, v25);
          }

          v84 = v25;
          v26 = [v20 databaseID];
          if (v24)
          {
            *(v24 + 224) = v26;
            *(v24 + 26) = sub_10023E4DC(v20, @"has_been_posted");
            if (!v5)
            {
              goto LABEL_43;
            }
          }

          else
          {
            sub_10023E4DC(v20, @"has_been_posted");
            if (!v5)
            {
              goto LABEL_43;
            }
          }

          v27 = v5[4];
          if (v27 == 4)
          {
            if (v24)
            {
              v28 = *(v24 + 304);
              if (v28)
              {
                v29 = v28;
                v30 = *(v24 + 304);
                v31 = [v30 longLongValue];

                if (v31 >= 1)
                {
                  v32 = *(v24 + 304);
                  v33 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v32 longLongValue]);

                  if (!v33)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_38;
                }
              }
            }

            v27 = v5[4];
          }

          if (v27 != 3)
          {
LABEL_43:
            v33 = 0;
            goto LABEL_45;
          }

          if (v20)
          {
            v34 = v20[6];
          }

          else
          {
            v34 = 0;
          }

          v33 = v34;
          if (!v33)
          {
            goto LABEL_45;
          }

LABEL_38:
          v35 = +[ACAccountStore ams_sharedAccountStore];
          v36 = [v35 ams_iTunesAccountWithDSID:v33];

          if (!v36 || ![v36 ams_isDemoAccount])
          {

LABEL_45:
            v40 = sub_1001FC8C8(v20);
            v41 = sub_1003827A0(v40);

            if (v41)
            {
              v42 = 2;
            }

            else
            {
              v42 = 0;
            }

            sub_1003D8104(v24, v42);
            if (!v5)
            {
              goto LABEL_67;
            }

            goto LABEL_49;
          }

          v37 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v5[9];
            v39 = [v36 ams_DSID];
            *buf = 138412546;
            v96 = v38;
            v97 = 2114;
            v98 = v39;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] Using retail demo account: %{public}@ for event", buf, 0x16u);
          }

          sub_1003D8104(v24, 1);
LABEL_49:
          if (v5[4] == 3)
          {
            v43 = sub_10023E0F8(v20, @"launch_time");
            v44 = sub_10023E0F8(v20, @"launch_end_time");
            if (v83)
            {
              [v86 doubleForKey:@"arcade-launch-correlation-window-seconds" defaultValue:1.0];
              v46 = v45;
              v47 = sub_1001FCF14(v20);
              v48 = v5[9];
              v49 = sub_1003560A8(v46, ArcadeManager, v47, v43, v87, v48);

              if (v49)
              {
                v50 = [v49 databaseID];
                if (v24)
                {
                  *(v24 + 344) = v50;
                }

                [v44 timeIntervalSinceReferenceDate];
                v52 = v51;
                [v43 timeIntervalSinceReferenceDate];
                v54 = v53;
                v55 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = v33;
                  v56 = v5[9];
                  v57 = sub_1001FCF14(v20);
                  *buf = 138413058;
                  v96 = v56;
                  v97 = 2114;
                  v98 = v57;
                  v99 = 2114;
                  v100 = v43;
                  v101 = 2048;
                  v102 = v52 - v54;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Found associated arcade launch date: %{public}@ duration: %f", buf, 0x2Au);

                  v33 = v76;
                }

                v58 = sub_10023AC48(v49);
                sub_1003D869C(v24, v58);

                v59 = sub_10023AC80(v49);

                if (v59)
                {
                  v60 = sub_10023AC80(v49);
                  sub_1003D7098(v24, v60);
                }
              }

              v18 = v79;
            }

            if (v43)
            {
              v61 = sub_10035F768(v43);

              if (v61)
              {
                v62 = [AMSMetrics serverTimeFromDate:v61];
                sub_1003D835C(v24, v62);

                v18 = v79;
              }
            }

            if (v44)
            {
              v63 = sub_10035F768(v44);
              if (v63)
              {
                v64 = [AMSMetrics serverTimeFromDate:v63];
                sub_1003D7D88(v24, v64);

                v18 = v79;
              }
            }
          }

LABEL_67:
          v65 = sub_10023E0F8(v20, @"cumulative_user_count");
          v66 = v65;
          if (v65)
          {
            sub_1003D7D18(v24, [v65 integerValue]);
          }

          v67 = sub_10023E0F8(v20, @"usage_time");
          v68 = v67;
          if ((!v5 || v5[4] != 4) && v67)
          {
            sub_1003D7F2C(v24, [v67 longLongValue]);
          }

          v69 = sub_10023E0F8(v20, @"week_start_time");
          v70 = v69;
          if (v69)
          {
            v71 = sub_1002526A4(v69);
            if (v71)
            {
              sub_1003D894C(v24, v71);
            }
          }

          if (v24)
          {
            [v78 addObject:v24];
          }

          v19 = v19 + 1;
          v9 = v83;
        }

        while (v82 != v19);
        v72 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
        v82 = v72;
        if (!v72)
        {
LABEL_84:

          v8 = v74;
          v6 = v75;
          break;
        }
      }
    }

    [v6 addObjectsFromArray:{v78, v74, v75}];
    v10 = [v6 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10035F688(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = a3;
    sub_100359848(a1, v8, 1, v7, a4);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10035F75C;
    v9[3] = &unk_10051B348;
    v10 = v7;
    sub_10035647C(a1, v8, v10, v9);
  }
}

id sub_10035F768(void *a1)
{
  v1 = a1;
  v2 = +[NSCalendar currentCalendar];
  v3 = [v2 components:62 fromDate:v1];

  v4 = [v2 dateFromComponents:v3];

  return v4;
}

void sub_10035F7F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[_TtC9appstored10ASEMetrics alloc] initWithType:1 bag:v3];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10035F904;
    v7[3] = &unk_10051B8A8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [(ASEMetrics *)v4 flushWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = ASDErrorWithSafeUserInfo();
    (*(v5 + 16))(v5, 0, v6);
  }
}

void sub_10035F904(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[9];
      }

      v8 = v7;
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Error sending metrics events. Error: %{public}@", &v9, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = ASDErrorWithSafeUserInfo();
    (*(v5 + 16))(v5, v3 == 0, v6);
  }
}

void sub_10035FA28(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = a1[6];

  sub_100232BA0(v3, 0);
}

void sub_10035FA78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 segment] == 1)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10035FCC0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Initializing now that there is network", v3, 2u);
  }

  sub_10035549C(*(a1 + 32), @"Network came up");
}

void sub_10035FD44(uint64_t a1, void *a2)
{
  if (sub_1003581BC(*(a1 + 32), 1, *(a1 + 40), a2, 0, 0.0))
  {
    v3 = sub_1001DA8BC();
    sub_1001DBEB4(v3, 7, *(a1 + 48), 0, 0);
  }
}

void sub_10035FDD8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 104);
  if (v9)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100362864;
    v28[3] = &unk_10051AEE8;
    v28[4] = a1;
    v29 = v10;
    v30 = v9;
    sub_100379C5C(v13, v28);
  }

  else
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100362944;
    v27[3] = &unk_10051AF98;
    v27[4] = a1;
    sub_100379C5C(v13, v27);
  }

  v14 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
  v15 = [v14 removeStaleSubscriptionInfoWithLogKey:v12];

  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v32 = v12;
    v33 = 1024;
    LODWORD(v34) = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%@] Cleaned up subscription state with result: %{BOOL}d", buf, 0x12u);
  }

  if (v10)
  {
    v17 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
    v18 = [v17 updateSubscriptionInfoWithEntitlement:v9 account:v10 bag:v11 logKey:v12];

    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v10 ams_DSID];
      *buf = 138412802;
      v32 = v12;
      v33 = 2114;
      v34 = v20;
      v35 = 1024;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Updated subscription info cache for account: %{public}@ with result: %{BOOL}d", buf, 0x1Cu);
    }
  }

  v21 = sub_1003D4E48();
  v22 = v21;
  if (!v21 || ([v21 isEqualToString:*(a1 + 48)] & 1) == 0)
  {
    sub_1003D50FC(AppDefaultsManager, *(a1 + 48));
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 48);
      *buf = 138412546;
      v32 = v12;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Updated cached subscription state as: %{public}@", buf, 0x16u);
    }
  }

  v25 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 48);
    *buf = 138412546;
    v32 = v12;
    v33 = 2114;
    v34 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] fsEntitlement subscription state: %{public}@", buf, 0x16u);
  }
}

void sub_100360244(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"Ocelot Repair"];
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) userInfo];
    v34 = 138543362;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Arcade] Repair change notification with userInfo: %{public}@", &v34, 0xCu);
  }

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];

  if (os_variant_has_internal_content() && (!v6 || ![v6 length]))
  {
    v7 = sub_1003D4C8C();

    if (v7)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_1003D4C8C();
        v34 = 138543362;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Arcade] Using default bundleID: %{public}@", &v34, 0xCu);
      }

      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v10 = [*(a1 + 32) userInfo];
  v11 = [v10 objectForKeyedSubscript:@"bundlePath"];

  v12 = [ASDRepairOptions alloc];
  if (v11)
  {
    v13 = [v12 initWithBundlePath:v11];
  }

  else
  {
    v13 = [v12 initWithBundleID:v6];
  }

  v14 = v13;
  v15 = [*(a1 + 32) userInfo];
  v16 = [v15 objectForKeyedSubscript:@"status"];

  if (v16)
  {
    [v14 setFairplayStatus:{objc_msgSend(v16, "unsignedIntValue")}];
  }

  v17 = [*(a1 + 32) userInfo];
  v18 = [v17 objectForKeyedSubscript:@"exitReason"];
  [v14 setExitReason:{objc_msgSend(v18, "unsignedIntegerValue")}];

  if (os_variant_has_internal_content())
  {
    v19 = [*(a1 + 32) userInfo];
    v20 = [v19 objectForKeyedSubscript:@"forceUpsell"];
    [v14 setForceUpsell:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [*(a1 + 32) userInfo];
    v22 = [v21 objectForKeyedSubscript:@"forceRevoke"];
    [v14 setForceRevoke:{objc_msgSend(v22, "BOOLValue")}];
  }

  v23 = objc_alloc_init(TaskQueue);
  v24 = sub_100278FAC([RepairApplicationTask alloc], v14, 0);
  v25 = ASDLogHandleForCategory();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v34 = 138543362;
    v35 = v11;
    v27 = "[Arcade] Starting repair for bundlePath: %{public}@";
  }

  else
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v34 = 138543362;
    v35 = v6;
    v27 = "[Arcade] Starting repair forbundleID: %{public}@";
  }

  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v27, &v34, 0xCu);
LABEL_24:

  v38 = v24;
  v28 = [NSArray arrayWithObjects:&v38 count:1];
  if (v23)
  {
    [(NSOperationQueue *)v23->_operationQueue addOperations:v28 waitUntilFinished:1];
  }

  v29 = ASDLogHandleForCategory();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v30)
    {
      if (v24)
      {
        v31 = v24[24] & 1;
      }

      else
      {
        v31 = 0;
      }

      v34 = 138543618;
      v35 = v11;
      v36 = 1024;
      v37 = v31;
      v32 = "[Arcade] Repair for bundlePath: %{public}@ complete with result: %d";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, &v34, 0x12u);
    }
  }

  else if (v30)
  {
    if (v24)
    {
      v33 = v24[24] & 1;
    }

    else
    {
      v33 = 0;
    }

    v34 = 138543618;
    v35 = v6;
    v36 = 1024;
    v37 = v33;
    v32 = "[Arcade] Repair for bundleID: %{public}@ complete with result: %d";
    goto LABEL_35;
  }
}

void sub_100360744(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Sbsync" base:v6];

    sub_10035A970(a1, v7, 0, v5, 0);
  }
}

void sub_1003607E8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100360880;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100360880(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100360900;
  v1[3] = &unk_100524918;
  v1[4] = *(a1 + 32);
  sub_1003D31A8(ApplicationProxy, 0, v1);
}

void sub_100360900(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_10035604C(*(a1 + 32), v3))
  {
    v4 = sub_1003D2550(v3);
    v5 = [v4 fileSystemRepresentation];

    if (v5)
    {
      v6 = sub_1003D2550(v3);
      [v6 fileSystemRepresentation];
      sub_100032D64();
      v8 = v7;

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1003D0F60(v3);
        v11 = sub_1003D0F1C(v3);
        v12 = @"N";
        v13 = 138544130;
        v15 = 2048;
        v14 = v10;
        if (!v8)
        {
          v12 = @"Y";
        }

        v16 = v11;
        v17 = 2114;
        v18 = v12;
        v19 = 1024;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@/%lld] launchable: %{public}@ status: %d", &v13, 0x26u);
      }
    }
  }
}

void sub_100360A6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[BagService emptyBag];
  }

  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    if (*(v9 + 32) == 4)
    {
      v10 = [v7 integerForKey:@"ocelot-payout-qualifying-duration-seconds" defaultValue:60];
      v11 = *(a1 + 32);
      if (v11)
      {
        *(v11 + 80) = v10;
      }
    }
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[9];
    }

    v14 = v13;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Posting arcade metrics", &buf, 0xCu);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    *(v15 + 9) = 1;
    v16 = *(a1 + 32);
    if (v16 && v16[4] == 3)
    {
      sub_100355594(*(a1 + 40), v8, v16);
      v16 = *(a1 + 32);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_10035ECFC(*(a1 + 40), v16, v8);
  if ([v17 count])
  {
    v18 = *(a1 + 40);
    if (v5)
    {
      v30 = v6;
      v19 = *(a1 + 48);
      v20 = *(a1 + 32);
      v21 = v17;
      v22 = v5;
      v23 = v19;
      if (v18)
      {
        v24 = [[_TtC9appstored10ASEMetrics alloc] initWithType:1 bag:v22];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v35 = sub_100360E60;
        v36 = &unk_10051C9E8;
        v37 = v20;
        v25 = v21;
        v38 = v25;
        v39 = v18;
        v40 = v22;
        v41 = v23;
        [(ASEMetrics *)v24 enqueueEvents:v25 flushEvents:0 completionHandler:&buf];
      }

      v6 = v30;
    }

    else
    {
      v29 = *(v18 + 64);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100360E48;
      block[3] = &unk_10051B790;
      v33 = *(a1 + 48);
      v32 = v6;
      dispatch_async(v29, block);
    }
  }

  else
  {
    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      if (v27)
      {
        v27 = v27[9];
      }

      v28 = v27;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] No events to report", &buf, 0xCu);
    }

    sub_10035F688(*(a1 + 40), *(a1 + 32), @"Nothing to Post", v8);
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100360E60(uint64_t a1)
{
  v2 = sub_10038689C(*(a1 + 32));
  v3 = sub_10036C90C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100360FBC;
  v8[3] = &unk_100524968;
  v9 = *(a1 + 40);
  v11 = v2;
  v10 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003612F0;
  v4[3] = &unk_10051C7A8;
  v4[4] = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v3 asyncModifyUsingTransaction:v8 completion:v4];
}

uint64_t sub_100360FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if (v9)
        {
          if (*(v9 + v7[394]))
          {
            v10 = objc_alloc(*(a1 + 48));
            v11 = *(v9 + v7[394]);
            v12 = [v3 connection];
            v13 = [v10 initWithPersistentID:v11 onConnection:v12];

            if ([v13 existsInDatabase])
            {
              [v13 setValue:&off_1005481F0 forProperty:@"has_been_posted"];
              v14 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = *(a1 + 40);
                if (v15)
                {
                  v15 = v15[9];
                }

                v16 = v15;
                v17 = *(v9 + 72);
                *buf = 138412546;
                v33 = v16;
                v34 = 2114;
                v35 = v17;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Marked event with bundleID: %{public}@ as posted", buf, 0x16u);

                v7 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
              }
            }
          }

          if (*(v9 + 344))
          {
            v18 = [ArcadeAppLaunchEventEntity alloc];
            v19 = *(v9 + 344);
            v20 = [v3 connection];
            v21 = [(SQLiteEntity *)v18 initWithPersistentID:v19 onConnection:v20];

            if ([(SQLiteEntity *)v21 existsInDatabase])
            {
              [(SQLiteEntity *)v21 setValue:&off_1005481F0 forProperty:@"has_been_posted"];
              v22 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(a1 + 40);
                if (v23)
                {
                  v23 = v23[9];
                }

                v24 = v23;
                v25 = *(v9 + 72);
                *buf = 138412546;
                v33 = v24;
                v34 = 2114;
                v35 = v25;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Marked related arcade launch event with bundleID: %{public}@ as posted", buf, 0x16u);
              }
            }

            v7 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_1003612F0(uint64_t a1)
{
  v7 = *(a1 + 32);
  v2 = *(v7 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003613D4;
  block[3] = &unk_10051C7A8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

uint64_t sub_1003613D4(uint64_t a1)
{
  sub_10035F688(*(a1 + 32), *(a1 + 40), @"Post Completed", *(a1 + 48));
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_10036142C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BagService appstoredService];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100361508;
  v9[3] = &unk_10051C340;
  v9[4] = v6;
  v10 = v5;
  v11 = v3;
  v8 = v3;
  [v4 bagOnQueue:v7 completionHandler:v9];
}

void sub_100361508(uint64_t *a1, void *a2)
{
  if (sub_100356830(a1[4], a2))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    sub_1003592C8(v3, v4, v5);
  }

  else
  {
    v6 = *(a1[6] + 16);

    v6();
  }
}

void sub_10036157C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (sub_1001F36A0(v3))
  {
    sub_1003592C8(*(a1 + 32), *(a1 + 40), v4);
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void sub_1003615F8(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    sub_1003616EC(*(a1 + 32), *(a1 + 40));
    sub_1003616EC(*(a1 + 32), *(a1 + 48));
    sub_10035D794(*(a1 + 32));
    sub_1003607E8(*(a1 + 32));
  }

  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = 138412802;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Sign out complete for accountID: %{public}@ subscribe with subscriptionState: %{public}@", &v6, 0x20u);
  }
}

void sub_1003616EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = v3[4];
    if (v5 == 4)
    {
      if (*(v3 + 10) == 1)
      {
        v7 = sub_10036C90C();
        [v7 modifyUsingTransaction:&stru_100524A28];
      }

      else
      {
        v8 = v3[12];
        v9 = sub_1001E60F4(AccountEventCoordinator, v8);

        v10 = sub_1002526A4(v9);
        v11 = sub_10036C90C();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100361FF8;
        v13[3] = &unk_100520C18;
        v14 = v9;
        v15 = v4;
        v16 = v10;
        v12 = v10;
        v7 = v9;
        [v11 modifyUsingTransaction:v13];
      }
    }

    else if (v5 == 3)
    {
      v6 = sub_10036C90C();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100361E08;
      v17[3] = &unk_100524A08;
      v18 = v4;
      [v6 modifyUsingTransaction:v17];
    }
  }
}

void sub_1003618D0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100361960;
  v2[3] = &unk_10051D1B0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100361970(uint64_t a1, void *a2)
{
  v25 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v31;
    *&v3 = 138543618;
    v23 = v3;
    do
    {
      v6 = 0;
      v26 = v4;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v7 bundleID];
        if (v8)
        {
          v9 = sub_1001FBFC4([AppEvent alloc], v7);
          v10 = v9;
          if (v7)
          {
            v39 = v9;
            v11 = [NSArray arrayWithObjects:&v39 count:1];
            v12 = *(a1 + 40);
            v29 = 0;
            v13 = sub_1003F05C0(v25, v11, v12, &v29);
            v14 = v29;
            [v13 count];

            v38 = v10;
            v15 = [NSArray arrayWithObjects:&v38 count:1];
            v16 = *(a1 + 48);
            v28 = v14;
            v17 = sub_1003F05C0(v25, v15, v16, &v28);
            v18 = v28;

            v19 = [v17 count];
            v20 = ASDLogHandleForCategory();
            v21 = v20;
            if (v18 || !v19)
            {
              v4 = v26;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = v23;
                v35 = v8;
                v36 = 2114;
                v37 = v18;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[Arcade] Error creating entity for bundleID: %{public}@ result: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v4 = v26;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v35 = v8;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[Arcade] Created app event entity with bundleID: %{public}@", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v7;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[Arcade] BundleID required for event: %{public}@", buf, 0xCu);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_100361CC8(uint64_t a1, void *a2)
{
  v3 = sub_1003F0450(a2, *(a1 + 32));
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 40) ams_DSID];
    v8 = 138543362;
    v9 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[AccountEvent] Unable to recorded initial account event for account: %{public}@", &v8, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) ams_DSID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AccountEvent] Recorded initial account event for account: %{public}@", &v8, 0xCu);
LABEL_4:
  }

LABEL_6:

  return 1;
}

uint64_t sub_100361E08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v3 && *(v3 + 10) == 1)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[9];
      }

      v8 = v7;
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] User initiated clearing out app events", &v16, 0xCu);
    }

    v9 = [v5 connection];
    v10 = v9;
    if (v9)
    {
      sub_10022C810(v9, @"DELETE FROM app_events_ocelot", 0, 0);
    }

    v11 = [v5 connection];

    if (v11)
    {
      v12 = @"DELETE FROM arcade_launch_events;";
LABEL_15:
      sub_10022C810(v11, v12, 0, 0);
    }
  }

  else
  {
    v13 = [v4 connection];
    v14 = v13;
    if (v13)
    {
      sub_10022C810(v13, @"DELETE FROM app_events_ocelot where has_been_posted = 1;", 0, 0);
    }

    v11 = [v5 connection];

    if (v11)
    {
      v12 = @"DELETE FROM arcade_launch_events where has_been_posted = 1;";
      goto LABEL_15;
    }
  }

  return 1;
}