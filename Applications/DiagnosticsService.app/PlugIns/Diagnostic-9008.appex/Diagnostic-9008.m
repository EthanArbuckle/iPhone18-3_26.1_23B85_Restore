void sub_100002F04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = handleForCategory();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000C9CC();
    }

    [*(a1 + 32) resetState];
    [*(a1 + 32) showUnknownErrorAlertWithCode:a3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rendering xmlui", v11, 2u);
    }

    v8 = [*(a1 + 32) remoteUIController];
    v9 = [*(a1 + 32) activeTokenChallenger];
    v10 = [v9 endpointBaseURL];
    [v8 loadData:v5 baseURL:v10];
  }
}

void sub_10000350C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_100003530(id a1, RUIElement *a2)
{
  v2 = [(RUIElement *)a2 identifier];
  v3 = [v2 isEqualToString:@"next"];

  return v3;
}

void sub_100003574(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Next tapped", buf, 2u);
  }

  [WeakRetained transitionToState:3];
  v6 = [v3 visiblePage];

  if (v6)
  {
    v7 = [v3 visiblePage];
    v8 = [v7 view];
    [v8 endEditing:1];
  }

  [v3 startNavigationBarSpinnerWithTitle:&stru_100018C40];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036E0;
  block[3] = &unk_100018860;
  block[4] = *(a1 + 32);
  v11 = v3;
  v12 = WeakRetained;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000036E0(id *a1)
{
  v2 = [a1[4] authenticator];
  v3 = a1[5];
  v18 = 0;
  v4 = [v2 authenticateFromObjectModel:v3 outRequest:&v18];
  v5 = v18;

  v6 = handleForCategory();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA78();
    }

    [a1[5] stopNavigationBarSpinner];
    [a1[5] activateElement:0 completion:0];
    v8 = a1[6];
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFF36)
    {
      [v8 showUserAuthErrorAlert];
    }

    else
    {
      [v8 showUnknownErrorAlertWithCode:v4];
    }

    [a1[6] transitionToState:2];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDMS authentication succeed", buf, 2u);
    }

    [a1[6] transitionToState:4];
    v9 = [a1[6] activeTokenChallenger];
    v10 = [a1[6] authenticator];
    v11 = [v10 authKitSession];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000038B8;
    v14[3] = &unk_100018838;
    v12 = a1[5];
    v13 = a1[6];
    v15 = v12;
    v16 = v13;
    [v9 startRequest:v5 session:v11 completion:v14];
  }
}

void sub_1000038B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = handleForCategory();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000CAE8();
    }

    [*(a1 + 32) stopNavigationBarSpinner];
    [*(a1 + 32) activateElement:0 completion:0];
    [*(a1 + 40) transitionToState:2];
    [*(a1 + 40) showUnknownErrorAlertWithCode:a3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loading unlock status", v11, 2u);
    }

    v8 = [*(a1 + 40) remoteUIController];
    v9 = [*(a1 + 40) activeTokenChallenger];
    v10 = [v9 endpointBaseURL];
    [v8 loadData:v5 baseURL:v10];
  }
}

void sub_100003A98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

BOOL sub_100003AB4(id a1, RUIElement *a2)
{
  v2 = [(RUIElement *)a2 identifier];
  v3 = [v2 isEqualToString:@"skip"];

  return v3;
}

void sub_100003AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "skip tapped", v3, 2u);
  }

  [WeakRetained transitionToState:5];
}

void sub_100005500(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005600;
  block[3] = &unk_1000188F8;
  v16 = v8;
  v17 = v7;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v18 = v9;
  v19 = v11;
  v20 = v10;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100005600(uint64_t a1)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) URL];
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Response URL: %{public}@", &v11, 0xCu);
  }

  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) allHeaderFields];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Response Headers: %{public}@", &v11, 0xCu);
  }

  if (*(a1 + 40))
  {
    v6 = handleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [[NSString alloc] initWithData:*(a1 + 40) encoding:4];
      v11 = 138477827;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response Body: %{private}@", &v11, 0xCu);
    }
  }

  if (*(a1 + 64))
  {
    if (*(a1 + 48))
    {
      v8 = handleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000D124((a1 + 48));
      }

      v9 = *(*(a1 + 64) + 16);
    }

    else
    {
      [*(a1 + 56) _sanityCheckBuddyMLResponse:*(a1 + 32) data:*(a1 + 40)];
      v10 = *(a1 + 40);
      v9 = *(*(a1 + 64) + 16);
    }

    v9();
  }
}

void sub_100006028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonEventMonitor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:v3 action:"handleButtonEvent:" forButtonEvents:0xFFFFFFFFLL propagate:0];
}

void sub_1000063DC(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonEventMonitor];
  [v2 removeTarget:*(a1 + 32)];
}

void sub_100007C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007C88(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109120;
    LODWORD(v19) = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preflight phase 1 success: %d", &v18, 8u);
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight phase 1 resultsPhase1: %@", &v18, 0xCu);
  }

  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preflight phase 1 error: %@", &v18, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v8;
  v17 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100008144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000817C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109120;
    LODWORD(v19) = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preflight phase 2 success: %d", &v18, 8u);
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight phase 2 results: %@", &v18, 0xCu);
  }

  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preflight phase 2 error: %@", &v18, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v8;
  v17 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000086F8()
{
  if (!qword_10001DEA0)
  {
    qword_10001DEA0 = _sl_dlopen();
  }

  return qword_10001DEA0;
}

uint64_t sub_1000087C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001DEA0 = result;
  return result;
}

Class sub_10000883C(uint64_t a1)
{
  if (!sub_1000086F8())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("DSHardwareButtonEventMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10001DEA8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = sub_10000D604();
    return sub_1000088CC(v4);
  }

  return result;
}

void sub_1000088CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100008C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008CA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000D670(v6, v7);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = -202;
    goto LABEL_5;
  }

  if (!v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = -203;
LABEL_5:
    *(v8 + 24) = v9;
    goto LABEL_12;
  }

  v10 = [v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
  v14 = [v13 objectForKeyedSubscript:@"com.apple.gs.corerepair.auth"];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = -204;
    goto LABEL_5;
  }

  v8 = *(*(a1 + 40) + 8);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = -205;
    goto LABEL_5;
  }

  *(v8 + 24) = 0;
  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Authenticated user credentials successfully.", v18, 2u);
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009A50(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t sub_100009A6C()
{
  type metadata accessor for ComponentsMapDataSource();
  v0 = swift_allocObject();
  result = sub_10000B89C(&_swiftEmptyArrayStorage);
  *(v0 + 16) = result;
  qword_10001E3D8 = v0;
  return result;
}

uint64_t sub_100009AB4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_10000B89C(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_100009AF8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100009B30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_100009BCC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100009C04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x634164656B73616DLL;
  }

  else
  {
    v4 = 0x7374726170;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xED0000746E756F63;
  }

  if (*a2)
  {
    v6 = 0x634164656B73616DLL;
  }

  else
  {
    v6 = 0x7374726170;
  }

  if (*a2)
  {
    v7 = 0xED0000746E756F63;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000DC2C();
  }

  return v9 & 1;
}

Swift::Int sub_100009CB4()
{
  v1 = *v0;
  sub_10000DC3C();
  sub_10000DBCC();

  return sub_10000DC4C();
}

uint64_t sub_100009D40()
{
  *v0;
  sub_10000DBCC();
}

Swift::Int sub_100009DB8()
{
  v1 = *v0;
  sub_10000DC3C();
  sub_10000DBCC();

  return sub_10000DC4C();
}

uint64_t sub_100009E40@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018A40;
  v8._object = v3;
  v5 = sub_10000DC0C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100009EA0(uint64_t *a1@<X8>)
{
  v2 = 0x7374726170;
  if (*v1)
  {
    v2 = 0x634164656B73616DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xED0000746E756F63;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100009EE8()
{
  if (*v0)
  {
    result = 0x634164656B73616DLL;
  }

  else
  {
    result = 0x7374726170;
  }

  *v0;
  return result;
}

uint64_t sub_100009F2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_100018A40;
  v9._object = a2;
  v6 = sub_10000DC0C(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100009FA8(uint64_t a1)
{
  v2 = sub_10000C670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100009FE4(uint64_t a1)
{
  v2 = sub_10000C670();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000A020@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000DABC();
  v18 = 0;
  sub_10000A138(a1, __src);
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v20, __src, 0x149uLL);
  sub_10000C804(__dst, &v15, &qword_10001DE78, &qword_100010D98);
  sub_10000C86C(v20, &qword_10001DE78, &qword_100010D98);
  memcpy(&v17[7], __dst, 0x149uLL);
  v5 = v18;
  LOBYTE(a1) = sub_10000DAFC();
  sub_10000D9DC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v17, 0x150uLL);
  *(a2 + 360) = a1;
  *(a2 + 368) = v7;
  *(a2 + 376) = v9;
  *(a2 + 384) = v11;
  *(a2 + 392) = v13;
  *(a2 + 400) = 0;
  return result;
}

uint64_t sub_10000A138@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(sub_10000DA7C() - 8) + 64);
  __chkstk_darwin();
  sub_10000DA6C();
  v168._countAndFlagsBits = 0;
  v168._object = 0xE000000000000000;
  sub_10000DA5C(v168);
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v169._countAndFlagsBits = sub_10000BC4C();
  sub_10000DA4C(v169);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  sub_10000DA5C(v170);
  sub_10000DA9C();
  v6 = sub_10000DB3C();
  v8 = v7;
  v10 = v9;
  v71 = sub_10000DB2C();
  v72 = v11;
  v78 = v12;
  v14 = v13;
  sub_10000C7F4(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v73 = v14 & 1;
  v76 = sub_10000DADC();
  sub_10000D9DC();
  v16 = v15;
  v60 = v17;
  v61 = v15;
  v18 = v17;
  v20 = v19;
  v58 = v21;
  v59 = v19;
  v22 = v21;
  LOBYTE(v94) = 0;
  v75 = sub_10000DAEC();
  sub_10000D9DC();
  v56 = v24;
  v57 = v23;
  v54 = v26;
  v55 = v25;
  v66 = sub_10000DB1C();
  v74 = swift_getKeyPath();
  sub_10000DA8C();
  v64 = sub_10000DB3C();
  v65 = v27;
  v70 = v28;
  v30 = v29;
  v52 = swift_getKeyPath();
  v67 = v30 & 1;
  LOBYTE(v140[0]) = v30 & 1;
  v53 = sub_10000DB0C();
  v69 = swift_getKeyPath();
  v63 = sub_10000DB7C();
  v68 = swift_getKeyPath();
  sub_10000DA6C();
  v171._countAndFlagsBits = 0;
  v171._object = 0xE000000000000000;
  sub_10000DA5C(v171);
  sub_10000DA4C(a1[2]);
  v172._countAndFlagsBits = 0;
  v172._object = 0xE000000000000000;
  sub_10000DA5C(v172);
  sub_10000DA9C();
  v31 = sub_10000DB3C();
  v33 = v32;
  v35 = v34;
  v36 = sub_10000DB2C();
  v51 = v37;
  LOBYTE(v8) = v38;
  v40 = v39;
  sub_10000C7F4(v31, v33, v35 & 1);

  v50 = sub_10000DAFC();
  sub_10000D9DC();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v8) = v8 & 1;
  LOBYTE(v140[0]) = v8;
  *&v94 = v71;
  *(&v94 + 1) = v78;
  LOBYTE(v95) = v73;
  *(&v95 + 1) = *v88;
  DWORD1(v95) = *&v88[3];
  *(&v95 + 1) = v72;
  LOWORD(v96) = 256;
  WORD3(v96) = v87;
  *(&v96 + 2) = v86;
  *(&v96 + 1) = KeyPath;
  LOBYTE(v97) = 0;
  DWORD1(v97) = *&v90[3];
  *(&v97 + 1) = *v90;
  BYTE8(v97) = v76;
  HIDWORD(v97) = *&v89[3];
  *(&v97 + 9) = *v89;
  *&v98 = v16;
  *(&v98 + 1) = v18;
  *&v99 = v20;
  *(&v99 + 1) = v22;
  LOBYTE(v100) = 0;
  DWORD1(v100) = *&v92[3];
  *(&v100 + 1) = *v92;
  BYTE8(v100) = v75;
  HIDWORD(v100) = *&v91[3];
  *(&v100 + 9) = *v91;
  *&v101 = v57;
  *(&v101 + 1) = v56;
  *&v102 = v55;
  *(&v102 + 1) = v54;
  LOBYTE(v103) = 0;
  DWORD1(v103) = *&v93[3];
  *(&v103 + 1) = *v93;
  *(&v103 + 1) = v74;
  v104 = v66;
  v79[8] = v102;
  v79[9] = v103;
  v79[0] = v94;
  v79[1] = v95;
  v79[6] = v100;
  v79[7] = v101;
  v79[4] = v98;
  v79[5] = v99;
  v79[2] = v96;
  v79[3] = v97;
  *&v105 = v64;
  *(&v105 + 1) = v70;
  LOBYTE(v106) = v67;
  *(&v106 + 1) = *v84;
  DWORD1(v106) = *&v84[3];
  *(&v106 + 1) = v65;
  LOWORD(v107) = 256;
  *(&v107 + 2) = v82;
  WORD3(v107) = v83;
  *(&v107 + 1) = v52;
  LOBYTE(v108) = 0;
  DWORD1(v108) = *(v85 + 3);
  *(&v108 + 1) = v85[0];
  *(&v108 + 1) = v69;
  *&v109 = v53;
  *(&v109 + 1) = v68;
  v110 = v63;
  *&v79[10] = v66;
  *(&v79[15] + 1) = v63;
  *(&v79[14] + 8) = v109;
  *(&v79[13] + 8) = v108;
  *(&v79[12] + 8) = v107;
  *(&v79[11] + 8) = v106;
  *(&v79[10] + 8) = v105;
  *&v111 = v36;
  *(&v111 + 1) = v51;
  LOBYTE(v112) = v8;
  DWORD1(v112) = *(v81 + 3);
  *(&v112 + 1) = v81[0];
  *(&v112 + 1) = v40;
  LOBYTE(v113) = v50;
  DWORD1(v113) = *&v80[3];
  *(&v113 + 1) = *v80;
  *(&v113 + 1) = v41;
  *&v114[0] = v43;
  *(&v114[0] + 1) = v45;
  *&v114[1] = v47;
  BYTE8(v114[1]) = 0;
  *(&v79[19] + 9) = *(v114 + 9);
  v79[18] = v113;
  v79[19] = v114[0];
  v79[16] = v111;
  v79[17] = v112;
  memcpy(a2, v79, 0x149uLL);
  v115[0] = v36;
  v115[1] = v51;
  v116 = v8;
  *v117 = v81[0];
  *&v117[3] = *(v81 + 3);
  v118 = v40;
  v119 = v50;
  *v120 = *v80;
  *&v120[3] = *&v80[3];
  v121 = v42;
  v122 = v44;
  v123 = v46;
  v124 = v48;
  v125 = 0;
  sub_10000C804(&v94, v140, &qword_10001DE80, &qword_100010E00);
  sub_10000C804(&v105, v140, &qword_10001DE88, &qword_100010E08);
  sub_10000C804(&v111, v140, &qword_10001DE70, &qword_100010D90);
  sub_10000C86C(v115, &qword_10001DE70, &qword_100010D90);
  v126[0] = v64;
  v126[1] = v70;
  v127 = v67;
  *v128 = *v84;
  *&v128[3] = *&v84[3];
  v129 = v65;
  v130 = 256;
  v131 = v82;
  v132 = v83;
  v133 = v52;
  v134 = 0;
  *&v135[3] = *(v85 + 3);
  *v135 = v85[0];
  v136 = v69;
  v137 = v53;
  v138 = v68;
  v139 = v63;
  sub_10000C86C(v126, &qword_10001DE88, &qword_100010E08);
  v140[0] = v71;
  v140[1] = v78;
  v141 = v73;
  *v142 = *v88;
  *&v142[3] = *&v88[3];
  v143 = v72;
  v144 = 256;
  v145 = v86;
  v146 = v87;
  v147 = KeyPath;
  v148 = 0;
  *&v149[3] = *&v90[3];
  *v149 = *v90;
  v150 = v76;
  *&v151[3] = *&v89[3];
  *v151 = *v89;
  v152 = v61;
  v153 = v60;
  v154 = v59;
  v155 = v58;
  v156 = 0;
  *v157 = *v92;
  *&v157[3] = *&v92[3];
  v158 = v75;
  *v159 = *v91;
  *&v159[3] = *&v91[3];
  v160 = v57;
  v161 = v56;
  v162 = v55;
  v163 = v54;
  v164 = 0;
  *v165 = *v93;
  *&v165[3] = *&v93[3];
  v166 = v74;
  v167 = v66;
  return sub_10000C86C(v140, &qword_10001DE80, &qword_100010E00);
}

double sub_10000A950@<D0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000DAAC();
  v39 = 1;
  sub_10000ABB8(a1, &v24);
  v52 = v36;
  v53[0] = v37[0];
  *(v53 + 9) = *(v37 + 9);
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v54[12] = v36;
  v55[0] = v37[0];
  *(v55 + 9) = *(v37 + 9);
  v54[8] = v32;
  v54[9] = v33;
  v54[11] = v35;
  v54[10] = v34;
  v54[4] = v28;
  v54[5] = v29;
  v54[7] = v31;
  v54[6] = v30;
  v54[0] = v24;
  v54[1] = v25;
  v54[2] = v26;
  v54[3] = v27;
  sub_10000C804(&v40, &v23, &qword_10001DE58, &qword_100010D48);
  sub_10000C86C(v54, &qword_10001DE58, &qword_100010D48);
  *&v38[183] = v51;
  *&v38[199] = v52;
  *&v38[215] = v53[0];
  *&v38[224] = *(v53 + 9);
  *&v38[119] = v47;
  *&v38[135] = v48;
  *&v38[151] = v49;
  *&v38[167] = v50;
  *&v38[55] = v43;
  *&v38[71] = v44;
  *&v38[87] = v45;
  *&v38[103] = v46;
  *&v38[7] = v40;
  *&v38[23] = v41;
  *&v38[39] = v42;
  v5 = v39;
  LOBYTE(a1) = sub_10000DAFC();
  [objc_opt_self() systemFontSize];
  sub_10000D9DC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v24) = 0;
  v14 = sub_10000DACC();
  v15 = *&v38[160];
  *(a2 + 193) = *&v38[176];
  v16 = *&v38[208];
  *(a2 + 209) = *&v38[192];
  *(a2 + 225) = v16;
  *(a2 + 241) = *&v38[224];
  v17 = *&v38[96];
  *(a2 + 129) = *&v38[112];
  v18 = *&v38[144];
  *(a2 + 145) = *&v38[128];
  *(a2 + 161) = v18;
  *(a2 + 177) = v15;
  v19 = *&v38[32];
  *(a2 + 65) = *&v38[48];
  v20 = *&v38[80];
  *(a2 + 81) = *&v38[64];
  *(a2 + 97) = v20;
  *(a2 + 113) = v17;
  v21 = *&v38[16];
  *(a2 + 17) = *v38;
  *(a2 + 33) = v21;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 49) = v19;
  *(a2 + 264) = a1;
  *(a2 + 272) = v7;
  *(a2 + 280) = v9;
  *(a2 + 288) = v11;
  *(a2 + 296) = v13;
  *(a2 + 304) = 0;
  *(a2 + 312) = v14;
  result = 0.0;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 1;
  return result;
}

uint64_t sub_10000ABB8@<X0>(Swift::String *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(*(sub_10000DA7C() - 8) + 64);
  __chkstk_darwin();
  sub_10000DA6C();
  v130._countAndFlagsBits = 0;
  v130._object = 0xE000000000000000;
  sub_10000DA5C(v130);
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v131._countAndFlagsBits = sub_10000BC4C();
  sub_10000DA4C(v131);

  v132._countAndFlagsBits = 0;
  v132._object = 0xE000000000000000;
  sub_10000DA5C(v132);
  sub_10000DA9C();
  v7 = sub_10000DB3C();
  v9 = v8;
  v11 = v10;
  v12 = sub_10000DB2C();
  v57 = v13;
  v58 = v12;
  v15 = v14;
  v53 = v16;
  sub_10000C7F4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v54 = v15 & 1;
  LOBYTE(v113[0]) = v15 & 1;
  v55 = sub_10000DAFC();
  v17 = objc_opt_self();
  [v17 systemFontSize];
  sub_10000D9DC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10000DA8C();
  v49 = sub_10000DB3C();
  v50 = v26;
  v52 = v27;
  v29 = v28;
  v51 = swift_getKeyPath();
  v30 = v29 & 1;
  LOBYTE(v113[0]) = v29 & 1;
  v48 = v29 & 1;
  sub_10000DA6C();
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  sub_10000DA5C(v133);
  sub_10000DA4C(a1[2]);
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  sub_10000DA5C(v134);
  sub_10000DA9C();
  v31 = sub_10000DB3C();
  v33 = v32;
  LOBYTE(v7) = v34;
  v46 = sub_10000DB2C();
  v47 = v35;
  v37 = v36;
  v39 = v38;
  sub_10000C7F4(v31, v33, v7 & 1);

  LOBYTE(v7) = sub_10000DADC();
  [v17 systemFontSize];
  sub_10000D9DC();
  LOBYTE(v113[0]) = v39 & 1;
  *&v78 = v58;
  *(&v78 + 1) = v57;
  LOBYTE(v79) = v54;
  *(&v79 + 1) = *v75;
  DWORD1(v79) = *&v75[3];
  *(&v79 + 1) = v53;
  LOWORD(v80) = 256;
  WORD3(v80) = v74;
  *(&v80 + 2) = v73;
  *(&v80 + 1) = KeyPath;
  LOBYTE(v81) = 1;
  DWORD1(v81) = *&v77[3];
  *(&v81 + 1) = *v77;
  BYTE8(v81) = v55;
  HIDWORD(v81) = *&v76[3];
  *(&v81 + 9) = *v76;
  *&v82 = v19;
  *(&v82 + 1) = v21;
  *&v83 = v23;
  *(&v83 + 1) = v25;
  v84 = 0;
  v63[0] = 0;
  v61 = v82;
  v62 = v83;
  v59 = v80;
  v60 = v81;
  *&v85 = v49;
  *(&v85 + 1) = v52;
  LOBYTE(v86) = v30;
  DWORD1(v86) = *&v72[3];
  *(&v86 + 1) = *v72;
  *(&v86 + 1) = v50;
  LOWORD(v87) = 256;
  WORD3(v87) = v71;
  *(&v87 + 2) = v70;
  *(&v87 + 1) = v51;
  v88 = 1;
  v63[56] = 1;
  *&v63[40] = v87;
  *&v63[24] = v86;
  *&v63[8] = v85;
  *&v89 = v46;
  *(&v89 + 1) = v37;
  LOBYTE(v90) = v39 & 1;
  DWORD1(v90) = *&v69[3];
  *(&v90 + 1) = *v69;
  *(&v90 + 1) = v47;
  LOBYTE(v91) = v7;
  DWORD1(v91) = *&v68[3];
  *(&v91 + 1) = *v68;
  *(&v91 + 1) = v40;
  *&v92[0] = v41;
  *(&v92[0] + 1) = v42;
  *&v92[1] = v43;
  BYTE8(v92[1]) = 0;
  *&v67[9] = *(v92 + 9);
  v66 = v91;
  *v67 = v92[0];
  v64 = v89;
  v65 = v90;
  v44 = v79;
  *a2 = v78;
  a2[1] = v44;
  a2[4] = v61;
  a2[5] = v62;
  a2[2] = v59;
  a2[3] = v60;
  a2[8] = *&v63[32];
  a2[9] = *&v63[48];
  a2[6] = *v63;
  a2[7] = *&v63[16];
  *(a2 + 217) = *&v67[9];
  a2[12] = v66;
  a2[13] = *v67;
  a2[10] = v64;
  a2[11] = v65;
  v93[0] = v46;
  v93[1] = v37;
  v94 = v39 & 1;
  *v95 = *v69;
  *&v95[3] = *&v69[3];
  v96 = v47;
  v97 = v7;
  *v98 = *v68;
  *&v98[3] = *&v68[3];
  v99 = v40;
  v100 = v41;
  v101 = v42;
  v102 = v43;
  v103 = 0;
  sub_10000C804(&v78, v113, &qword_10001DE60, &qword_100010D80);
  sub_10000C804(&v85, v113, &qword_10001DE68, &qword_100010D88);
  sub_10000C804(&v89, v113, &qword_10001DE70, &qword_100010D90);
  sub_10000C86C(v93, &qword_10001DE70, &qword_100010D90);
  v104[0] = v49;
  v104[1] = v52;
  v105 = v48;
  *v106 = *v72;
  *&v106[3] = *&v72[3];
  v107 = v50;
  v108 = 256;
  v109 = v70;
  v110 = v71;
  v111 = v51;
  v112 = 1;
  sub_10000C86C(v104, &qword_10001DE68, &qword_100010D88);
  v113[0] = v58;
  v113[1] = v57;
  v114 = v54;
  *v115 = *v75;
  *&v115[3] = *&v75[3];
  v116 = v53;
  v117 = 256;
  v118 = v73;
  v119 = v74;
  v120 = KeyPath;
  v121 = 1;
  *&v122[3] = *&v77[3];
  *v122 = *v77;
  v123 = v55;
  *&v124[3] = *&v76[3];
  *v124 = *v76;
  v125 = v19;
  v126 = v21;
  v127 = v23;
  v128 = v25;
  v129 = 0;
  return sub_10000C86C(v113, &qword_10001DE60, &qword_100010D80);
}

uint64_t sub_10000B240()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_10000DB8C();
  sub_10000B9C0(&qword_10001DCD8, &qword_100010A50);
  sub_10000B9C0(&qword_10001DCE0, &qword_100010A58);
  sub_10000BA08();
  sub_10000BB08();
  return sub_10000DB9C();
}

double sub_10000B324@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000BEB4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10000B368@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Void __swiftcall RemoteUIController.registerPartsInfoView(componentsMap:)(Swift::OpaquePointer componentsMap)
{
  if (qword_10001DEB0 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_10001E3D8 + 96);

  v1(v2);
  sub_10000C0F4();

  sub_10000DBDC();
}

unint64_t sub_10000B53C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000DC3C();
  sub_10000DBCC();
  v6 = sub_10000DC4C();

  return sub_10000B5B4(a1, a2, v6);
}

unint64_t sub_10000B5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000DC2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000B66C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000DA0C();
  *a1 = result;
  return result;
}

uint64_t sub_10000B6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DA2C();
  *a1 = result;
  return result;
}

uint64_t sub_10000B6EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000DA3C();
}

uint64_t sub_10000B718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D9EC();
  *a1 = result;
  return result;
}

uint64_t sub_10000B744(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000D9FC();
}

char *sub_10000B770(char *a1, int64_t a2, char a3)
{
  result = sub_10000B790(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B790(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000B9C0(&qword_10001DE50, &qword_100010D40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10000B89C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000B9C0(&unk_10001DE90, &qword_100010E10);
    v3 = sub_10000DBFC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000B53C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000B9C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000BA08()
{
  result = qword_10001DCE8;
  if (!qword_10001DCE8)
  {
    sub_10000BAC0(&qword_10001DCD8, &qword_100010A50);
    sub_10000C7A8(&qword_10001DCF0, &qword_10001DCF8, &qword_100010A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCE8);
  }

  return result;
}

uint64_t sub_10000BAC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000BB08()
{
  result = qword_10001DD00;
  if (!qword_10001DD00)
  {
    sub_10000BAC0(&qword_10001DCE0, &qword_100010A58);
    sub_10000BB94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD00);
  }

  return result;
}

unint64_t sub_10000BB94()
{
  result = qword_10001DD08;
  if (!qword_10001DD08)
  {
    sub_10000BAC0(&qword_10001DD10, &qword_100010A68);
    sub_10000C7A8(&qword_10001DD18, &qword_10001DD20, &qword_100010A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD08);
  }

  return result;
}

uint64_t sub_10000BC4C()
{
  sub_10000C754();
  v0 = sub_10000DBEC();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_10000B770(0, v1, 0);
    v2 = (v0 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = qword_10001DEB0;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = (*(*qword_10001E3D8 + 88))();
      if (*(v6 + 16) && (v7 = sub_10000B53C(v4, v3), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];
      }

      else
      {

        v11 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000B770((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  sub_10000B9C0(&qword_10001DE40, &qword_100010D38);
  sub_10000C7A8(&qword_10001DE48, &qword_10001DE40, &qword_100010D38);
  v15 = sub_10000DBBC();

  return v15;
}

uint64_t sub_10000BEB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000B9C0(&qword_10001DE30, &qword_100010D30);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000C6C4(a1, a1[3]);
  v11 = sub_10000DC5C();
  if (v2)
  {
    return sub_10000C708(a1);
  }

  v14 = v12;
  v25 = a2;
  v26 = v11;
  v15 = a1[4];
  sub_10000C6C4(a1, a1[3]);
  sub_10000C670();
  sub_10000DC6C();
  v28 = 0;
  v16 = sub_10000DC1C();
  v18 = v17;
  v24 = v16;
  v27 = 1;
  v19 = sub_10000DC1C();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  result = sub_10000C708(a1);
  v22 = v25;
  *v25 = v26;
  v22[1] = v14;
  v22[2] = v24;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v21;
  return result;
}

unint64_t sub_10000C0F4()
{
  result = qword_10001DD28;
  if (!qword_10001DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD28);
  }

  return result;
}

unint64_t sub_10000C14C()
{
  result = qword_10001DD30;
  if (!qword_10001DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD30);
  }

  return result;
}

unint64_t sub_10000C1A4()
{
  result = qword_10001DD38;
  if (!qword_10001DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD38);
  }

  return result;
}

unint64_t sub_10000C1FC()
{
  result = qword_10001DD40;
  if (!qword_10001DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD40);
  }

  return result;
}

unint64_t sub_10000C254()
{
  result = qword_10001DD48;
  if (!qword_10001DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD48);
  }

  return result;
}

unint64_t sub_10000C2AC()
{
  result = qword_10001DD50;
  if (!qword_10001DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD50);
  }

  return result;
}

unint64_t sub_10000C304()
{
  result = qword_10001DD58;
  if (!qword_10001DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD58);
  }

  return result;
}

__n128 sub_10000C3A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C3B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartsInfoView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PartsInfoView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C5D8()
{
  result = qword_10001DE18;
  if (!qword_10001DE18)
  {
    sub_10000BAC0(&qword_10001DE20, &qword_100010D28);
    sub_10000BA08();
    sub_10000BB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DE18);
  }

  return result;
}

unint64_t sub_10000C670()
{
  result = qword_10001DE28;
  if (!qword_10001DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DE28);
  }

  return result;
}

void *sub_10000C6C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C708(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000C754()
{
  result = qword_10001DE38;
  if (!qword_10001DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DE38);
  }

  return result;
}

uint64_t sub_10000C7A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000BAC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C7F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000B9C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C86C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000B9C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10000C8D4()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C910()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C94C(void *a1)
{
  [a1 activeTokenChallengerIndex];
  sub_100004840();
  sub_100004824();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000C9CC()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CA08()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CA78()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CAE8()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CB24(void *a1)
{
  [a1 state];
  sub_100004840();
  sub_100004824();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CBA4(void *a1)
{
  [a1 state];
  sub_100004840();
  sub_100004824();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CC24()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CC94()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CD04()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CD40()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CD7C(void *a1)
{
  [a1 state];
  sub_100004840();
  sub_100004824();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CDFC(void *a1)
{
  [a1 state];
  sub_100004840();
  sub_100004824();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000CE8C()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CEFC()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CF6C()
{
  sub_100004840();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000CFDC()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D018()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D054(void *a1, NSObject *a2)
{
  v4 = [a1 components];
  v5 = [v4 count];
  v6 = [a1 fdrTypes];
  v7 = 134218240;
  v8 = v5;
  v9 = 2048;
  v10 = [v6 count];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Lengths of localized components mismatch: %ld, %ld", &v7, 0x16u);
}

void sub_10000D124(uint64_t *a1)
{
  v6 = *a1;
  sub_100004834();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000D19C(void *a1, NSObject *a2)
{
  v3 = [a1 MIMEType];
  sub_100004840();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid MIME type %@", v4, 0xCu);
}

void sub_10000D230()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D26C()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D2A8()
{
  sub_10000484C();
  sub_100004834();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D484(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Array length mismatch: %ld %ld", &v5, 0x16u);
}

void sub_10000D670(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to authenticate: %@", &v2, 0xCu);
}