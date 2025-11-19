id sub_F04()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_C268;
  v7 = qword_C268;
  if (!qword_C268)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_2374;
    v3[3] = &unk_81F8;
    v3[4] = &v4;
    sub_2374(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_155C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_C278;
  v7 = qword_C278;
  if (!qword_C278)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_2514;
    v3[3] = &unk_81F8;
    v3[4] = &v4;
    sub_2514(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2374(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_C270)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_24A0;
    v3[4] = &unk_8230;
    v3[5] = v3;
    v4 = off_8218;
    v5 = 0;
    qword_C270 = _sl_dlopen();
  }

  if (!qword_C270)
  {
    sub_28D0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2854();
  }

  qword_C268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_24A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C270 = result;
  return result;
}

Class sub_2514(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_C280)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_2640;
    v3[4] = &unk_8230;
    v3[5] = v3;
    v4 = off_8250;
    v5 = 0;
    qword_C280 = _sl_dlopen();
  }

  if (!qword_C280)
  {
    sub_29CC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2950();
  }

  qword_C278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2640(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C280 = result;
  return result;
}

Class sub_26B4(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_C290)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_27E0;
    v3[4] = &unk_8230;
    v3[5] = v3;
    v4 = off_8268;
    v5 = 0;
    qword_C290 = _sl_dlopen();
  }

  if (!qword_C290)
  {
    sub_2AC8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2A4C();
  }

  qword_C288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_27E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C290 = result;
  return result;
}

void sub_2854()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MessagesNotificationFilteringController.m" lineNumber:18 description:{@"Unable to find class %s", "NPSManager"}];

  __break(1u);
}

void sub_28D0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MessagesNotificationFilteringController.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void sub_2950()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MessagesNotificationFilteringController.m" lineNumber:34 description:{@"Unable to find class %s", "SOSUtilities"}];

  __break(1u);
}

void sub_29CC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MessagesNotificationFilteringController.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void sub_2A4C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationSettingsCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MessagesNotificationFilteringController.m" lineNumber:28 description:{@"Unable to find class %s", "UNNotificationSettingsCenter"}];

  __break(1u);
}

void sub_2AC8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UserNotificationsSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MessagesNotificationFilteringController.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
  CFNotificationCenterGetDarwinNotifyCenter();
}