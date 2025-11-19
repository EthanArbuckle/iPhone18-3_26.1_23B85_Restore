uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100001E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanup];
}

void sub_100001ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained customRowDidTap:v3];
}

void sub_100001F30(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error occured while atempting to retrive remote proxy to open connection: %@", &v3, 0xCu);
  }
}

id sub_100002044(uint64_t a1, void *a2)
{
  result = [a2 events];
  if ((result & 0x10) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Dismissing view service due to home button event.", v4, 2u);
    }

    return [*(*(a1 + 32) + 8) transitionToVisible:0 animated:1];
  }

  return result;
}

void sub_10000222C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained remoteViewController];
  [v2 setConfiguration:v1];
}

void sub_1000025C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000025E8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "XPC connection to host app invalidated.", v3, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

void sub_100002A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performSwitchToNowPlayingForBundleID:*(a1 + 32) showNowPlaying:*(a1 + 48)];
}

void sub_100003410(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 URL];
  v5 = [v7 lastPathComponent];
  v6 = [v5 isEqualToString:@"show-now-playing"];

  if (v6)
  {
    [*(a1 + 32) _switchToNowPlaying];
    *a3 = 1;
  }
}

void sub_100003758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003788(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) processAssertion];

    if (v7)
    {
      v8 = [*(a1 + 32) processAssertion];
      [v8 invalidate];
    }

    [*(a1 + 32) setAppHandle:v5];
    v9 = [*(a1 + 32) appHandle];
    v10 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v9 pid]);
    v11 = [RBSTarget targetWithProcessIdentifier:v10];

    v12 = [RBSAssertion alloc];
    v13 = [RBSDomainAttribute attributeWithDomain:@"com.apple.music" name:@"MusicUIService"];
    v33 = v13;
    v14 = [NSArray arrayWithObjects:&v33 count:1];
    v15 = [v12 initWithExplanation:@"MusicUIService" target:v11 attributes:v14];
    [*(a1 + 32) setProcessAssertion:v15];

    v16 = [*(a1 + 32) processAssertion];
    v26 = 0;
    LOBYTE(v15) = [v16 acquireWithError:&v26];
    v17 = v26;

    if ((v15 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000041B8(v17);
    }

    v18 = [*(a1 + 32) appHandle];
    v19 = [v18 taskNameRight];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100003AB0;
    v24 = &unk_10000C2B0;
    objc_copyWeak(&v25, (a1 + 48));
    [BSPortDeathSentinel monitorSendRight:v19 withHandler:&v21];

    objc_destroyWeak(&v25);
  }

  [*(a1 + 32) setLaunchRequested:{0, v21, v22, v23, v24}];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138543874;
    v28 = v20;
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Open application completed. service:%{public}@, process:%{public}@, error:%{public}@", buf, 0x20u);
  }
}

void sub_100003AB0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B40;
  block[3] = &unk_10000C2B0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100003B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAppHandle:0];
  [WeakRetained _launchTargetAppIfNecessary];
}

void sub_1000041B8(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to acquire assertion. %{public}@", &v1, 0xCu);
}