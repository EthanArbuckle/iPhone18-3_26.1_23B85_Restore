void sub_100001020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000105C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_100001360(uint64_t a1)
{
  v2 = sub_1000014D4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController _dismiss", v4, 2u);
  }

  v3 = [*(a1 + 32) _remoteViewControllerProxy];
  [v3 dismiss];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v5;
}

id sub_1000014D4()
{
  if (qword_100008280 != -1)
  {
    sub_10000155C();
  }

  v1 = qword_100008278;

  return v1;
}

void sub_100001518(id a1)
{
  qword_100008278 = os_log_create("com.apple.TVAccessViewService", "Default");

  _objc_release_x1();
}