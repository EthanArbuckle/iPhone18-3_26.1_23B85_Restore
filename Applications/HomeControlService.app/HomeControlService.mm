void sub_1000028D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000028F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dropInViewController];
  [v1 beginAppearanceTransition:1 animated:0];

  v2 = [WeakRetained dropInViewController];
  [WeakRetained addChildViewController:v2];

  v3 = [WeakRetained view];
  v4 = [WeakRetained dropInViewController];
  v5 = [v4 view];
  [v3 addSubview:v5];

  v6 = [WeakRetained view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [WeakRetained dropInViewController];
  v16 = [v15 view];
  [v16 setFrame:{v8, v10, v12, v14}];

  v17 = [WeakRetained dropInViewController];
  [v17 didMoveToParentViewController:WeakRetained];

  v18 = [WeakRetained dropInViewController];
  [v18 endAppearanceTransition];
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

void sub_1000035B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100003B98(a1, v3, v4);
  }
}

void sub_1000037A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000037C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 events] & 0x10) != 0)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Home button pressed.", buf, 2u);
    }

    v5 = 32;
    goto LABEL_9;
  }

  if ([v3 events])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock button pressed.", v6, 2u);
    }

    v5 = 40;
LABEL_9:

    *(*(*(a1 + v5) + 8) + 24) = 1;
  }
}

void sub_1000038C0(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  v3 = [v2 view];
  [v3 visibleBounds];
  CGAffineTransformMakeTranslation(&v10, 0.0, -v4);
  v5 = [*(a1 + 32) remoteViewController];
  v6 = [v5 view];
  v9 = v10;
  [v6 setTransform:&v9];

  v7 = [*(a1 + 32) remoteViewController];
  v8 = [v7 view];
  [v8 setAlpha:0.0];
}

void sub_100003998(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) _remoteViewControllerProxy];
    [v2 invalidate];
  }
}

void sub_100003B00(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ Remote View Controller Proxy is nil, returning", &v4, 0xCu);
}

void sub_100003B98(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(*(a1 + 32));
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ Remote View Service Error Handler called with error %@", &v6, 0x16u);
}