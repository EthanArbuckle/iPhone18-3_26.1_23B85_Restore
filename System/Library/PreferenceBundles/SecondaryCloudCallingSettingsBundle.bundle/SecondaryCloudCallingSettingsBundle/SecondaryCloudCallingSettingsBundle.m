id PHDefaultLog()
{
  if (qword_11488 != -1)
  {
    sub_63EC();
  }

  v1 = qword_11480;

  return v1;
}

void sub_1B34(id a1)
{
  qword_11480 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_11498 != -1)
  {
    sub_6400();
  }

  v1 = qword_11490;

  return v1;
}

void sub_1BBC(id a1)
{
  qword_11490 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_114A8 != -1)
  {
    sub_6414();
  }

  v1 = qword_114A0;

  return v1;
}

void sub_1C44(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_114A0;
  qword_114A0 = v1;
}

void sub_1E74(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1F18;
  v6[3] = &unk_C530;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 presentViewController:v4 animated:1 completion:v6];
}

uint64_t sub_1F18(uint64_t a1)
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

void sub_285C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_645C();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void sub_28E8(uint64_t a1, uint64_t a2)
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
      sub_645C();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void sub_2C98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *sub_48E0(void *result)
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

uint64_t sub_4E80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_4FA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_50AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

uint64_t sub_51D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

JSValueRef sub_541C(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = qword_114B0;
  if (!qword_114B0)
  {
    v5 = JSClassCreate(&unk_11338);
    qword_114B0 = v5;
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

JSValueRef sub_54E0(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = qword_114B0;
  if (!qword_114B0)
  {
    v5 = JSClassCreate(&unk_11338);
    qword_114B0 = v5;
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

unint64_t sub_595C()
{
  result = qword_11450;
  if (!qword_11450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11450);
  }

  return result;
}

uint64_t sub_59CC()
{
  v0 = *(*(sub_6634() - 8) + 64);
  __chkstk_darwin();
  sub_66C4();
  sub_66B4();
  sub_66A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_5B80();
  sub_6624();
  sub_6604();
}

uint64_t sub_5AC0()
{
  v0 = sub_6614();
  v1 = sub_5B28();

  return SettingsPane.init(makeContent:)(sub_59CC, 0, v0, v1);
}

unint64_t sub_5B28()
{
  result = qword_11458;
  if (!qword_11458)
  {
    sub_6614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11458);
  }

  return result;
}

unint64_t sub_5B80()
{
  result = qword_11460;
  if (!qword_11460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_11460);
  }

  return result;
}

unint64_t sub_5BE0()
{
  result = qword_11468;
  if (!qword_11468)
  {
    sub_5C44(&qword_11470, &qword_ADE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11468);
  }

  return result;
}

uint64_t sub_5C44(uint64_t *a1, uint64_t *a2)
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

uint64_t PHSettingsSecondaryCloudCallingBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_6684();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_66D4();

  LOBYTE(a1) = sub_6664();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t PHSettingsSecondaryCloudCallingBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_6684();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_66F4() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_6654();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_66E4();
  sub_6644();
  v14 = [a2 traitCollection];
  sub_66D4();

  sub_610C();
  sub_6674();
  (*(v4 + 8))(v7, v3);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_610C()
{
  result = qword_11478;
  if (!qword_11478)
  {
    sub_6654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11478);
  }

  return result;
}

void sub_64C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "didFailLoadWithError: %@", &v2, 0xCu);
}