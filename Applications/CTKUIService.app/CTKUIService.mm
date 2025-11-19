id sub_1000015FC()
{
  if (qword_10000CA80 != -1)
  {
    sub_1000020B4();
  }

  v1 = qword_10000CA88;

  return v1;
}

void sub_100001A04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_100001A40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _denyTokenAccess];
}

void sub_100001A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _grantTokenAccess];
}

void sub_100001D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000015FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100002248(v3, v4);
  }

  [*(a1 + 32) _invalidate];
}

void sub_100001E5C(id a1)
{
  qword_10000CA88 = os_log_create("com.apple.CryptoTokenKit", "tkui");

  _objc_release_x1();
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

void sub_100001F54(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKUITokenAccessPromptVC.m" lineNumber:57 description:@"Host must inject endpoint to receive user choice"];
}

void sub_100001FC8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKUITokenAccessPromptVC.m" lineNumber:65 description:@"Host must provide request info"];
}

void sub_10000203C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not decode info. Received error: '%@'", &v2, 0xCu);
}

void sub_1000020C8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKUITokenAccessPromptVC.m" lineNumber:121 description:@"Multiple connections to the the UI server are not supported"];
}

void sub_10000213C(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 8) clientDisplayName];
  v5 = [*(a1 + 8) providerDisplayName];
  v6 = v5;
  v7 = *(a1 + 24);
  v8 = @"unknown";
  if (v7 == 2)
  {
    v8 = @"denied";
  }

  v9 = 138412802;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  if (v7 == 1)
  {
    v8 = @"granted";
  }

  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Request to allow '%@' access to token provided by '%@' was '%@'", &v9, 0x20u);
}

void sub_100002248(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not access UI server. Received error: %@", &v2, 0xCu);
}