void sub_1000012F8(id *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a2;
    v11 = objc_opt_new();
    [v11 _setEndpoint:v3];

    v4 = [[NSXPCConnection alloc] initWithListenerEndpoint:v11];
    v5 = a1[1];
    a1[1] = v4;

    [a1[1] _setQueue:&_dispatch_main_q];
    v6 = a1[1];
    v7 = +[CPSViewServiceInterface presenterInterface];
    [v6 setRemoteObjectInterface:v7];

    [a1[1] setExportedObject:a1];
    v8 = a1[1];
    v9 = +[CPSViewServiceInterface presentingInterface];
    [v8 setExportedInterface:v9];

    [a1[1] resume];
    v10 = [a1 viewServicePresenter];
    [v10 establishConnection];
  }
}

id sub_10000143C()
{
  if (qword_100011B68 != -1)
  {
    sub_100004570();
  }

  v1 = qword_100011B60;

  return v1;
}

void sub_10000148C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000143C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100004584(v2, v3);
  }
}

void sub_1000014F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000143C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000045FC(v2, v3);
  }
}

void sub_1000015B8(id a1)
{
  qword_100011B60 = os_log_create("CompanionServices", "BaseVC");

  _objc_release_x1();
}

id sub_10000166C(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = sub_100005038(val);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001784;
    v5[3] = &unk_10000C3A8;
    objc_copyWeak(&v6, &location);
    v3 = [PRXAction actionWithTitle:v2 style:0 handler:v5];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100001760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1000050E4(WeakRetained);
}

id sub_1000017C4(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = +[NSBundle mainBundle];
    v2 = [v1 localizedStringForKey:@"DONE" value:&stru_10000C520 table:0];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000054D4;
    v5[3] = &unk_10000C3A8;
    objc_copyWeak(&v6, &location);
    v3 = [PRXAction actionWithTitle:v2 style:0 handler:v5];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000018DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001B5C(__CFString *a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [(__CFString *)a1 presentationContext];
      v2 = [v1 dedicatedCameraRequest];
      *buf = 138412290;
      v46 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Presenting dedicated camera prox card flow for: %@", buf, 0xCu);
    }

    v41 = objc_alloc_init(PRXIconContentViewController);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"DEDICATED_CAMERA_TITLE" value:&stru_10000C520 table:0];
    [v41 setTitle:v4];

    v5 = +[NSBundle mainBundle];
    v6 = sub_100005578(a1);
    v7 = [NSString stringWithFormat:@"%@_%@", @"DEDICATED_CAMERA_MESSAGE", v6];
    v8 = [v7 uppercaseString];

    v9 = [v5 localizedStringForKey:v8 value:&stru_10000C520 table:0];
    v10 = [NSString localizedStringWithFormat:v9];
    [v41 setSubtitle:v10];

    [v41 setDismissalType:1];
    v39 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:80.0];
    v11 = [UIImage _systemImageNamed:@"rectangle.inset.filled.and.camera"];
    v12 = [v11 imageWithConfiguration:v39];
    v13 = [v12 imageWithRenderingMode:2];
    v14 = +[UIColor labelColor];
    v38 = [v13 imageWithTintColor:v14];

    v15 = [[UIImageView alloc] initWithImage:v38];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v41 contentView];
    [v16 addSubview:v15];

    objc_initWeak(buf, a1);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"CONTINUE" value:&stru_10000C520 table:0];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100002134;
    v42[3] = &unk_10000C3A8;
    objc_copyWeak(&v43, buf);
    v19 = [PRXAction actionWithTitle:v18 style:0 handler:v42];
    v20 = [v41 addAction:v19];

    v21 = [v41 contentView];
    v22 = [v21 mainContentGuide];

    v37 = [v15 centerXAnchor];
    v36 = [v22 centerXAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v44[0] = v35;
    v34 = [v15 centerYAnchor];
    v33 = [v22 centerYAnchor];
    v23 = [v34 constraintEqualToAnchor:v33];
    v44[1] = v23;
    v24 = [v15 topAnchor];
    v25 = [v22 topAnchor];
    v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
    v44[2] = v26;
    v27 = [v15 bottomAnchor];
    v28 = [v22 bottomAnchor];
    v29 = [v27 constraintLessThanOrEqualToAnchor:v28];
    v44[3] = v29;
    v30 = [NSArray arrayWithObjects:v44 count:4];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = [(__CFString *)a1 presentProxCardFlowWithDelegate:a1 initialViewController:v41];
    length = a1->length;
    a1->length = v31;

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
  }
}

void sub_1000020CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_100002134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100002174(WeakRetained);
}

void sub_100002174(uint64_t a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [a1 presentationContext];
      v2 = [v1 dedicatedCameraRequest];
      *buf = 138412290;
      v32 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Pushing bullets view controller for: %@", buf, 0xCu);
    }

    v27 = objc_alloc_init(PRXIconContentViewController);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"DEDICATED_CAMERA_TITLE" value:&stru_10000C520 table:0];
    [v27 setTitle:v4];

    [v27 setDismissalType:1];
    v26 = sub_1000055C8(a1);
    v5 = [v27 contentView];
    [v5 addSubview:v26];

    objc_initWeak(buf, a1);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_10000C520 table:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000025C4;
    v28[3] = &unk_10000C3A8;
    objc_copyWeak(&v29, buf);
    v8 = [PRXAction actionWithTitle:v7 style:0 handler:v28];
    v9 = [v27 addAction:v8];

    v10 = [v27 contentView];
    v11 = [v10 mainContentGuide];

    v24 = [v26 topAnchor];
    v23 = [v11 topAnchor];
    v22 = [v24 constraintGreaterThanOrEqualToAnchor:v23 constant:10.0];
    v30[0] = v22;
    v21 = [v26 bottomAnchor];
    v12 = [v11 bottomAnchor];
    v13 = [v21 constraintLessThanOrEqualToAnchor:v12 constant:-20.0];
    v30[1] = v13;
    v14 = [v26 leadingAnchor];
    v15 = [v11 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v30[2] = v16;
    v17 = [v26 trailingAnchor];
    v18 = [v11 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v30[3] = v19;
    v20 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v20];

    [*(a1 + 24) pushViewController:v27 animated:1];
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

void sub_100002580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak(va);
  objc_destroyWeak((v14 - 112));
  _Unwind_Resume(a1);
}

void sub_1000025C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100005A7C(WeakRetained);
}

void sub_100002CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002CCC(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a3)
  {
    v7 = [WeakRetained viewServicePresenter];
    [v7 shareCompleted];
LABEL_5:

    goto LABEL_6;
  }

  if (!a2)
  {
    v7 = [WeakRetained viewServicePresenter];
    v8 = CPSErrorDomain;
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"User dismissed share sheet without sharing.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v8 code:104 userInfo:v9];
    [v7 shareFailedWithError:v10];

    goto LABEL_5;
  }

LABEL_6:
}

id sub_100002E64()
{
  if (qword_100011B78 != -1)
  {
    sub_100006824();
  }

  v1 = qword_100011B70;

  return v1;
}

id sub_100002EA8(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = +[NSBundle mainBundle];
    v2 = [v1 localizedStringForKey:@"CONTINUE" value:&stru_10000C520 table:0];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002FE4;
    v5[3] = &unk_10000C3A8;
    objc_copyWeak(&v6, &location);
    v3 = [PRXAction actionWithTitle:v2 style:0 handler:v5];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100002FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002FE4(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000303C(WeakRetained);
}

void sub_10000303C(void *a1)
{
  if (a1)
  {
    v2 = sub_100002E64();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Continue button pressed.", buf, 2u);
    }

    v3 = [a1 presentationContext];
    v4 = [v3 storeAuthenticationRequest];
    v5 = [v4 authenticationRequest];

    v6 = [a1 presentationContext];
    v7 = [v6 storeAuthenticationRequest];
    v8 = [v7 account];

    v9 = +[AMSProcessInfo currentProcess];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"STORE_AUTHENTICATION_TOUCH_ID_TITLE" value:&stru_10000C520 table:0];
    [v9 setLocalizedName:v11];

    v12 = [[AMSUIDelegateTokenTask alloc] initWithDelegateAuthenticateRequest:v5 account:v8 processInfo:v9 presentingViewController:a1[3]];
    objc_initWeak(buf, a1);
    v13 = [v12 perform];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003264;
    v14[3] = &unk_10000C438;
    objc_copyWeak(&v15, buf);
    [v13 addFinishBlock:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void sub_100003240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003264(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000333C;
  block[3] = &unk_10000C410;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_10000333C(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  sub_10000626C(WeakRetained, a1[4], a1[5]);
}

id sub_10000338C(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = +[NSBundle mainBundle];
    v2 = [v1 localizedStringForKey:@"DONE" value:&stru_10000C520 table:0];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000067D8;
    v5[3] = &unk_10000C3A8;
    objc_copyWeak(&v6, &location);
    v3 = [PRXAction actionWithTitle:v2 style:0 handler:v5];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000034A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000036C0(id a1)
{
  qword_100011B70 = os_log_create("CompanionServices", "StoreAuthenticationViewController");

  _objc_release_x1();
}

void sub_10000383C(id *a1)
{
  if (a1 && !a1[3])
  {
    v2 = [a1 presentationContext];
    v3 = [v2 webAuthenticationRequest];

    objc_initWeak(&location, a1);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100003B50;
    v20 = &unk_10000C480;
    objc_copyWeak(&v21, &location);
    v4 = objc_retainBlock(&v17);
    v5 = [v3 callback];

    v6 = [ASWebAuthenticationSession alloc];
    [v3 URL];
    if (v5)
      v7 = {;
      v8 = [v3 callback];
      v9 = [v6 initWithURL:v7 callback:v8 completionHandler:v4];
    }

    else
      v7 = {;
      v8 = [v3 callbackScheme];
      v9 = [v6 initWithURL:v7 callbackURLScheme:v8 completionHandler:v4];
    }

    v10 = a1[3];
    a1[3] = v9;

    [a1[3] setPresentationContextProvider:a1];
    [a1[3] setPrefersEphemeralWebBrowserSession:1];
    v11 = a1[3];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v3 additionalHeaderFields];
      [a1[3] setAdditionalHeaderFields:v12];
    }

    v13 = a1[3];
    if (objc_opt_respondsToSelector())
    {
      v14 = [a1 presentationContext];
      v15 = [v14 proxiedAppDomains];
      [a1[3] setProxiedAssociatedDomains:v15];
    }

    v16 = sub_100003D08();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting session: %@", buf, 0xCu);
    }

    [a1[3] start];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void sub_100003B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003B50(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    sub_100003BC8(WeakRetained, v8, v5);
  }
}

void sub_100003BC8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100003D4C;
    v13 = &unk_10000C410;
    objc_copyWeak(&v16, &location);
    v14 = v5;
    v15 = v6;
    v7 = objc_retainBlock(&v10);
    v8 = a1[4];
    a1[4] = v7;

    v9 = [a1 presentedViewController];

    if (!v9)
    {
      [a1 _viewControllerDismissed:0];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void sub_100003CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100003D08()
{
  if (qword_100011B88 != -1)
  {
    sub_100006838();
  }

  v1 = qword_100011B80;

  return v1;
}

void sub_100003D4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = sub_100003D08();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = CUPrintNSObjectMasked();
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session finished: %@", &v9, 0xCu);
      }

      v6 = [WeakRetained viewServicePresenter];
      [v6 webAuthenticationFinishedWithCallbackURL:*(a1 + 32)];
    }

    else
    {
      v6 = sub_100003EA8(WebAuthenticationViewController, *(a1 + 40));
      v7 = sub_100003D08();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000684C(v6, v7);
      }

      v8 = [WeakRetained viewServicePresenter];
      [v8 webAuthenticationFailedWithError:v6];
    }
  }
}

id sub_100003EA8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 domain];
  if ([v3 isEqualToString:ASWebAuthenticationSessionErrorDomain])
  {
    v4 = [v2 code];

    if (v4 == 1)
    {
      v5 = CPSErrorUnderlyingMake();
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = NSErrorF();
  }

LABEL_8:
  v6 = v5;

  return v6;
}

void sub_100004104(id a1)
{
  qword_100011B80 = os_log_create("CompanionServices", "WebAuthVC");

  _objc_release_x1();
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

id sub_1000043F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = [a2 userInfo];
    v3 = objc_opt_self();
    v4 = [v2 bs_safeObjectForKey:@"presentationContextData" ofType:v3];

    if (v4)
    {
      v5 = objc_opt_self();
      v10 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v4 error:&v10];
      v7 = v10;

      if (!v6)
      {
        v8 = sub_10000143C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v7;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to decode presentation context: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100004584(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "View service host proxy error: %@", &v2, 0xCu);
}

void sub_1000045FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "View service presenter proxy error: %@", &v2, 0xCu);
}

void sub_100004674(void *a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [a1 presentationContext];
      v3 = [v2 systemAuthenticationRequest];
      *buf = 134217984;
      v31 = [v3 service];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Presenting confirm prox card flow for: %ld", buf, 0xCu);
    }

    v28 = sub_100004A14(a1);
    v4 = [[UIImageView alloc] initWithImage:v28];
    v5 = +[UIColor systemBlueColor];
    [v4 setTintColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(PRXIconContentViewController);
    sub_100004BF0(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AE0() setTitle:?];

    sub_100004CFC(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AE0() setSubtitle:?];

    v7 = [v6 contentView];
    [v7 addSubview:v4];

    [v6 setDismissalType:1];
    sub_10000166C(a1);
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_100001AE0() addAction:?];

    v9 = [v6 contentView];
    v10 = [v9 mainContentGuide];

    v27 = [v4 centerXAnchor];
    v26 = [v10 centerXAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v23 = [v4 centerYAnchor];
    v22 = [v10 centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v29[1] = v21;
    v24 = v4;
    v11 = [v4 topAnchor];
    v12 = [v10 topAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12];
    v29[2] = v13;
    v14 = [v4 bottomAnchor];
    v15 = [v10 bottomAnchor];
    v16 = [v14 constraintLessThanOrEqualToAnchor:v15];
    v29[3] = v16;
    [NSArray arrayWithObjects:v29 count:4];
    v18 = v17 = a1;
    [NSLayoutConstraint activateConstraints:v18];

    v19 = [v17 presentProxCardFlowWithDelegate:v17 initialViewController:v6];
    v20 = v17[3];
    v17[3] = v19;
  }
}

id sub_100004A14(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentationContext];
    v3 = [v2 systemAuthenticationRequest];

    v4 = [v1 presentationContext];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 systemAuthenticationRequest];
      v7 = [v6 service];

      if (v7 == 4)
      {
        v11 = [NSBundle bundleForClass:objc_opt_class()];
        v1 = [UIImage imageNamed:@"recognize-my-voice-icon" inBundle:v11];

        goto LABEL_16;
      }

      if (v7 == 3)
      {
        v8 = @"photos-icon";
        goto LABEL_10;
      }

      if (v7 == 2)
      {
        v8 = @"shared-with-you-icon";
LABEL_10:
        v1 = [UIImage imageNamed:v8];
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v9 = [v4 restrictedAccessRequest];

    if (v9)
    {
      v10 = @"figure.child.and.lock.fill";
    }

    else
    {
      v12 = [v1 presentationContext];
      v13 = [v12 unrecognizedUserRequest];

      if (!v13)
      {
LABEL_15:
        v1 = 0;
        goto LABEL_16;
      }

      v10 = @"person.badge.shield.checkmark.fill";
    }

    v14 = [UIImage systemImageNamed:v10];
    v15 = sub_100001B00();
    v17 = [v16 configurationWithPointSize:v15 weight:?];
    v1 = [v14 imageWithConfiguration:v17];
  }

LABEL_16:

  return v1;
}

id sub_100004BF0(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentationContext];
    v3 = [v2 systemAuthenticationRequest];

    v4 = [v1 presentationContext];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 systemAuthenticationRequest];
      v7 = [v6 service];

      if ((v7 - 2) < 3)
      {
        v8 = off_10000C3C8[(v7 - 2)];
LABEL_7:
        v10 = +[NSBundle mainBundle];
        v1 = [v10 localizedStringForKey:v8 value:&stru_10000C520 table:0];

        goto LABEL_9;
      }
    }

    else
    {
      v9 = [v4 restrictedAccessRequest];

      if (v9)
      {
        v8 = @"RESTRICTED_ACCESS_TITLE";
        goto LABEL_7;
      }
    }

    v1 = 0;
  }

LABEL_9:

  return v1;
}

id sub_100004CFC(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentationContext];
    v3 = [v2 systemAuthenticationRequest];

    v4 = [v1 presentationContext];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 systemAuthenticationRequest];

      v7 = [v6 service];
      if (v7 == 4)
      {
        v16 = +[NSBundle mainBundle];
        v12 = v16;
        v17 = @"RECOGNIZE_MY_VOICE_MESSAGE";
      }

      else
      {
        if (v7 == 3)
        {
          if (([v6 options] & 2) != 0)
          {
            v19 = +[ACAccountStore defaultStore];
            v12 = [v19 aa_primaryAppleAccount];

            v14 = +[NSBundle mainBundle];
            v18 = [v14 localizedStringForKey:@"PHOTOS_CHANGES_MESSAGE" value:&stru_10000C520 table:0];
            v20 = sub_100005520(v1);
            v21 = [v12 username];
          }

          else
          {
            v10 = [v6 options];
            v11 = +[ACAccountStore defaultStore];
            v12 = [v11 aa_primaryAppleAccount];

            v13 = +[NSBundle mainBundle];
            v14 = v13;
            if ((v10 & 4) != 0)
            {
              v15 = @"PHOTOS_SHARED_ALBUMS_MESSAGE";
            }

            else
            {
              v15 = @"PHOTOS_MESSAGE";
            }

            v18 = [v13 localizedStringForKey:v15 value:&stru_10000C520 table:0];
            v20 = [v12 username];
            v21 = sub_100005520(v1);
          }

          v22 = v21;
          v1 = [NSString localizedStringWithFormat:v18, v20, v21];

          goto LABEL_24;
        }

        if (v7 != 2)
        {
          v1 = 0;
LABEL_7:

          goto LABEL_10;
        }

        v16 = +[NSBundle mainBundle];
        v12 = v16;
        v17 = @"SHARED_WITH_YOU_MESSAGE";
      }

      v14 = [v16 localizedStringForKey:v17 value:&stru_10000C520 table:0];
      v18 = sub_100005520(v1);
      v1 = [NSString localizedStringWithFormat:v14, v18];
LABEL_24:

      goto LABEL_25;
    }

    v8 = [v4 restrictedAccessRequest];

    if (v8)
    {
      v6 = +[NSBundle mainBundle];
      v12 = [v6 localizedStringForKey:@"RESTRICTED_ACCESS_MESSAGE" value:&stru_10000C520 table:0];
      v14 = sub_100005520(v1);
      v1 = [NSString localizedStringWithFormat:v12, v14];
LABEL_25:

      goto LABEL_7;
    }

    v1 = 0;
  }

LABEL_10:

  return v1;
}

id sub_100005038(void *a1)
{
  if (a1)
  {
    v1 = [a1 presentationContext];
    v2 = [v1 restrictedAccessRequest];

    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v2)
    {
      v5 = @"APPROVE";
    }

    else
    {
      v5 = @"CONFIRM";
    }

    v6 = [v3 localizedStringForKey:v5 value:&stru_10000C520 table:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000050E4(_BYTE *a1)
{
  if (a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Enable button pressed.", v3, 2u);
    }

    a1[32] = 1;
    v2 = [a1 viewServicePresenter];
    [v2 confirm];

    sub_100005184(a1);
  }
}

void sub_100005184(void *a1)
{
  if (a1)
  {
    v2 = sub_100001B00();
    v27 = [v3 configurationWithPointSize:v2 weight:?];
    v4 = [UIImage systemImageNamed:@"checkmark.circle"];
    v26 = [v4 imageWithConfiguration:v27];

    v5 = [[UIImageView alloc] initWithImage:v26];
    v6 = +[UIColor systemBlueColor];
    [v5 setTintColor:v6];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(PRXCardContentViewController);
    sub_100004BF0(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AF0() setTitle:?];

    sub_100004CFC(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AF0() setSubtitle:?];

    v8 = [v7 contentView];
    [v8 addSubview:v5];

    sub_1000017C4(a1);
    objc_claimAutoreleasedReturnValue();
    v9 = [sub_100001AF0() addAction:?];

    v10 = [v7 contentView];
    v11 = [v10 mainContentGuide];

    v25 = [v5 centerXAnchor];
    v24 = [v11 centerXAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v28[0] = v23;
    v22 = [v5 centerYAnchor];
    v21 = [v11 centerYAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v28[1] = v20;
    v12 = [v5 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13];
    v28[2] = v14;
    v15 = [v5 bottomAnchor];
    v16 = [v11 bottomAnchor];
    v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
    v28[3] = v17;
    [NSArray arrayWithObjects:v28 count:4];
    v18 = v19 = a1;
    [NSLayoutConstraint activateConstraints:v18];

    [v19[3] pushViewController:v7 animated:1];
  }
}

void sub_1000054D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

id sub_100005520(void *a1)
{
  if (a1)
  {
    v1 = [a1 presentationContext];
    v2 = [v1 deviceName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_100005578(__CFString *result)
{
  if (result)
  {
    v1 = [(__CFString *)result presentationContext];
    v2 = [v1 dedicatedCameraRequest];
    [v2 deviceType];

    return @"AppleTV";
  }

  return result;
}

id sub_1000055C8(__CFString *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(UIStackView);
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 setAxis:1];
    [v2 setAlignment:1];
    v45 = v2;
    [v2 setSpacing:30.0];
    v3 = sub_1000027E4();
    v5 = [v4 configurationWithPointSize:v3 weight:?];
    v6 = [UIImage systemImageNamed:@"video.fill" withConfiguration:v5];
    v47 = [v6 imageWithRenderingMode:1];

    v7 = +[NSBundle mainBundle];
    v8 = sub_100005578(a1);
    v9 = [NSString stringWithFormat:@"%@_%@", @"DEDICATED_CAMERA_CAMERA_MICROPHONE_BULLET", v8];
    v10 = [v9 uppercaseString];

    v11 = [v7 localizedStringForKey:v10 value:&stru_10000C520 table:0];
    v46 = sub_100005B24(a1, v47, v11);

    [v2 addArrangedSubview:v46];
    v12 = sub_1000027E4();
    v14 = [v13 configurationWithPointSize:v12 weight:?];
    v15 = +[UIColor labelColor];
    v48[0] = v15;
    v16 = +[UIColor labelColor];
    v48[1] = v16;
    v17 = +[UIColor systemGreenColor];
    v48[2] = v17;
    v18 = [NSArray arrayWithObjects:v48 count:3];
    v19 = [UIImageSymbolConfiguration configurationWithPaletteColors:v18];
    v20 = [v14 configurationByApplyingConfiguration:v19];
    v21 = [UIImage _systemImageNamed:@"battery.powerplug" withConfiguration:v20];
    [v21 imageWithRenderingMode:2];
    v23 = v22 = a1;

    v24 = +[NSBundle mainBundle];
    v25 = sub_100005578(v22);
    v26 = [NSString stringWithFormat:@"%@_%@", @"DEDICATED_CAMERA_POWER_BULLET", v25];
    v27 = [v26 uppercaseString];

    v28 = [v24 localizedStringForKey:v27 value:&stru_10000C520 table:0];
    v29 = v23;
    v30 = sub_100005B24(v22, v23, v28);

    [v45 addArrangedSubview:v30];
    v31 = sub_1000027E4();
    v33 = [v32 configurationWithPointSize:v31 weight:?];
    v34 = [UIImage systemImageNamed:@"star.fill" withConfiguration:v33];
    v35 = [v34 imageWithRenderingMode:1];

    v36 = +[NSBundle mainBundle];
    v37 = sub_100005578(v22);
    v38 = [NSString stringWithFormat:@"%@_%@", @"DEDICATED_CAMERA_FAVORITES_BULLET", v37];
    v39 = [v38 uppercaseString];

    v40 = [v36 localizedStringForKey:v39 value:&stru_10000C520 table:0];
    v41 = v22;
    v42 = v45;
    v43 = sub_100005B24(v41, v35, v40);

    [v45 addArrangedSubview:v43];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

_BYTE *sub_100005A7C(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Confirm button pressed.", v3, 2u);
    }

    v1[32] = 1;
    v2 = [v1 viewServicePresenter];
    [v2 confirm];

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_100005B24(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v6 = [[UIImageView alloc] initWithImage:v5];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v7];
    [v6 setContentMode:1];
    v8 = [PRXLabel labelWithStyle:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setText:v4];

    [v8 setTextAlignment:4];
    v9 = [UIStackView alloc];
    v17[0] = v6;
    v17[1] = v8;
    v10 = [NSArray arrayWithObjects:v17 count:2];
    v11 = [v9 initWithArrangedSubviews:v10];

    [v11 setSpacing:15.0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setAxis:0];
    [v11 setAlignment:3];
    v12 = [v6 widthAnchor];
    v13 = [v12 constraintEqualToConstant:45.0];
    v16 = v13;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
    [NSLayoutConstraint activateConstraints:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100005D24(void *a1)
{
  if (a1)
  {
    v2 = sub_100002E64();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presenting prox card flow", buf, 2u);
    }

    v29 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:80.0];
    v3 = [UIImage systemImageNamed:@"apple.logo"];
    v28 = [v3 imageWithConfiguration:v29];

    v4 = [[UIImageView alloc] initWithImage:v28];
    v5 = +[UIColor labelColor];
    [v4 setTintColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(PRXIconContentViewController);
    v7 = [v6 contentView];
    v8 = [v7 mainContentGuide];

    sub_1000060DC(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100003704() setTitle:?];

    sub_100006150(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100003704() setSubtitle:?];

    v9 = [v6 contentView];
    [v9 addSubview:v4];

    [v6 setDismissalType:1];
    sub_100002EA8(a1);
    objc_claimAutoreleasedReturnValue();
    v10 = [sub_100003704() addAction:?];

    v27 = [v4 centerXAnchor];
    v26 = [v8 centerXAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v31[0] = v25;
    v23 = [v4 centerYAnchor];
    v22 = [v8 centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v21;
    v11 = [v4 topAnchor];
    v24 = v8;
    v12 = [v8 topAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12];
    v31[2] = v13;
    v14 = [v4 bottomAnchor];
    v15 = [v8 bottomAnchor];
    [v14 constraintLessThanOrEqualToAnchor:v15];
    v17 = v16 = a1;
    v31[3] = v17;
    v18 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = [v16 presentProxCardFlowWithDelegate:v16 initialViewController:v6];
    v20 = v16[3];
    v16[3] = v19;
  }
}

id sub_1000060DC(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NSBundle mainBundle];
    v2 = [v1 localizedStringForKey:@"STORE_AUTHENTICATION_TITLE" value:&stru_10000C520 table:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100006150(void *a1)
{
  if (a1)
  {
    v2 = [a1 presentationContext];
    v3 = [v2 storeAuthenticationRequest];
    v4 = [v3 account];

    v5 = [a1 presentationContext];
    v6 = [v5 deviceName];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"STORE_AUTHENTICATION_SUBTITLE" value:&stru_10000C520 table:0];
    v9 = [v4 username];
    v10 = [NSString stringWithFormat:v8, v9, v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10000626C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_100002E64();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CUPrintNSObjectMasked();
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session finished: %@", &v11, 0xCu);
      }

      v9 = [a1 viewServicePresenter];
      [v9 storeAuthenticationFinishedWithResult:v5];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Session failed: %@", &v11, 0xCu);
      }

      v9 = [a1 viewServicePresenter];
      [v9 storeAuthenticationFailedWithError:v6];
    }

    sub_1000063E4(a1, v6 == 0);
  }
}

void sub_1000063E4(void *a1, char a2)
{
  if (a1)
  {
    v4 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:80.0];
    if (a2)
    {
      v5 = @"checkmark.circle";
    }

    else
    {
      v6 = +[UIColor systemRedColor];
      v36[0] = v6;
      v7 = +[UIColor labelColor];
      v36[1] = v7;
      v8 = [NSArray arrayWithObjects:v36 count:2];
      v9 = [UIImageSymbolConfiguration configurationWithPaletteColors:v8];
      v10 = [v4 configurationByApplyingConfiguration:v9];

      v5 = @"person.crop.circle.badge.exclamationmark";
      v4 = v10;
    }

    v31 = v4;
    v11 = [UIImage systemImageNamed:v5];
    v34 = [v11 imageWithConfiguration:v4];

    v12 = [[UIImageView alloc] initWithImage:v34];
    v13 = +[UIColor systemBlueColor];
    [v12 setTintColor:v13];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_alloc_init(PRXCardContentViewController);
    sub_1000060DC(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AF0() setTitle:?];

    sub_100006150(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100001AF0() setSubtitle:?];

    v15 = [v14 contentView];
    [v15 addSubview:v12];

    sub_10000338C(a1);
    objc_claimAutoreleasedReturnValue();
    v16 = [sub_100001AF0() addAction:?];

    v17 = [v14 contentView];
    v18 = [v17 mainContentGuide];

    v33 = [v12 centerXAnchor];
    v32 = [v18 centerXAnchor];
    v30 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v30;
    v28 = [v12 centerYAnchor];
    v27 = [v18 centerYAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v35[1] = v26;
    v19 = [v12 topAnchor];
    [v18 topAnchor];
    v20 = v29 = a1;
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];
    v35[2] = v21;
    v22 = [v12 bottomAnchor];
    v23 = [v18 bottomAnchor];
    v24 = [v22 constraintLessThanOrEqualToAnchor:v23];
    v35[3] = v24;
    v25 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v25];

    [v29[3] pushViewController:v14 animated:1];
  }
}

void sub_1000067D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

void sub_10000684C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Session failed: %@", &v2, 0xCu);
}