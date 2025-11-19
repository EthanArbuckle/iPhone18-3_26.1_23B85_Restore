void sub_100000EBC(id a1)
{
  qword_10000E2E8 = objc_alloc_init(_UIOSystemBannerManager);

  _objc_release_x1();
}

void sub_1000013A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000014C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000014E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = *(WeakRetained + 2);
  v2 = [*(WeakRetained + 1) requestIdentifier];
  v3 = [v1 revokePresentableWithRequestIdentifier:v2 reason:@"timeout" animated:1 userInfo:0 error:0];
}

Class sub_100001624(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000E318)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001778;
    v4[4] = &unk_100008360;
    v4[5] = v4;
    v5 = off_100008348;
    v6 = 0;
    qword_10000E318 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000E318)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BNBannerSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10000E310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001778(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000E318 = result;
  return result;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_autoreleasePoolPop(v4);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  return v9;
}

void sub_100002770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002788()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10000E330;
  v7 = qword_10000E330;
  if (!qword_10000E330)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002C88;
    v3[3] = &unk_100008328;
    v3[4] = &v4;
    sub_100002C88(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002A98(uint64_t a1)
{
  sub_100002B08();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PLPillView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000E320 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100002B08();
  }
}

void sub_100002B08()
{
  v1[0] = 0;
  if (!qword_10000E328)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100002C14;
    v1[4] = &unk_100008360;
    v1[5] = v1;
    v2 = off_1000083A8;
    v3 = 0;
    qword_10000E328 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10000E328)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_100002C14(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000E328 = result;
  return result;
}

Class sub_100002C88(uint64_t a1)
{
  sub_100002B08();
  result = objc_getClass("PLPillContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000E330 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(_UIOverlayDaemonAppDelegate *)v3 application:v4 didFinishLaunchingWithOptions:v5, v6];
  }

  return result;
}