uint64_t start(int a1, char **a2)
{
  if (qword_100011790 != -1)
  {
    sub_100004A50();
  }

  v4 = qword_100011798;
  if (os_log_type_enabled(qword_100011798, OS_LOG_TYPE_DEBUG))
  {
    sub_100004A64(v4);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  objc_autoreleasePoolPop(v5);
  return v8;
}

void sub_100000FE0(id a1)
{
  qword_100011798 = os_log_create("com.apple.AppSSO", "AppSSOUIService");

  _objc_release_x1();
}

void sub_100001068(id a1)
{
  qword_1000117A0 = dispatch_queue_create("com.apple.AppSSO.ui-queue", 0);

  _objc_release_x1();
}

id sub_100001178()
{
  if (qword_1000117B0 != -1)
  {
    sub_100004AFC();
  }

  v1 = qword_1000117B8;

  return v1;
}

void sub_10000152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100001564()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000117C0;
  v7 = qword_1000117C0;
  if (!qword_1000117C0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000019AC;
    v3[3] = &unk_10000C350;
    v3[4] = &v4;
    sub_1000019AC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001644(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = sub_100001178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100004BE8();
    }
  }
}

void sub_1000016AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100001178();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100004C50();
    }
  }
}

void sub_1000018A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000018BC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100001178();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100004CF8();
  }
}

void sub_100001968(id a1)
{
  qword_1000117B8 = os_log_create("com.apple.AppSSO", "SOUIDaemonConnection");

  _objc_release_x1();
}

void sub_1000019AC(uint64_t a1)
{
  sub_100001A04();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOInternalProtocols");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000117C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100004D68();
    sub_100001A04();
  }
}

void sub_100001A04()
{
  v1[0] = 0;
  if (!qword_1000117C8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100001B00;
    v1[4] = &unk_10000C388;
    v1[5] = v1;
    v2 = off_10000C370;
    v3 = 0;
    qword_1000117C8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000117C8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100001B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000117C8 = result;
  return result;
}

void sub_100001B74(uint64_t a1)
{
  sub_100001A04();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOErrorHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000117D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100004D90();
    sub_100001BCC();
  }
}

void sub_100001BD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_100001CBC()
{
  if (qword_1000117D8 != -1)
  {
    sub_100004DB8();
  }

  v1 = qword_1000117E0;

  return v1;
}

void sub_1000020EC(id a1)
{
  qword_1000117E0 = os_log_create("com.apple.AppSSO", "SOUIServiceAppDelegate");

  _objc_release_x1();
}

id sub_100002204()
{
  if (qword_1000117E8 != -1)
  {
    sub_100004DCC();
  }

  v1 = qword_1000117F0;

  return v1;
}

id sub_100002F9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000117F8;
  v7 = qword_1000117F8;
  if (!qword_1000117F8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000047FC;
    v3[3] = &unk_10000C350;
    v3[4] = &v4;
    sub_1000047FC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100003064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000307C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = sub_100002204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestAuthorizationViewControllerWithCompletion: remoteViewController = %{public}@, error = %{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong(v9 + 3, a2);
    [*(*(a1 + 32) + 24) setDelegate:?];
    v10 = [*(a1 + 40) identifier];
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = v10;

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(v13 + 16);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003270;
    v18[3] = &unk_10000C3D0;
    v18[4] = v13;
    v19 = v14;
    [v15 beginAuthorizationWithRequestParameters:v19 completion:v18];
  }

  else
  {
    v16 = [*(a1 + 40) identifier];
    v17 = [sub_100002F9C() errorWithCode:-1000 message:@"Missing remote view controller" suberror:v7];
    [v9 authorization:v16 didCompleteWithCredential:0 error:v17];
  }
}

void sub_100003270(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240450;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithRequestParameters: %{public}d, %{public}@", v9, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) identifier];
    [v7 authorization:v8 didCompleteWithCredential:0 error:v5];
  }
}

id sub_100003660()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100011808;
  v7 = qword_100011808;
  if (!qword_100011808)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000049C4;
    v3[3] = &unk_10000C350;
    v3[4] = &v4;
    sub_1000049C4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100003728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000038D4(uint64_t a1)
{
  v2 = sub_100002204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100004F7C();
  }

  v3 = [*(a1 + 32) _remoteViewControllerProxy];
  [v3 dismiss];
}

void sub_100003934(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = sub_100002204();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100004FB8();
    }

    v4 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003A2C;
    v7[3] = &unk_10000C448;
    v5 = v2;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 dismissViewControllerAnimated:0 completion:v7];
  }
}

void sub_100003A2C(uint64_t a1)
{
  v2 = sub_100002204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000502C(a1);
  }

  v3 = [*(a1 + 40) _remoteViewControllerProxy];
  [v3 dismiss];
}

uint64_t sub_1000040D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000040F0(uint64_t a1)
{
  v2 = sub_100002204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000514C(a1);
  }
}

void sub_100004298(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ did finish completion: success = %{public}@, error = %{public}@", &v9, 0x20u);
  }
}

void sub_1000047B8(id a1)
{
  qword_1000117F0 = os_log_create("com.apple.AppSSO", "SOUIServiceViewController");

  _objc_release_x1();
}

void sub_1000047FC(uint64_t a1)
{
  sub_100004854();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOErrorHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000117F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100004D90();
    sub_100004854();
  }
}

void sub_100004854()
{
  v1[0] = 0;
  if (!qword_100011800)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100004950;
    v1[4] = &unk_10000C388;
    v1[5] = v1;
    v2 = off_10000C518;
    v3 = 0;
    qword_100011800 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100011800)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100004950(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011800 = result;
  return result;
}

Class sub_1000049C4(uint64_t a1)
{
  sub_100004854();
  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100005260();
  }

  qword_100011808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100004A34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100004B78()
{
  sub_100001BCC();
  sub_100001BF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100004CF8()
{
  sub_100001BCC();
  sub_100001BF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100004F04()
{
  sub_100004A28();
  sub_100004A1C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004F40()
{
  sub_100004A28();
  sub_100004A1C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004F7C()
{
  sub_100004A28();
  sub_100004A1C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000502C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100004A1C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000514C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100004A1C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000051C4(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_100004A1C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}