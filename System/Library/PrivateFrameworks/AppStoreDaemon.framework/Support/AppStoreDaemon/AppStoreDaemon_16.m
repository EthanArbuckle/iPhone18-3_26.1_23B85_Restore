void sub_1001CCD5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100383140(v4);
  if (v3)
  {
    [v3[1] setObject:v5 forKeyedSubscript:@"clipCompressionMethod"];
  }
}

id sub_1001CCDD8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 128), a2);
  objc_initWeak(&location, *(a1 + 32));
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_1001CD150;
  newValue[3] = &unk_10051B4A8;
  objc_copyWeak(&v28, &location);
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  if (v7)
  {
    objc_setProperty_atomic_copy(v7, v5, newValue, 32);
    v6 = *(a1 + 32);
  }

  v8 = *(v6 + 168);
  v9 = *(v6 + 88);
  v10 = *(a1 + 40);
  v11 = *(v6 + 64);
  v12 = v11;
  if (!ClipSession)
  {

    v23 = 0;
    goto LABEL_20;
  }

  v13 = *(v6 + 72);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  objc_opt_self();
  v17 = ASDLogHandleForCategory();
  v18 = v17;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Clip::Coordinator/Configure", "", buf, 2u);
  }

  if (!v14 || ![v14 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises])
  {
    v20 = 0;
LABEL_15:
    v24 = ASDLogHandleForCategory();
    v25 = v24;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v13, "Clip::Coordinator/Configure", "", buf, 2u);
    }

    v22 = sub_1001CE3A0(Promise, &__kCFBooleanTrue);
    goto LABEL_19;
  }

  v30 = 0;
  v19 = sub_100249914(v14, &v30);
  v20 = v30;
  if (v19)
  {
    goto LABEL_15;
  }

  v21 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v32 = v12;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v20;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Completing initial ODR for: %{public}@ failed: %{public}@", buf, 0x20u);
  }

  v22 = sub_1001CE458(Promise, v20);
LABEL_19:
  v23 = v22;

LABEL_20:
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v23;
}

void sub_1001CD110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CD150(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001CD20C;
    v8[3] = &unk_10051B570;
    v8[4] = WeakRetained;
    v7 = v3;
    v9 = v7;
    if (v6)
    {
      dispatch_async(*(v6 + 8), v8);
      v7 = v9;
    }
  }
}

void sub_1001CD234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to fetch additional data: %{public}@", &v7, 0x16u);
  }

  v5 = sub_1001C8A60(*(a1 + 32), v3);
}

void sub_1001CD31C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(*(a1 + 32) + 64);
    v10 = 138412546;
    v11 = v9;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to send progress: %{public}@", &v10, 0x16u);
  }

  v5 = *(*(a1 + 32) + 24);
  v6 = ASDErrorWithSafeUserInfo();
  (*(v5 + 16))(v5, 0, v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;
}

void sub_1001CD434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[BackgroundAssetRelayTask initWithClipData:diskUsage:metadata:logKey:isUpdate:bag:]([_TtC9appstored24BackgroundAssetRelayTask alloc], "initWithClipData:diskUsage:metadata:logKey:isUpdate:bag:", *(*(a1 + 32) + 88), [*(a1 + 40) longLongValue], *(*(a1 + 32) + 232), *(*(a1 + 32) + 64), *(*(a1 + 32) + 209), v3);

  v5 = +[_TtC9appstored24BackgroundAssetRelayTask taskQueue];
  v6 = v5;
  if (v5)
  {
    [*(v5 + 8) addOperation:v4];
  }

  v7 = +[_TtC9appstored24BackgroundAssetRelayTask taskQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CD550;
  v8[3] = &unk_10051AF98;
  v8[4] = *(a1 + 32);
  sub_100284D9C(v7, v8);
}

void sub_1001CD550(uint64_t a1)
{
  v2 = objc_alloc_init(BAAppStoreClient);
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;

  Property = *(*(a1 + 32) + 88);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 32, 1);
  }

  v7 = Property;
  v8 = [BAAppStorePrepareDescriptor descriptorWithAppBundleIdentifier:v7 appStoreMetadata:*(*(a1 + 32) + 232) client:0];

  [v8 setUserInitiated:1];
  [v8 setCellularPolicy:1];
  v9 = *(*(a1 + 32) + 224);
  v16 = 0;
  v10 = [v9 prepareForAppInstallWithDescriptor:v8 error:&v16];
  v11 = v16;
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(a1 + 32) + 64);
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Sent prepare descriptor to Background Assets", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = *(*(a1 + 32) + 64);
    *buf = 138412546;
    v18 = v15;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Failed to send prepare descriptor to Background Assets: %{public}@", buf, 0x16u);
  }
}

void sub_1001CD720(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to send prepare descriptor to Background Assets: %{public}@", &v6, 0x16u);
  }
}

id sub_1001CD990(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1001CD9C8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_key");
    v1 = vars8;
  }

  return a1;
}

id sub_1001CDA00(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"coordinator_id");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001CDA38(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"is_paused");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_1001CDA80(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"type");
    v2 = [v1 integerValue];

    return v2;
  }

  return result;
}

id sub_1001CDAC8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"unique_key");
    v1 = vars8;
  }

  return a1;
}

void sub_1001CDBB8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = sub_100208FBC();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CDD80;
  v9[3] = &unk_10051B5E8;
  v11 = &v12;
  v4 = v2;
  v10 = v4;
  [v3 modifyUsingTransaction:v9];

  if ((v13[3] & 1) == 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v4)
      {
        Property = objc_getProperty(v4, v6, 184, 1);
      }

      else
      {
        Property = 0;
      }

      v8 = Property;
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Error saving download to database", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v12, 8);
}

void sub_1001CDD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001CDDC8()
{
  objc_opt_self();
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1001CDEE4;
  v8 = sub_1001CDEF4;
  v9 = 0;
  v0 = sub_100208FBC();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CDEFC;
  v3[3] = &unk_10051B610;
  v3[4] = &v4;
  [v0 readUsingSession:v3];

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001CDECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CDEE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001CDEFC(uint64_t a1, void *a2)
{
  v3 = sub_1001C2F98(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1001CDF48(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100208FBC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CE000;
  v5[3] = &unk_10051AF70;
  v6 = v2;
  v4 = v2;
  [v3 modifyUsingTransaction:v5];
}

void sub_1001CE010(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100208FBC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CE0C8;
  v5[3] = &unk_10051AF70;
  v6 = v2;
  v4 = v2;
  [v3 modifyUsingTransaction:v5];
}

BOOL sub_1001CE0C8(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 104, 1);
  }

  v7 = Property;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v6, 112, 1);
  }

  v9 = v8;
  v10 = sub_1001C35B0(v4, v7, v9);

  if (v10)
  {
    v11 = sub_10021A104(v4, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1001CE178(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100208FBC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CE230;
  v5[3] = &unk_10051AF70;
  v6 = v2;
  v4 = v2;
  [v3 modifyUsingTransaction:v5];
}

uint64_t sub_1001CE230(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 104, 1);
  }

  v7 = Property;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v6, 112, 1);
  }

  v9 = v8;
  v10 = sub_1001C35B0(v4, v7, v9);

  if (v10)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 216, 1);
    }

    v13 = v12;
    v14 = [v13 absoluteString];
    sub_10023E000(v10, v14, @"source_url");

    v15 = sub_10021B3E4(v4, v10);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1001CE32C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_alloc(objc_opt_self()) initOnScheduler:v5 withExecutor:v4];

  return v6;
}

id *sub_1001CE3A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = sub_1001CE3F8(v3, v2);

  return v4;
}

id *sub_1001CE3F8(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_1001D5D14(PromiseResult, a2);
    v2 = sub_1001CE51C(v2, 1, v3);
  }

  return v2;
}

id *sub_1001CE458(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = sub_1001CE4B0(v3, v2);

  return v4;
}

id *sub_1001CE4B0(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_1001D5BE8(PromiseResult, a2);
    v2 = sub_1001CE51C(v2, 2, v3);
  }

  return v2;
}

id *sub_1001CE51C(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = Promise;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v7 = objc_alloc_init(NSRecursiveLock);
      v8 = a1[3];
      a1[3] = v7;

      a1[2] = a2;
      objc_storeStrong(a1 + 4, a3);
      v9 = objc_alloc_init(NSMutableArray);
      v10 = a1[1];
      a1[1] = v9;
    }
  }

  return a1;
}

void sub_1001CE634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CF3B0;
    v7[3] = &unk_10051B790;
    v7[4] = a1;
    v8 = v5;
    [a3 scheduleBlock:v7];
  }
}

void sub_1001CE6D8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001CE7D8;
    v9[3] = &unk_10051B660;
    v10 = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CE7EC;
    v7[3] = &unk_10051B548;
    v8 = v10;
    [a1 thenPerform:v9 orCatchError:v7 onScheduler:a3];
  }
}

void sub_1001CE8EC(uint64_t a1)
{
  v2 = sub_100333DA8([PromiseObserver alloc], *(a1 + 48), *(a1 + 56), *(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (v4 == 2)
  {
    v10 = v2;
    Property = objc_getProperty(v3, v2, 32, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v9, 8, 1);
    }

    v7 = Property;
    sub_100333F74(v10);
    goto LABEL_11;
  }

  if (v4 == 1)
  {
    v10 = v2;
    v5 = objc_getProperty(v3, v2, 32, 1);
    if (v5)
    {
      v5 = objc_getProperty(v5, v6, 16, 1);
    }

    v7 = v5;
    sub_100333E6C(v10, v7);
LABEL_11:

    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_13;
  }

  v10 = v2;
  [*(v3 + 8) addObject:v2];
LABEL_12:
  v2 = v10;
LABEL_13:
}

void sub_1001CE9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001CF0F0;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_1001CEA8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001CF250;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

Promise *sub_1001CEB34(Promise *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_alloc_init(Promise);
    if (!v6)
    {
      v6 = objc_alloc_init(SyncTaskScheduler);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001CECB8;
    v13[3] = &unk_10051B740;
    v16 = v5;
    v14 = v7;
    v6 = v6;
    v15 = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001CEDD0;
    v11[3] = &unk_10051B5C0;
    v8 = v14;
    v12 = v8;
    [(Promise *)a1 thenPerform:v13 orCatchError:v11 onScheduler:v6];
    v9 = v12;
    a1 = v8;
  }

  return a1;
}

void sub_1001CECB8(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CEDC0;
  v5[3] = &unk_10051B718;
  v6 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CEDC8;
  v3[3] = &unk_10051B5C0;
  v4 = *(a1 + 32);
  [v2 thenPerform:v5 orCatchError:v3 onScheduler:*(a1 + 40)];
}

void sub_1001CEF1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CF044;
  v9[3] = &unk_10051B768;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CF0E0;
  v7[3] = &unk_10051B5C0;
  v8 = *(a1 + 40);
  v5 = v3;
  v6 = objc_opt_new();
  [v4 thenPerform:v9 orCatchError:v7 onScheduler:v6];
}

void sub_1001CF044(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v5[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v5 count:2];
  sub_1001CE9E4(v2, v4);
}

id sub_1001CF0F0(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    [NSException raise:NSInternalInconsistencyException format:@"Promises may only be resolved once!"];
  }

  v2 = sub_1001D5D14(PromiseResult, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 16) = 1;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_100333E6C(*(*(&v11 + 1) + 8 * v9), *(a1 + 40));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return [*(*(a1 + 32) + 8) removeAllObjects];
}

id sub_1001CF250(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    [NSException raise:NSInternalInconsistencyException format:@"Promises may only be resolved once!"];
  }

  v2 = sub_1001D5BE8(PromiseResult, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 16) = 2;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_100333F74(*(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return [*(*(a1 + 32) + 8) removeAllObjects];
}

uint64_t sub_1001CF3B0(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CF470;
  v4[3] = &unk_10051B718;
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CF478;
  v3[3] = &unk_10051B5C0;
  v3[4] = v5;
  return (*(v1 + 16))(v1, v4, v3);
}

void sub_1001CF664(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    sub_1001CE634(v2, v3, *(v2 + 48));
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_1001CF7BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CF904;
  v13[3] = &unk_10051B7B8;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v16 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001CFAE0;
  v11[3] = &unk_10051B548;
  v12 = v16;
  v8 = v16;
  v9 = v5;
  v10 = objc_opt_new();
  [v7 thenPerform:v13 orCatchError:v11 onScheduler:v10];
}

void sub_1001CF904(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CFA2C;
  v10[3] = &unk_10051B6F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CFAD0;
  v8[3] = &unk_10051B548;
  v9 = *(a1 + 48);
  v6 = v3;
  v7 = objc_opt_new();
  [v4 thenPerform:v10 orCatchError:v8 onScheduler:v7];
}

void sub_1001CFA2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v5 count:2];
  (*(v2 + 16))(v2, v4);
}

void sub_1001CFD34(uint64_t a1, id *a2, id *a3)
{
  objc_opt_self();
  v5 = [BufferedStream alloc];
  if (v5)
  {
    v19.receiver = v5;
    v19.super_class = BufferedStream;
    v6 = objc_msgSendSuper2(&v19, "init");
    if (v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.appstored.BufferedStream", v7);
      v9 = v6[1];
      v6[1] = v8;

      v6[2] = malloc_type_malloc(0x600000uLL, 0x100004077774924uLL);
      v6[3] = 6291456;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [BufferedStreamReader alloc];
  v11 = v6;
  if (v10)
  {
    v19.receiver = v10;
    v19.super_class = BufferedStreamReader;
    v12 = objc_msgSendSuper2(&v19, "init");
    v10 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_bufferedStream, v6);
    }
  }

  v13 = *a2;
  *a2 = v10;

  v14 = [BufferedStreamWriter alloc];
  v18 = v11;
  if (v14)
  {
    v19.receiver = v14;
    v19.super_class = BufferedStreamWriter;
    v15 = objc_msgSendSuper2(&v19, "init");
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 7, v6);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *a3;
  *a3 = v16;

  objc_storeWeak(v18 + 9, *a2);
  objc_storeWeak(v18 + 8, *a3);
}

void sub_1001CFF04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56) - *(*(a1 + 32) + 48);
  if (v2 >= *(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    memcpy(*(a1 + 56), (*(*(a1 + 32) + 16) + *(*(a1 + 32) + 48)), v3);
    *(*(a1 + 32) + 48) += *(*(*(a1 + 40) + 8) + 24);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 48) == *(v4 + 56))
  {
    *(v4 + 56) = 0;
    *(*(a1 + 32) + 48) = 0;
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "(BufferedStream) Buffer is empty", &v16, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v7 = [WeakRetained streamStatus];

    v8 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v9 = [v8 streamStatus];

    if (v7 != 5)
    {
      v10 = objc_loadWeakRetained((*(a1 + 32) + 64));

      if (!v10 || v9 >= 6)
      {
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = objc_loadWeakRetained((*(a1 + 32) + 64));
          v16 = 138412546;
          v17 = v15;
          v18 = 2048;
          v19 = v9;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(BufferedStream) Signalling end: writer = %@; status = %lu", &v16, 0x16u);
        }

        v12 = objc_loadWeakRetained((*(a1 + 32) + 72));
        sub_1002BB2AC(v12, 5);

        v13 = objc_loadWeakRetained((*(a1 + 32) + 72));
        v14 = v13;
        if (v13)
        {
          dispatch_source_merge_data(v13[2], 0x10uLL);
        }
      }
    }
  }
}

void sub_1001D0140(uint64_t a1)
{
  if (*(a1 + 40) > *(*(a1 + 32) + 24))
  {
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];
    v4 = [NSString stringWithFormat:@"Clip-%@", v3];

    v5 = sub_10029BC0C();
    v6 = [v5 stringByAppendingPathComponent:v4];
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 40);
      *buf = 134218242;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(BufferedStream) Size %zu is over the memory limit, switching to disk: %@", buf, 0x16u);
    }

    *(*(a1 + 32) + 32) = open([*(*(a1 + 32) + 40) fileSystemRepresentation], 514, 384);
    v12 = *(*(a1 + 32) + 32);
    if (v12 < 0)
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = *__error();
        *buf = 67109120;
        LODWORD(v29) = v23;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(BufferedStream) Cannot create buffer file: %{darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      lseek(v12, *(a1 + 40) - 1, 0);
      write(*(*(a1 + 32) + 32), "", 1uLL);
      *(*(a1 + 32) + 24) = lseek(*(*(a1 + 32) + 32), 0, 1);
      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      if (v14 < *(a1 + 40))
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1 + 32) + 24);
          *buf = 134217984;
          v29 = v24;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(BufferedStream) Buffer length is shorter than requested, download will likely fail: %zu", buf, 0xCu);
        }

        v13 = *(a1 + 32);
        v14 = *(v13 + 24);
      }

      v16 = mmap(0, v14, 3, 1, *(v13 + 32), 0);
      if (v16 == -1)
      {
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v25 = __error();
          v26 = strerror(*v25);
          *buf = 136446210;
          v29 = v26;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(BufferedStream) Cannot map buffer file: %{public}s", buf, 0xCu);
        }

        ftruncate(*(*(a1 + 32) + 32), 0);
        close(*(*(a1 + 32) + 32));
        if (unlink([*(*(a1 + 32) + 40) fileSystemRepresentation]))
        {
          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v27 = *__error();
            *buf = 67109120;
            LODWORD(v29) = v27;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "(BufferedStream) Unable to unlink buffer file: %{darwin.errno}d", buf, 8u);
          }
        }

        *(*(a1 + 32) + 32) = 0;
      }

      else
      {
        v17 = v16;
        v18 = *(a1 + 32);
        v19 = *(v18 + 16);
        if (v19)
        {
          free(v19);
          v18 = *(a1 + 32);
        }

        *(v18 + 16) = v17;
      }
    }
  }
}

void sub_1001D0524(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = [WeakRetained streamStatus];

  if ((v3 - 2) <= 2)
  {
    v4 = *(a1 + 32);
    v6 = *(v4 + 48);
    v5 = *(v4 + 56);
    v7 = ASDLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v5 == v6)
    {
      if (v8)
      {
        v12[0] = 0;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "(BufferedStream) Writer ended, sending end encountered", v12, 2u);
      }

      v7 = objc_loadWeakRetained((*(a1 + 32) + 72));
      sub_1002BB2AC(v7, 5);
      v9 = 16;
    }

    else if (v8)
    {
      *buf = 0;
      v9 = 2;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "(BufferedStream) Writer ended, sending bytes available", buf, 2u);
    }

    else
    {
      v9 = 2;
    }

    v10 = objc_loadWeakRetained((*(a1 + 32) + 72));
    v11 = v10;
    if (v10)
    {
      dispatch_source_merge_data(v10[2], v9);
    }
  }
}

void sub_1001D0658(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(a1 + 48);
  if (v4 + v3 <= *(v2 + 24))
  {
    memcpy((*(v2 + 16) + v3), *(a1 + 56), v4);
    *(*(a1 + 32) + 56) += *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    if (WeakRetained)
    {
      v12 = WeakRetained;
      dispatch_source_merge_data(WeakRetained[2], 2uLL);
      WeakRetained = v12;
    }
  }

  else
  {
    v5 = objc_loadWeakRetained((v2 + 72));
    sub_1002BB2AC(v5, 7);

    v6 = ASDErrorWithUserInfoAndFormat();
    v7 = objc_loadWeakRetained((*(a1 + 32) + 72));
    sub_1002BB120(v7, v6);

    v8 = objc_loadWeakRetained((*(a1 + 32) + 72));
    v9 = v8;
    if (v8)
    {
      dispatch_source_merge_data(v8[2], 8uLL);
    }

    if (*(a1 + 64))
    {
      v10 = objc_loadWeakRetained((*(a1 + 32) + 72));
      **(a1 + 64) = [v10 streamError];
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
  }
}

id sub_1001D10E4(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NSXPCConnection currentConnection];
    v2 = [XPCClient clientIDForConnection:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001D1810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1001D1858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@]: Connection interrupted for pid: %i", &v7, 0x12u);
  }
}

void sub_1001D1940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v12 = 138543618;
    v13 = v5;
    v14 = 1024;
    LODWORD(v15) = v6;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Connection invalidated from pid: %i", &v12, 0x12u);
  }

  v8 = v3;
  if (WeakRetained)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v8;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@]: Client %{public}@ disconnected", &v12, 0x16u);
    }
  }
}

id *sub_1001D1AB8(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = ExternalNotificationConfiguration;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void *sub_1001D1BC8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = StoreKitExternalNotificationPresentationTask;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 42), a2);
    }
  }

  return a1;
}

void sub_1001D1F20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1001D218C;
    v17 = &unk_10051B790;
    v4 = *(a1 + 32);
    v19 = *(a1 + 40);
    v18 = v3;
    v5 = &v14;
    if (v4)
    {
      v6 = sub_1002404C0();
      v7 = *(v4 + 42);
      if (v7)
      {
        v8 = *(v7 + 24);
      }

      else
      {
        v8 = 0;
      }

      v9 = [v8 bundleIdentifier];
      sub_100243C84(v6, v9);

      if (*(v4 + 50) == 1)
      {
        v10 = dispatch_time(0, 3000000000);
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(v4 + 42);
          if (v13)
          {
            v13 = *(v13 + 16);
          }

          LODWORD(block) = 138412290;
          *(&block + 4) = v13;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%@] Delaying check for app visibility to ensure correct state", &block, 0xCu);
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = dispatch_get_global_queue(21, 0);
      *&block = _NSConcreteStackBlock;
      *(&block + 1) = 3221225472;
      v21 = sub_1001D28C8;
      v22 = &unk_10051B2D0;
      v23 = v4;
      v24 = v5;
      dispatch_after(v10, v12, &block);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001D21A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [AMSEngagement alloc];
    v7 = [v5 amsBag];
    v8 = [v6 initWithBag:v7];
    v9 = [v8 enqueueMessageEvent:*(a1 + 32)];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001D22E0;
    v12[3] = &unk_10051B8F8;
    v13 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    v16 = v10;
    v14 = v11;
    v15 = v5;
    [v9 addFinishBlock:v12];
  }
}

void sub_1001D22E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v22 = v16;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Error enqueueing message event: %{public}@", buf, 0x16u);
    }

    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    v9 = [v5 messageActions];
    v10 = [v9 count];

    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [v5 messageActions];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001D24B0;
      v17[3] = &unk_10051B8D0;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v18 = v13;
      v19 = v14;
      v20 = v15;
      [v11 processMessageActions:v12 with:v17 completionHandler:*(a1 + 56)];

      goto LABEL_8;
    }

    v8 = *(*(a1 + 56) + 16);
  }

  v8();
LABEL_8:
}

void sub_1001D24B0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 placementsMap];
  v7 = [v6 objectForKeyedSubscript:@"ThirdPartyPurchaseAppLaunch"];

  if ([v7 count] >= 2)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v32 = a1[4];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[%@] Engagement response contained multiple requests for ThirdPartyPurchaseAppLaunch; only showing the first.", &buf, 0xCu);
    }
  }

  v9 = [v7 firstObject];
  v10 = [v9 engagementRequest];

  if (v10)
  {
    v12 = a1[5];
    v11 = a1[6];
    v35 = v10;
    v34 = v11;
    v13 = v5;
    if (v12)
    {
      v14 = [[AMSSystemEngagementTask alloc] initWithRequest:v35];
      v15 = [v34 amsBag];
      [v14 setBag:v15];

      v16 = [AMSProcessInfo alloc];
      v17 = *(v12 + 42);
      if (v17)
      {
        v18 = *(v17 + 24);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 bundleIdentifier];
      v20 = [v16 initWithBundleIdentifier:v19];

      v37 = 0u;
      v38 = 0u;
      v21 = *(v12 + 42);
      if (v21)
      {
        v22 = *(v21 + 24);
      }

      else
      {
        v22 = 0;
      }

      v23 = [v22 auditToken];
      v24 = v23;
      if (v23)
      {
        [v23 realToken];
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v27 = [[NSData alloc] initWithBytes:&v37 length:32];
      [v20 setAuditTokenData:v27];

      [v14 setClientInfo:v20];
      v28 = [v14 present];
      v29 = *(v12 + 42);
      if (v29)
      {
        v29 = v29[2];
      }

      v30 = v29;
      objc_initWeak(&location, v12);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v40 = sub_1001D2BA0;
      v41 = &unk_10051B948;
      objc_copyWeak(&v44, &location);
      v31 = v30;
      v42 = v31;
      v43 = v13;
      [v28 addFinishBlock:&buf];

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[4];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v33;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] No engagement request returned", &buf, 0xCu);
    }

    v26 = ASDErrorWithTitleAndMessage();
    (*(v5 + 2))(v5, v26);
  }
}

void sub_1001D28A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D28C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 42);
    if (v3)
    {
      v3 = v3[3];
    }

    v4 = v3;
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
    v22 = 0;
    v6 = [RBSProcessHandle handleForIdentifier:v5 error:&v22];
    v7 = v22;

    v8 = [v6 currentState];
    v9 = [v8 endowmentNamespaces];
    v10 = [v9 containsObject:@"com.apple.frontboard.visibility"];

    if (v7)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v1 + 42);
        if (v16)
        {
          v17 = v16[2];
          v16 = v16[3];
          v18 = v17;
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        v19 = v16;
        v20 = v18;
        v21 = [v19 bundleIdentifier];
        *buf = 138412802;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        *&buf[22] = 2114;
        v24 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Error checking for visibility of %{public}@: %{public}@", buf, 0x20u);
      }

      if (ASDErrorIsEqual())
      {
        goto LABEL_7;
      }
    }

    else if (!v10)
    {
LABEL_7:
      v2[2](v2);
LABEL_12:

      goto LABEL_13;
    }

    v12 = *(v1 + 42);
    if (v12)
    {
      v12 = v12[2];
    }

    v13 = v12;
    v14 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1001D2E54;
    v24 = &unk_10051B970;
    v25 = v13;
    v26 = v2;
    v15 = v13;
    [v14 openApplication:@"com.apple.springboard" withOptions:0 completion:buf];

    goto LABEL_12;
  }

LABEL_13:
}

void sub_1001D2BA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (ASDErrorIsEqual())
    {
      v8 = WeakRetained == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      WeakRetained[50] = 1;
    }

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v19 = 138412546;
      v20 = v17;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] External notification sheet task failed with error: %{public}@", &v19, 0x16u);
    }

LABEL_17:

    (*(*(a1 + 40) + 16))();
    goto LABEL_18;
  }

  v10 = [v5 userInfo];
  if (!v10 || (v11 = v10, [v5 userInfo], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", @"action"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"continue"), v13, v12, v11, !v14))
  {
    WeakRetained = ASDErrorWithTitleAndMessage();
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412546;
      v20 = v18;
      v21 = 2114;
      v22 = WeakRetained;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] External notification sheet task failed with error: %{public}@", &v19, 0x16u);
    }

    goto LABEL_17;
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] External notification sheet task finished successfully", &v19, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_18:
}

void sub_1001D2E54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to return to home screen: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] returned to home screen", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1001D2F90(void *a1, void *a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [[APSConnection alloc] initWithEnvironmentName:v10 namedDelegatePort:@"com.apple.aps.appstored" queue:v8];
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  v24.receiver = a1;
  v24.super_class = PushConnection;
  v16 = objc_msgSendSuper2(&v24, "init");
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 4, a4);
    objc_storeStrong((v17 + 24), a2);
    objc_storeWeak((v17 + 72), v13);
    v18 = objc_alloc_init(TaskQueue);
    v19 = *(v17 + 40);
    *(v17 + 40) = v18;

    v20 = *(v17 + 40);
    if (v20)
    {
      [*(v20 + 8) setName:@"com.apple.appstored.PushConnectionTaskQueue"];
    }

    objc_storeStrong((v17 + 8), v11);
    v21 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001D34F8(v17, 0, 0, 0, *(v17 + 24), 0, v21);
    sub_1001D34F8(v17, 0, 0, 0, *(v17 + 24), 1, v21);
    sub_1001D316C(v17, v15, v21);
    [v15 setDelegate:v17];
  }

  v22 = v17;
  return v22;
}

void sub_1001D316C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10034253C(PushRawMessage, 1);
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];

  v9 = sub_10034253C(PushRawMessage, 3);
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];

  if (!*(a1 + 48))
  {
    v11 = sub_1002397F4([PushConnectionMessageHistory alloc], *(a1 + 24), 1);
    v12 = *(a1 + 48);
    *(a1 + 48) = v11;
  }

  if (*(a1 + 64) != 1)
  {
    v19 = sub_10034253C(PushRawMessage, 2);
    v20 = [v10 arrayByAddingObject:v19];

    v18 = *(a1 + 56);
    *(a1 + 56) = 0;
    v10 = v20;
    v16 = v8;
    goto LABEL_9;
  }

  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v21 = 138543618;
    *&v21[4] = objc_opt_class();
    *&v21[12] = 2112;
    *&v21[14] = v6;
    v14 = *&v21[4];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Activating TestFlight topic", v21, 0x16u);
  }

  v15 = sub_10034253C(PushRawMessage, 2);
  v16 = [v8 arrayByAddingObject:v15];

  if (!*(a1 + 56))
  {
    v17 = sub_1002397F4([PushConnectionMessageHistory alloc], *(a1 + 24), 2);
    v18 = *(a1 + 56);
    *(a1 + 56) = v17;
LABEL_9:
  }

  [v5 setEnabledTopics:v16 ignoredTopics:{v10, *v21, *&v21[16]}];
}

void sub_1001D33C8(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 64) != a2)
  {
    *(a1 + 64) = a2;
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001D316C(a1, *(a1 + 8), v3);
  }
}

void sub_1001D3448(uint64_t a1, void *a2, int a3)
{
  if (a1)
  {
    sub_1001D34F8(a1, 0, 0, 0, *(a1 + 24), a3, a2);
  }
}

void sub_1001D346C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001D34F8(a1, 1, v3, 0, *(a1 + 24), 0, v4);
  }
}

void sub_1001D34F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v38 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a7;
  if (a1)
  {
    if (v38)
    {
      if (a6)
      {
        [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
      }

      else
      {
        +[ACAccountStore ams_sharedAccountStore];
      }
      v13 = ;
      v14 = [v13 ams_iTunesAccountWithDSID:v38];
    }

    else
    {
      if (a6)
      {
        +[ActiveAccountObserver activeSandboxAccount];
      }

      else
      {
        +[ActiveAccountObserver activeAccount];
      }
      v14 = ;
    }

    v15 = v14;
    v16 = v35;
    v37 = v34;
    v17 = v33;
    v18 = @"Remove";
    if (!a2)
    {
      v18 = @"Add";
    }

    v36 = v18;
    v19 = @"Active";
    if (a6)
    {
      v19 = @"Sandbox";
    }

    v32 = v19;
    if (v15)
    {
      if (!v16)
      {
        if (a6)
        {
          [BagService appstoredServiceForSandboxAccount:v15];
        }

        else
        {
          [BagService appstoredServiceForAccount:v15];
        }
        v16 = ;
      }

      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v31 = v23;
        v24 = [v15 ams_DSID];
        v25 = [*(a1 + 8) publicToken];
        v26 = sub_100229BF8(v25);
        *buf = 138544642;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v42 = v36;
        *v43 = 2114;
        *&v43[2] = v32;
        *&v43[10] = 2114;
        *&v43[12] = v24;
        *&v43[20] = 2114;
        *&v43[22] = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] [%{public}@] [%{public}@] Sending push request for accountID: %{public}@ token: %{public}@", buf, 0x3Eu);
      }

      v27 = [*(a1 + 8) publicToken];
      v28 = sub_1002BF180([PushTypesTask alloc], a2, v15, v16, v37, v27, v17);
      objc_initWeak(&location, v28);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001D4740;
      v42 = &unk_10051B9B8;
      objc_copyWeak(&v47, &location);
      *v43 = a1;
      *&v43[8] = v17;
      *&v43[16] = v15;
      v16 = v16;
      *&v43[24] = v16;
      v44 = v37;
      v45 = v36;
      v20 = v27;
      v46 = v20;
      [v28 setCompletionBlock:buf];
      v29 = *(a1 + 40);
      v40 = v28;
      v30 = [NSArray arrayWithObjects:&v40 count:1];
      if (v29)
      {
        [*(v29 + 8) addOperations:v30 waitUntilFinished:1];
      }

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2112;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v42 = v36;
        *v43 = 2114;
        *&v43[2] = v32;
        v21 = *&buf[4];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] [%@] [%{public}@] [%{public}@] Skipping push type lookup due to no account", buf, 0x2Au);
      }
    }
  }
}

void sub_1001D39F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D3A20(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_1001D34F8(a1, 1, v3, 0, *(a1 + 24), 1, v4);
  }
}

void sub_1001D3AAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001D3B28;
    v3[3] = &unk_10051B830;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1001D3B28(uint64_t a1)
{
  if (*(a1 + 40) != 2)
  {
    v4 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    v8 = "[%{public}@] Per-topic token can be requested only for TestFlight";
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v8, &v9, 0xCu);

    goto LABEL_9;
  }

  v2 = *(*(a1 + 32) + 64);
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2 != 1)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    v8 = "[%{public}@] Per-topic token can be requested only when TestFlight topic is enabled";
    goto LABEL_11;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Requesting token for TestFlight", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v4 = sub_10034253C(PushRawMessage, 2);
  [v6 requestTokenForTopic:v4 identifier:&stru_100529300];
LABEL_9:
}

void sub_1001D3CEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001D3D68;
    v3[3] = &unk_10051B830;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1001D3D68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2 == 2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Invalidating token for TestFlight", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v4 = sub_10034253C(PushRawMessage, 2);
    [v6 invalidateTokenForTopic:v4 identifier:&stru_100529300];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Per-topic token can be invalidated only for TestFlight", &v8, 0xCu);
  }
}

void sub_1001D4048(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  objc_opt_self();
  if (v9)
  {
    v4 = v9[1];
    if (v4 == 1)
    {
      v5 = sub_1002E9FC4([PushMessage alloc], v9);
      v6 = sub_1002EA090(v5);
      if (v6 == 11)
      {
        v7 = sub_1002EA0AC(v5);
        v8 = v7 != 0;
      }

      else
      {
        v8 = 0;
      }

      v4 = v9[1];
      goto LABEL_9;
    }

    v8 = 0;
  }

  else
  {
    v8 = 0;
    v4 = 0;
  }

  v6 = -1;
LABEL_9:
  sub_1001D44F8(PushConnection, v4, v6, v8, a3);
}

void sub_1001D44F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  objc_opt_self();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D459C;
  v9[3] = &unk_10051B990;
  v9[4] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v10 = a4;
  sub_1003F2684(Analytics, v9, 22);
}

id sub_1001D459C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"phase"];

  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"topic"];

  if (*(a1 + 40) == 1)
  {
    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v2 setObject:v5 forKeyedSubscript:@"actionType"];

    if (*(a1 + 48) == 11)
    {
      v6 = [NSNumber numberWithBool:*(a1 + 56)];
      [v2 setObject:v6 forKeyedSubscript:@"preorder"];
    }
  }

  return v2;
}

void sub_1001D4740(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_11:
    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    *(v22 + 16) = 0;

    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = *(a1 + 40);
      v32 = *(a1 + 72);
      v34 = v30;
      if (v3)
      {
        Property = objc_getProperty(v3, v33, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v36 = Property;
      *buf = 138544130;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      *&buf[22] = 2114;
      v40 = v32;
      LOWORD(v41) = 2114;
      *(&v41 + 2) = v36;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] [%{public}@] Push types call failed with error: %{public}@", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  v4 = *(WeakRetained + 66);
  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Retrying add push type call since push token had not been registered", buf, 0x16u);
      }

      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = v9;
      v15 = v10;
      v16 = v11;
      if (v12)
      {
        v17 = [*(v12 + 8) publicToken];
        v18 = sub_1002BF180([PushTypesTask alloc], 0, v13, v14, v15, v17, v16);
        objc_initWeak(&v37, v18);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1001D4B58;
        v40 = &unk_10051B9E0;
        objc_copyWeak(v43, &v37);
        *&v41 = v12;
        *(&v41 + 1) = v16;
        v19 = v17;
        v42 = v19;
        [v18 setCompletionBlock:buf];
        v20 = *(v12 + 40);
        v38 = v18;
        v21 = [NSArray arrayWithObjects:&v38 count:1];
        if (v20)
        {
          [*(v20 + 8) addOperations:v21 waitUntilFinished:1];
        }

        objc_destroyWeak(v43);
        objc_destroyWeak(&v37);
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v25 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = *(a1 + 40);
    v28 = *(a1 + 72);
    *buf = 138543874;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
    *&buf[22] = 2114;
    v40 = v28;
    v29 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] [%{public}@] Push types call succeeded", buf, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 80));
LABEL_16:
}

void sub_1001D4B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 56));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_1001D4B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 66) == 2)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v20 = 138543618;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] [Add] Retried push types call succeeded", &v20, 0x16u);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = *(v9 + 16);
    *(v9 + 16) = v10;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = 0;

    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 40);
      v17 = v14;
      if (v3)
      {
        Property = objc_getProperty(v3, v16, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v19 = Property;
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2114;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] [Add] Retried push types call failed with error: %{public}@", &v20, 0x20u);
    }
  }
}

id *sub_1001D4DC4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v47.receiver = a1;
    v47.super_class = AppPackage;
    a1 = objc_msgSendSuper2(&v47, "init");
    if (a1)
    {
      v4 = v3;
      objc_opt_self();
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = v5;
      if (v4)
      {
        if (v4[2] == 3)
        {
          [v5 setObject:&off_100546DC8 forKeyedSubscript:@"package_type"];
          v8 = objc_getProperty(v4, v7, 56, 1);
          [v6 setObject:v8 forKeyedSubscript:@"delta_algorithm"];
        }

        else
        {
          [v5 setObject:&off_100546DE0 forKeyedSubscript:@"package_type"];
        }

        v9 = v4[15];
      }

      else
      {
        [v5 setObject:&off_100546DE0 forKeyedSubscript:@"package_type"];
        v9 = 0;
      }

      v10 = [NSNumber numberWithInteger:v9];
      [v6 setObject:v10 forKeyedSubscript:@"archive_type"];

      if (v4)
      {
        v12 = objc_getProperty(v4, v11, 24, 1);
        [v6 setObject:v12 forKeyedSubscript:@"package_url"];

        Property = objc_getProperty(v4, v13, 40, 1);
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"package_url"];
        Property = 0;
      }

      v15 = Property;
      [v6 setObject:v15 forKeyedSubscript:@"bytes_total"];

      if (v4)
      {
        v17 = objc_getProperty(v4, v16, 80, 1);
        [v6 setObject:v17 forKeyedSubscript:@"hash_array"];

        v19 = objc_getProperty(v4, v18, 48, 1);
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"hash_array"];
        v19 = 0;
      }

      v20 = v19;
      [v6 setObject:v20 forKeyedSubscript:@"clear_hash_array"];

      if (v4)
      {
        v22 = objc_getProperty(v4, v21, 112, 1);
        [v6 setObject:v22 forKeyedSubscript:@"hash_size"];

        v24 = objc_getProperty(v4, v23, 88, 1);
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"hash_size"];
        v24 = 0;
      }

      v25 = v24;
      [v6 setObject:v25 forKeyedSubscript:@"hash_type"];

      if (v4)
      {
        v26 = [NSNumber numberWithBool:*(v4 + 9) & 1];
        [v6 setObject:v26 forKeyedSubscript:@"streaming_zip"];

        v28 = objc_getProperty(v4, v27, 144, 1);
      }

      else
      {
        v45 = [NSNumber numberWithBool:0];
        [v6 setObject:v45 forKeyedSubscript:@"streaming_zip"];

        v28 = 0;
      }

      v29 = v28;
      [v6 setObject:v29 forKeyedSubscript:@"sinf"];

      if (v4)
      {
        v31 = objc_getProperty(v4, v30, 64, 1);
        [v6 setObject:v31 forKeyedSubscript:@"dp_info"];

        v33 = objc_getProperty(v4, v32, 72, 1);
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"dp_info"];
        v33 = 0;
      }

      v34 = v33;
      [v6 setObject:v34 forKeyedSubscript:@"disk_usage"];

      if (v4)
      {
        v36 = objc_getProperty(v4, v35, 96, 1);
        [v6 setObject:v36 forKeyedSubscript:@"initial_odr_size"];

        v38 = objc_getProperty(v4, v37, 32, 1);
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"initial_odr_size"];
        v38 = 0;
      }

      v39 = v38;
      [v6 setObject:v39 forKeyedSubscript:@"background_asset_metadata"];

      if (v4)
      {
        v40 = [NSNumber numberWithBool:v4[1] & 1];
        [v6 setObject:v40 forKeyedSubscript:@"locate_asset_cache"];

        v42 = objc_getProperty(v4, v41, 152, 1);
      }

      else
      {
        v46 = [NSNumber numberWithBool:0];
        [v6 setObject:v46 forKeyedSubscript:@"locate_asset_cache"];

        v42 = 0;
      }

      v43 = v42;
      [v6 setObject:v43 forKeyedSubscript:@"variant_id"];

      [a1[2] addEntriesFromDictionary:v6];
    }
  }

  return a1;
}

id *sub_1001D52EC(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = AppPackage;
    a1 = objc_msgSendSuper2(&v23, "init");
    if (a1)
    {
      v4 = v3;
      objc_opt_self();
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = v5;
      if (v4)
      {
        v7 = v4[3];
        [v6 setObject:v7 forKeyedSubscript:@"bytes_offset"];

        v8 = v4[4];
      }

      else
      {
        [v5 setObject:0 forKeyedSubscript:@"bytes_offset"];
        v8 = 0;
      }

      v9 = v8;
      [v6 setObject:v9 forKeyedSubscript:@"bytes_total"];

      if (v4)
      {
        v10 = v4[9];
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      [v6 setObject:v11 forKeyedSubscript:@"package_url"];

      if (v4)
      {
        v12 = [NSNumber numberWithBool:*(v4 + 8)];
        [v6 setObject:v12 forKeyedSubscript:@"streaming_zip"];

        v13 = v4[7];
      }

      else
      {
        v22 = [NSNumber numberWithBool:0];
        [v6 setObject:v22 forKeyedSubscript:@"streaming_zip"];

        v13 = 0;
      }

      v14 = v13;
      [v6 setObject:v14 forKeyedSubscript:@"hash_array"];

      if (v4)
      {
        v15 = v4[4];
        [v6 setObject:v15 forKeyedSubscript:@"hash_size"];

        v16 = v4[6];
      }

      else
      {
        [v6 setObject:0 forKeyedSubscript:@"hash_size"];
        v16 = 0;
      }

      v17 = v16;

      [v6 setObject:v17 forKeyedSubscript:@"hash_type"];
      v18 = +[BagService appstoredService];
      v19 = [v18 lastBag];
      v20 = [v19 BOOLForKey:@"ignoreAssetCacheForSystemApps" defaultValue:0];

      if ((v20 & 1) == 0)
      {
        [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locate_asset_cache"];
      }

      [a1[2] addEntriesFromDictionary:v6];
    }
  }

  return a1;
}

id sub_1001D5578(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v4 || ((v9[0] = 0, v9[1] = 0, [v4 getUUIDBytes:v9], (v9[0] + 1) >= 2) ? (v6 = v9[0] == 0xEEEEB0B5B2B2EEEELL) : (v6 = 1), v6))
  {
    v7 = ASDLogHandleForCategory();
    os_signpost_id_generate(v7);
  }

  return v5;
}

uint64_t sub_1001D5788(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___TFImageUpload__xiCloudVersionIdHeader;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___TFImageUpload__uploadUrl;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001D59F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_1001D5A10(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

id *sub_1001D5BE8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1001D5C4C([PromiseResult alloc], 0, v2);

  return v3;
}

id *sub_1001D5C4C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PromiseResult;
    v8 = objc_msgSendSuper2(&v12, "init");
    a1 = v8;
    if (v8)
    {
      if (v6)
      {
        v9 = v8 + 2;
        v10 = a2;
      }

      else
      {
        if (!v7)
        {
          [NSException raise:NSInternalInconsistencyException format:@"PromiseResult must represent either a value or an error"];
          goto LABEL_8;
        }

        v9 = v8 + 1;
        v10 = a3;
      }

      objc_storeStrong(v9, v10);
    }
  }

LABEL_8:

  return a1;
}

id *sub_1001D5D14(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1001D5C4C([PromiseResult alloc], v2, 0);

  return v3;
}

__CFString *sub_1001D5DC8(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_10051BA00[a1 - 1];
  }
}

id *sub_1001D5E50(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

void sub_1001D5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D5FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D5FF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_1001D618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D62A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D62C0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D63A4(uint64_t a1)
{
  v2 = [*(a1 + 40) prependingCategory:@"FP"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

void sub_1001D64E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D64FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D6548(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

id sub_1001D6788(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (os_variant_has_internal_content() && [v5 fairplayStatus])
  {
    v6 = [v5 fairplayStatus];
LABEL_6:
    v8 = v6;
    goto LABEL_7;
  }

  v7 = sub_1003D2550(v4);
  v8 = [v7 fileSystemRepresentation];

  if (v8)
  {
    sub_100032D64();
    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

void sub_1001D7158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001D7198(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001D7208(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [a1[4] logKey];
      *buf = 138412546;
      v16 = v12;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Wasn't able to display the family leave dialog: %{public}@", buf, 0x16u);
    }
  }

  else if (a1[5])
  {
    v8 = [v5 selectedActionIdentifier];
    v9 = [a1[5] identifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      if ([a1[6] longLongValue] < 1)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1001D74FC;
        v13[3] = &unk_10051B5C0;
        v13[4] = a1[4];
        sub_1004074EC(AppStore, v13);
      }

      else
      {
        v11 = a1[6];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1001D7418;
        v14[3] = &unk_10051B5C0;
        v14[4] = a1[4];
        sub_1004073F4(AppStore, v11, v14);
      }
    }
  }
}

void sub_1001D7418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) logKey];
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Encountered error opening store. Error: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1001D74FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) logKey];
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Encountered error opening store. Error: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1001D7988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 && v6)
    {
      [*(a1 + 8) setValue:v5 forKey:v6];
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543874;
        v11 = objc_opt_class();
        v12 = 2112;
        v13 = v5;
        v14 = 2112;
        v15 = v7;
        v9 = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to set value: %@ for propery: %@", &v10, 0x20u);
      }
    }
  }
}

id *sub_1001D7AA0(id *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1[1] valueForKey:a2];
    v2 = vars8;
  }

  return a1;
}

id *sub_1001D7AE4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v29.receiver = a1;
    v29.super_class = CheckStoreQueueTask;
    v17 = objc_msgSendSuper2(&v29, "init");
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 10, a6);
      objc_storeStrong(a1 + 11, a5);
      a1[8] = a2;
      a1[9] = a3;
      objc_storeStrong(a1 + 6, a7);
      v18 = [v13 copy];
      v19 = a1[7];
      a1[7] = v18;

      v20 = a1[9] - 1;
      if (v20 > 4)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_10051BAE8[v20];
      }

      if (a1[8])
      {
        v22 = @"Pending";
      }

      else
      {
        v22 = @"Auto";
      }

      v23 = v22;
      v24 = [_TtC9appstored6LogKey alloc];
      v25 = [NSString stringWithFormat:@"%@/%@", v23, v21];

      v26 = [(LogKey *)v24 initWithCategory:v25];
      v27 = a1[5];
      a1[5] = v26;
    }
  }

  return a1;
}

void sub_1001D8C40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = a2;
  v12 = v11;
  if (a1)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001D8D1C;
    v13[3] = &unk_10051BAC8;
    v13[4] = a1;
    v17 = a6;
    v14 = v11;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    sub_1003F2684(Analytics, v13, 34);
  }
}

id sub_1001D8D1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    if (v2 != 1)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v3 = &off_100546E10;
  }

  else
  {
    v3 = &off_100546DF8;
  }

  v4 = objc_opt_new();
  [v4 setObject:v3 forKeyedSubscript:@"type"];
  v5 = [NSNumber numberWithInteger:*(*(a1 + 32) + 72)];
  [v4 setObject:v5 forKeyedSubscript:@"checkStoreQueueReason"];

  if (*(*(a1 + 32) + 64) == 1)
  {
    v6 = [NSNumber numberWithBool:*(a1 + 64)];
    [v4 setObject:v6 forKeyedSubscript:@"preorder"];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = sub_1003429BC(v7);
    v9 = &off_100525340;
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v4 setObject:v10 forKeyedSubscript:@"resultCount"];

    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    [v4 setObject:v11 forKeyedSubscript:@"failedImportCount"];

    v8 = [NSNumber numberWithBool:*(a1 + 65)];
    v9 = &off_1005254B8;
  }

  [v4 setObject:v8 forKeyedSubscript:*v9];

LABEL_12:

  return v4;
}

id *sub_1001D8F64(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = CoordinatorPromiseDataConsumer;
    v13 = objc_msgSendSuper2(&v28, "init");
    if (v13 && ((dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v14 = objc_claimAutoreleasedReturnValue(), v15 = dispatch_queue_create("com.apple.appstored.DataPromiseDataConsumer", v14), v16 = v13[3], v13[3] = v15, v16, v14, objc_storeStrong(v13 + 5, a4), objc_storeStrong(v13 + 4, a2), v17 = v13[4], v27 = 0, sub_10029B69C(v17, v11, v12, &v27), v18 = objc_claimAutoreleasedReturnValue(), v19 = v27, v20 = v13[1], v13[1] = v18, v20, !v13[1]) ? (ASDErrorWithUnderlyingErrorAndDescription(), v21 = objc_claimAutoreleasedReturnValue()) : (v26 = v19, sub_1001D9118(v13, &v26), v21 = v26), v22 = v21, v19, v22))
    {
      if (a5)
      {
        v23 = v22;
        v24 = 0;
        *a5 = v22;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = v13;
      v22 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void sub_1001D9118(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 8))
  {
    v4 = *(a1 + 40);
    if (v4 && (v5 = *(v4 + 48)) != 0)
    {
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [ZipDataStreamAdapter alloc];
        v9 = *(a1 + 40);
        if (v9)
        {
          LOBYTE(v9) = *(v9 + 8);
        }

        v10 = sub_1001F1364(&v8->super.isa, *(a1 + 8), 0, v9 & 1);
        v11 = *(a1 + 48);
        *(a1 + 48) = v10;

        v7 = 0;
        goto LABEL_13;
      }
    }
    v12 = ;
    v13 = ASDErrorWithDescription();

    v7 = v13;
  }

  else
  {
    v6 = *(a1 + 48);
    *(a1 + 48) = 0;

    v7 = ASDErrorWithDescription();
  }

LABEL_13:
  if (a2 && !*(a1 + 48))
  {
    v7 = v7;
    *a2 = v7;
  }
}

void sub_1001D9284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001D932C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001D932C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {

    sub_1001D9380(v2);
  }
}

void sub_1001D9380(uint64_t a1)
{
  if (a1)
  {
    if (qword_1005AA750 != -1)
    {
      dispatch_once(&qword_1005AA750, &stru_10051BB38);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    if (objc_opt_respondsToSelector())
    {
      v3 = qword_1005AA748;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1001DA204;
      v4[3] = &unk_10051B570;
      v5 = WeakRetained;
      v6 = a1;
      dispatch_sync(v3, v4);
    }
  }
}

void sub_1001D9530(void *a1)
{
  if (*(a1[4] + 48))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = *(a1[4] + 48);

    [v4 consumeData:v2 andWaitWithCompletionHandler:v3];
  }

  else
  {
    v5 = a1[6];
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6, 0);
  }
}

void sub_1001D9694(void *a1)
{
  if (*(a1[4] + 48))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = *(a1[4] + 48);

    [v4 consumeData:v2 withCompletionHandler:v3];
  }

  else
  {
    v5 = a1[6];
    v6 = ASDErrorWithDescription();
    (*(v5 + 16))(v5, v6, 0);
  }
}

void sub_1001D97C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {

    [v2 finishWithCompletionHandler:v1];
  }

  else
  {
    v3 = ASDErrorWithDescription();
    (*(v1 + 16))(v1, v3);
  }
}

void sub_1001D9900(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D99FC;
    v5[3] = &unk_10051B8A8;
    v5[4] = v1;
    v6 = *(a1 + 40);
    [v2 preflightWithCompletion:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = ASDErrorWithDescription();
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1001D99FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9ABC;
  block[3] = &unk_10051BB18;
  v8 = v3;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1001D9ABC(void *a1)
{
  if (a1[4])
  {
    v1 = *(a1[6] + 16);

    v1();
  }

  else
  {
    v2 = a1[6];
    v3 = *(a1[5] + 48);
    if (v3)
    {

      [v3 prepareWithCompletionHandler:v2];
    }

    else
    {
      v4 = ASDErrorWithDescription();
      (*(v2 + 16))(v2, 0, v4);
    }
  }
}

void sub_1001D9C30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = *(v2 + 32);
    v4 = [*(v2 + 8) uniqueIdentifier];
    v20 = 0;
    v5 = sub_10029B9F0(v3, v4, &v20);
    v6 = v20;

    if (!v5)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(*(a1 + 32) + 8) uniqueIdentifier];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Truncating promise after failure to reset promise %{public}@ with error: %{public}@", buf, 0x16u);
      }

      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      v10 = [*(v8 + 8) uniqueIdentifier];
      v11 = *(*(a1 + 32) + 40);
      v19 = 0;
      v5 = sub_10029BA20(v9, v10, v11, &v19);
      v6 = v19;
    }

    objc_storeStrong((*(a1 + 32) + 8), v5);
    v12 = *(a1 + 32);
    if (*(v12 + 8))
    {
      sub_1001D9380(v12);
      v13 = *(a1 + 32);
      v18 = v6;
      sub_1001D9118(v13, &v18);
      v14 = v18;

      v6 = v14;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = *(a1 + 40);
    v17 = ASDErrorWithDescription();
    (*(v15 + 16))(v15);
  }
}

void sub_1001D9F1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {

    [v2 suspendWithCompletionHandler:v1];
  }

  else
  {
    v3 = ASDErrorWithDescription();
    (*(v1 + 16))(v1, v3);
  }
}

void sub_1001DA054(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = [*(v2 + 8) uniqueIdentifier];
  v5 = *(*(a1 + 32) + 40);
  v14 = 0;
  v6 = sub_10029BA20(v3, v4, v5, &v14);
  v7 = v14;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v6;

  v10 = *(a1 + 32);
  if (*(v10 + 8))
  {
    sub_1001D9380(v10);
    v11 = *(a1 + 32);
    v13 = v7;
    sub_1001D9118(v11, &v13);
    v12 = v13;

    v7 = v12;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001DA17C(id a1)
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_get_global_queue(21, 0);
  v2 = dispatch_queue_create_with_target_V2("com.apple.appstored.DataPromiseDataConsumer.delegate", attr, v1);
  v3 = qword_1005AA748;
  qword_1005AA748 = v2;
}

void sub_1001DA204(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = [*(v3 + 8) uniqueIdentifier];
  Property = *(*(a1 + 40) + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 56, 1);
  }

  v6 = Property;
  [v2 coordinatorPromiseDataConsumer:v3 willBeginUsingPromise:v7 forReference:v6];
}

void sub_1001DA304(void *a1)
{
  if (a1 && (sub_100269CA8(a1) & 1) == 0)
  {
    v2 = sub_1003F281C();
    v3 = sub_1003F76B4(v2, a1);

    if (v3)
    {
      Property = objc_getProperty(v3, v4, 200, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = Property;
    [v6 fractionCompleted];
  }
}

id sub_1001DA3A4(void *a1)
{
  if (a1)
  {
    v2 = sub_100269508(a1);
    if (v2 >= 5)
    {
      a1 = [NSString stringWithFormat:@"Unknown Purge Reason [%lu]", v2];
    }

    else
    {
      a1 = *(&off_10051BB58 + v2);
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001DA410(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100269440(a1);
    v3 = sub_100269CA8(v1);
    v4 = sub_1003F281C();
    v5 = sub_1003F76B4(v4, v1);

    if (v3 || !v5)
    {
      if (v2 <= 0)
      {
        if (v2)
        {
          v6 = 0;
        }

        else
        {
          v6 = v3;
        }

        if (v6)
        {
          v1 = 4;
        }

        else
        {
          if (v5)
          {
            LOBYTE(v3) = 1;
          }

          v7 = sub_100269508(v1);
          v8 = 6;
          if (v7 <= 0)
          {
            v8 = 0;
          }

          v9 = 6;
          if (v7 < 1)
          {
            v9 = 1;
          }

          if (v3)
          {
            v1 = v8;
          }

          else
          {
            v1 = v9;
          }
        }
      }

      else
      {
        v1 = 5;
      }
    }

    else
    {
      v1 = 3;
    }
  }

  return v1;
}

void sub_1001DA64C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 asRecentBag];
  if (v2)
  {
    v12 = v3;
    v4 = v3;
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[AMSDevice buildVersion];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up activities with build: %{public}@", buf, 0xCu);
    }

    sub_1001DC270(v2, 9, @"Startup", 0, v4);
    sub_1001DC270(v2, 11, @"Startup", 0, v4);
    sub_1001DC270(v2, 5, @"Startup", 0, v4);
    sub_1001DC270(v2, 1, @"Startup", 0, v4);
    sub_1001DC270(v2, 2, @"Startup", 0, v4);
    sub_1001DC270(v2, 7, @"Startup", 0, v4);
    sub_1001DC270(v2, 3, @"Startup", 0, v4);

    v7 = objc_alloc_init(_TtC9appstored35AdPlatformsStatusConditionsActivity);
    sub_1001DB1E8(v2, v7, @"AdPlatformsSetStatusConditions");
    v8 = objc_opt_new();
    sub_1001DB1E8(v2, v8, @"Startup");

    v9 = objc_opt_new();
    sub_1001DB1E8(v2, v9, @"Startup");

    v10 = objc_opt_new();
    sub_1001DB1E8(v2, v10, @"Startup");

    v11 = +[_TtC9appstored38WidgetReloadOnNetworkReachableActivity sharedActivity];
    [v11 bootstrapWithCompletionHandler:&stru_10051BCB8];

    +[_TtC9appstored15DayLockActivity registerActivity];
    v3 = v12;
  }
}

id sub_1001DA8BC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA960;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA760 != -1)
  {
    dispatch_once(&qword_1005AA760, block);
  }

  v0 = qword_1005AA758;

  return v0;
}

void sub_1001DA960(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA758;
  qword_1005AA758 = v1;
}

const __CFString *sub_1001DA998(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (a2 > 0xC)
  {
    return @"CrossfirePost";
  }

  else
  {
    return off_10051BD48[a2];
  }
}

void sub_1001DA9DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = a3;
  if (v5)
  {
    v9 = v6;
    objc_opt_self();
    if ([v9 isEqualToString:@"com.apple.appstored.PostAnalytics"])
    {
      v10 = 3;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.ArcadePostSummary"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.ArcadePostPO"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.ArcadeResetPO"])
    {
      v10 = 5;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.PostDnu"])
    {
      v10 = 4;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.RestoreRetry"])
    {
      v10 = 6;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.Sbsync"])
    {
      v10 = 7;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.TestFlightFeedback"])
    {
      v10 = 8;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.AutoUpdates"])
    {
      v10 = 9;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.OptimalDownloadWindow"])
    {
      v10 = 10;
    }

    else if ([v9 isEqualToString:@"com.apple.appstored.Daily"])
    {
      v10 = 11;
    }

    else
    {
      if (([v9 isEqualToString:@"com.apple.appstored.skan.PostbackFetch"] & 1) == 0)
      {

        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v9;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Skipping unknown activity: %{public}@", &buf, 0xCu);
        }

        goto LABEL_62;
      }

      v10 = 12;
    }

    v11 = sub_1001DA998(ActivityManager, v10);
    if (!sub_1001DB084(v5, v10, v7))
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Skipping non-enabled activity", &buf, 0xCu);
      }

      goto LABEL_61;
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v30 = sub_1001DD4C4;
    v31 = &unk_10051B348;
    v12 = v11;
    v32 = v12;
    v13 = objc_retainBlock(&buf);
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling activity wakeup", &v27, 0xCu);
    }

    if (v10 > 6)
    {
      if (v10 <= 8)
      {
        if (v10 == 7)
        {
          if (!v7)
          {
            (*(v13 + 2))(v13, 0, v8);
            goto LABEL_60;
          }

          v15 = sub_100355E58();
          sub_10035A684(v15, @"Duet", 0, v7, v13);
        }

        else
        {
          v15 = sub_1002404C0();
          sub_1002457D8(v15);
        }
      }

      else if (v10 == 9)
      {
        v15 = +[UpdatesManager sharedManager];
        [v15 performBackgroundSoftwareUpdateCheck];
      }

      else
      {
        if (v10 != 10)
        {
          if (v10 == 11)
          {
            v17 = sub_10030240C();
            sub_1003024E8(v17);

            sub_1003F2160();
            sub_1001EE390();
            v18 = objc_alloc_init(AppPurgeCoordinator);
            sub_1001E9D90(v18);

            v19 = objc_alloc_init(VerifyReceiptsTask);
            v20 = sub_100284B90();
            v21 = v20;
            if (v20)
            {
              [*(v20 + 8) addOperation:v19];
            }

            v22 = sub_100355E58();
            sub_10035D09C(v22);

            v23 = v7;
            v24 = sub_100355E58();
            v25 = sub_100355F34(v24);

            if (v25 >= 1)
            {
              v26 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                LOWORD(v27) = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Checking to see if sbsync needs scheduling", &v27, 2u);
              }

              sub_1001DC270(v5, 7, @"Daily sbsync scheduled check", 0, v23);
            }

            [_TtC9appstored29ManagedBackgroundAssetsBridge cleanUpWithCompletionHandler:&stru_10051BC70];
          }

          goto LABEL_60;
        }

        v15 = sub_1002C0D84();
        sub_1002C13BC(v15, 128);
      }
    }

    else if (v10 <= 2)
    {
      v15 = sub_100355E58();
      if (v10 == 1)
      {
        sub_100359424(v15, v13);
      }

      else
      {
        sub_100359080(v15, v13);
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v15 = sub_1001F26CC();
          sub_1001F2FC4(v15, v13);
          break;
        case 5:
          v15 = sub_100355E58();
          sub_1003599F0(v15, v13);
          break;
        case 6:
          v15 = sub_1002856D4();
          sub_1002870A8(v15, @"Soft Faiure Retry", 0, 0);
          break;
        default:
LABEL_60:

          v16 = v32;
LABEL_61:

LABEL_62:
          goto LABEL_63;
      }
    }

    goto LABEL_60;
  }

LABEL_63:
}

uint64_t sub_1001DB084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_1003BBF50();
    v7 = [v6 isHRNMode];

    if (v7)
    {
LABEL_3:
      a1 = 0;
      goto LABEL_20;
    }

    a1 = 1;
    if (a2 <= 6)
    {
      if (a2 > 3)
      {
        if (a2 == 4)
        {
          v8 = sub_1002EDEC8();
          v9 = sub_1002EDE64(v8);
          goto LABEL_19;
        }

        if (a2 != 5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 == 1)
        {
          v8 = sub_100355E58();
          v9 = sub_1001F36A0(v8);
          goto LABEL_19;
        }

        if (a2 != 2)
        {
          if (a2 != 3)
          {
            goto LABEL_3;
          }

          v8 = sub_1001F26CC();
          v9 = sub_1001F36A0(v8);
LABEL_19:
          a1 = v9;

          goto LABEL_20;
        }
      }

      v8 = sub_100355E58();
      v9 = sub_100356830(v8, v5);
      goto LABEL_19;
    }

    if ((a2 - 8) < 4)
    {
      goto LABEL_20;
    }

    if (a2 != 7)
    {
      goto LABEL_3;
    }

    v8 = sub_100355E58();
    v9 = sub_100357C60(v8);
    goto LABEL_19;
  }

LABEL_20:

  return a1;
}

void sub_1001DB1E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DB2AC;
    block[3] = &unk_10051AEE8;
    v9 = v5;
    v10 = v6;
    v11 = a1;
    dispatch_async(v7, block);
  }
}

void sub_1001DB2AC(uint64_t a1)
{
  if ([*(a1 + 32) isEnabled])
  {
    v2 = [*(a1 + 32) rawRegisteredName];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001DB414;
    handler[3] = &unk_10051BB90;
    v8 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9 = v3;
    v10 = v4;
    xpc_activity_register(v2, XPC_ACTIVITY_CHECK_IN, handler);

    v5 = v8;
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptiveName];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping register of non-enabled activity: %{public}@", buf, 0xCu);
    }
  }
}

void sub_1001DB414(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v21 = *(a1 + 48);
    v22 = [*(a1 + 32) descriptiveName];
    v5 = sub_1001DBA1C(v21, v22, 0);

    v23 = [*(a1 + 32) descriptiveName];
    sub_1003D4338(AppDefaultsManager, 0, v23);

    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        [v5 timeIntervalSince1970];
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = [*(a1 + 32) descriptiveName];
      v42 = 134218242;
      v43 = v26;
      v44 = 2114;
      v45 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Activity fired within deadline (%{time_t}ld), running now: %{public}@", &v42, 0x16u);
    }

    [*(a1 + 32) run];
    goto LABEL_35;
  }

  if (!state)
  {
    v5 = xpc_activity_copy_criteria(v3);
    v6 = *(a1 + 32);
    if (v5)
    {
      if ([v6 deadline] >= 1)
      {
        v7 = *(a1 + 48);
        v8 = [*(a1 + 32) descriptiveName];
        v9 = sub_1001DBA1C(v7, v8, [*(a1 + 32) deadline]);

        if (v9)
        {
          goto LABEL_11;
        }

        v9 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [*(a1 + 32) deadline]);
        v10 = [*(a1 + 32) descriptiveName];
        sub_1003D4338(AppDefaultsManager, v9, v10);

        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [*(a1 + 32) descriptiveName];
          if (v9)
          {
            [v9 timeIntervalSince1970];
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v42 = 138543618;
          v43 = v12;
          v44 = 2048;
          v45 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Activity check-in: %{public}@ found deadline was missing, now set for: %{time_t}ld", &v42, 0x16u);
        }

        if (v9)
        {
LABEL_11:
          [v9 timeIntervalSinceNow];
          if (v15 <= 0.0)
          {
            xpc_activity_unregister([*(a1 + 32) rawRegisteredName]);
            v37 = [*(a1 + 32) descriptiveName];
            sub_1003D4338(AppDefaultsManager, 0, v37);

            v38 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v41 = [*(a1 + 32) descriptiveName];
              v42 = 138543362;
              v43 = v41;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Activity exceeded its deadline, forcing run now: %{public}@", &v42, 0xCu);
            }

            [*(a1 + 32) run];
            goto LABEL_34;
          }

          v16 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          v17 = [*(a1 + 32) descriptiveName];
          [v9 timeIntervalSince1970];
          v18 = *(a1 + 40);
          v42 = 138543874;
          v43 = v17;
          v44 = 2048;
          v45 = v19;
          v46 = 2114;
          v47 = v18;
          v20 = "Activity check-in: %{public}@ with deadline: %{time_t}ld for reason: %{public}@";
          goto LABEL_24;
        }
      }

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) descriptiveName];
        v35 = *(a1 + 40);
        v42 = 138543618;
        v43 = v16;
        v44 = 2114;
        v45 = v35;
        v36 = "Activity check-in: %{public}@ with no deadline for reason: %{public}@";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v36, &v42, 0x16u);
        goto LABEL_33;
      }
    }

    else
    {
      v28 = [v6 rawCriteria];
      xpc_activity_set_criteria(v3, v28);

      v29 = [*(a1 + 32) deadline];
      v30 = *(a1 + 32);
      if (v29 >= 1)
      {
        v9 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v30 deadline]);
        v31 = [*(a1 + 32) descriptiveName];
        sub_1003D4338(AppDefaultsManager, v9, v31);

        v16 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
LABEL_33:

          goto LABEL_34;
        }

        v17 = [*(a1 + 32) descriptiveName];
        if (v9)
        {
          [v9 timeIntervalSince1970];
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a1 + 40);
        v42 = 138543874;
        v43 = v17;
        v44 = 2048;
        v45 = v33;
        v46 = 2114;
        v47 = v34;
        v20 = "Activity registered: %{public}@ with deadline: %{time_t}ld for reason: %{public}@";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v20, &v42, 0x20u);

        goto LABEL_33;
      }

      v39 = [v30 descriptiveName];
      sub_1003D4338(AppDefaultsManager, 0, v39);

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) descriptiveName];
        v40 = *(a1 + 40);
        v42 = 138543618;
        v43 = v16;
        v44 = 2114;
        v45 = v40;
        v36 = "Activity registered: %{public}@ with no deadline for reason: %{public}@";
        goto LABEL_32;
      }
    }

LABEL_34:

LABEL_35:
  }
}

id sub_1001DBA1C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    a1 = sub_1003D4218(AppDefaultsManager, v5);
    if (a3 >= 1)
    {
      v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
      v7 = v6;
      if (a1)
      {
        if (v6)
        {
          [v6 timeIntervalSinceDate:a1];
          if (v8 < 0.0)
          {
            v9 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 138543362;
              v13 = v5;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activity date too far in the future, using the current date", &v12, 0xCu);
            }

            v10 = +[NSDate date];

            a1 = v10;
          }
        }
      }
    }
  }

  return a1;
}

id sub_1001DBB6C(id result, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (result)
  {
    return sub_1001DBBA0(result, a2, a3, a4, 5, 0, a5);
  }

  return result;
}

id sub_1001DBBA0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (a1)
  {
    v16 = +[NSDate date];
    if ((a6 & 1) != 0 || [v14 compare:v16] != 1)
    {
      v17 = [v16 dateByAddingTimeInterval:a5];
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v17)
        {
          [v17 timeIntervalSince1970];
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v29 = 138544130;
        v30 = v13;
        v31 = 2048;
        v32 = v23;
        v33 = 2048;
        v34 = a5;
        v35 = 2114;
        v36 = v15;
        v21 = "[%{public}@] Using new date: %{time_t}ld with interval: %lld reason: %{public}@";
        goto LABEL_12;
      }
    }

    else
    {
      v17 = v14;
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v17)
        {
          [v17 timeIntervalSince1970];
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v29 = 138544130;
        v30 = v13;
        v31 = 2048;
        v32 = v20;
        v33 = 2048;
        v34 = a5;
        v35 = 2114;
        v36 = v15;
        v21 = "[%{public}@] Using previously scheduled date: %{time_t}ld with interval: %lld reason: %{public}@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, &v29, 0x2Au);
      }
    }

    v24 = xpc_dictionary_create(0, 0, 0);
    [v17 timeIntervalSinceNow];
    xpc_dictionary_set_int64(v24, XPC_ACTIVITY_DELAY, v25);
    xpc_dictionary_set_BOOL(v24, XPC_ACTIVITY_REPEATING, 0);
    v26 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
    if (a2 == 6)
    {
      v26 = &XPC_ACTIVITY_PRIORITY_UTILITY;
      v27 = &XPC_ACTIVITY_INTERVAL_1_MIN;
    }

    else
    {
      v27 = &XPC_ACTIVITY_INTERVAL_5_MIN;
    }

    xpc_dictionary_set_string(v24, XPC_ACTIVITY_PRIORITY, *v26);
    xpc_dictionary_set_int64(v24, XPC_ACTIVITY_GRACE_PERIOD, *v27);
    xpc_dictionary_set_BOOL(v24, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v24, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    sub_1001DCD58(a1, a2, v13, v24, v15);

    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

void sub_1001DBEB4(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (a1)
  {
    v11 = +[BagService appstoredService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001DBFA8;
    v12[3] = &unk_10051BBB8;
    v12[4] = a1;
    v15 = a2;
    v13 = v9;
    v16 = a4;
    v14 = v10;
    [v11 recentBagWithCompletionHandler:v12];
  }
}

void sub_1001DBFA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = v5;
  if (v3)
  {
    v10 = *(v3 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001DC0A8;
    v11[3] = &unk_10051BBE0;
    v16 = v6;
    v12 = v7;
    v13 = v3;
    v14 = v8;
    v17 = v4;
    v15 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_1001DC0A8(uint64_t a1)
{
  v2 = sub_1001DA998(ActivityManager, *(a1 + 64));
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543618;
    v11 = v2;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reset with reason: %{public}@", buf, 0x16u);
  }

  if (!sub_1001DB084(*(a1 + 40), *(a1 + 64), *(a1 + 48)))
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v2;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Skipping reset due to activity not enabled activity", buf, 0xCu);
    }

    goto LABEL_8;
  }

  sub_1001DC270(*(a1 + 40), *(a1 + 64), *(a1 + 32), *(a1 + 72), *(a1 + 48));
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DC8C4;
    block[3] = &unk_10051BD28;
    v9 = v5;
    dispatch_async(v6, block);
    v7 = v9;
LABEL_8:
  }
}

void sub_1001DC270(void *a1, int64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (a1)
  {
    if (a2 != 5)
    {
      if (a2 == 11)
      {
        v11 = a1;
        v12 = 11;
        v13 = 0;
        goto LABEL_7;
      }

      if (a2 == 9)
      {
        v11 = a1;
        v12 = 9;
        v13 = 1;
LABEL_7:
        sub_1001DCC24(v11, v12, v13, v9);
        goto LABEL_55;
      }

LABEL_15:
      v22 = sub_1001DA998(ActivityManager, a2);
      if ((sub_1001DB084(a1, a2, v10) & 1) == 0)
      {
        v27 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 138543362;
          *&v43[4] = v22;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping register of non-enabled", v43, 0xCu);
        }

        goto LABEL_54;
      }

      if (os_variant_has_internal_content())
      {
        v23 = sub_1003D42A8(AppDefaultsManager, v22);

        if (v23)
        {
          v24 = sub_1003D42A8(AppDefaultsManager, v22);
          v25 = [v24 longLongValue];

          v26 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 138543618;
            *&v43[4] = v22;
            *&v43[12] = 2048;
            *&v43[14] = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using refresh override interval: %lld", v43, 0x16u);
          }

          goto LABEL_53;
        }
      }

      v25 = 86400;
      if (a2 > 2)
      {
        if (a2 == 7)
        {
          if (v10)
          {
            v28 = @"subscription-keybag-refresh-interval-in-seconds";
            v29 = v10;
            v30 = 86400;
            goto LABEL_37;
          }
        }

        else if (a2 == 3)
        {
          if (!v10)
          {
            v25 = 21600;
            goto LABEL_53;
          }

          v28 = @"app-usage-analytics-post-interval-seconds";
          v29 = v10;
          v30 = 21600;
          goto LABEL_37;
        }
      }

      else
      {
        if (a2 == 1)
        {
          if (v10)
          {
            v28 = @"ocelot-post-interval-seconds";
            goto LABEL_34;
          }

LABEL_51:
          v25 = 43200;
          goto LABEL_53;
        }

        if (a2 == 2)
        {
          if (v10)
          {
            v28 = @"ocelot-post-payout-interval-seconds";
LABEL_34:
            v29 = v10;
            v30 = 43200;
LABEL_37:
            v25 = [v29 integerForKey:v28 defaultValue:v30];
            goto LABEL_53;
          }

          goto LABEL_51;
        }
      }

LABEL_53:
      v42 = sub_1001DBA1C(a1, v22, v25);
      v27 = sub_1001DBBA0(a1, a2, v22, v42, v25, a4, v9);

      sub_1003D4338(AppDefaultsManager, v27, v22);
LABEL_54:

      goto LABEL_55;
    }

    if (!sub_1001DB084(a1, 5, v10))
    {
      goto LABEL_15;
    }

    v14 = v9;
    objc_opt_self();
    v15 = sub_1003D4DB8();
    v16 = v15;
    if (v15)
    {
      [v15 timeIntervalSinceNow];
      if (v17 >= 0.0)
      {
        [v16 timeIntervalSinceNow];
        if (v18 < 1209600.0)
        {
          v19 = v16;
          v20 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v19 timeIntervalSince1970];
            *v43 = 138543874;
            *&v43[4] = @"ArcadePayoutReset";
            *&v43[12] = 2048;
            *&v43[14] = v21;
            *&v43[22] = 2114;
            v44 = v14;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using previously scheduled date: %{time_t}ld with reason: %{public}@", v43, 0x20u);
          }

LABEL_50:
          v39 = [@"com.apple.appstored.ArcadeResetPO" UTF8String];
          *v43 = _NSConcreteStackBlock;
          *&v43[8] = 3221225472;
          *&v43[16] = sub_1001DCF60;
          v44 = &unk_10051BC08;
          v45 = @"ArcadePayoutReset";
          v40 = v14;
          v46 = v40;
          v47 = v19;
          v48 = a1;
          v41 = v19;
          xpc_activity_register(v39, XPC_ACTIVITY_CHECK_IN, v43);

          goto LABEL_55;
        }

        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 138543618;
          *&v43[4] = @"ArcadePayoutReset";
          *&v43[12] = 2114;
          *&v43[14] = v16;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduled date %{public}@ is invalid, recalculating date.", v43, 0x16u);
        }
      }
    }

    objc_opt_self();
    v32 = +[NSDate date];
    v19 = sub_1001E5F50(AccountEventCoordinator, v32);
    v33 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      if (v19)
      {
        [v19 timeIntervalSince1970];
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      *v43 = 138543618;
      *&v43[4] = @"ArcadePayoutReset";
      *&v43[12] = 2048;
      *&v43[14] = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}@] Next weekStart is: cupertinoTimestamp: %{time_t}ld", v43, 0x16u);
    }

    v36 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      if (v19)
      {
        [v19 timeIntervalSince1970];
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      *v43 = 138543874;
      *&v43[4] = @"ArcadePayoutReset";
      *&v43[12] = 2048;
      *&v43[14] = v38;
      *&v43[22] = 2114;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using new date: %{time_t}ld with reason: %{public}@", v43, 0x20u);
    }

    sub_1003D4FBC(AppDefaultsManager, v19);
    goto LABEL_50;
  }

LABEL_55:
}

void sub_1001DC8D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DC94C;
    block[3] = &unk_10051BD00;
    block[4] = a2;
    dispatch_async(v2, block);
  }
}

void sub_1001DC94C(uint64_t a1)
{
  v2 = sub_1001DA998(ActivityManager, *(a1 + 32));
  v3 = sub_1001DCA3C(ActivityManager, *(a1 + 32));
  xpc_activity_unregister([v3 UTF8String]);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistered activity", &v5, 0xCu);
  }
}

__CFString *sub_1001DCA3C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_10051BDB0[a2 - 1];
  }
}

void sub_1001DCA80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001DCB44;
    v8[3] = &unk_10051B570;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

void sub_1001DCB44(uint64_t a1)
{
  xpc_activity_unregister([*(a1 + 32) rawRegisteredName]);
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) descriptiveName];
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistered activity for reason: %{public}@", &v5, 0x16u);
  }
}

void sub_1001DCC24(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = a4;
  v8 = sub_1001DA998(ActivityManager, a2);
  v9 = sub_1001DCA3C(ActivityManager, a2);
  v10 = [v9 UTF8String];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DD26C;
  v14[3] = &unk_10051BC30;
  v15 = v8;
  v11 = v7;
  v20 = a3;
  v16 = v11;
  v17 = a1;
  v18 = v9;
  v19 = a2;
  v12 = v9;
  v13 = v8;
  xpc_activity_register(v10, XPC_ACTIVITY_CHECK_IN, v14);
}

void sub_1001DCD58(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = sub_1001DCA3C(ActivityManager, a2);
    v13 = [v12 UTF8String];
    if (v10)
    {
      v14 = v13;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001DD6A4;
      v18[3] = &unk_10051BC98;
      v18[4] = a1;
      v15 = v12;
      v19 = v15;
      xpc_activity_register(v14, v10, v18);
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v21 = v9;
        v22 = 2114;
        v23 = v15;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registered activity with %{public}@ reason: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v21 = v9;
        v22 = 2114;
        v23 = v12;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] No criteria for activity with name: %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_1001DCF60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_activity_copy_criteria(v3);
  if (v4)
  {
    sub_1001DD120(*(a1 + 56), v3, @"com.apple.appstored.ArcadeResetPO");
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activity not scheduled, scheduling now for reason %{public}@", &v11, 0x16u);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    [*(a1 + 48) timeIntervalSinceNow];
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, v9);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    v10 = *(a1 + 56);
    objc_opt_self();
    sub_1001DCD58(v10, 5, @"ArcadePayoutReset", v8, *(a1 + 40));
    v3 = v8;
  }
}

void sub_1001DD120(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v13 = v5;
    v6 = a2;
    v7 = [[KeepAlive alloc] initWithName:v13];
    state = xpc_activity_get_state(v6);

    if (state == 2)
    {
      v9 = sub_1001DA8BC();
      v10 = v13;
      if (v9)
      {
        v11 = +[BagService appstoredService];
        v12 = v9[2];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1001DA9DC;
        v14[3] = &unk_10051B458;
        v14[4] = v9;
        v15 = v10;
        [v11 recentBagOnQueue:v12 completionHandler:v14];
      }
    }

    v5 = v13;
  }
}

void sub_1001DD26C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_activity_copy_criteria(v3);
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activity already scheduled", &v11, 0xCu);
    }

    sub_1001DD120(*(a1 + 48), v3, *(a1 + 56));
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] There is no updates activity scheduled, scheduling now for reason %{public}@", &v11, 0x16u);
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v10, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v10, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_8_HOURS);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, *(a1 + 72));
    if (*(a1 + 72) == 1)
    {
      xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
    }

    xpc_dictionary_set_int64(v10, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_1_HOUR);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    sub_1001DCD58(*(a1 + 48), *(a1 + 64), *(a1 + 32), v10, *(a1 + 40));
  }
}

void sub_1001DD4C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Completed activity with error: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 1024;
    LODWORD(v13) = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed activity with result: %d", &v10, 0x12u);
  }
}

void sub_1001DD5EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Managed Background Assets cleanup failed: %{public}@", &v4, 0xCu);
    }
  }
}

id sub_1001DD6F8()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD79C;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA770 != -1)
  {
    dispatch_once(&qword_1005AA770, block);
  }

  v0 = qword_1005AA768;

  return v0;
}

void sub_1001DD79C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA768;
  qword_1005AA768 = v1;
}

void sub_1001DD8D4(uint64_t a1)
{
  v2 = kNSURLSessionLaunchOnDemandNotificationName;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001DDB38;
  v22 = &unk_10051BE18;
  v23 = *(a1 + 32);
  xpc_set_event_stream_handler(v2, &_dispatch_main_q, &v19);
  v3 = sub_1003BBF50();
  v4 = [v3 isHRNMode];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = sub_1001DF8C0(v5, @"com.apple.appstored.RecordDnu", &stru_10051BF40);
      v7 = sub_1001DF8C0(v5, @"com.apple.appstored.PostDnu", &stru_10051BFA0);
      v8 = sub_1002EDEC8();
      v9 = sub_1002EDE64(v8);

      if (v9)
      {
        v10 = +[BagService appstoredService];
        v11 = *(v5 + 16);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001DFD94;
        v24[3] = &unk_10051BCE0;
        v24[4] = v5;
        [v10 bagOnQueue:v11 completionHandler:v24];
      }

      v12 = sub_1001DF8C0(v5, @"com.apple.appstored.FavoritesApps", &stru_10051BFE0);
      v13 = sub_100261AB8(BackgroundTaskRequest, @"com.apple.appstored.FavoritesApps");
      sub_1001DF5B4(v5, v13, @"Startup");

      v14 = @"Startup";
      v15 = sub_100261B34();
      v16 = sub_100261A44([BackgroundTaskRequest alloc], v15);
      v18 = v16;
      if (v16)
      {
        objc_setProperty_nonatomic_copy(v16, v17, @"com.apple.appstored.FavoritesApps", 16);
      }

      sub_1001DF5B4(v5, v18, @"Startup");
    }
  }
}

void sub_1001DDB38(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2114;
    v8 = v2;
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Launched by nsurlsessiond: %{public}@", &v5, 0x16u);
  }
}

void sub_1001DDC14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001DDCBC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1001DDCBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    xpc_activity_unregister([v2 UTF8String]);
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = objc_opt_class();
      v8 = 2114;
      v9 = v3;
      v5 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Canceled activity: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1001DDDAC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138543874;
    v25 = v3;
    v26 = 2080;
    v27 = v4;
    v28 = 1024;
    v29 = v5;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Handling wakeup for activity: %s status: %d", buf, 0x1Cu);
  }

  v7 = [[NSString alloc] initWithUTF8String:*(a1 + 40)];
  v8 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v9 = *(*(a1 + 32) + 8);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DE08C;
  v21[3] = &unk_10051BE40;
  v10 = v7;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v21];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if ([v11 count])
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.appsstored.Daemon.observers", v12);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DE0F0;
    block[3] = &unk_10051BE68;
    v18 = v11;
    v19 = v10;
    v20 = *(a1 + 48);
    dispatch_async(v13, block);
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 40);
      *buf = 138543618;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not find any wakeup observers for activity: %s", buf, 0x16u);
    }
  }
}

void sub_1001DE08C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    [*(a1 + 40) unionSet:v5];
  }
}

void sub_1001DE0F0(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void *sub_1001DE1F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1001DE330;
    v17 = sub_1001DE340;
    v18 = 0;
    v7 = a1[2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001DE348;
    v9[3] = &unk_10051BEB8;
    v12 = &v13;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    dispatch_sync(v7, v9);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

uint64_t sub_1001DE330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DE348(uint64_t a1)
{
  v2 = sub_1002EDEC8();
  v3 = sub_1002EDE64(v2);

  if (v3)
  {
    v4 = sub_1001DE4A0(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DNU] Reset app usage task with reason: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 138543362;
      v11 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[DNU] Not opted in to reset metrics for reason: %{public}@", &v10, 0xCu);
    }
  }
}

id sub_1001DE4A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v32 = v6;
  if (a1)
  {
    v7 = v6;
    v31 = a1;
    v8 = sub_1001DF524(v6);
    v9 = v7;
    v33 = [v9 integerForKey:@"app-usage-post-grace-period-seconds" defaultValue:900];
    if (os_variant_has_internal_content())
    {
      v10 = sub_1003D4998();

      if (v10)
      {
        v11 = sub_1003D4998();
        v33 = [v11 longLongValue];
      }
    }

    v12 = v9;
    v13 = [v12 integerForKey:@"app-usage-post-spread-period-seconds" defaultValue:1800];
    if (os_variant_has_internal_content())
    {
      v14 = sub_1003D49D4();

      if (v14)
      {
        v15 = sub_1003D49D4();
        v13 = [v15 longLongValue];
      }
    }

    v16 = +[NSDate date];
    v17 = +[NSCalendar currentCalendar];
    v18 = [v17 startOfDayForDate:v16];
    if (v8 < 1)
    {
      goto LABEL_14;
    }

    v19 = 0;
    while (1)
    {
      v20 = [v18 dateByAddingTimeInterval:{(86400 / v8) * v19, v31}];
      if ([v20 compare:v16] == 1)
      {
        break;
      }

      if (v8 == ++v19)
      {
        goto LABEL_14;
      }
    }

    if (!v20)
    {
LABEL_14:
      v21 = +[NSCalendar currentCalendar];
      v22 = [NSDate dateWithTimeInterval:v16 sinceDate:86400.0];
      v20 = [v21 startOfDayForDate:v22];
    }

    sub_1003D4B10(AppDefaultsManager, v20);
    v23 = sub_100261BC4(BackgroundTaskRequest, v20, v33);
    xpc_dictionary_set_uint64(v23, XPC_ACTIVITY_RANDOM_INITIAL_DELAY, v13);
    v24 = sub_100261A44([BackgroundTaskRequest alloc], v23);
    v26 = v24;
    if (v24)
    {
      objc_setProperty_nonatomic_copy(v24, v25, @"com.apple.appstored.RecordDnu", 16);
    }

    sub_1001DF5B4(v31, v26, v5);
    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (v20)
      {
        [v20 timeIntervalSince1970];
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      *buf = 138544386;
      v35 = @"com.apple.appstored.RecordDnu";
      v36 = 2048;
      v37 = v29;
      v38 = 2048;
      v39 = v33;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v8;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[DNU] Added background task: %{public}@ targetDate: %{time_t}ld gracePeriod: %llu maxRandomDelay: %lld posts: %ld", buf, 0x34u);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void sub_1001DE84C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8 = *(a1 + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001DE938;
    v9[3] = &unk_10051BEE0;
    v9[4] = a1;
    v10 = v6;
    v11 = v5;
    [v7 bagOnQueue:v8 completionHandler:v9];
  }
}

void sub_1001DE938(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1002EDEC8();
  v5 = sub_1002EDE64(v4);

  if (v5)
  {
    sub_1001DEA8C(*(a1 + 32), 1, *(a1 + 40), *(a1 + 48), v3);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DNU] Reset clientUsageID with reason: %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[DNU] Not opted in to reset clientUsageID with reason: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_1001DEA8C(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    if (!v9)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[DNU] Error re-scheduling clientUsageID reset date. postDate is nil", &v27, 2u);
      }

      goto LABEL_19;
    }

    v12 = sub_1003D495C();
    v13 = v12;
    if ((a2 & 1) == 0 && v12)
    {
      v14 = v12;
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [v14 timeIntervalSince1970];
        v27 = 134218242;
        v28 = v16;
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[DNU] Using previously scheduled clientUsageID reset date: %{time_t}ld reason: %{public}@", &v27, 0x16u);
      }

      goto LABEL_18;
    }

    v17 = [v11 integerForKey:@"app-usage-reset-actor-id-frequency-seconds" defaultValue:86400];
    if (os_variant_has_internal_content())
    {
      v18 = sub_1003D4920();

      if (v18)
      {
        v19 = sub_1003D4920();
        v17 = [v19 longLongValue];
      }
    }

    v15 = [v9 dateByAddingTimeInterval:v17];
    v20 = +[NSCalendar currentCalendar];
    v14 = [v20 startOfDayForDate:v15];

    v21 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

LABEL_18:
      sub_1003D4B74(AppDefaultsManager, v14);

LABEL_19:
      goto LABEL_20;
    }

    if (v14)
    {
      [v14 timeIntervalSince1970];
      v23 = v22;
      if (v15)
      {
LABEL_15:
        [v15 timeIntervalSince1970];
        v25 = v24;
LABEL_16:
        [v9 timeIntervalSince1970];
        v27 = 134219010;
        v28 = v23;
        v29 = 2048;
        v30 = v17;
        v31 = 2048;
        v32 = v25;
        v33 = 2048;
        v34 = v26;
        v35 = 2114;
        v36 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[DNU] Scheduled clientUsageID reset to targetDate: %{time_t}ld reset interval: %lld time interval based date: %{time_t}ld postDate: %{time_t}ld reason: %{public}@", &v27, 0x34u);
        goto LABEL_17;
      }
    }

    else
    {
      v23 = 0;
      if (v15)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    goto LABEL_16;
  }

LABEL_20:
}

void sub_1001DED80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001DEE44;
    v6[3] = &unk_10051C008;
    v6[4] = a1;
    v7 = v3;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_1001DEE44(uint64_t a1, void *a2)
{
  sub_1001DEF04(*(a1 + 32), *(a1 + 40), 1, a2);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DNU] Scheduled app usage flush with reason: %{public}@", &v5, 0xCu);
  }
}

void sub_1001DEF04(uint64_t a1, void *a2, char a3, void *a4)
{
  if (a1)
  {
    v7 = a2;
    v8 = [a4 integerForKey:@"app-usage-flush-interval-seconds" defaultValue:86400];
    if (os_variant_has_internal_content())
    {
      v9 = sub_1003D48B4();

      if (v9)
      {
        v10 = sub_1003D48B4();
        v8 = [v10 longLongValue];
      }
    }

    v11 = sub_1003D48F0();
    v12 = v7;
    v13 = @"com.apple.appstored.PostDnu";
    v14 = v11;
    v15 = +[NSDate date];
    if ((a3 & 1) != 0 || [v14 compare:v15] != 1)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[DNU] App usage flush timer interval: %lld", buf, 0xCu);
      }

      v31 = [v15 dateByAddingTimeInterval:v8];
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = v20;
        if (v31)
        {
          [v31 timeIntervalSince1970];
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        *buf = 138543874;
        v33 = v20;
        v34 = 2048;
        v35 = v23;
        v36 = 2114;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling app usage flush for date: %{time_t}ld reason: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v31 = v14;
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (v31)
        {
          [v31 timeIntervalSince1970];
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        *buf = 134218498;
        v33 = v18;
        v34 = 2114;
        v35 = @"com.apple.appstored.PostDnu";
        v36 = 2114;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[DNU] Using previously scheduled flush date: %{time_t}ld for activity: %{public}@ reason: %{public}@", buf, 0x20u);
      }
    }

    v24 = sub_100261C9C(BackgroundTaskRequest, v31, 1, 1);
    v25 = sub_100261A44([BackgroundTaskRequest alloc], v24);
    v27 = v25;
    if (v25)
    {
      objc_setProperty_nonatomic_copy(v25, v26, @"com.apple.appstored.PostDnu", 16);
    }

    sub_1001DF5B4(a1, v27, v12);
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (v31)
      {
        [v31 timeIntervalSince1970];
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      *buf = 138543874;
      v33 = @"com.apple.appstored.PostDnu";
      v34 = 2048;
      v35 = v30;
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[DNU] Added background task: %{public}@ targetDate: %{time_t}ld interval: %lld", buf, 0x20u);
    }

    sub_1003D4AAC(AppDefaultsManager, v31);
  }
}

BOOL sub_1001DF334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v7 = sub_1003D495C();
  if (!v7)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[DNU] Should reset actorID returning no due to reset date not being set.", &v17, 2u);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v8 = [v7 dateByAddingTimeInterval:(86400 / sub_1001DF524(v6)) * -0.25];
  v9 = [v5 compare:v8];
  v10 = v9 == 1;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      [v5 timeIntervalSince1970];
      v13 = v12;
      if (v8)
      {
LABEL_6:
        [v8 timeIntervalSince1970];
        v15 = v14;
LABEL_7:
        v17 = 134218496;
        v18 = v13;
        v19 = 2048;
        v20 = v15;
        v21 = 1024;
        v22 = v9 == 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[DNU] Should reset actorID with post date: %{time_t}ld reset cutoffDate: %{time_t}ld result: %d", &v17, 0x1Cu);
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:

LABEL_12:
LABEL_13:

  return v10;
}

id sub_1001DF524(void *a1)
{
  v1 = a1;
  v2 = [v1 integerForKey:@"app-usage-posts-per-day" defaultValue:2];
  if (os_variant_has_internal_content())
  {
    v3 = sub_1003D4878();

    if (v3)
    {
      v4 = sub_1003D4878();
      v2 = [v4 integerValue];
    }
  }

  return v2;
}

void sub_1001DF5B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = v4[2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 UTF8String];
    v9 = xpc_copy(v4[1]);
    if (v9)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001DF7C0;
      handler[3] = &unk_10051BF00;
      handler[4] = v8;
      xpc_activity_register(v8, v9, handler);
      v10 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = objc_opt_class();
      *buf = 138412802;
      v15 = v11;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v5;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Added background task: %{public}@ reason: %{public}@", buf, 0x20u);
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 138412546;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v7;
      v12 = v15;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] No criteria for background task: %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void sub_1001DF7C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [[KeepAlive alloc] initWithName:@"Add BackgroundTask"];
  state = xpc_activity_get_state(v3);

  if (state == 2)
  {
    v5 = sub_1001DD6F8();
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(v5 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DDDAC;
      block[3] = &unk_10051BE90;
      block[4] = v6;
      block[5] = v7;
      v11 = 1;
      dispatch_async(v8, block);
    }
  }
}

id sub_1001DF8C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v5;
    v8 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Adding wakeup observer for activity: %{public}@", buf, 0x16u);
  }

  v9 = [v6 copy];
  os_unfair_lock_lock((a1 + 24));
  v10 = [*(a1 + 8) objectForKey:v5];
  if (v10)
  {
    v11 = v10;
    v12 = objc_retainBlock(v9);
    [v11 addObject:v12];
  }

  else
  {
    v13 = [NSMutableSet alloc];
    v14 = objc_retainBlock(v9);
    v11 = [v13 initWithObjects:{v14, 0}];

    [*(a1 + 8) setObject:v11 forKey:v5];
  }

  os_unfair_lock_unlock((a1 + 24));
  v15 = objc_retainBlock(v9);

  return v15;
}

void sub_1001DFA74(id a1, NSString *a2, BOOL a3)
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = @"com.apple.appstored.RecordDnu";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DNU] %{public}@ xpc activity event", &v5, 0xCu);
  }

  v4 = sub_1002EDEC8();
  sub_1002EE998(v4, &stru_10051BF80);
}

void sub_1001DFB44(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = @"com.apple.appstored.RecordDnu";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DNU] %{public}@ xpc activity event complete with result: %d", &v5, 0x12u);
  }
}

void sub_1001DFC00(id a1, NSString *a2, BOOL a3)
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = @"com.apple.appstored.PostDnu";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[DNU] %{public}@ xpc activity event", &v5, 0xCu);
  }

  v4 = sub_1002EDEC8();
  sub_1002EE080(v4, @"Background Task", &stru_10051BFC0);
}

void sub_1001DFCD8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = @"com.apple.appstored.PostDnu";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DNU] %{public}@ xpc activity event complete with result: %d", &v5, 0x12u);
  }
}

void sub_1001DFD94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = sub_1001DE4A0(v3, @"Startup", v4);
  sub_1001DEA8C(*(a1 + 32), 0, v5, @"Startup", v4);
  sub_1001DEF04(*(a1 + 32), @"Startup", 0, v4);
}

void sub_1001DFE34(id a1, NSString *a2, BOOL a3)
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = @"com.apple.appstored.FavoritesApps";
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ xpc activity event", &v6, 0x16u);
  }

  v5 = objc_opt_new();
  sub_10029E8DC(v5);
}

id sub_1001DFF60()
{
  objc_opt_self();
  if (qword_1005AA778 != -1)
  {
    dispatch_once(&qword_1005AA778, &stru_10051C028);
  }

  v0 = qword_1005AA780;

  return v0;
}

void sub_1001DFFB8(id a1)
{
  v1 = objc_alloc_init(PurchaseManager);
  v2 = qword_1005AA780;
  qword_1005AA780 = v1;
}

void sub_1001E01D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001E0204(*(a1 + 32), *(a1 + 40), *(a1 + 48), 0, 0, 0, a2, 0);
  }
}

void sub_1001E0204(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a8;
  if (a1)
  {
    v16 = a7;
    v17 = a6;
    v18 = a5;
    v19 = a4;
    v20 = [[_TtC9appstored19AppDownloadDoneTask alloc] initWithBag:v16];
    v21 = *(a1 + 24);
    if (v21)
    {
      [*(v21 + 8) addOperation:v20];
    }

    v22 = sub_1001D7AE4([CheckStoreQueueTask alloc], a2, a3, v19, v18, v17, v16);

    v23 = *(a1 + 24);
    if (v23)
    {
      [*(v23 + 8) addOperation:v22];
    }

    if (v15)
    {
      v24 = [BlockTask alloc];
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1001E19B8;
      v30 = &unk_10051B790;
      v32 = v15;
      v31 = v22;
      v25 = sub_100204570(v24, &v27);
      v26 = *(a1 + 24);
      if (v26)
      {
        [*(v26 + 8) addOperation:{v25, v27, v28, v29, v30}];
      }
    }
  }
}

uint64_t sub_1001E03BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E0494;
    block[3] = &unk_10051AEC0;
    block[4] = a1;
    v8 = v3;
    v9 = &v10;
    dispatch_sync(v5, block);
    LOBYTE(a1) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  return a1 & 1;
}

void sub_1001E0494(void *a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v15 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = sub_100282080(v7);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v16 + 1) + 8 * j) bundleID];
              v14 = [v13 isEqualToString:a1[5]];

              if (v14)
              {
                *(*(a1[6] + 8) + 24) = 1;

                goto LABEL_18;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v15;
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

LABEL_18:
}

void sub_1001E065C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E0724;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1001E0724(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v1)
  {
    v4 = v2;
    v5 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.PurchaseManager"];
    v6 = [v4 copy];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001E2BD4;
    v7[3] = &unk_10051C168;
    v7[4] = v1;
    v8 = v3;
    sub_1001E29B4(v1, v6, v7);
  }
}

void sub_1001E0818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E08E0;
    block[3] = &unk_10051C078;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1001E08F4(uint64_t a1, void *a2, BOOL a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v20 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.PurchaseManager"];
    v9 = dispatch_group_create();
    v10 = [[PurchaseBatch alloc] initWithPurchaseInfos:v7];
    v11 = v10;
    if (v10)
    {
      v10->_failBatchOnError = a3;
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1001E3598;
    newValue[3] = &unk_10051C0F0;
    v32 = v8;
    if (v11)
    {
      objc_setProperty_atomic_copy(v11, v12, newValue, 32);
    }

    [*(a1 + 8) addObject:v11];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          dispatch_group_enter(v9);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1001E35AC;
          v24[3] = &unk_10051C208;
          v24[4] = a1;
          v25 = v11;
          v26 = v9;
          sub_1001E29B4(a1, v17, v24);
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v14);
    }

    v18 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E36F8;
    block[3] = &unk_10051B570;
    block[4] = a1;
    v23 = v11;
    v19 = v11;
    dispatch_group_notify(v9, v18, block);
  }
}

void sub_1001E0D28(uint64_t a1, void *a2, void *a3)
{
  v70 = a2;
  v5 = a3;
  if (v70)
  {
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v6 == 1)
    {
      v9 = [v7 firstObject];
      v10 = *(a1 + 56);
      v11 = *(a1 + 48);
      v12 = v10;
      if (v8)
      {
        v13 = v70;
        v68 = v9;
        v14 = v9;
        v15 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.PurchaseManager"];
        v16 = sub_10023862C(v14, v11, v13);

        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 logKey];
          [v11 processInfo];
          v19 = v8;
          v20 = v11;
          v21 = v12;
          v22 = v15;
          v24 = v23 = v5;
          v25 = [v24 bundleIdentifier];
          *buf = 138543618;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v25;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting purchase for client: %{public}@", buf, 0x16u);

          v5 = v23;
          v15 = v22;
          v12 = v21;
          v11 = v20;
          v8 = v19;
        }

        v26 = ASDLogHandleForCategory();
        v27 = [v16 signpostID];
        if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = v27;
          if (os_signpost_enabled(v26))
          {
            v29 = [v16 logKey];
            *buf = 138543362;
            *&buf[4] = v29;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v28, "Purchase", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
          }
        }

        v30 = [v16 itemID];

        if (v30)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001E3148;
          v83 = &unk_10051C168;
          v84 = v8;
          v85 = v12;
          sub_1001E29B4(v8, v16, buf);
          v31 = v85;
        }

        else
        {
          v60 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] No item identifier for purchase. Processing as purchase only.", buf, 0xCu);
          }

          [v16 setPurchaseOnly:1];
          v61 = *(v8 + 16);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001E2F54;
          v83 = &unk_10051BB18;
          v84 = v16;
          v62 = v12;
          v85 = v8;
          v86 = v62;
          dispatch_async(v61, buf);

          v31 = v84;
        }

        v9 = v68;
      }
    }

    else
    {
      v34 = *(a1 + 48);
      v35 = *(a1 + 56);
      v36 = v7;
      v37 = v70;
      v38 = v34;
      v39 = v35;
      if (v8)
      {
        v67 = v5;
        v64 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.PurchaseManager"];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1001E3588;
        v75[3] = &unk_10051C1B8;
        v65 = v38;
        v40 = v38;
        v76 = v40;
        v66 = v37;
        v77 = v37;
        v69 = v36;
        v41 = sub_10036FDEC(v36, v75);
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = objc_opt_class();
          v44 = v43;
          v45 = [v69 count];
          v46 = [v40 processInfo];
          v47 = [v46 bundleIdentifier];
          *buf = 138543874;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = v45;
          *&buf[22] = 2114;
          v83 = v47;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting %ld purchase(s) for client: %{public}@", buf, 0x20u);
        }

        v63 = v40;

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v48 = v41;
        v49 = [v48 countByEnumeratingWithState:&v71 objects:buf count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v72;
          while (2)
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v72 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v71 + 1) + 8 * i);
              v54 = [v53 clientInfo];
              v55 = [v54 bundleIdentifier];

              if (!v55)
              {
                v56 = [v53 clientInfo];
                [v56 setBundleIdentifier:&stru_100529300];
              }

              v57 = [v53 itemID];

              if (!v57)
              {
                v58 = ASDErrorWithDescription();
                v59 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *v78 = 138543618;
                  v79 = v63;
                  v80 = 2114;
                  v81 = v58;
                  _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to process purchase: %{public}@", v78, 0x16u);
                }

                v39[2](v39, 0, v58);
                goto LABEL_29;
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v71 objects:buf count:16];
            if (v50)
            {
              continue;
            }

            break;
          }
        }

        sub_1001E08F4(v8, v48, 1, v39);
LABEL_29:
        v38 = v65;
        v37 = v66;

        v5 = v67;
        v36 = v69;
      }
    }
  }

  else
  {
    v32 = *(a1 + 56);
    v33 = ASDErrorWithSafeUserInfo();
    (*(v32 + 16))(v32, 0, v33);
  }
}

void sub_1001E1538(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    switch(a3)
    {
      case 2:
        v15 = 0;
        break;
      case 11:
        v15 = 1;
        break;
      case 43:
        v9 = v7;
        v10 = v8;
        if (v9)
        {
          v11 = [[_TtC9appstored27RemoteRedownloadRequestTask alloc] initWithMessage:v9];
          v12 = v11;
          if (v10)
          {
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v30 = sub_1001E1A24;
            v31 = &unk_10051B790;
            v32 = v11;
            v33 = v10;
            [(RemoteRedownloadRequestTask *)v32 setCompletionBlock:&buf];
          }

          v13 = sub_100284B90();
          v14 = v13;
          if (v13)
          {
            [*(v13 + 8) addOperation:v12];
          }
        }

        else
        {
          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[PurchaseManager] No recovery path for remote redownload requests, ignoring.", &buf, 2u);
          }

          if (v10)
          {
            (*(v10 + 2))(v10, 0);
          }
        }

        goto LABEL_18;
      default:
LABEL_22:
        (*(v8 + 2))(v8, 0);
        goto LABEL_23;
    }

    v16 = sub_1002EA054(v7);

    if (v16)
    {
      v17 = +[ACAccountStore ams_sharedAccountStore];
      v18 = sub_1002EA054(v7);
      v19 = [v17 ams_iTunesAccountWithDSID:v18];

      if (!v19)
      {
        v20 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_1002EA054(v7);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "The specified account %{public}@ from push notification is not signed in, skipping check queue", &buf, 0xCu);
        }

        goto LABEL_22;
      }

      v10 = [BagService appstoredServiceForAccount:v19];
    }

    else
    {
      v10 = +[BagService appstoredService];
      v19 = 0;
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001E18D4;
    v23[3] = &unk_10051C0C8;
    v27 = v8;
    v24 = v7;
    v25 = v19;
    v26 = a1;
    v28 = v15;
    v9 = v19;
    [v10 upToDateBagWithCompletionHandler:v23];

LABEL_18:
  }

LABEL_23:
}

void sub_1001E18D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = sub_1002EA0AC(*(a1 + 32));
    v4 = [[PurchaseInfo alloc] initWithBag:v5];
    [(PurchaseInfo *)v4 setAccount:*(a1 + 40)];
    [(PurchaseInfo *)v4 setCheckStoreQueueReason:&off_100546E70];
    [(PurchaseInfo *)v4 setPreorderFulfillment:v3 != 0];
    sub_1001E0204(*(a1 + 48), *(a1 + 64), 1, v3, v4, 0, v5, *(a1 + 56));
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1001E19B8(uint64_t a1, const char *a2)
{
  v4 = a1 + 32;
  Property = *(a1 + 32);
  v3 = *(v4 + 8);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v5 = Property;
  (*(v3 + 16))(v3, v5);
}

void sub_1001E1A24(uint64_t a1, const char *a2)
{
  v4 = a1 + 32;
  Property = *(a1 + 32);
  v3 = *(v4 + 8);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v5 = Property;
  (*(v3 + 16))(v3, v5);
}

void sub_1001E1A90(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v11 = sub_100364180([FailPurchaseTask alloc], v8, v9);

    [v11 setCompletionBlock:v7];
    v10 = *(a1 + 24);
    if (v10)
    {
      [*(v10 + 8) addOperation:v11];
    }
  }
}

void sub_1001E1B50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v97 = a1;
  if (!a1)
  {
    goto LABEL_102;
  }

  if (!v6)
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v15 = sub_100282080(v5);
    v96 = [v15 countByEnumeratingWithState:&v102 objects:v128 count:16];
    if (!v96)
    {
      goto LABEL_101;
    }

    v95 = *v103;
    v90 = 0;
    v91 = v122;
    v92 = v15;
    v94 = v5;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v103 != v95)
        {
          objc_enumerationMutation(v15);
        }

        v17 = *(*(&v102 + 1) + 8 * v16);
        v18 = [v17 itemResponse];
        v98 = v5;
        v19 = v17;
        obja = [v19 logKey];
        v99 = v19;
        if (v18)
        {
          v21 = objc_getProperty(v18, v20, 56, 1);
          v22 = v21;
          if (v18[18])
          {
            v23 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v135 = obja;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Purchase triggered queue check.", buf, 0xCu);
            }

            v24 = [v99 bag];
            sub_1001E0204(v97, 1, 3, 0, v99, v98, v24, 0);
LABEL_25:

LABEL_26:
            Property = objc_getProperty(v18, v27, 32, 1);
            v29 = v22;
            goto LABEL_27;
          }

          if (v21)
          {
            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v135 = obja;
              v136 = 2114;
              v137 = v22;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Purchase failed with error: %{public}@", buf, 0x16u);
            }

            v124[0] = _NSConcreteStackBlock;
            v124[1] = 3221225472;
            v124[2] = sub_1001E38B8;
            v124[3] = &unk_10051AEE8;
            v125 = v98;
            v26 = v22;
            v126 = v26;
            v127 = v99;
            sub_1001E1A90(v97, v26, v127, v124);

            v24 = v125;
            goto LABEL_25;
          }
        }

        if ([v19 discoveredUpdate])
        {
          v38 = sub_1002BB3F0();
          sub_1002BC4D0(v38, 4, v19);
        }

        if (([v19 isMachineBased] & 1) == 0 && (objc_msgSend(v19, "isDiscretionary") & 1) == 0)
        {
          v39 = [v19 account];
          v40 = [v39 ams_DSID];

          if (v18)
          {
            v42 = objc_getProperty(v18, v41, 64, 1);
          }

          else
          {
            v42 = 0;
          }

          v43 = v42;
          if ([v43 count])
          {

            goto LABEL_45;
          }

          v45 = [v99 purchaseType];

          if (v45)
          {
LABEL_45:
            v19 = v99;
            if (v40)
            {
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              if (v18)
              {
                v46 = objc_getProperty(v18, v44, 64, 1);
              }

              else
              {
                v46 = 0;
              }

              v47 = v46;
              v48 = [v47 countByEnumeratingWithState:&v117 objects:buf count:16];
              if (v48)
              {
                v50 = v48;
                v51 = *v118;
                do
                {
                  v52 = 0;
                  do
                  {
                    if (*v118 != v51)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v53 = *(*(&v117 + 1) + 8 * v52);
                    if (v53)
                    {
                      v54 = objc_getProperty(*(*(&v117 + 1) + 8 * v52), v49, 232, 1);
                    }

                    else
                    {
                      v54 = 0;
                    }

                    v55 = v54;
                    v56 = [v55 isEqualToString:@"software"];

                    if (v56)
                    {
                      if (v53)
                      {
                        v53 = objc_getProperty(v53, v49, 216, 1);
                        if (v53)
                        {
                          v57 = sub_10021CA38();
                          v115[0] = _NSConcreteStackBlock;
                          v115[1] = 3221225472;
                          v115[2] = sub_1001E3994;
                          v115[3] = &unk_10051B5C0;
                          v116 = obja;
                          sub_10021E12C(v57, v40, v53, 6, v115);
                        }
                      }
                    }

                    v52 = v52 + 1;
                  }

                  while (v50 != v52);
                  v58 = [v47 countByEnumeratingWithState:&v117 objects:buf count:16];
                  v50 = v58;
                }

                while (v58);
                v15 = v92;
                v5 = v94;
              }

LABEL_67:

              v19 = v99;
            }

            goto LABEL_69;
          }

          v59 = sub_10021CA38();
          v60 = [v40 longValue];
          v121[0] = _NSConcreteStackBlock;
          v121[1] = 3221225472;
          v122[0] = sub_1001E38C8;
          v122[1] = &unk_10051B5C0;
          v123 = obja;
          sub_10021E440(v59, v60, 6, 0, v121);

          v47 = v123;
          goto LABEL_67;
        }

LABEL_69:
        if ([v19 purchaseOnly])
        {
          v61 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v130 = 138412290;
            v131 = obja;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%@] Nothing to install", v130, 0xCu);
          }

          [v19 setMetricsType:&off_100546E88];
          sub_100282930(v98, &__NSArray0__struct, v19);
          goto LABEL_93;
        }

        v62 = [v19 itemResponse];
        v64 = v62;
        if (v62)
        {
          v62 = objc_getProperty(v62, v63, 64, 1);
        }

        v65 = v62;
        v66 = [v65 count];

        if (v66 == 1)
        {
          v67 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v99 logKey];
            *v130 = 138412290;
            v131 = v68;
            v69 = v67;
            v70 = "[%@] Purchasing complete with 1 item in the response";
LABEL_87:
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v70, v130, 0xCu);
          }
        }

        else
        {
          v71 = [v99 itemResponse];
          v73 = v71;
          if (v71)
          {
            v71 = objc_getProperty(v71, v72, 64, 1);
          }

          v74 = v71;
          v75 = [v74 count];

          v67 = ASDLogHandleForCategory();
          v76 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
          if (v75)
          {
            if (v76)
            {
              v77 = [v99 logKey];
              v78 = [v99 itemResponse];
              v80 = v78;
              if (v78)
              {
                v78 = objc_getProperty(v78, v79, 64, 1);
              }

              v81 = v78;
              v82 = [v81 count];
              *v130 = 138412546;
              v131 = v77;
              v132 = 2048;
              v133 = v82;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing complete with %ld item(s) in the response", v130, 0x16u);
            }

            goto LABEL_88;
          }

          if (v76)
          {
            v68 = [v99 logKey];
            *v130 = 138412290;
            v131 = v68;
            v69 = v67;
            v70 = "[%@] Purchasing complete with no items in the response";
            goto LABEL_87;
          }
        }

LABEL_88:

        v83 = *(v97 + 24);
        v85 = [PurchaseImportTask alloc];
        if (v18)
        {
          v86 = objc_getProperty(v18, v84, 64, 1);
        }

        else
        {
          v86 = 0;
        }

        v87 = v86;
        v88 = sub_100223AA0(&v85->super.super.super.isa, v87, v99, v98);
        if (v83)
        {
          [*(v83 + 8) addOperation:v88];
        }

LABEL_93:
        v22 = 0;
        v29 = 0;
        Property = 0;
        if (v18)
        {
          goto LABEL_26;
        }

LABEL_27:
        v30 = Property;
        v31 = [v30 count];

        if (v31)
        {
          v33 = [AnonymousPingTask alloc];
          if (v18)
          {
            v34 = objc_getProperty(v18, v32, 32, 1);
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;
          v36 = sub_100402FDC(v33, v35);

          if (v36)
          {
            v37 = *(v97 + 24);
            if (v37)
            {
              [*(v37 + 8) addOperation:v36];
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v16 != v96);
      v89 = [v15 countByEnumeratingWithState:&v102 objects:v128 count:16];
      v96 = v89;
      if (!v89)
      {
        v7 = v90;
        goto LABEL_101;
      }
    }
  }

  v8 = dispatch_group_create();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = v5;
  obj = sub_100282080(v5);
  v9 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v112;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v112 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v111 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v109[0] = _NSConcreteStackBlock;
        v109[1] = 3221225472;
        v109[2] = sub_1001E3774;
        v109[3] = &unk_10051AF98;
        v110 = v8;
        sub_1001E1A90(v97, v7, v13, v109);
      }

      v10 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
    }

    while (v10);
  }

  v14 = *(v97 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E377C;
  block[3] = &unk_10051B570;
  v5 = v93;
  v107 = v93;
  v108 = v7;
  v15 = v8;
  dispatch_group_notify(v8, v14, block);

LABEL_101:
LABEL_102:
}

void sub_1001E26DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1001E3788;
    v20 = sub_1001E3798;
    v21 = sub_1002E2EB8([PerformPurchaseTask alloc], v5);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1001E37A0;
    v11 = &unk_10051C258;
    v15 = &v16;
    v12 = a1;
    v14 = v6;
    v13 = v5;
    [v17[5] setCompletionBlock:&v8];
    v7 = *(a1 + 24);
    if (v7)
    {
      [*(v7 + 8) addOperation:{v17[5], v8, v9, v10, v11, v12}];
    }

    _Block_object_dispose(&v16, 8);
  }
}

void sub_1001E2828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E2840(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = Property;
  v5 = ASDLogHandleForCategory();
  v6 = [*(a1 + 40) signpostID];
  v7 = v6;
  if (v4)
  {
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8 = sub_100342C9C(v4);
      v9 = 138543362;
      v10 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "Purchase/Prepare", " error=%{public, signpost.description:attribute}@ ", &v9, 0xCu);
    }
  }

  else if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "Purchase/Prepare", "", &v9, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001E29B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = [v5 signpostID];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      v10 = [v5 logKey];
      LODWORD(v23) = 138543362;
      *(&v23 + 4) = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Purchase/Prepare", " uuid=%{public, signpost.description:attribute}@ ", &v23, 0xCu);
    }
  }

  Property = sub_100331E78([PreparePurchaseTask alloc], v5);
  v13 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v12, 42, 1);
  }

  v14 = Property;
  v15 = v13;
  v16 = v14;
  v17 = v6;
  *&v23 = _NSConcreteStackBlock;
  *(&v23 + 1) = 3221225472;
  v24 = sub_1001E2840;
  v25 = &unk_10051C078;
  v18 = v15;
  v26 = v18;
  v19 = v16;
  v27 = v19;
  v20 = v17;
  v28 = v20;
  v21 = objc_retainBlock(&v23);

  [v18 setCompletionBlock:v21];
  v22 = *(a1 + 24);
  if (v22)
  {
    [*(v22 + 8) addOperation:v18];
  }
}

void sub_1001E2BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E2CB8;
  v11[3] = &unk_10051C140;
  v12 = v5;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_1001E2CB8(uint64_t a1)
{
  v2 = sub_100281D24([PurchaseBatch alloc], *(a1 + 32));
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_1001E2F28;
  newValue[3] = &unk_10051C0F0;
  v17 = *(a1 + 56);
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v3, newValue, 32);
  }

  [*(*(a1 + 40) + 8) addObject:v2];
  if (*(a1 + 48))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) logKey];
      v10 = *(a1 + 48);
      *buf = 138412546;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to prepare purchase: %{public}@", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E2F3C;
    v12[3] = &unk_10051AEE8;
    v13 = v2;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    sub_1001E1A90(v6, v5, v7, v12);
  }

  else
  {
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001E2F4C;
    v11[3] = &unk_10051C118;
    v11[4] = v8;
    sub_1001E26DC(v8, v2, v11);
  }
}

void sub_1001E2F54(uint64_t a1)
{
  v2 = sub_100281D24([PurchaseBatch alloc], *(a1 + 32));
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_1001E3080;
  newValue[3] = &unk_10051C190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v3, newValue, 32);
  }

  [*(*(a1 + 40) + 8) addObject:v2];
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E3140;
  v5[3] = &unk_10051C118;
  v5[4] = v4;
  sub_1001E26DC(v4, v2, v5);
}

void sub_1001E3080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "Purchase", "", v7, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001E3148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E322C;
  v11[3] = &unk_10051C140;
  v12 = v5;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_1001E322C(uint64_t a1)
{
  v2 = sub_100281D24([PurchaseBatch alloc], *(a1 + 32));
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_1001E34B0;
  newValue[3] = &unk_10051C190;
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v3, newValue, 32);
  }

  [*(*(a1 + 40) + 8) addObject:v2];
  if (*(a1 + 48))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) logKey];
      v10 = *(a1 + 48);
      *buf = 138412546;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to prepare purchase: %{public}@", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E3570;
    v12[3] = &unk_10051AEE8;
    v13 = v2;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    sub_1001E1A90(v6, v5, v7, v12);
  }

  else
  {
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001E3580;
    v11[3] = &unk_10051C118;
    v11[4] = v8;
    sub_1001E26DC(v8, v2, v11);
  }
}

void sub_1001E34B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "Purchase", "", v7, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001E35AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001E36B8;
    v8[3] = &unk_10051C1E0;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v6;
    v11 = v5;
    v12 = *(a1 + 48);
    sub_1001E1A90(v7, v10, v11, v8);
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_1001E36B8(uint64_t a1)
{
  sub_100282DC4(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void sub_1001E36F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001E376C;
  v3[3] = &unk_10051C118;
  v3[4] = v2;
  sub_1001E26DC(v2, v1, v3);
}

uint64_t sub_1001E3788(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E37A0(uint64_t a1, const char *a2)
{
  Property = *(*(*(a1 + 56) + 8) + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = Property;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E38A0;
  block[3] = &unk_10051C230;
  v12 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void sub_1001E38C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Refreshed DAAP after purchase: %{public}@", &v6, 0x16u);
  }
}

void sub_1001E3994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Refreshed DAAP after purchase: %{public}@", &v6, 0x16u);
  }
}

id sub_1001E3AB0()
{
  objc_opt_self();
  if (qword_1005AA790 != -1)
  {
    dispatch_once(&qword_1005AA790, &stru_10051C278);
  }

  v0 = qword_1005AA788;

  return v0;
}

void sub_1001E3B08(id a1)
{
  v1 = [LaunchServicesProgress alloc];
  v2 = sub_1003649C8();
  v7 = v2;
  if (v1)
  {
    v8.receiver = v1;
    v8.super_class = LaunchServicesProgress;
    v3 = objc_msgSendSuper2(&v8, "init");
    v1 = v3;
    if (v3)
    {
      objc_storeStrong(v3 + 1, v2);
      v4 = +[LSApplicationWorkspace defaultWorkspace];
      [v4 addObserver:v1];

      v5 = sub_1002EB36C();
      sub_1002EB6D8(v5, v1, "_handleCancelInstallMessage:fromDevice:", 0);
    }
  }

  v6 = qword_1005AA788;
  qword_1005AA788 = v1;
}

void sub_1001E3F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138543618;
      v29 = v26;
      v30 = 2114;
      v31 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error attempting to cancel remote job for %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = ASDErrorWithSafeUserInfo();
  }

  else
  {
    v10 = [XDCCancelInstallResponse alloc];
    if (v5)
    {
      Property = objc_getProperty(v5, v9, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [(XDCCancelInstallResponse *)v10 initWithData:v12];

    if (v13 && (errorDomain = v13->_errorDomain) != 0 && (*&v13->_has & 1) != 0)
    {
      v15 = errorDomain;
      errorDescription = v13->_errorDescription;
      if (errorDescription)
      {
        v17 = errorDescription;
        v8 = ASDErrorWithDescription();
      }

      else
      {
        v8 = ASDErrorWithDescription();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v8);
  }

  if (!v8)
  {
    v19 = [*(a1 + 32) bundleID];
    v27 = v19;
    v20 = [NSArray arrayWithObjects:&v27 count:1];
    v21 = sub_1002A26C0(ASDNotification, v20);

    v22 = sub_100003984();
    sub_1003B8178(v22, v21);

    v23 = *(a1 + 32);
    v24 = *(*(a1 + 40) + 8);
    v25 = [v23 bundleID];
    sub_100365318(v24, v25);
  }
}

void sub_1001E41C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithUserInfoAndFormat();
  (*(v1 + 16))(v1, v2);
}

void sub_1001E4434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Canceling due to user request", buf, 0xCu);
  }

  v8 = +[BagService appstoredService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E45A4;
  v12[3] = &unk_10051C2C8;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v8 bagWithCompletionHandler:v12];
}

void sub_1001E45A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 bundleID];
  v7 = sub_1001E4710(v3, v6, -30, v5);

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) bundleID];
      v13 = 138543362;
      v14 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to cancel, no job found for bundle ID: %{public}@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Canceled local job", &v13, 0xCu);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v7);
  }
}

id sub_1001E4710(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v9 = sub_1003C27BC();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1001E500C;
    v17 = &unk_10051C390;
    v18 = a1;
    v10 = v7;
    v21 = &v23;
    v22 = a3;
    v19 = v10;
    v20 = v8;
    [v9 modifyUsingTransaction:&v14];

    if (v24[3])
    {
      v11 = 0;
    }

    else
    {
      v12 = [NSString stringWithFormat:@"No job found with bundle ID: %@", v10, v14, v15, v16, v17, v18, v19];
      v11 = ASDErrorWithDescription();
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1001E4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E48B0(uint64_t a1, void *a2)
{
  v3 = sub_100408EB0(a2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) bundleID];
  LODWORD(v7) = [v7 hasRestoringCoordinatorForBundleID:v8 logKey:v6];

  if (v7)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Prompting the user whether or not to delete restore", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) bundleID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E4A58;
    v12[3] = &unk_10051B548;
    v13 = *(a1 + 48);
    [v10 displayDeleteActiveRestoreDialogWithBundleID:v11 logKey:v6 completion:v12];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_1001E4A58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001E4BCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 bundleID];
  v7 = sub_1001E4710(v3, v6, -10, v5);

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) bundleID];
      v13 = 138543362;
      v14 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to pause, no job found for bundle ID: %{public}@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Paused local job for %{public}@", &v13, 0xCu);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7);
  }
}

void sub_1001E4E94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 bundleID];
  v7 = sub_1001E4710(v3, v6, 10, v5);

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) bundleID];
      v13 = 138543362;
      v14 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to resume, no job found for bundle ID: %{public}@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resumed local job for %{public}@", &v13, 0xCu);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7);
  }
}

uint64_t sub_1001E500C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v11 = 0;
    goto LABEL_12;
  }

  v4 = *(a1 + 64);
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:*(a1 + 40)];
  v6 = v5;
  if (v4 == 10)
  {
    v8 = [SQLiteContainsPredicate containsPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_1005492A8];
  }

  else
  {
    if (v4 == -10)
    {
      v7 = &off_100549290;
    }

    else
    {
      if (v4 != -30)
      {
        v23[0] = v5;
        v9 = [NSArray arrayWithObjects:v23 count:1];
        v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
        goto LABEL_11;
      }

      v7 = &off_100549278;
    }

    v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", v7];
  }

  v9 = v8;
  v23[0] = v6;
  v23[1] = v8;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

LABEL_11:
LABEL_12:
  v12 = [v3 connection];
  v13 = sub_1002D3F5C(AppInstallEntity, v12, v11);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001E528C;
  v19[3] = &unk_10051C368;
  v22 = *(a1 + 64);
  v20 = v3;
  v18 = *(a1 + 48);
  v14 = v18;
  v21 = v18;
  v15 = v3;
  [v13 enumerateMemoryEntitiesUsingBlock:v19];
  v16 = *(*(*(a1 + 56) + 8) + 24);

  return v16;
}

void sub_1001E528C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  switch(v4)
  {
    case 10:
      v7 = v3;
      sub_1002083F0(*(a1 + 32), [v3 databaseID]);
      break;
    case -10:
      v5 = *(a1 + 32);
      v7 = v3;
      v6 = [v3 databaseID];
      v3 = v7;
      if (!v5)
      {
        goto LABEL_9;
      }

      sub_100207D08(v5, v6, -10, 2uLL);
      break;
    case -30:
      v7 = v3;
      sub_1002067C8(*(a1 + 32), [v3 databaseID], -30, *(a1 + 40));
      break;
    default:
      goto LABEL_9;
  }

  v3 = v7;
LABEL_9:
}

void sub_1001E5564(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_alloc_init(XDCCancelInstallResponse);
  if (v10)
  {
    v4 = [v10 domain];
    sub_10029737C(v3, v4);

    v5 = [v10 code];
    if (v3)
    {
      *&v3->_has |= 1u;
      v3->_errorCode = v5;
    }

    v6 = [v10 description];
    sub_100297394(v3, v6);
  }

  v7 = sub_100342264(*(a1 + 32), *(a1 + 40), 6);
  v8 = sub_1002EB36C();
  v9 = v8;
  if (v8)
  {
    sub_1002EB834(v8, v7, *(a1 + 48), 0, 0);
  }
}

id sub_1001E578C(uint64_t a1)
{
  if (!a1)
  {
    v46 = 0;
    goto LABEL_45;
  }

  v1 = objc_alloc_init(NSMutableArray);
  v2 = objc_alloc_init(NSMutableArray);
  v3 = sub_10036C90C();
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1001E6F40;
  v55[3] = &unk_10051C408;
  v4 = v2;
  v56 = v4;
  [v3 readUsingSession:v55];

  [v4 sortUsingComparator:&stru_10051C448];
  v5 = +[NSMutableDictionary dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  v9 = *v52;
  v50 = v1;
  do
  {
    v10 = 0;
    do
    {
      if (*v52 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v51 + 1) + 8 * v10);
      v12 = sub_1001F0558(v11);

      if (v12)
      {
        v13 = sub_1001F0558(v11);
        v14 = [v5 objectForKeyedSubscript:v13];

        if (sub_1001F0600(v11) == 3)
        {
          v15 = sub_1001F0590(v11);
          v16 = v15;
          if (v14)
          {
            [v15 timeIntervalSinceReferenceDate];
            v14[3].isa = v17;
            [v1 addObject:v14];
            v18 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v58 = v14;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Completed account event: %{public}@", buf, 0xCu);
            }

            p_super = sub_1001F0558(v11);
            [v5 removeObjectForKey:p_super];
            goto LABEL_30;
          }

          p_super = ASDLogHandleForCategory();
          if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v58 = v11;
          v28 = p_super;
          v29 = "[AccountEventTimeline] Skipping activeEnd account event without a start event: %{public}@";
          v30 = 12;
LABEL_21:
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, v29, buf, v30);
          goto LABEL_30;
        }

        if (v14)
        {
          v22 = sub_1001F0600(v11);
          v16 = ASDLogHandleForCategory();
          v23 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
          if (v22)
          {
            if (v23)
            {
              v24 = sub_1001F0600(v11);
              p_super = sub_1001F0558(v11);
              Property = objc_getProperty(v14, v25, 8, 1);
              v27 = sub_1001F0600(Property);
              *buf = 134218498;
              v58 = v24;
              v1 = v50;
              v59 = 2114;
              v60 = p_super;
              v61 = 2048;
              v62 = v27;
              v28 = v16;
              v29 = "[AccountEventTimeline] Skipping event with type: %ld because it is the same account as the current event: %{public}@ with type: %ld";
              v30 = 32;
              goto LABEL_21;
            }

LABEL_31:

            goto LABEL_32;
          }

          if (v23)
          {
            *buf = 138543362;
            v58 = v14;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Replacing orphan account event due to a new activeStart / initial event: %{public}@", buf, 0xCu);
          }
        }

        v16 = sub_1001F05C8(v11);
        v31 = objc_alloc_init(AccountActiveTime);
        p_super = &v31->super;
        if (v31)
        {
          objc_setProperty_atomic_copy(v31, v32, v11, 8);
          [v16 timeIntervalSinceReferenceDate];
          p_super[2].isa = v33;
        }

        else
        {
          [v16 timeIntervalSinceReferenceDate];
        }

        v34 = sub_1001F0558(v11);
        [v5 setObject:p_super forKeyedSubscript:v34];

        v35 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v58 = p_super;
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Setting current account event to: %{public}@", buf, 0xCu);
        }

LABEL_30:
        goto LABEL_31;
      }

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v11 databaseID];
        v21 = sub_1001F0600(v11);
        *buf = 134218240;
        v58 = v20;
        v59 = 2048;
        v60 = v21;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Skipping event without accountID with pid: %lld type: %ld", buf, 0x16u);
      }

LABEL_32:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v36 = [v6 countByEnumeratingWithState:&v51 objects:v63 count:16];
    v8 = v36;
  }

  while (v36);
LABEL_36:

  v37 = +[ACAccountStore ams_sharedAccountStore];
  v38 = [v37 ams_activeiTunesAccount];

  if (v38 && ([v38 ams_DSID], v39 = objc_claimAutoreleasedReturnValue(), v39, v39) && (objc_msgSend(v38, "ams_DSID"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", v40), v41 = objc_claimAutoreleasedReturnValue(), v40, v41))
  {
    v42 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v48 = objc_getProperty(v41, v43, 8, 1);
      v49 = sub_1001F0558(v48);
      *buf = 138543362;
      v58 = v49;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Setting current time as the end time for last active account: %{public}@", buf, 0xCu);
    }

    v44 = +[NSDate date];
    [v44 timeIntervalSinceReferenceDate];
    v41[3].isa = v45;
    [v1 addObject:v41];
  }

  else
  {
    v41 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline] Skipping final event where which did not have a matching starting event", buf, 2u);
    }
  }

  v46 = [v1 copy];
LABEL_45:

  return v46;
}

id sub_1001E5E74()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E5F18;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA7A0 != -1)
  {
    dispatch_once(&qword_1005AA7A0, block);
  }

  v0 = qword_1005AA798;

  return v0;
}

void sub_1001E5F18(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA798;
  qword_1005AA798 = v1;
}

id sub_1001E5F50(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [NSTimeZone timeZoneWithName:@"America/Los_Angeles"];
    v4 = [v3 secondsFromGMTForDate:v2];
    v5 = +[NSTimeZone localTimeZone];
    v6 = [v5 secondsFromGMTForDate:v2];

    v7 = [NSDate dateWithTimeInterval:v2 sinceDate:(v4 - v6)];
    v8 = objc_alloc_init(NSDateComponents);
    [v8 setWeekOfYear:1];
    v9 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v10 = +[NSTimeZone systemTimeZone];
    [v9 setTimeZone:v10];

    v11 = [v9 dateByAddingComponents:v8 toDate:v7 options:0];
    v15 = 0;
    [v9 rangeOfUnit:4096 startDate:&v15 interval:0 forDate:v11];
    v12 = v15;
    v13 = [v9 startOfDayForDate:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1001E60F4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1001E5F50(AccountEventCoordinator, v2);

  v4 = objc_alloc_init(NSDateComponents);
  [v4 setWeekOfYear:-1];
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = +[NSTimeZone systemTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 dateByAddingComponents:v4 toDate:v3 options:0];

  return v7;
}

void *sub_1001E61E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = sub_1001E630C;
      v14 = sub_1001E631C;
      v15 = 0;
      v5 = a1[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E6324;
      block[3] = &unk_10051AEC0;
      block[4] = a1;
      v8 = v3;
      v9 = &v10;
      dispatch_sync(v5, block);
      a1 = v11[5];

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      a1 = &__NSArray0__struct;
    }
  }

  return a1;
}

uint64_t sub_1001E630C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E6324(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  if (v4 - *(*(a1 + 32) + 24) > 300.0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - *(*(a1 + 32) + 24);
      *buf = 134217984;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AccountEventTimeline]: Clearing internal cache which is %f seconds old", buf, 0xCu);
    }

    sub_1001E6654(*(a1 + 32));
  }

  v7 = objc_opt_new();
  v8 = sub_1001E578C(*(a1 + 32));
  v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v10 = v9;
  if (!v9)
  {
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v12 = v11;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    v16 = v12 + 604800.0;
    v17 = *v34;
    v18 = v12 + 604800.0 < 0.0 || v12 > 0.0;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        if (v20)
        {
          v21 = *(v20 + 24);
          if (v21 < v12 || v21 > v16)
          {
            v23 = *(v20 + 16);
            v24 = v23 < v12 || v23 > v16;
            if (v24 || v21 <= v16)
            {
              if (v23 > v12)
              {
                goto LABEL_30;
              }

LABEL_28:
              if (v21 < v16)
              {
                goto LABEL_30;
              }
            }
          }

LABEL_29:
          [v7 addObject:v33];
          goto LABEL_30;
        }

        if (!v18)
        {
          goto LABEL_29;
        }

        v21 = 0.0;
        if (v12 >= 0.0)
        {
          goto LABEL_28;
        }

LABEL_30:
        v19 = v19 + 1;
      }

      while (v15 != v19);
      v26 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v15 = v26;
      if (!v26)
      {
LABEL_36:

        v27 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v31 = sub_1002526A4(*(a1 + 40));
          v32 = [v7 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v38 = *&v31;
          v39 = 2114;
          v40 = v32;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[AccountEventTimeline]: Accounts for week: %{public}@ are: [%{public}@]", buf, 0x16u);
        }

        [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:*(a1 + 40)];
        v9 = v7;
        break;
      }
    }
  }

  v28 = [v9 copy];
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;
}

void sub_1001E6654(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;

    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    *(a1 + 24) = v4;
  }
}

id sub_1001E66CC(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1001E630C;
    v9 = sub_1001E631C;
    v10 = 0;
    v1 = *(a1 + 16);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001E67C8;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001E67C8(uint64_t a1)
{
  v2 = sub_1001E578C(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}