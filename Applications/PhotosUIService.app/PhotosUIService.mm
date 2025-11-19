void sub_100001154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _remoteViewControllerProxy];
  [v3 deactivate];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 _remoteViewControllerProxy];
  [v4 invalidate];
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

void sub_100001524(uint64_t a1)
{
  v4 = [*(a1 + 32) action];
  if ([v4 canSendResponse])
  {
    if (*(a1 + 40) == 1)
    {
      v2 = +[BSActionResponse response];
      [v4 sendResponse:v2];
    }

    else
    {
      v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v3 = [BSActionResponse responseForError:v2];
      [v4 sendResponse:v3];
    }
  }

  else
  {
    v2 = [*(a1 + 32) _remoteViewControllerProxy];
    [v2 deactivate];
  }
}

void sub_10000170C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001730(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finish:a2];
}

void sub_100001848(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLPickerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content analysis policy: %@", buf, 0xCu);
    }
  }

  v5 = [a1[5] actions];
  v6 = [v5 anyObject];
  [a1[4] setAction:v6];

  v7 = [a1[5] userInfo];
  v8 = [v7 objectForKeyedSubscript:@"nonPreviewableCompactSCSensitivityAnalysis"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000019E0;
  block[3] = &unk_1000081F8;
  v9 = a1[4];
  v12 = v8;
  v13 = v9;
  v14 = a1[6];
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000019E0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[PXSensitivityInterventionManager alloc] initWithCompactSCSensitivityAnalysis:objc_msgSend(*(a1 + 32) analysisMediaType:"integerValue") interventionType:{0, 3}];
    [*(a1 + 40) setSensitivityInterventionManager:v2];
  }

  else
  {
    v2 = PLPickerGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Nil nonPreviewableCompactSCSensitivityAnalysisNumber", v4, 2u);
    }
  }

  [*(a1 + 40) _displayInterventionController];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100001DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001E0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _remoteViewControllerProxy];
  [v3 deactivate];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 _remoteViewControllerProxy];
  [v4 invalidate];
}

void sub_10000221C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100002254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownRemoteViewController];
}

void sub_10000229C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownRemoteViewController];
}

void sub_1000024C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100002500(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIApplication sharedApplication];
  v5 = [NSURL URLWithString:@"https://developer.apple.com/documentation/photokit"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002638;
  v6[3] = &unk_100008298;
  objc_copyWeak(&v7, (a1 + 32));
  [v4 openURL:v5 withCompletionHandler:v6];

  objc_destroyWeak(&v7);
}

void sub_1000025F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownRemoteViewController];
}

void sub_100002638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownRemoteViewController];
}