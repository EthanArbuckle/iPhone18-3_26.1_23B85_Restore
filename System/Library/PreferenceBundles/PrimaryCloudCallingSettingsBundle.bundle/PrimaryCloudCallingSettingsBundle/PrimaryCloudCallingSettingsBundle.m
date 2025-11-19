uint64_t sub_3160(uint64_t a1)
{
  qword_11430 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_32DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained getAvailableCallNotificationDevices];
    WeakRetained = v2;
  }
}

void sub_3420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_343C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 copy];
    [WeakRetained setCallNotificationEligibleDevices:v4];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"PHCallNotificationEligibleDevicesChangedNotification" object:0];
  }
}

void sub_3AAC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_6A74();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void sub_3B38(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) >= 2)
  {
    if (!a2)
    {
      v6 = PHDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Successfully loaded web view URL", v7, 2u);
      }

      [*(a1 + 32) webSheetCompletion];
    }
  }

  else
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_6A74();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void sub_3EE8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_40D8(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_417C;
  v6[3] = &unk_C618;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 presentViewController:v4 animated:1 completion:v6];
}

uint64_t sub_417C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reloading specifiers because the presented view controller was a UIAlertController: %@", &v6, 0xCu);
    }

    return [*(a1 + 40) reloadSpecifiers];
  }

  return result;
}

void sub_4BA0(uint64_t a1)
{
  v1 = [*(a1 + 32) parentListController];
  [v1 reloadSpecifiers];
}

void *sub_5060(void *result)
{
  v1 = result;
  v2 = result[4];
  if (!*(v2 + 40) || !*(v2 + 48))
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out trying to load carrier URL", v4, 2u);
    }

    return [v1[4] doWebViewTimedOut];
  }

  return result;
}

uint64_t sub_5600(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_5724(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_582C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

uint64_t sub_5950(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

JSValueRef sub_5B9C(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = qword_11440;
  if (!qword_11440)
  {
    v5 = JSClassCreate(&unk_112E8);
    qword_11440 = v5;
  }

  if (JSValueIsObjectOfClass(ctx, value, v5))
  {
    v6 = JSObjectGetPrivate(value);
    v7 = WebThreadMakeNSInvocation();
    WebThreadCallDelegate();

    Undefined = JSValueMakeUndefined(ctx);
    return Undefined;
  }

  else
  {
LABEL_6:

    return JSValueMakeUndefined(ctx);
  }
}

JSValueRef sub_5C60(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = qword_11440;
  if (!qword_11440)
  {
    v5 = JSClassCreate(&unk_112E8);
    qword_11440 = v5;
  }

  if (JSValueIsObjectOfClass(ctx, value, v5))
  {
    v6 = JSObjectGetPrivate(value);
    v7 = WebThreadMakeNSInvocation();
    WebThreadCallDelegate();

    Undefined = JSValueMakeUndefined(ctx);
    return Undefined;
  }

  else
  {
LABEL_6:

    return JSValueMakeUndefined(ctx);
  }
}

id PHDefaultLog()
{
  if (qword_11450 != -1)
  {
    sub_6C1C();
  }

  v1 = qword_11448;

  return v1;
}

void sub_5D68(id a1)
{
  qword_11448 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_11460 != -1)
  {
    sub_6C30();
  }

  v1 = qword_11458;

  return v1;
}

void sub_5DF0(id a1)
{
  qword_11458 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_11470[0] != -1)
  {
    sub_6C44();
  }

  v1 = qword_11468;

  return v1;
}

void sub_5E78(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_11468;
  qword_11468 = v1;
}

unint64_t sub_5F18()
{
  result = qword_11400;
  if (!qword_11400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11400);
  }

  return result;
}

uint64_t sub_5F88()
{
  v0 = *(*(sub_6C88() - 8) + 64);
  __chkstk_darwin();
  sub_6D18();
  sub_6D08();
  sub_6CF8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_613C();
  sub_6C78();
  sub_6C58();
}

uint64_t sub_607C()
{
  v0 = sub_6C68();
  v1 = sub_60E4();

  return SettingsPane.init(makeContent:)(sub_5F88, 0, v0, v1);
}

unint64_t sub_60E4()
{
  result = qword_11408;
  if (!qword_11408)
  {
    sub_6C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11408);
  }

  return result;
}

unint64_t sub_613C()
{
  result = qword_11410;
  if (!qword_11410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_11410);
  }

  return result;
}

unint64_t sub_619C()
{
  result = qword_11418;
  if (!qword_11418)
  {
    sub_6200(&qword_11420, &unk_8C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11418);
  }

  return result;
}

uint64_t sub_6200(uint64_t *a1, uint64_t *a2)
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

uint64_t PHSettingsPrimaryCloudCallingBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_6CD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_6D28();

  LOBYTE(a1) = sub_6CB8();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t PHSettingsPrimaryCloudCallingBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_6CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_6D48() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_6CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D38();
  sub_6C98();
  v14 = [a2 traitCollection];
  sub_6D28();

  sub_66C8();
  sub_6CC8();
  (*(v4 + 8))(v7, v3);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_66C8()
{
  result = qword_11428;
  if (!qword_11428)
  {
    sub_6CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11428);
  }

  return result;
}

void sub_69A8(os_log_t log)
{
  v1 = 138412546;
  v2 = @"com.apple.NeighborhoodActivityConduitService";
  v3 = 2112;
  v4 = @"incomingCallBannerEnabledDevices";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Could not find defaults for suite %@ with key %@", &v1, 0x16u);
}

void sub_6ADC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "didFailLoadWithError: %@", &v2, 0xCu);
}