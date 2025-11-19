id sub_100000DF0()
{
  if (qword_10000DDF0 != -1)
  {
    sub_100002D20();
  }

  v1 = qword_10000DDE8;

  return v1;
}

void sub_100000E34(id a1)
{
  qword_10000DDE8 = os_log_create("com.apple.BacklinkIndicator", "UI");

  _objc_release_x1();
}

void sub_100001588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000015CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100000DF0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "background pip authorization: %@, state: %lu", &v8, 0x16u);
  }

  if (a3 == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _createPipProxyIfNeeded];
  }
}

void sub_100001F24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100000DF0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100002E50(a1);
    }
  }
}

void sub_1000020F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100002870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100002A98(uint64_t a1)
{
  sub_100002AF0();
  result = objc_getClass("NPNotePreviewProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100003020();
  }

  qword_10000DDF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002AF0()
{
  v2[0] = 0;
  if (!qword_10000DE00)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_100002BE8;
    v2[4] = &unk_100008360;
    v2[5] = v2;
    v3 = off_100008348;
    v4 = 0;
    qword_10000DE00 = _sl_dlopen();
  }

  v0 = qword_10000DE00;
  if (!qword_10000DE00)
  {
    sub_10000309C(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_100002BE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000DE00 = result;
  return result;
}

void *sub_100002C5C(uint64_t a1)
{
  v2 = sub_100002AF0();
  result = dlsym(v2, "NPNotePreviewKeyPreview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000DE08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
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

void sub_100002D34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BacklinkIndicator.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"userActivity"}];
}

void sub_100002DB0(void *a1)
{
  v1 = [a1 userActivity];
  v2 = [v1 _syLoggableDescription];
  sub_1000020E0();
  sub_1000020F8(&_mh_execute_header, v3, v4, "backlink indicator failed to show for user activity: %@, error: %@", v5, v6, v7, v8, v9);
}

void sub_100002E50(uint64_t a1)
{
  v1 = [*(a1 + 32) _syLoggableDescription];
  sub_1000020E0();
  sub_1000020F8(&_mh_execute_header, v2, v3, "failed to activate Notes with user activity: %@, error: %@", v4, v5, v6, v7, v8);
}

void sub_100002EE4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 userActivity];
  v6 = [v5 _syLoggableDescription];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "request to retrieve note preview for user activity: %@, failed with error: %@", &v7, 0x16u);
}

void sub_100002FA8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getNPNotePreviewKeyPreview(void)"];
  [v0 handleFailureInFunction:v1 file:@"BacklinkIndicatorViewController.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100003020()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getNPNotePreviewProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BacklinkIndicatorViewController.m" lineNumber:17 description:{@"Unable to find class %s", "NPNotePreviewProvider"}];

  __break(1u);
}

void sub_10000309C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *NotesPreviewKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BacklinkIndicatorViewController.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
  NSStringFromClass(v4);
}