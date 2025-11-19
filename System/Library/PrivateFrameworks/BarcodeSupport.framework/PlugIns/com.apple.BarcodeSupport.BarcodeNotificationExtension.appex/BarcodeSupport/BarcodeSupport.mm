void sub_100001E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100001E84(uint64_t a1)
{
  [*(a1 + 40) preferredContentSize];
  v2 = *(a1 + 32);

  return [v2 setPreferredContentSize:?];
}

void sub_1000026A8(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = @"fail";
    v5 = *(a1 + 32);
    if (a2)
    {
      v4 = @"succeed";
    }

    v6 = 138478083;
    v7 = v5;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "NotificationViewController: launch URL did %{private}@ did %{public}@", &v6, 0x16u);
  }
}

Class sub_100002938(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10000CCF0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002A64;
    v3[4] = &unk_100008350;
    v3[5] = v3;
    v4 = off_100008338;
    v5 = 0;
    qword_10000CCF0 = _sl_dlopen();
  }

  if (!qword_10000CCF0)
  {
    sub_1000031AC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DDDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100003130();
  }

  qword_10000CCE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002A64(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CCF0 = result;
  return result;
}

void sub_100003098(void *a1)
{
  v1 = [a1 _bcs_privacyPreservingDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "NotificationViewController: Error creating NSKeyedUnarchiver %{public}@", &v2, 0xCu);
}

void sub_100003130()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getDDDetectionControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NotificationViewController.m" lineNumber:28 description:{@"Unable to find class %s", "DDDetectionController"}];

  __break(1u);
}

void sub_1000031AC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NotificationViewController.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
  CGRectGetHeight(v4);
}