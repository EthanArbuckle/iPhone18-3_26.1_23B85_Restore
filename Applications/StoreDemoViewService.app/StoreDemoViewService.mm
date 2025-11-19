void sub_10000108C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000597C(v2, v3);
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_1000015E4()
{
  if (qword_1000124A0 != -1)
  {
    sub_100005A14();
  }

  v1 = qword_100012498;

  return v1;
}

void sub_100001628(id a1)
{
  qword_100012498 = os_log_create("com.apple.MobileStoreDemo", "Default");

  _objc_release_x1();
}

id sub_10000166C()
{
  if (qword_1000124B0 != -1)
  {
    sub_100005A28();
  }

  v1 = qword_1000124A8;

  return v1;
}

void sub_1000016B0(id a1)
{
  qword_1000124A8 = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");

  _objc_release_x1();
}

id sub_1000016F4()
{
  if (qword_1000124C0 != -1)
  {
    sub_100005A3C();
  }

  v1 = qword_1000124B8;

  return v1;
}

void sub_100001738(id a1)
{
  qword_1000124B8 = os_log_create("com.apple.MobileStoreDemo", "Message");

  _objc_release_x1();
}

id sub_10000177C()
{
  if (qword_1000124D0 != -1)
  {
    sub_100005A50();
  }

  v1 = qword_1000124C8;

  return v1;
}

void sub_1000017C0(id a1)
{
  if (os_variant_has_internal_content())
  {
    v1 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v1 = &_os_log_disabled;
    v2 = &_os_log_disabled;
  }

  v3 = qword_1000124C8;
  qword_1000124C8 = v1;
}

void sub_100001830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_1000018D4(id a1)
{
  qword_1000124D8 = objc_alloc_init(MSDLogModel);

  _objc_release_x1();
}

void sub_100001E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001E84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001E9C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(@"Checking existing log file (full path) %@ against %@", v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(@"Removing %@ whose creation date is %@.", v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

void sub_10000479C(uint64_t a1)
{
  v2 = +[MSDViewServiceModel sharedInstance];
  v3 = [v2 errorToReport];

  v4 = sub_1000015E4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Operation failed...", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained operationFailed:v3];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Operation completed...", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained quit];
  }
}

void sub_100004898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateErrorState];
}

void sub_1000048D8(uint64_t a1)
{
  v2 = +[MSDViewServiceModel sharedInstance];
  v7 = [v2 progress];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained progressBar];
    [v4 setHidden:0];

    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 progressBar];
    [v7 floatValue];
    [v6 setProgress:1 animated:?];
  }
}

void sub_1000049A4(uint64_t a1)
{
  v2 = +[MSDViewServiceModel sharedInstance];
  v3 = [v2 disableIdleTimer];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained scene];
  [v4 setIdleTimerDisabled:v3 forReason:@"DisableIdleTimerCommonKey"];
}

void sub_100005008(id a1)
{
  qword_1000124E8 = objc_alloc_init(MSDViewServiceModel);

  _objc_release_x1();
}

id sub_10000585C(uint64_t a1, void *a2)
{
  v4 = sub_1000015E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to corece UIScene into UIWindowScene.", v7, 2u);
  }

  v5 = +[UIApplication sharedApplication];
  *a2 = v5;
  return [v5 requestSceneSessionDestruction:a1 options:0 errorHandler:&stru_10000C350];
}

void sub_100005900(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting idle timer disabled: %d", v2, 8u);
}

void sub_10000597C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to destroy scene session: %{public}@", &v4, 0xCu);
}