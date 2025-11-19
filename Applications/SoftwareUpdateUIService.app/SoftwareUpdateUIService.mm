id sub_100001698(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = 1.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = 0.0;
  }

  return [v2 setAlpha:{v3, a1, a1}];
}

id sub_1000016F4(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  if (*(a1 + 48))
  {
    result = [*(*(a1 + 32) + 16) becomeFirstResponder];
  }

  else
  {
    result = [*(*(a1 + 32) + 16) resignFirstResponder];
  }

  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

uint64_t sub_100001A74(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

_BYTE *sub_100001BA4(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_10000315C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_100003548(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  if (location[0])
  {
    objc_storeStrong(a1[4] + 12, location[0]);
    [*(a1[4] + 12) setDelegate:a1[4]];
    [a1[4] _setChildViewController:*(a1[4] + 12)];
    v4 = [*(a1[4] + 12) view];
    [v4 setAlpha:0.0];

    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100003774;
    v13 = &unk_1000185A8;
    v14[0] = a1[4];
    [UIView animateWithDuration:&v9 animations:0.4];
    objc_storeStrong(v14, 0);
  }

  else
  {
    v8 = SUSUILogAuthenticationUI();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      sub_100001BA4(v6);
      _os_log_impl(&_mh_execute_header, log, type, "Failed to create emergency call view controller", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    [a1[4] _authenticationCancelled];
  }

  objc_storeStrong(location, 0);
}

void sub_100003774(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 96) view];
  [v1 setAlpha:1.0];
}

void sub_100003958(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 96) view];
  [v1 setAlpha:0.0];
}

void sub_1000040C0(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v3 = 0;
  if (*(a1 + 48))
  {
    v1 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) passcode];
    v3 = 1;
    v1 = v4;
  }

  v5[0] = v1;
  if (v3)
  {
  }

  [*(a1 + 40) _attemptUnlock:*(a1 + 32) passcode:v5[0]];
  objc_storeStrong(v5, 0);
}

void sub_10000470C(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = *(a1[4] + 4);
  v2 = *(a1[4] + 6);
  v3 = *(a1[4] + 2);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100004858;
  v9 = &unk_100018670;
  v10 = a1[4];
  v11[0] = a1[5];
  [v4 presentTermsIfNecessaryForUpdate:v2 overController:v3 showLoadSpinner:0 completion:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_100004858(NSObject *a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100001A74(v9, v3, location);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Terms accepted? %@, error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  if (v7)
  {
    [(objc_class *)a1[4].isa _termsAgree];
  }

  else
  {
    [(objc_class *)a1[4].isa _termsDisagree];
  }

  if (!location)
  {
    [*(a1[4].isa + 3) setAlpha:0.0];
    [*(a1[4].isa + 3) setHidden:1];
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_1000050EC(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000052DC(uint64_t a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_alloc_init(SUKeybagOptions);
  [v13[0] setDescriptor:*(*(a1 + 32) + 48)];
  [v13[0] setPasscode:*(a1 + 40)];
  [v13[0] setKeybagType:1];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  *(*(*(a1 + 48) + 8) + 24) = [WeakRetained createInstallationKeybagWithOptions:v13[0]];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    location = SUSUILogAuthenticationUI();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v11;
      sub_100001BA4(v10);
      _os_log_impl(&_mh_execute_header, log, type, "Successfully created installation keybag with passcode!", v10, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v9 = SUSUILogAuthenticationUI();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v9;
      v2 = v8;
      sub_100001BA4(v7);
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create installation keybag with passcode!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(v13, 0);
}

void sub_1000056F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, id *location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v19 - 80));
  _Unwind_Resume(a1);
}

void sub_100005740(uint64_t a1, char a2)
{
  v10 = a1;
  v9 = a2;
  location[1] = a1;
  location[0] = SUSUILogAuthenticationUI();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v7;
    sub_100001BA4(v6);
    _os_log_impl(&_mh_execute_header, log, type, "Dismissal completed", v6, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndSendCompletionResponse:*(a1 + 40) & 1];
}

uint64_t sub_1000063DC(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_100006A18(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v9[0] = SUSUILogLaggardsUI();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    v5 = [a1[4] buildSUSettingsAction:1];
    v7 = v5;
    sub_100006BC8(v10, "[SUSUIScheduleUpdateViewController performUpdateNow]_block_invoke", v7);
    _os_log_impl(&_mh_execute_header, log, type, "%s: Opening the Software Update Settings pane with URL: %@", v10, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [a1[4] buildSUSettingsAction:1];
  [v2 openSensitiveURL:? withOptions:?];
}

uint64_t sub_100006BC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100007394(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_100007400(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) cancellationDialogRemindMeLaterButtonTapped:location[0]];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(location, 0);
}

uint64_t start(int a1, char **a2)
{
  context = objc_autoreleasePoolPush();
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v8 = UIApplicationMain(a1, a2, 0, v4);

  objc_autoreleasePoolPop(context);
  return v8;
}

void sub_10000895C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  objc_storeStrong((*(a1 + 32) + 8), location[0]);
  [*(*(a1 + 32) + 8) setDelegate:*(a1 + 32)];
  [*(a1 + 32) _setRootViewController:*(*(a1 + 32) + 8)];
  v2 = [*(*(a1 + 32) + 8) view];
  [v2 setAlpha:0.0];

  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100008B14;
  v8 = &unk_1000185A8;
  v9[0] = *(a1 + 32);
  [UIView animateWithDuration:&v4 animations:0.4];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100008B14(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) view];
  [v1 setAlpha:1.0];
}

void sub_100008C5C(uint64_t a1)
{
  [*(a1 + 32) _fireActionWithResponseIfNecessary:0];
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 dismiss];
}

void sub_100008F00(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) view];
  [v1 setAlpha:0.0];
}

void sub_100008F68(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];
}

uint64_t sub_10000A694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_10000AB80(uint64_t a1)
{
  if (*(a1 + 40) == dword_10001F900)
  {
    v1 = [*(a1 + 32) _remoteViewControllerProxy];
    [v1 setIdleTimerDisabled:0 forReason:@"reset"];
  }
}

uint64_t sub_10000C084(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10000C31C(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v1 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10000C40C;
  v8 = &unk_1000185A8;
  v9[0] = a1[4];
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

void sub_10000C40C(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = *(a1[4] + 1);
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_10000C4E4;
  v6 = &unk_1000185A8;
  v7[0] = a1[4];
  [v1 dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v7, 0);
}

void sub_10000C4E4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = SUSUILogLaggardsUI();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v4, "[SUSUIRemoteLaggardsUIHostingController handleCancelButtonTapped:]_block_invoke_3");
    _os_log_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEFAULT, "%s: Dismissed controller", v4, 0xCu);
  }

  objc_storeStrong(location, 0);
  [a1[4] _fireActionWithResponseIfNecessary:0];
  v1 = [a1[4] _remoteViewControllerProxy];
  [v1 dismiss];
}

void sub_10000C614(NSObject *a1, char a2)
{
  v6 = a1;
  v5 = a2;
  oslog[1] = a1;
  oslog[0] = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    sub_100006BC8(v7, "[SUSUIRemoteLaggardsUIHostingController handleCancelButtonTapped:]_block_invoke", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: should proceed with dialog cancellation: %@", v7, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  if (v5)
  {
    (*(a1[4].isa + 2))();
  }
}

void sub_10000C84C(uint64_t a1)
{
  [*(a1 + 32) _fireActionWithResponseIfNecessary:0];
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 dismiss];
}