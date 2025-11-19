uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_100001CC0(id a1)
{
  v1 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  [v1 openApplication:@"com.apple.springboard" withOptions:0 completion:&stru_1000082A0];
}

void sub_100001D1C(id a1, BSProcessHandle *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002FF8();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Returned to Springboard.", v6, 2u);
  }
}

id sub_100002020(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v2 = *(a1 + 32);

  return [v2 _restrictionsPINControllerDidDismiss:1];
}

uint64_t sub_100002180(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [*(a1 + 32) _restrictionsPINControllerDidDismiss:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000024B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[STLog remoteViewService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000030D0();
  }
}

void sub_100002510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog remoteViewService];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003138(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client completed with success", &v7, 0xCu);
  }
}

void sub_1000026D0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[STLog remoteViewService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000030D0();
  }
}

void sub_10000272C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[STLog remoteViewService];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000031C4();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client completed with success", v5, 2u);
  }
}

void sub_1000029C8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100002B80(uint64_t a1)
{
  [*(a1 + 32) setPrefersStatusBarHiddenOverride:0];
  v2 = *(a1 + 32);

  return [v2 setNeedsStatusBarAppearanceUpdate];
}

void sub_100002C9C(id a1)
{
  v1 = MGGetStringAnswer();
  byte_10000CEE0 = [v1 isEqualToString:@"iPad"];
}

void sub_100002F7C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STLockoutAppContext.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

void sub_100003138(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@: Client completed with error: %{public}@", &v4, 0x16u);
}