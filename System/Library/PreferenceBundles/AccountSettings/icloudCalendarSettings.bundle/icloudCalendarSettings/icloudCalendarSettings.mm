void sub_1E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E74(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_AE68();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (v7)
  {
    v11 = _CalLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_AED0();
    }
  }

  else
  {
    objc_storeStrong(WeakRetained + 21, a2);
    v12 = _CalLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10[21] emails];
      *buf = 134217984;
      v21 = [v13 count];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Calendar get settings response loaded from server. Email count %lu", buf, 0xCu);
    }

    v11 = _CalLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_AF40(v10 + 21);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_20A4;
  v15[3] = &unk_146A0;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v10;
  v19 = *(a1 + 48);
  v14 = v10;
  dispatch_async(&_dispatch_main_q, v15);
}

void sub_20A4(uint64_t a1)
{
  [*(a1 + 32) calendar_stopSpinner];
  [*(a1 + 40) setProperty:&__kCFBooleanFalse forKey:PSControlIsLoadingKey];
  v2 = *(*(a1 + 48) + 168);
  if (v2)
  {
    v3 = [v2 emails];
    v4 = [v3 count];

    if (v4)
    {
      v5 = PSEnabledKey;
      [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [*(a1 + 40) setProperty:&__kCFBooleanTrue forKey:v5];
    }
  }

  [*(a1 + 56) reloadSpecifierID:@"Send_AND_RECEIVE_SPECIFIER_ID"];
  [*(a1 + 56) reloadSpecifierID:@"SHARED_CALENDAR_SPECIFIER_ID"];
  v6 = *(a1 + 48);
  if (*(v6 + 152) == 1 && *(v6 + 168))
  {
    *(*(a1 + 56) + 152) = 0;
    v7 = [CalendarSendReceiveController alloc];
    v8 = [*(*(a1 + 48) + 168) emails];
    v9 = [(CalendarSendReceiveController *)v7 initWithEmailData:v8 userAccount:*(*(a1 + 56) + 160)];

    [*(a1 + 56) showController:v9];
  }
}

void sub_3408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_342C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 emails];
    v10 = [v9 description];
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "update send email request with response %@ error %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_367C;
  block[3] = &unk_146F0;
  v14 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  if (v6)
  {
    v11 = *(a1 + 40);
    v12[5] = _NSConcreteStackBlock;
    v12[6] = 3221225472;
    v12[7] = sub_3698;
    v12[8] = &unk_146F0;
    v12[9] = v11;
    [CalendarUtil showErrorForPresenter:"showErrorForPresenter:withError:callback:" withError:? callback:?];
  }

  else
  {
    [WeakRetained[21] setSharedCalendarEmail:{objc_msgSend(*(a1 + 48), "BOOLValue")}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3720;
    v12[3] = &unk_146F0;
    v12[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v12);
  }
}

void sub_3698(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3710;
  block[3] = &unk_146F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_3AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3B0C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_B190();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (v7)
  {
    v11 = _CalLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_B1F8();
    }
  }

  else
  {
    objc_storeStrong(WeakRetained + 21, a2);
    v12 = _CalLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10[21] emails];
      *buf = 134217984;
      v16 = [v13 count];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Calendar get settings response loaded from server. Email count %lu", buf, 0xCu);
    }

    v11 = _CalLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_AF40(v10 + 21);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D04;
  block[3] = &unk_146F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_3EF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_3F20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_4EC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 statusCode] == &stru_158.reloff + 1 && *(a1 + 48) == 1)
  {
    v10 = _CalLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "401 response from server for request %@ response %@", buf, 0x16u);
    }

    v35[0] = &__kCFBooleanTrue;
    v34[0] = kACRenewCredentialsShouldForceKey;
    v34[1] = kACRenewCredentialsServicesKey;
    v33 = AAGrandSlamAppTokenIDiCloudSettings;
    v11 = [NSArray arrayWithObjects:&v33 count:1];
    v35[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

    v13 = _accountStore;
    v14 = *(*(a1 + 32) + 8);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_52D0;
    v22[3] = &unk_14758;
    v26 = *(a1 + 40);
    v23 = v7;
    v15 = v8;
    v16 = *(a1 + 32);
    v24 = v15;
    v25 = v16;
    [v13 renewCredentialsForAccount:v14 options:v12 completion:v22];
  }

  else if (*(a1 + 40))
  {
    if ([v8 statusCode] == stru_B8.segname)
    {
      v12 = 0;
    }

    else
    {
      v17 = _CalLogSystem();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v18)
        {
          *buf = 134218242;
          v28 = [v8 statusCode];
          v29 = 2114;
          v30 = v9;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "non 200 response from server responseCode: %ld error: %{public}@", buf, 0x16u);
        }

        v19 = v8;
        v20 = [v19 statusCode];
        v21 = [*(a1 + 32) _errorDictionaryFromServerResponse:v19];
        v12 = [NSError errorWithDomain:@"CalServerErrorDomain" code:v20 userInfo:v21];
      }

      else
      {
        if (v18)
        {
          *buf = 134217984;
          v28 = [v8 statusCode];
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "non 200 response from server responseCode: %ld. Error object is nil. Constructing local error code", buf, 0xCu);
        }

        v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"CalServerErrorDomain", [v8 statusCode], 0);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = _CalLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "no handler for performRequestWithHandler. Server response %@ for request %@ and error %@", buf, 0x20u);
    }
  }
}

void sub_52D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = _CalLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "auth token renew failed. User rejected";
        v8 = buf;
        goto LABEL_8;
      }

LABEL_9:

      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      (*(*(a1 + 56) + 16))();
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v6 = _CalLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v7 = "auth token renew failed.";
        v8 = &v14;
LABEL_8:
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = _CalLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "auth token renewed. Retrying request with server", v12, 2u);
    }

    [*(a1 + 48) _performRequestWithHandler:*(a1 + 56) renewToken:0];
  }

LABEL_13:
}

void sub_57D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_B3E4();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
  }
}

void sub_5B44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = _CalLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_B44C();
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_6034(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = _CalLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_B4B4();
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_6184(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_83C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_845C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSelectEmailForSend:*(a1 + 32)];
}

void sub_84AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSelectOptionForReceive:*(a1 + 32) withOption:@"PUSH"];
}

void sub_8504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSelectOptionForReceive:*(a1 + 32) withOption:@"EMAIL"];
}

void sub_8B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8B3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 emails];
    v10 = [v9 description];
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "update send email request with response %@ error %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8DA8;
  block[3] = &unk_146F0;
  v16 = WeakRetained;
  v11 = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
  if (v6)
  {
    v12 = *(a1 + 32);
    v14[5] = _NSConcreteStackBlock;
    v14[6] = 3221225472;
    v14[7] = sub_8DBC;
    v14[8] = &unk_146F0;
    v14[9] = v12;
    [CalendarUtil showErrorForPresenter:"showErrorForPresenter:withError:callback:" withError:? callback:?];
  }

  else
  {
    [v11 setEmailList:*(a1 + 40)];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"CALENDAR_SETTING_REFRESH_NOTIFICATION" object:0 userInfo:0];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_8E3C;
    v14[3] = &unk_146F0;
    v14[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v14);
  }
}

void sub_8DBC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8E34;
  block[3] = &unk_146F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id _CalLogSystem()
{
  if (qword_1A378[0] != -1)
  {
    sub_B5A8();
  }

  v1 = qword_1A370;

  return v1;
}

void sub_9090(id a1)
{
  qword_1A370 = os_log_create("com.apple.icloudCalendar", "settings");

  _objc_release_x1();
}

uint64_t sub_9400(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_98E4(uint64_t a1, id *a2)
{
  result = sub_B63C();
  *a2 = 0;
  return result;
}

uint64_t sub_995C(uint64_t a1, id *a2)
{
  v3 = sub_B64C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_99DC@<X0>(void *a1@<X8>)
{
  sub_B65C();
  v2 = sub_B62C();

  *a1 = v2;
  return result;
}

uint64_t sub_9A20()
{
  v1 = *v0;
  sub_B65C();
  v2 = sub_B68C();

  return v2;
}

uint64_t sub_9A5C()
{
  v1 = *v0;
  sub_B65C();
  sub_B67C();
}

Swift::Int sub_9AB0()
{
  v1 = *v0;
  sub_B65C();
  sub_B70C();
  sub_B67C();
  v2 = sub_B71C();

  return v2;
}

uint64_t sub_9B24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_B65C();
  v6 = v5;
  if (v4 == sub_B65C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_B6FC();
  }

  return v9 & 1;
}

uint64_t sub_9BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_B62C();

  *a2 = v5;
  return result;
}

uint64_t sub_9BF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_B65C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_1A200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1A200);
    }
  }
}

uint64_t sub_9C70(uint64_t a1)
{
  v2 = sub_9DA4(&qword_1A220);
  v3 = sub_9DA4(&qword_1A228);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_9DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9DE8()
{
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CalendarPlacardCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v22._countAndFlagsBits = 0xE000000000000000;
  v27._countAndFlagsBits = 0x5241444E454C4143;
  v27._object = 0xEE004C4542414C5FLL;
  v31.value._object = 0x8000000000010E70;
  v31.value._countAndFlagsBits = 0xD000000000000010;
  v3.super.isa = v2;
  v35._countAndFlagsBits = 0x5241444E454C4143;
  v35._object = 0xEE004C4542414C5FLL;
  sub_B5BC(v27, v31, v3, v35, v22);

  sub_A92C(&qword_1A278, &qword_E188);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E130;
  v5 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000015;
  v28._object = 0x8000000000010E90;
  v32.value._object = 0x8000000000010E70;
  v36._countAndFlagsBits = 0xD000000000000015;
  v36._object = 0x8000000000010E90;
  v6.super.isa = v5;
  v32.value._countAndFlagsBits = 0xD000000000000010;
  v7 = sub_B5BC(v28, v32, v6, v36, v23);
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  v10 = sub_AA68();
  *(v4 + 64) = v10;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v11 = [v1 bundleForClass:ObjCClassFromMetadata];
  v24._countAndFlagsBits = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000001ALL;
  v29._object = 0x8000000000010EB0;
  v33.value._object = 0x8000000000010E70;
  v37._countAndFlagsBits = 0xD00000000000001ALL;
  v37._object = 0x8000000000010EB0;
  v12.super.isa = v11;
  v33.value._countAndFlagsBits = 0xD000000000000010;
  v13 = sub_B5BC(v29, v33, v12, v37, v24);
  v15 = v14;

  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v10;
  *(v4 + 72) = v13;
  *(v4 + 80) = v15;
  v16 = [v1 bundleForClass:ObjCClassFromMetadata];
  v25._countAndFlagsBits = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD00000000000001ALL;
  v30._object = 0x8000000000010ED0;
  v34.value._object = 0x8000000000010E70;
  v38._countAndFlagsBits = 0xD00000000000001ALL;
  v38._object = 0x8000000000010ED0;
  v17.super.isa = v16;
  v34.value._countAndFlagsBits = 0xD000000000000010;
  v18 = sub_B5BC(v30, v34, v17, v38, v25);
  v20 = v19;

  *(v4 + 136) = &type metadata for String;
  *(v4 + 144) = v10;
  *(v4 + 112) = v18;
  *(v4 + 120) = v20;
  sub_B66C();
  sub_B60C();
}

void sub_A150()
{
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  sub_B5CC(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    sub_B5CC(v7);
    v9 = v8;
    sub_AC54(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_AD5C();
    isa = sub_B61C().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  else
  {
  }
}

id sub_A554(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_B62C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_A8D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A92C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_A974(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_A9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_A974(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_AA04(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_AA68()
{
  result = qword_1A280;
  if (!qword_1A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A280);
  }

  return result;
}

unint64_t sub_AABC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_B65C();
  sub_B70C();
  sub_B67C();
  v4 = sub_B71C();

  return sub_AB50(a1, v4);
}

unint64_t sub_AB50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_B65C();
      v9 = v8;
      if (v7 == sub_B65C() && v9 == v10)
      {
        break;
      }

      v12 = sub_B6FC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_AC54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_A92C(&qword_1A288, &qword_E190);
    v3 = sub_B6DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_ADB4(v4, &v11);
      v5 = v11;
      result = sub_AABC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_AE24(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_AD5C()
{
  result = qword_1A220;
  if (!qword_1A220)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A220);
  }

  return result;
}

uint64_t sub_ADB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_A92C(&qword_1A290, qword_E198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_AE24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_AED0()
{
  sub_3EE8();
  sub_3F14();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_AF40(id *a1)
{
  v1 = [*a1 description];
  sub_3EE8();
  sub_3EF4(&dword_0, v2, v3, "Calendar get settings response %@", v4, v5, v6, v7, v8);
}

void sub_AFC8(uint64_t *a1)
{
  v6 = *a1;
  sub_3F14();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_B1F8()
{
  sub_3EE8();
  sub_3F14();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B268(void *a1)
{
  [a1 item];
  sub_3EE8();
  sub_3EF4(&dword_0, v1, v2, "[CalendarSettingsController] Nil specifier at indexPath %ld", v3, v4, v5, v6, v7);
}

void sub_B2E0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "loading calendar specifiers %@", &v3, 0xCu);
}

void sub_B51C(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 item];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[CalendarSendReceiveController] Nil specifier at indexPath %ld", &v3, 0xCu);
}