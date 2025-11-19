void sub_1000010A4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5[5] = a1;
  v5[4] = a2;
  v5[3] = a3;
  v5[2] = a4;
  v5[1] = a5;
  v5[0] = a2;
  [v5[0] handleCancellation];
  objc_storeStrong(v5, 0);
}

_BYTE *sub_100001814(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_100001A40(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

void sub_100001A80(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_100001BA0(v6, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "listener lookup connection error %@", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  [WeakRetained dismissAndExit];

  objc_storeStrong(location, 0);
}

uint64_t sub_100001BA0(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100002238(uint64_t result, uint64_t a2, uint64_t a3)
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

void sub_100002818(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) dismissAndExit];
  objc_storeStrong(&location, 0);
}

void sub_1000029D4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100001BA0(v12, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, location[0], v10, "AKRemoteViewController showing alert for error %@", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = +[AKAlertHandler sharedInstance];
  v1 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100002B80;
  v8 = &unk_100014378;
  v9 = *(a1 + 40);
  [(AKAlertHandler *)v2 showAlertForError:v1 withCompletion:&v4];

  objc_storeStrong(&v9, 0);
}

void sub_100002B80(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v7)
  {
    v3 = *(a1 + 32);
    v4 = [NSError ak_errorWithCode:-7034 underlyingError:location];
    [v3 _callCompletionWithAuthorization:0 error:?];
  }

  objc_storeStrong(&location, 0);
}

id sub_100003108(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:?];
  [*(a1 + 32) setAuthorizationViewController:0];
  return [*(a1 + 32) endUIService];
}

void sub_1000031B0(uint64_t a1)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v3 = [*(a1 + 32) authorizationViewController];
  v2 = [v3 navigationController];
  v1 = [v2 viewIfLoaded];
  [v1 setFrame:{v4, v5}];
}

uint64_t sub_100003280(uint64_t a1)
{
  v2 = [*(a1 + 32) authorizationViewController];
  [v2 willMoveToParentViewController:0];

  v4 = [*(a1 + 32) authorizationViewController];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  v5 = [*(a1 + 32) authorizationViewController];
  [v5 removeFromParentViewController];

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000448C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
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

id sub_1000044F4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = location[0];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

AKAuthorizationRemoteViewController *__cdecl sub_100004584(id a1, AKAuthorizationPresentationContext *a2, AKAuthorizationPresenterHostProtocol *a3, id a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  v4 = [AKAuthorizationRemoteViewController alloc];
  v13[0] = [(AKAuthorizationRemoteViewController *)v4 initWithHost:v15 presentationContext:location[0]];
  sub_1000046E8();
  [v13[0] setPreferredContentSize:{v5, v6}];
  v12 = 1;
  if (AXAssistiveAccessEnabled())
  {
    v12 = 6;
  }

  [v13[0] setModalPresentationStyle:v12];
  [v13[0] setCompletionHandler:v14];
  v8 = v13[0];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v8;
}

uint64_t sub_100004C40(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_10001A8C0;
  v15 = qword_10001A8C0;
  if (!qword_10001A8C0)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100004D54;
    v7 = &unk_100014580;
    v8 = &v11;
    v9 = v16;
    sub_100004D54(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100004D54(uint64_t a1)
{
  memcpy(__dst, off_100014550, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_10001A8C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004E14()
{
  v2 = 0;
  v1 = sub_100004C40(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100004E90()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_10001A8C8;
  v13 = qword_10001A8C8;
  if (!qword_10001A8C8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100004FC0;
    v6 = &unk_1000145A8;
    v7 = &v9;
    sub_100004FC0(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100004FC0(uint64_t a1)
{
  sub_100004E14();
  Class = objc_getClass("AAUIProfilePictureStore");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_10001A8C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100005558(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] needsOptionsView])
  {
    location[0] = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = location[0];
      v11 = v16;
      sub_100001814(v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "User name is present in the context, so presenting options reset options view", v15, 2u);
    }

    objc_storeStrong(location, 0);
    if (sub_100004C40(0))
    {
      v1 = objc_alloc_init(sub_100004E90());
    }

    else
    {
      v1 = objc_alloc_init(0);
    }

    v14 = v1;
    v2 = [AKPasswordResetViewController alloc];
    v13 = [v2 initWithImageProvider:v14];
    [v13 setDelegate:a1[4]];
    [a1[4] setPasswordResetController:v13];
    v3 = [UINavigationController alloc];
    v5 = [a1[4] passwordResetController];
    v4 = [v3 initWithRootViewController:?];
    [a1[4] setRootNavigationController:?];

    v6 = [a1[4] rootNavigationController];
    [v6 setModalInPresentation:1];

    v7 = [a1[4] rootNavigationController];
    [v7 setModalPresentationStyle:2];

    v9 = [a1[4] fullscreenBackDropViewController];
    v8 = [a1[4] rootNavigationController];
    [v9 presentViewController:? animated:? completion:?];

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    [a1[4] _presentPasswordResetFlowForUsername:0];
  }
}

void sub_100005A0C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 - 48) = a1;
  *(v23 - 52) = a2;
  objc_destroyWeak((v23 - 40));
  _Unwind_Resume(*(v23 - 48));
}

void sub_100005A58(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_100001BA0(v6, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "listener lookup connection error %@", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  [WeakRetained dismissAndExit];

  objc_storeStrong(location, 0);
}

void sub_1000067A8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 96) = a1;
  *(v10 - 100) = a2;
  objc_destroyWeak((v10 - 80));
  _Unwind_Resume(*(v10 - 96));
}

void sub_1000067E8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100006994;
  v11 = &unk_1000145D0;
  objc_copyWeak(v15, a1 + 5);
  v12 = v16;
  v13 = location[0];
  v14 = a1[4];
  dispatch_async(queue, &v7);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_100006994(uint64_t a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 56));
  if (v16[0])
  {
    v5 = [v16[0] rootNavigationController];
    v4 = [v5 viewControllers];
    v6 = [v4 count] == 2;

    v15 = v6;
    v8 = [v16[0] rootNavigationController];
    v7 = [v8 viewControllers];
    v9 = [v7 count] == 1;

    v14 = v9;
    v10 = [v16[0] passwordResetController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v3 = [v16[0] passwordResetController];
      [v3 stopLoading];
    }

    if (([v16[0] needsOptionsView] & 1) == 0)
    {
      goto LABEL_9;
    }

    if (!v14)
    {
      if (v15 && ([*(a1 + 32) ak_isUserCancelError] & 1) != 0)
      {
        v2 = [v16[0] rootNavigationController];
        v1 = [v2 popToRootViewControllerAnimated:1];

        goto LABEL_14;
      }

LABEL_9:
      [v16[0] _passwordResetDidFinishWithResult:*(a1 + 40) error:*(a1 + 32)];
    }
  }

  else
  {
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_100001BA0(v17, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, location, OS_LOG_TYPE_ERROR, "Password reset remote controller before completing the authentication response with error: %@", v17, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

LABEL_14:
  objc_storeStrong(v16, 0);
}

void sub_100007084(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, uint64_t a19, id *location)
{
  *(v20 - 176) = a1;
  *(v20 - 180) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v20 - 120));
  _Unwind_Resume(*(v20 - 176));
}

void sub_1000070EC(id *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  if (v12[0])
  {
    location = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v10;
      sub_100001814(v9);
      _os_log_impl(&_mh_execute_header, log, type, "Dismissing view service after password reset finished.", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    v3 = [v12[0] fullscreenBackDropViewController];
    [v3 dismissViewControllerAnimated:0 completion:0];

    [v12[0] setFullscreenBackDropViewController:0];
    [v12[0] dismissViewControllerAnimated:0 completion:0];
    [v12[0] endUIService];
  }

  else
  {
    v8 = _AKLogSystem();
    v7 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v1 = v8;
      v2 = v7;
      sub_100001814(v6);
      _os_log_error_impl(&_mh_execute_header, v1, v2, "Password reset remote controller deallocated before ending the oop", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v12, 0);
}

void sub_1000072A8(id *a1, char a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12[1] = a1;
  if (v14)
  {
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000073E8;
    v10 = &unk_100014648;
    objc_copyWeak(v12, a1 + 5);
    v11 = a1[4];
    dispatch_async(queue, &v6);

    objc_storeStrong(&v11, 0);
    objc_destroyWeak(v12);
  }

  objc_storeStrong(&location, 0);
}

void sub_1000073E8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  v4 = 0;
  v3 = 0;
  if (location[0])
  {
    v5 = [location[0] rootNavigationController];
    v4 = 1;
    v3 = v5 != 0;
  }

  if (v4)
  {
  }

  if (v3)
  {
    v1 = [location[0] rootNavigationController];
    [v1 dismissViewControllerAnimated:1 completion:*(a1 + 32)];

    [location[0] setRootNavigationController:?];
    [location[0] setPasswordResetController:0];
  }

  else if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_1000077F0(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_10001A8D0;
  v15 = qword_10001A8D0;
  if (!qword_10001A8D0)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100007904;
    v7 = &unk_100014580;
    v8 = &v11;
    v9 = v16;
    sub_100007904(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100007904(uint64_t a1)
{
  memcpy(__dst, off_1000146C0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_10001A8D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000079C4()
{
  v2 = 0;
  v1 = sub_1000077F0(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100007A40()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_10001A8D8;
  v13 = qword_10001A8D8;
  if (!qword_10001A8D8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100007B70;
    v6 = &unk_1000145A8;
    v7 = &v9;
    sub_100007B70(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100007B70(uint64_t a1)
{
  sub_1000079C4();
  Class = objc_getClass("RUIStyle");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_10001A8D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100007C18()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_10001A8E0;
  v13 = qword_10001A8E0;
  if (!qword_10001A8E0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100007D48;
    v6 = &unk_1000145A8;
    v7 = &v9;
    sub_100007D48(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100007D48(uint64_t a1)
{
  sub_1000079C4();
  Class = objc_getClass("RemoteUIControllerPreferences");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_10001A8E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000080D8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 32) = a1;
  *(v9 - 36) = a2;
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(*(v9 - 32));
}

void sub_100008118(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_100001BA0(v6, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "listener lookup connection error %@", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  [WeakRetained dismissAndExit];

  objc_storeStrong(location, 0);
}

void sub_100008C74(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  *(v9 - 168) = a1;
  *(v9 - 172) = a2;
  _Block_object_dispose((v9 - 152), 8);
  _Unwind_Resume(*(v9 - 168));
}

void sub_100008CAC(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_100008D34(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26[1] = a1;
  v15 = AKURLBagKeyPrivateEmailUseAddress;
  v16 = [*(*(*(a1 + 48) + 8) + 40) resourceLoadDelegate];
  [v16 setBagUrlKey:v15];

  [*(*(*(a1 + 48) + 8) + 40) setResourceLoadDelegate:location[0]];
  if (location[0])
  {
    [location[0] decorateWithPrivateEmailContext:*(*(a1 + 32) + 32)];
    v26[0] = [*(*(a1 + 32) + 16) inAppAuthUIProvider];
    v25 = [UIImage imageNamed:@"icloudPlus"];
    v13 = v26[0];
    if (sub_1000077F0(0))
    {
      v3 = objc_alloc(sub_100007C18());
    }

    else
    {
      v3 = [0 alloc];
    }

    v5 = v3;
    v10 = [NSBundle bundleWithIdentifier:?];
    v9 = [NSBundle localizedStringForKey:v10 value:"localizedStringForKey:value:table:" table:@"PRIVATE_EMAIL_LOADING"];
    v4 = v25;
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v7 = [(NSBundle *)v8 localizedStringForKey:@"ICLOUD_PLUS_TEXT" value:&stru_100014970 table:@"Localizable"];
    v6 = [v5 initWithSpinner:1 spinnerLabel:v9 navBarImage:v4 navBarImageLabel:?];
    [v13 setRuiPreferences:?];

    v12 = *(*(a1 + 32) + 16);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000091C4;
    v23 = &unk_1000146F8;
    v24 = *(a1 + 32);
    [v12 presentServerProvidedUIWithConfiguration:v11 completion:&v19];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(v26, 0);
  }

  else
  {
    v18 = _AKLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000448C(v29, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40), AKURLBagKeyPrivateEmailUseAddress);
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Nil LoadDelegate for config:%@,\nurl=%@,\nkey=%@", v29, 0x20u);
    }

    objc_storeStrong(&v18, 0);
    [*(a1 + 32) _callFlowEndedCompletionWithPrivateEmail:0 error:v27];
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void sub_1000091C4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  v13[0] = [v15 objectForKey:AKPrivateEmailAddressKey];
  v12 = [v15 objectForKey:@"X-Apple-I-Private-Email-Client-Bundle"];
  v11 = 0;
  if (v13[0])
  {
    v6 = [AKPrivateEmail alloc];
    v7 = [*(a1[4] + 4) key];
    v4 = [v6 initWithAddress:v13[0] forKey:? withBundleId:?];
    v5 = v11;
    v11 = v4;
  }

  if (v11)
  {
    [a1[4] _callFlowEndedCompletionWithPrivateEmail:v11 error:0];
  }

  else
  {
    [a1[4] _callFlowEndedCompletionWithPrivateEmail:0 error:v14];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000096BC(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) dismissAndExit];
  objc_storeStrong(&location, 0);
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