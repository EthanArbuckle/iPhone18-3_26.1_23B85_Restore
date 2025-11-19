void sub_100001240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100001374();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "App Clip request finished with error: %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

uint64_t sub_100001374()
{
  if (qword_10000CDB8 != -1)
  {
    sub_10000275C();
  }

  return qword_10000CDB0;
}

void sub_1000013AC(id a1)
{
  qword_10000CDB0 = os_log_create("com.apple.ClipViewService", "ClipViewService");

  _objc_release_x1();
}

void sub_1000014F0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100001374();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100002770(v2, v3);
  }
}

void sub_1000015D4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForSetting:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v13 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
    v5 = v13;
    if (v4)
    {
      v6 = objc_alloc_init(UIViewController);
      [v6 setModalPresentationStyle:5];
      v7 = *(a1 + 40);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000175C;
      v10[3] = &unk_100008338;
      v10[4] = v7;
      v11 = v4;
      v12 = v6;
      v8 = v6;
      [v7 presentViewController:v8 animated:1 completion:v10];
    }

    else
    {
      v9 = sub_100001374();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000027E8(v5, v9);
      }
    }
  }
}

void sub_10000175C(uint64_t a1)
{
  v2 = [[CPSLocationConsentViewController alloc] initWithRequest:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) setModalPresentationStyle:2];
  objc_initWeak(&location, *(a1 + 32));
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10000187C;
  v8 = &unk_100008310;
  objc_copyWeak(&v9, &location);
  [*(*(a1 + 32) + 16) setActionHandler:&v5];
  [*(a1 + 48) presentViewController:*(*(a1 + 32) + 16) animated:1 completion:{0, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_10000185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000187C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissLocationContentViewControllerAnimated:1 response:a2];
}

void sub_1000019A0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) canSendResponse])
  {
    v2 = objc_alloc_init(BSMutableSettings);
    v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    [v2 setObject:v3 forSetting:0];

    v4 = *(*(a1 + 32) + 8);
    v5 = [BSActionResponse responseWithInfo:v2];
    [v4 sendResponse:v5];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v10 = [*(a1 + 32) _remoteViewControllerProxy];
  [v10 dismiss];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

uint64_t sub_100001BE0()
{
  v2[0] = 0;
  if (!qword_10000CDC0)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000025C8;
    v2[4] = &unk_100008400;
    v2[5] = v2;
    v3 = off_1000083E8;
    v4 = 0;
    qword_10000CDC0 = _sl_dlopen();
  }

  v0 = qword_10000CDC0;
  if (!qword_10000CDC0)
  {
    sub_100002860(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

void sub_100001FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000206C(uint64_t a1)
{
  v2 = [[CPSLaunchContentViewController alloc] initWithURL:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v5 = *(a1 + 32);

  return [v5 _displayLaunchContentViewController];
}

void sub_100002218(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100001374();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100002770(v2, v3);
  }
}

void sub_1000022EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100001374();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000028E0(v2, v3);
  }
}

void sub_100002440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000025C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CDC0 = result;
  return result;
}

Class sub_10000263C(uint64_t a1)
{
  sub_100001BE0();
  result = objc_getClass("PRXFlowConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000029D0();
  }

  qword_10000CDC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002694(uint64_t a1)
{
  v2 = sub_100001BE0();
  result = dlsym(v2, "PRXSupportedInterfaceOrientations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CDD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000026E4(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received an invalid URL from NSUserActivity. %{sensitive}@", &v2, 0xCu);
}

void sub_100002770(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "configureWithContext: error when configuring remote view controller proxy: %{public}@", &v2, 0xCu);
}

void sub_1000027E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fail to decode location confirmation request with error: %@", &v2, 0xCu);
}

void sub_100002860(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ProxCardKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSAlertViewController.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1000028E0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "configureWithContext: error when preparing remote view controller proxy: %{public}@", &v2, 0xCu);
}

void sub_100002958()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"UIInterfaceOrientationMask _PRXSupportedInterfaceOrientations(UIViewController *__strong, BOOL)"];
  [v0 handleFailureInFunction:v1 file:@"CPSAlertViewController.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1000029D0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPRXFlowConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSAlertViewController.m" lineNumber:22 description:{@"Unable to find class %s", "PRXFlowConfiguration"}];

  __break(1u);
  NSStringFromClass(v2);
}