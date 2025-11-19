int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id sub_100000F88()
{
  if (qword_100008700 != -1)
  {
    sub_100001B44();
  }

  v1 = qword_1000086F8;

  return v1;
}

void sub_100000FCC(uint64_t a1)
{
  v2 = sub_100000F88();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Completed Maps app removal", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v4);
}

void sub_10000114C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100000F88();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Completed Maps Push Daemon processing for Maps app removal", buf, 2u);
  }

  if (v3)
  {
    v5 = sub_100000F88();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001B58(v3, v5);
    }
  }

  v6 = [*(a1 + 32) isolation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001278;
  v8[3] = &unk_100004198;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void sub_100001278(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    [*(a1 + 32) setError:v3];
  }

  else
  {
    [*(a1 + 32) setError:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v4);
}

void sub_100001414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100000F88();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Completed Analytics processing for Maps app removal", v10, 2u);
  }

  if (v3)
  {
    v5 = sub_100000F88();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001BD0(v3, v5);
    }
  }

  v6 = [*(a1 + 32) error];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 error];
    [*(a1 + 32) setError:v8];
  }

  else
  {
    [v7 setError:v3];
  }

  v9 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v9);
}

void sub_1000015F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 _geo_filtered:&stru_100004200];
    if ([v6 count])
    {
      v7 = sub_100000F88();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v31 = [v6 count];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing %llu offline subscriptions", buf, 0xCu);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = v6;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            v13 = [*(a1 + 32) completionGroup];
            dispatch_group_enter(v13);

            v14 = *(a1 + 40);
            v15 = [v12 identifier];
            v16 = [*(a1 + 32) isolation];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_1000018CC;
            v24[3] = &unk_100004228;
            v24[4] = *(a1 + 32);
            [v14 removeSubscriptionWithIdentifier:v15 callbackQueue:v16 completionHandler:v24];
          }

          v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }

      v6 = v22;
    }

    v17 = [*(a1 + 32) completionGroup];
    dispatch_group_leave(v17);
  }

  else
  {
    v18 = [*(a1 + 32) error];
    v19 = *(a1 + 32);
    if (v18)
    {
      v20 = [v19 error];
      [*(a1 + 32) setError:v20];
    }

    else
    {
      [v19 setError:v5];
    }

    v21 = [*(a1 + 32) completionGroup];
    dispatch_group_leave(v21);
  }
}

void sub_1000018CC(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = [*(a1 + 32) error];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 error];
      [*(a1 + 32) setError:v7];
    }

    else
    {
      [v6 setError:v9];
    }
  }

  v8 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v8);
}

void sub_100001A48(uint64_t a1)
{
  v1 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v1);
}

void sub_100001B00(id a1)
{
  qword_1000086F8 = os_log_create("com.apple.Maps", "MapsAppRemovalService");

  _objc_release_x1();
}

void sub_100001B58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process Maps app removal with maps push daemon: %@", &v2, 0xCu);
}

void sub_100001BD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process Maps app removal for analytics: %@", &v2, 0xCu);
}