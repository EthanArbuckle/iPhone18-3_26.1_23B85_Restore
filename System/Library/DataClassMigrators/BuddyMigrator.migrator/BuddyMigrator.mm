void sub_46D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_4704(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Queueing mini-buddy for Siri data sharing acknowledement", v5, 2u);
    }

    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_4AF4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) intelligenceManager];
  [v3 applyStashedIsIntelligenceEnabled:a2];
}

void sub_4B48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 intelligenceManager];
  [v4 applyStashedNotificationOnboardingDefaults:v3];
}

void sub_5258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5D20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_5D38(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Setting Visual Intelligence (CC) presented to true", v5, 2u);
    }

    [*(*(*(a1 + 40) + 8) + 40) updatePresentedKeyWithNewState:1];
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_5F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5FAC(uint64_t a1, uint64_t a2)
{
  v3 = [[_TtC13BuddyMigrator38BuddyCameraControlPresentationProvider alloc] initWithIsIntelligenceEnabled:a2];
  *(*(*(a1 + 40) + 8) + 24) = [(BuddyCameraControlPresentationProvider *)v3 shouldPresentVisualIntelligencePane];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 67109120;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Should show visual intelligence? %d", &v8, 8u);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [(BuddyCameraControlPresentationProvider *)v3 shouldPresentCameraControlPane];
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 40) + 8) + 24);
      v8 = 67109120;
      v9 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Should show camera control? %d", &v8, 8u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_65E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_661C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v8 = a2 == 2 && v5 == 0;
  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11[0] = 67109376;
    v11[1] = v10;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Routine manager supplied state %d (%d)", v11, 0xEu);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2 == 0;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_6724(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v8 = a2 == 2 && v5 == 0;
  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11[0] = 67109376;
    v11[1] = v10;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BuddyMigrator: Routine manager supplied state %d (%d)", v11, 0xEu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_7158(uint64_t a1)
{
  sub_71B0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKSetupAssistantContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_30220 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_18E1C();
    sub_71B0();
  }
}

void sub_71B0()
{
  v1[0] = 0;
  if (!qword_30228)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_72AC;
    v1[4] = &unk_28AD8;
    v1[5] = v1;
    v2 = off_28AC0;
    v3 = 0;
    qword_30228 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_30228)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_72AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_30228 = result;
  return result;
}

Class sub_7320(uint64_t a1)
{
  sub_71B0();
  result = objc_getClass("PKPaymentSetupAssistantController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_30230 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_18E44();
    return sub_7378(v3);
  }

  return result;
}

Class sub_7378(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_30240)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_74BC;
    v4[4] = &unk_28AD8;
    v4[5] = v4;
    v5 = off_28AF8;
    v6 = 0;
    qword_30240 = _sl_dlopen();
    v2 = v4[0];
    if (qword_30240)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICQOfferManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_18E6C();
  }

  qword_30238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_74BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_30240 = result;
  return result;
}

Class sub_7530(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_30250)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_7674;
    v4[4] = &unk_28AD8;
    v4[5] = v4;
    v5 = off_28B10;
    v6 = 0;
    qword_30250 = _sl_dlopen();
    v2 = v4[0];
    if (qword_30250)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_18E94();
  }

  qword_30248 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_7674(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_30250 = result;
  return result;
}

void sub_76E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_79CC(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v6;
    }

    else if (v6)
    {
      v3 = [v6 domain];
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v3, [v6 code]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 67109378;
    v11 = a2;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Did check whether to present safety settings with result %d error %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_7B48()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_30268;
  v6 = qword_30268;
  if (!qword_30268)
  {
    sub_7D20();
    v4[3] = objc_getClass("AISSafetySettingsContext");
    qword_30268 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_7C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_7C90(uint64_t a1)
{
  if (!sub_7D20())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("AISSafetySettingsController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_30258 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_18EBC();
    return sub_7D20();
  }

  return result;
}

uint64_t sub_7D20()
{
  if (!qword_30260)
  {
    qword_30260 = _sl_dlopen();
  }

  return qword_30260;
}

uint64_t sub_7DF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_30260 = result;
  return result;
}

Class sub_7E64(uint64_t a1)
{
  sub_7D20();
  result = objc_getClass("AISSafetySettingsContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_30268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_7F88(id a1, NSArray *a2, NSError *a3)
{
  if (a3)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_18EE4(v3);
    }
  }
}

void sub_8878(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_88C8(uint64_t a1)
{
  v2 = [*(a1 + 32) launchURL];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = [*(a1 + 32) message];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

void sub_8F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8F78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v14 = SUMandatoryUpdateFlagsKey;
    v10 = [v5 objectForKeyedSubscript:SUMandatoryUpdateFlagsKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v5 objectForKeyedSubscript:v14];
      if (v15)
      {
        v16 = objc_alloc_init(NSNumberFormatter);
        v17 = [v16 numberFromString:v15];
        *(*(*(a1 + 40) + 8) + 24) = [v17 unsignedIntegerValue];
      }

      else
      {
        v16 = _BYLoggingFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "No mandatory software update information available (flags are nil)", &v18, 2u);
        }
      }
    }

    else
    {
      v15 = _BYLoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_18F6C(v15);
      }
    }

    goto LABEL_19;
  }

  v8 = [v6 domain];
  if ([v8 isEqualToString:SUErrorDomain])
  {
    v9 = [v7 code];

    if (v9 == &stru_20.vmaddr + 6)
    {
      v10 = _BYLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v11 = "No mandatory software update information available";
        v12 = v10;
        v13 = 2;
LABEL_12:
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = _BYLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    v11 = "Unable to get mandatory software update information: %@";
    v12 = v10;
    v13 = 12;
    goto LABEL_12;
  }

LABEL_19:

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_A740()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_30270;
  v7 = qword_30270;
  if (!qword_30270)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_AAC4;
    v3[3] = &unk_28AA0;
    v3[4] = &v4;
    sub_AAC4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_A808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A820(id *a1, int a2, void *a3)
{
  v6 = a3;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v6;
    }

    else if (v6)
    {
      v3 = [v6 domain];
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v3, [v6 code]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 67109378;
    v21 = a2;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Did check whether to present safety settings with result %d error %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AA24;
  block[3] = &unk_28CE0;
  v19 = a2;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v17 = v15;
  v18 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_AA24(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = objc_alloc_init(BuddySafetySettingsPresenterSession);
    [(BuddySafetySettingsPresenterSession *)v2 setDelegate:*(a1 + 32)];
    [(BuddySafetySettingsPresenterSession *)v2 setPresenter:*(a1 + 40)];
    [(BuddySafetySettingsPresenterSession *)v2 setContext:*(a1 + 48)];
    [*(a1 + 40) setDelegate:v2];
  }

  else
  {
    v2 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

Class sub_AAC4(uint64_t a1)
{
  if (!qword_30278)
  {
    qword_30278 = _sl_dlopen();
  }

  result = objc_getClass("AISSafetySettingsFlowPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_30270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_ABC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_30278 = result;
  return result;
}

uint64_t sub_BDA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_BE20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19330();
  sub_C05C(v3, a2);
  sub_BDA0(v3, a2);
  return sub_19320();
}

uint64_t sub_BEBC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_19330();

  return sub_BDA0(v3, a2);
}

uint64_t sub_BF34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_19330();
  v6 = sub_BDA0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void type metadata accessor for SBSBuddyMultitaskingFlowOption()
{
  if (!qword_2FEB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2FEB0);
    }
  }
}

void *sub_C04C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *sub_C05C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(void *a1, id a2, void *a3)
{
  if (([a2 hasCameraButton] & 1) != 0 || objc_msgSend(a2, "mgProductType") == 1260109173 || objc_msgSend(a2, "type"))
  {

    swift_unknownObjectRelease();
    type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v3[OBJC_IVAR____TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController] = a1;
    *&v3[OBJC_IVAR____TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager_chronicle] = a3;
    v9.receiver = v3;
    v9.super_class = type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
    v8 = objc_msgSendSuper2(&v9, "init");
    swift_unknownObjectRelease();
    return v8;
  }
}

Swift::Bool __swiftcall BuddyControlCenterVisualIntelligencePresentationManager.shouldPresentVisualIntelligencePane()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager_chronicle) entryForFeature:4];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 productVersion];
    if (!v3)
    {
      sub_19370();
      v3 = sub_19360();
    }

    v4 = objc_opt_self();
    v5 = sub_19360();
    v6 = [v4 compareProductVersion:v3 toProductVersion:v5];

    if (v6 == -1)
    {
      v7 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController);
      v8 = sub_19360();
      LOBYTE(v7) = [v7 BOOLForKey:v8];

      LOBYTE(v1) = v7 ^ 1;
    }

    else
    {

      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Void __swiftcall BuddyControlCenterVisualIntelligencePresentationManager.updatePresentedKey(newState:)(Swift::Bool newState)
{
  v3 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController);
  v4 = sub_19360();
  v5 = [v3 BOOLForKey:v4];

  if ((v5 & 1) == 0)
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v6 = sub_19330();
    sub_BDA0(v6, static Logger.purpleBuddyGeneral);
    v7 = sub_19310();
    v8 = sub_193F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = newState;
      _os_log_impl(&dword_0, v7, v8, "Updating visual intelligence (control center) pane visibility preference to %{BOOL}d", v9, 8u);
    }

    isa = sub_193A0().super.super.isa;
    v11 = sub_19360();
    [v3 setObject:isa forKey:v11 persistImmediately:1];
  }
}

id IntelligenceServerControlProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BuddyControlCenterVisualIntelligencePresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static GenerativeModelsAvailability.setupAssistantInstance.getter()
{
  v0 = sub_19220();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19210();
  sub_19250();
  return (*(v1 + 8))(v4, v0);
}

void *GenerativeModelsAvailability.unavailabilityReasons.getter()
{
  v0 = sub_19200();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_191F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19230();
  if ((*(v1 + 88))(v4, v0) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    v10 = sub_191E0();
    (*(v6 + 8))(v9, v5);
    return v10;
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    return &_swiftEmptySetSingleton;
  }
}

id IntelligenceStateProvider.__allocating_init(generativeModelProvider:preferences:)(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_E71C(a1, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8, v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_E65C(v11, a2, v5, v6, v7);
  sub_F1C0(a1);
  return v13;
}

id IntelligenceStateProvider.init(generativeModelProvider:preferences:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_E71C(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_E65C(v10, a2, v2, v5, v6);
  sub_F1C0(a1);
  return v12;
}

uint64_t sub_CBF4()
{
  v1 = *(v0 + 16);
  sub_D544();
  if (v2)
  {
    sub_19300();
    v3 = sub_192F0();
    sub_192E0();
  }

  v4 = sub_192D0();
  v5 = v4 == sub_192D0();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_CE0C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_CE84, 0, 0);
}

uint64_t sub_CE84()
{
  v1 = v0[2];
  sub_D544();
  if (v2)
  {
    sub_19300();
    v3 = sub_192F0();
    sub_192E0();
  }

  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_192D0();
  v7 = sub_192D0();

  (v4)[2](v4, v6 == v7, 0);
  _Block_release(v4);
  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall IntelligenceStateProvider.applyStashedIsIntelligenceEnabled(_:)(Swift::Bool a1)
{
  sub_19300();
  v1 = sub_192F0();
  sub_192C0();
}

Swift::Bool __swiftcall IntelligenceStateProvider.wasOfferedIntelligence()()
{
  sub_D544();
  if (v0)
  {
    sub_19300();
    v1 = sub_192F0();
    sub_192E0();
  }

  v2 = sub_192D0();
  return v2 != sub_192D0();
}

Swift::Bool __swiftcall IntelligenceStateProvider.canEnableIntelligence()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider + 32);
  sub_ECC8((v0 + OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider), v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_ED0C(&qword_2FF60, &qword_1D078);
  v4 = sub_191D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D050;
  (*(v5 + 104))(v8 + v7, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:), v4);
  v9 = sub_D8E4(v8, v3);
  swift_setDeallocating();
  v10 = *(v8 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = v9[2];

  return v11 == 0;
}

uint64_t sub_D544()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_preferences);
  v2 = sub_19360();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_19420();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_F160(v16, &qword_2FFB8, &unk_1D2B0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0 || v13 > 2)
  {
    return 0;
  }

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v4 = sub_19330();
  sub_BDA0(v4, static Logger.purpleBuddyGeneral);
  v5 = sub_19310();
  v6 = sub_193F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16[0] = v8;
    *v7 = 136315138;
    if (v13)
    {
      if (v13 == 1)
      {
        v9 = 0x6E6920646574704FLL;
      }

      else
      {
        v9 = 0x756F20646574704FLL;
      }

      if (v13 == 1)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE900000000000074;
      }
    }

    else
    {
      v10 = 0xED000065636E6572;
      v9 = 0x6566657270206F4ELL;
    }

    v12 = sub_1672C(v9, v10, v16);

    *(v7 + 4) = v12;
    sub_F1C0(v8);
  }

  if (!v13)
  {
    return 0;
  }

  if (v13 == 1)
  {
    return v13;
  }

  return 2;
}

id IntelligenceStateProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceStateProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_D8E4(uint64_t a1, void *a2)
{
  v4 = sub_191D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v63 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v55 - v12;
  __chkstk_darwin(v11, v14);
  i = v55 - v15;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69[0] = a1;
  v16 = *(a1 + 16);

  v57 = v16;
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = 0;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = *(v18 + 64);
  v59 = a1;
  v60 = a1 + ((v20 + 32) & ~v20);
  v66 = *(v18 + 56);
  v67 = v19;
  v64 = a2 + 7;
  v65 = a2;
  v68 = v18;
  v21 = (v18 - 8);
  v56 = ((v18 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v61 = v17 + 1;
    v69[1] = v17 + 1;
    v67(i, v60 + v66 * v17, v4);
    v22 = a2[5];
    v58 = sub_F0D0(&qword_2FF98);
    v23 = sub_19340();
    v24 = -1 << *(a2 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    v27 = 1 << v25;
    if (((1 << v25) & v64[v25 >> 6]) != 0)
    {
      break;
    }

    v30 = *v21;
LABEL_10:
    v30(i, v4);
    v17 = v61;
    if (v61 == v57)
    {
      goto LABEL_30;
    }
  }

  v28 = ~v24;
  while (1)
  {
    v67(v13, v65[6] + v25 * v66, v4);
    sub_F0D0(&qword_2FFA0);
    v29 = sub_19350();
    v30 = *v21;
    (*v21)(v13, v4);
    if (v29)
    {
      break;
    }

    v25 = (v25 + 1) & v28;
    v26 = v25 >> 6;
    v27 = 1 << v25;
    if (((1 << v25) & v64[v25 >> 6]) == 0)
    {
      a2 = v65;
      goto LABEL_10;
    }
  }

  v31 = (v30)(i, v4);
  v33 = v65;
  v34 = *(v65 + 32);
  v55[0] = ((1 << v34) + 63) >> 6;
  v35 = 8 * v55[0];
  if ((v34 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v55[1] = v55;
    __chkstk_darwin(v31, v32);
    v37 = v55 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v37, v64, v36);
    v38 = *(v33 + 16);
    *&v37[8 * v26] &= ~v27;
    v56 = v37;
    v57 = (v38 - 1);
    v39 = *(v59 + 16);
    v40 = v61;
    for (i = v39; ; v39 = i)
    {
      if (v40 == v39)
      {
        a2 = sub_E348(v56, v55[0], v57, v33);
        goto LABEL_30;
      }

      if (v40 >= *(v59 + 16))
      {
        break;
      }

      v61 = v40;
      v67(v63, v60 + v40 * v66, v4);
      v42 = *(v33 + 40);
      v43 = sub_19340();
      v44 = -1 << *(v33 + 32);
      v25 = v43 & ~v44;
      v27 = v25 >> 6;
      v26 = 1 << v25;
      if (((1 << v25) & v64[v25 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v67(v13, v65[6] + v25 * v66, v4);
      v45 = sub_19350();
      v30(v13, v4);
      if ((v45 & 1) == 0)
      {
        v46 = ~v44;
        while (1)
        {
          v25 = (v25 + 1) & v46;
          v27 = v25 >> 6;
          v26 = 1 << v25;
          if (((1 << v25) & v64[v25 >> 6]) == 0)
          {
            break;
          }

          v67(v13, v65[6] + v25 * v66, v4);
          v47 = sub_19350();
          v30(v13, v4);
          if (v47)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v30(v63, v4);
        v33 = v65;
LABEL_16:
        v41 = v61;
        goto LABEL_17;
      }

LABEL_25:
      v30(v63, v4);
      v48 = v56[v27];
      v56[v27] = v48 & ~v26;
      v33 = v65;
      if ((v48 & v26) == 0)
      {
        goto LABEL_16;
      }

      v49 = v57 - 1;
      v41 = v61;
      if (__OFSUB__(v57, 1))
      {
        goto LABEL_33;
      }

      --v57;
      if (!v49)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v40 = v41 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v51 = v35;

    v52 = v51;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v53 = v65;

      v33 = v53;
      continue;
    }

    break;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v64, v52);
  a2 = sub_DF7C(v54, v55[0], v65, v25, v69);

LABEL_30:

  return a2;
}

void *sub_DF7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = sub_191D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v47 = &v40 - v18;
  result = __chkstk_darwin(v17, v19);
  v53 = &v40 - v21;
  v22 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v41 = a1;
  v42 = v22 - 1;
  v23 = *a5;
  v24 = a5[1];
  v25 = *(*a5 + 16);
  if (v24 == v25)
  {
LABEL_2:

    return sub_E348(v41, v40, v42, a3);
  }

  v45 = v10 + 32;
  v46 = v10;
  v48 = a3 + 56;
  v43 = a5;
  v51 = v10 + 16;
  v52 = (v10 + 8);
  while (v24 < v25)
  {
    v27 = *(v10 + 80);
    v50 = *(v10 + 72);
    v28 = v47;
    v49 = *(v10 + 16);
    v49(v47, v23 + ((v27 + 32) & ~v27) + v50 * v24, v9);
    a5[1] = v24 + 1;
    (*(v10 + 32))(v53, v28, v9);
    v29 = *(a3 + 40);
    sub_F0D0(&qword_2FF98);
    v30 = sub_19340();
    v31 = -1 << *(a3 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    v34 = 1 << v32;
    if (((1 << v32) & *(v48 + 8 * (v32 >> 6))) == 0)
    {
      v26 = *v52;
LABEL_6:
      result = (v26)(v53, v9);
      goto LABEL_7;
    }

    v44 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35 = a3;
    v36 = ~v31;
    while (1)
    {
      v49(v15, *(v35 + 48) + v32 * v50, v9);
      sub_F0D0(&qword_2FFA0);
      v37 = sub_19350();
      v26 = *v52;
      (*v52)(v15, v9);
      if (v37)
      {
        break;
      }

      v32 = (v32 + 1) & v36;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v48 + 8 * (v32 >> 6))) == 0)
      {
        a3 = v35;
        a5 = v43;
        goto LABEL_6;
      }
    }

    result = (v26)(v53, v9);
    v38 = v41[v33];
    v41[v33] = v38 & ~v34;
    if ((v38 & v34) == 0)
    {
      a3 = v35;
      a5 = v43;
LABEL_7:
      v10 = v46;
      goto LABEL_8;
    }

    v39 = v42 - 1;
    v10 = v46;
    if (__OFSUB__(v42, 1))
    {
      goto LABEL_21;
    }

    a3 = v35;
    a5 = v43;
    --v42;
    if (!v39)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v23 = *a5;
    v24 = a5[1];
    v25 = *(*a5 + 16);
    if (v24 == v25)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_E348(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_191D0();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_ED0C(&qword_2FFA8, &qword_1D118);
  result = sub_19430();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_F0D0(&qword_2FF98);
    result = sub_19340();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_E65C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  v9 = sub_F20C(v13);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  sub_F270(v13, &a3[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider]);
  *&a3[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_preferences] = a2;
  v12.receiver = a3;
  v12.super_class = type metadata accessor for IntelligenceStateProvider();
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_F1C0(v13);
  return v10;
}

uint64_t sub_E71C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t _s13BuddyMigrator25IntelligenceStateProviderC39stashableNotificationOnboardingDefaults10Foundation4DataVSgyF_0()
{
  v0 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];
  v12 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v12];
  v2 = v12;
  if (v1)
  {
    v3 = sub_191C0();
  }

  else
  {
    v4 = v2;
    sub_191A0();

    swift_willThrow();
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v5 = sub_19330();
    sub_BDA0(v5, static Logger.purpleBuddyGeneral);
    swift_errorRetain();
    v6 = sub_19310();
    v7 = sub_193E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v6, v7, "Failed to archive notification onboarding defaults with error %@", v8, 0xCu);
      sub_F160(v9, &qword_30000, &qword_1D120);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

void _s13BuddyMigrator25IntelligenceStateProviderC42applyStashedNotificationOnboardingDefaultsyy10Foundation4DataVF_0()
{
  sub_F114();
  sub_19410();
  v0 = sub_19400();
  if (v0)
  {
    oslog = v0;
    v1 = [v0 save];
    if (v1)
    {
      v2 = v1;
      if (qword_2FDE0 != -1)
      {
        swift_once();
      }

      v3 = sub_19330();
      sub_BDA0(v3, static Logger.purpleBuddyGeneral);
      v4 = v2;
      v5 = sub_19310();
      v6 = sub_193E0();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = v4;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_0, v5, v6, "Failed to save notification onboarding defaults with error %@", v7, 0xCu);
        sub_F160(v8, &qword_30000, &qword_1D120);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_ECC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_ED0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_ED78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_EDCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_ED78(a1, a2);
  }

  return a1;
}

uint64_t sub_EDE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_EE20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_EECC;

  return sub_CE0C(v2, v3);
}

uint64_t sub_EECC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_EFC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_F004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F2D8;

  return sub_17D34(a1, v4, v5, v7);
}

uint64_t sub_F0D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_191D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F114()
{
  result = qword_2FFB0;
  if (!qword_2FFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2FFB0);
  }

  return result;
}

uint64_t sub_F160(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_ED0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_F1C0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_F20C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id IntelligenceManager.__allocating_init(featureFlags:availabilityProvider:stateProvider:preferences:chronicle:deviceProvider:visualIntelligencePresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_didShowIntelligencePaneThisBuddyRun] = 0;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_featureFlags] = a1;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_availabilityProvider] = a2;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider] = a3;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_preferences] = a4;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_chronicle] = a5;
  *&v15[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_visualIntelligencePresentationManager] = a7;
  v20.receiver = v15;
  v20.super_class = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = a4;
  v17 = a5;
  v18 = objc_msgSendSuper2(&v20, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v18;
}

id IntelligenceManager.init(featureFlags:availabilityProvider:stateProvider:preferences:chronicle:deviceProvider:visualIntelligencePresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_128DC(a1, a2, a3, a4, a5, a7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

id IntelligenceManager.__allocating_init(featureFlags:preferences:chronicle:deviceProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = a1;
  v41 = a4;
  v39 = a3;
  v37 = sub_19220();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19260();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = objc_allocWithZone(v4);
  v17 = [objc_allocWithZone(type metadata accessor for BuddyGMAvailabilityProvider()) init];
  v18 = [objc_allocWithZone(type metadata accessor for IntelligenceServerControlProvider()) init];
  v19 = type metadata accessor for IntelligenceAvailabilityProvider();
  v20 = objc_allocWithZone(v19);
  v20[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverBackedValue] = 2;
  *&v20[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider] = v17;
  *&v20[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverControlProvider] = v18;
  has_internal_ui = os_variant_has_internal_ui();
  v22 = 0;
  if (has_internal_ui)
  {
    v23 = a2;
    v22 = a2;
  }

  *&v20[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_preferences] = v22;
  v44.receiver = v20;
  v44.super_class = v19;
  v24 = objc_msgSendSuper2(&v44, "init", v37);
  v25 = a2;
  sub_19210();
  sub_19250();
  (*(v6 + 8))(v10, v37);
  v26 = type metadata accessor for IntelligenceStateProvider();
  v27 = objc_allocWithZone(v26);
  v43[3] = v11;
  v43[4] = &protocol witness table for GenerativeModelsAvailability;
  v28 = sub_F20C(v43);
  (*(v12 + 16))(v28, v16, v11);
  sub_F270(v43, &v27[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider]);
  *&v27[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_preferences] = v25;
  v42.receiver = v27;
  v42.super_class = v26;
  v29 = objc_msgSendSuper2(&v42, "init");
  (*(v12 + 8))(v16, v11);
  sub_F1C0(v43);
  v30 = objc_allocWithZone(type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager());
  v31 = v25;
  v32 = v41;
  swift_unknownObjectRetain();
  v33 = v39;
  v34 = BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(v31, v32, v33);
  v35 = [v38 initWithFeatureFlags:v40 availabilityProvider:v24 stateProvider:v29 preferences:v31 chronicle:v33 deviceProvider:v32 visualIntelligencePresentationManager:v34];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v35;
}

id IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = a3;
  v39 = a1;
  v40 = a4;
  v36 = sub_19220();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19260();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(type metadata accessor for BuddyGMAvailabilityProvider()) init];
  v17 = [objc_allocWithZone(type metadata accessor for IntelligenceServerControlProvider()) init];
  v18 = type metadata accessor for IntelligenceAvailabilityProvider();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverBackedValue] = 2;
  *&v19[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider] = v16;
  *&v19[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverControlProvider] = v17;
  has_internal_ui = os_variant_has_internal_ui();
  v21 = 0;
  if (has_internal_ui)
  {
    v22 = a2;
    v21 = a2;
  }

  *&v19[OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_preferences] = v21;
  v43.receiver = v19;
  v43.super_class = v18;
  v23 = objc_msgSendSuper2(&v43, "init", v36);
  v24 = a2;
  sub_19210();
  sub_19250();
  (*(v5 + 8))(v9, v36);
  v25 = type metadata accessor for IntelligenceStateProvider();
  v26 = objc_allocWithZone(v25);
  v42[3] = v10;
  v42[4] = &protocol witness table for GenerativeModelsAvailability;
  v27 = sub_F20C(v42);
  (*(v11 + 16))(v27, v15, v10);
  sub_F270(v42, &v26[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider]);
  *&v26[OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_preferences] = v24;
  v41.receiver = v26;
  v41.super_class = v25;
  v28 = objc_msgSendSuper2(&v41, "init");
  (*(v11 + 8))(v15, v10);
  sub_F1C0(v42);
  v29 = objc_allocWithZone(type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager());
  v30 = v24;
  v31 = v40;
  swift_unknownObjectRetain();
  v32 = v37;
  v33 = BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(v30, v31, v32);
  v34 = [v38 initWithFeatureFlags:v39 availabilityProvider:v23 stateProvider:v28 preferences:v30 chronicle:v32 deviceProvider:v31 visualIntelligencePresentationManager:v33];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v34;
}

uint64_t IntelligenceManager.shouldShowIntelligence(withServerCheck:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return _swift_task_switch(sub_FDB8, 0, 0);
}

uint64_t sub_FDB8()
{
  if ([*(v0[2] + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_featureFlags) isIntelligenceEnabled] && (*(v0[2] + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_didShowIntelligencePaneThisBuddyRun) & 1) == 0)
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_FEAC;
    v4 = v0[2];

    return IntelligenceManager.isIntelligenceEnabled()();
  }

  else
  {
    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_FEAC(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 41) = a1;

  return _swift_task_switch(sub_FFAC, 0, 0);
}

uint64_t sub_FFAC()
{
  if (*(v0 + 41) == 1)
  {
    if (sub_12590() & 1) != 0 || (v1 = *(v0 + 16), (sub_12694()))
    {
LABEL_14:
      v8 = swift_task_alloc();
      *(v0 + 32) = v8;
      *v8 = v0;
      v8[1] = sub_1017C;
      v9 = *(v0 + 16);
      v10 = *(v0 + 40);

      return sub_11CDC(v10);
    }
  }

  else
  {
    if (![*(*(v0 + 16) + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider) wasOfferedIntelligence])
    {
      goto LABEL_14;
    }

    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v2 = sub_19330();
    sub_BDA0(v2, static Logger.purpleBuddyGeneral);
    v3 = sub_19310();
    v4 = sub_193F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "User was offered intelligence before.", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1017C(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_103FC(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_104B8;

  return IntelligenceManager.shouldShowIntelligence(withServerCheck:)(a1);
}

uint64_t sub_104B8(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

Swift::Void __swiftcall IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()()
{
  v1 = v0;
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_19330();
  sub_BDA0(v2, static Logger.purpleBuddyGeneral);
  v3 = sub_19310();
  v4 = sub_193F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "didShowIntelligencePaneThisBuddyRun is set this buddy run.", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_didShowIntelligencePaneThisBuddyRun) = 1;
}

uint64_t sub_10754()
{
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v1 = sub_19330();
  v0[19] = sub_BDA0(v1, static Logger.purpleBuddyGeneral);
  v2 = sub_19310();
  v3 = sub_193F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Checking intelligence status", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10938;
  v7 = swift_continuation_init();
  v0[17] = sub_ED0C(&qword_2FFF8, &unk_1D148);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10C84;
  v0[13] = &unk_28FB8;
  v0[14] = v7;
  [v6 isIntelligenceEnabledWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10938()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10B2C;
  }

  else
  {
    v3 = sub_10A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10A48()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v3 = sub_19310();
  v4 = sub_193F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_0, v3, v4, "Intelligence status: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_10B2C()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_willThrow();
  v3 = sub_193E0();
  swift_errorRetain();
  v4 = sub_19310();

  v5 = os_log_type_enabled(v4, v3);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v3, "Failed to determine intelligence status. Error: %@", v7, 0xCu);
    sub_12A3C(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10C84(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_ECC8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_ED0C(&qword_30038, &qword_1D210);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10EC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_12E9C;

  return IntelligenceManager.isIntelligenceEnabled()();
}

Swift::Void __swiftcall IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(Swift::Bool a1)
{
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v3 = sub_19330();
  sub_BDA0(v3, static Logger.purpleBuddyGeneral);
  v4 = sub_19310();
  v5 = sub_193F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_0, v4, v5, "Will apply stashed intelligence enabled %{BOOL}d", v6, 8u);
  }

  [*(v1 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider) applyStashedIsIntelligenceEnabled:a1];
  oslog = sub_19310();
  v7 = sub_193F0();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, oslog, v7, "Did apply stashed intelligence enabled", v8, 2u);
  }
}

uint64_t IntelligenceManager.updateAppleIntelligenceUpsellPreferences(didShow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_1117C, 0, 0);
}

uint64_t sub_1117C()
{
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v1 = sub_19330();
  sub_BDA0(v1, static Logger.purpleBuddyGeneral);
  v2 = sub_19310();
  v3 = sub_193F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "Updating Intelligence presented keys. Did show: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 32);

  v8 = *(v6 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_chronicle);
  if (v7 == 1)
  {
    [v8 recordFeatureShown:4];
    v9 = swift_task_alloc();
    *(v0 + 24) = v9;
    *v9 = v0;
    v9[1] = sub_11348;
    v10 = *(v0 + 16);

    return IntelligenceManager.isIntelligenceEnabled()();
  }

  else
  {
    [v8 removeRecordForFeature:4];
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_11348(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 33) = a1;

  return _swift_task_switch(sub_11448, 0, 0);
}

uint64_t sub_11448()
{
  if (*(v0 + 33) == 1)
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_visualIntelligencePresentationManager);
    if (v1)
    {
      [v1 updatePresentedKeyWithNewState:1];
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_11654(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_11710;

  return IntelligenceManager.updateAppleIntelligenceUpsellPreferences(didShow:)(a1);
}

uint64_t sub_11710()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t IntelligenceManager.stashableNotificationOnboardingDefaults()()
{
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v1 = sub_19330();
  sub_BDA0(v1, static Logger.purpleBuddyGeneral);
  v2 = sub_19310();
  v3 = sub_193F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Will generate stashable notification onboarding defaults", v4, 2u);
  }

  v5 = [*(v0 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider) stashableNotificationOnboardingDefaults];
  if (v5)
  {
    v6 = v5;
    v7 = sub_191C0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  sub_12AA4(v7, v9);
  v10 = sub_19310();
  v11 = sub_193F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9 >> 60 == 15;
    sub_EDCC(v7, v9);
    _os_log_impl(&dword_0, v10, v11, "Did generate stashable notification onboarding defaults - is nil? %{BOOL}d", v12, 8u);
  }

  else
  {
    sub_EDCC(v7, v9);
  }

  return v7;
}

void IntelligenceManager.applyStashedNotificationOnboardingDefaults(_:)()
{
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v1 = sub_19330();
  sub_BDA0(v1, static Logger.purpleBuddyGeneral);
  v2 = sub_19310();
  v3 = sub_193F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Will apply stashed notification onboarding defaults", v4, 2u);
  }

  v5 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider);
  isa = sub_191B0().super.isa;
  [v5 applyStashedNotificationOnboardingDefaults:isa];

  oslog = sub_19310();
  v7 = sub_193F0();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, oslog, v7, "Did apply stashed notification onboarding defaults", v8, 2u);
  }
}

uint64_t sub_11CDC(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 233) = a1;
  return _swift_task_switch(sub_11D00, 0, 0);
}

uint64_t sub_11D00()
{
  v1 = v0;
  v2 = v0 + 144;
  v3 = v1 + 232;
  if (*(v1 + 233) == 1)
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v4 = sub_19330();
    *(v1 + 216) = sub_BDA0(v4, static Logger.purpleBuddyGeneral);
    v5 = sub_19310();
    v6 = sub_193F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Updating intelligence availability", v7, 2u);
    }

    v8 = v1 + 80;
    v9 = *(v1 + 208);

    v10 = *(v9 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_availabilityProvider);
    *(v1 + 80) = v1;
    *(v1 + 120) = v3;
    *(v1 + 88) = sub_12060;
    v11 = swift_continuation_init();
    *(v1 + 200) = sub_ED0C(&qword_2FFF8, &unk_1D148);
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_10C84;
    *(v1 + 168) = &unk_29170;
    *(v1 + 176) = v11;
    [v10 fetchLatestAvailabilityWithCompletionHandler:v2];
  }

  else
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v12 = sub_19330();
    sub_BDA0(v12, static Logger.purpleBuddyGeneral);
    v13 = sub_19310();
    v14 = sub_193F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Local availability check", v15, 2u);
    }

    v8 = v1 + 16;
    v16 = *(v1 + 208);

    v17 = *(v16 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_availabilityProvider);
    *(v1 + 16) = v1;
    *(v1 + 56) = v3;
    *(v1 + 24) = sub_12298;
    v18 = swift_continuation_init();
    *(v1 + 200) = sub_ED0C(&unk_30040, &qword_1D218);
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_12EBC;
    *(v1 + 168) = &unk_29148;
    *(v1 + 176) = v18;
    [v17 isDeviceEligibleForIntelligenceWithCompletionHandler:v2];
  }

  return _swift_continuation_await(v8);
}

uint64_t sub_12060()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_12378;
  }

  else
  {
    v3 = sub_12170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_12170()
{
  v1 = *(v0 + 232);
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_19330();
  sub_BDA0(v2, static Logger.purpleBuddyGeneral);
  v3 = sub_19310();
  v4 = sub_193F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "Intelligence availablility status: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_12298()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_12EA0, 0, 0);
}

uint64_t sub_12378()
{
  v2 = v0[27];
  v1 = v0[28];
  swift_willThrow();
  v3 = sub_193E0();
  swift_errorRetain();
  v4 = sub_19310();

  v5 = os_log_type_enabled(v4, v3);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v3, "Failed to fetch latest availability status with error: %@", v7, 0xCu);
    sub_12A3C(v8);
  }

  else
  {
  }

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v10 = sub_19330();
  sub_BDA0(v10, static Logger.purpleBuddyGeneral);
  v11 = sub_19310();
  v12 = sub_193F0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    _os_log_impl(&dword_0, v11, v12, "Intelligence availablility status: %{BOOL}d", v13, 8u);
  }

  v14 = v0[1];

  return v14(0);
}

id sub_12590()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider) shouldShowForSummarization];
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v2 = sub_19330();
  sub_BDA0(v2, static Logger.purpleBuddyGeneral);
  v3 = sub_19310();
  v4 = sub_193F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "Should show summarization: %{BOOL}d", v5, 8u);
  }

  return v1;
}

id sub_12694()
{
  if (!*(v0 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_visualIntelligencePresentationManager))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_visualIntelligencePresentationManager);
  v2 = [swift_unknownObjectRetain() shouldPresentVisualIntelligencePane];
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v3 = sub_19330();
  sub_BDA0(v3, static Logger.purpleBuddyGeneral);
  v4 = sub_19310();
  v5 = sub_193F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_0, v4, v5, "Should show Visual Intelligence (CC): %{BOOL}d", v6, 8u);
  }

  swift_unknownObjectRelease();

  return v2;
}

id IntelligenceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_128DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_didShowIntelligencePaneThisBuddyRun] = 0;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_featureFlags] = a1;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_availabilityProvider] = a2;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_stateProvider] = a3;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_preferences] = a4;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_chronicle] = a5;
  *&v6[OBJC_IVAR____TtC13BuddyMigrator19IntelligenceManager_visualIntelligencePresentationManager] = a6;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for IntelligenceManager();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_129C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_12A3C(uint64_t a1)
{
  v2 = sub_ED0C(&qword_30000, &qword_1D120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12AA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_12AB8(a1, a2);
  }

  return a1;
}

uint64_t sub_12AB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_12B34()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_F2D8;

  return sub_11654(v2, v4, v3);
}

uint64_t sub_12BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_F2D8;

  return sub_17C4C(v2, v3, v5);
}

uint64_t sub_12CAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12CEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_F2D8;

  return sub_10EC4(v2, v3);
}

uint64_t sub_12D98()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_12DD8()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_EECC;

  return sub_103FC(v2, v4, v3);
}

uint64_t sub_12EBC(uint64_t a1, char a2)
{
  **(*(*sub_ECC8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_12FAC;

  return sub_13F34(0);
}

uint64_t sub_12FAC(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_130AC, 0, 0);
}

uint64_t sub_130AC()
{
  if (*(v0 + 32) == 1)
  {
    v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider) isAvailable];
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v2 = sub_19330();
    sub_BDA0(v2, static Logger.purpleBuddyGeneral);
    v3 = sub_19310();
    v4 = sub_193F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_0, v3, v4, "Checking intelligence on device availability status: %{BOOL}d", v5, 8u);
    }
  }

  else
  {
    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_13378(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_104B8;

  return IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()();
}

uint64_t IntelligenceAvailabilityProvider.fetchLatestAvailability()()
{
  *(v1 + 144) = v0;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_134B4;

  return sub_13F34(1);
}

uint64_t sub_134B4(char a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_135B4, 0, 0);
}

uint64_t sub_135B4()
{
  if (*(v0 + 176) == 1)
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v1 = sub_19330();
    sub_BDA0(v1, static Logger.purpleBuddyGeneral);
    v2 = sub_19310();
    v3 = sub_193F0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Fetching latest Intelligence availability status", v4, 2u);
    }

    v5 = *(v0 + 144);

    v6 = *(v5 + OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_137CC;
    v7 = swift_continuation_init();
    *(v0 + 136) = sub_ED0C(&qword_30058, &qword_1D238);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_13ADC;
    *(v0 + 104) = &unk_29198;
    *(v0 + 112) = v7;
    [v6 fetchLatestAvailabilityStatusWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_137CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_13A6C;
  }

  else
  {
    v3 = sub_138DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_138DC()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1396C;
  v2 = *(v0 + 144);

  return IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()();
}

uint64_t sub_1396C(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_13A6C()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(0);
}

uint64_t sub_13ADC(uint64_t a1, void *a2)
{
  v3 = sub_ECC8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_ED0C(&qword_30038, &qword_1D210);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_13CFC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_13DA4;

  return IntelligenceAvailabilityProvider.fetchLatestAvailability()();
}

uint64_t sub_13DA4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_19190();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_13F34(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 161) = a1;
  return _swift_task_switch(sub_13F58, 0, 0);
}

uint64_t sub_13F58()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverBackedValue;
  *(v0 + 152) = OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverBackedValue;
  v3 = *(v1 + v2);
  if (v3 != 2)
  {
LABEL_12:
    v17 = *(v0 + 8);

    return v17(v3 & 1);
  }

  if (os_variant_has_internal_ui())
  {
    v4 = *(*(v0 + 144) + OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_preferences);
    if (v4)
    {
      v5 = qword_2FDE0;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_19330();
      sub_BDA0(v7, static Logger.purpleBuddyGeneral);
      v8 = sub_19310();
      v9 = sub_193F0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Checking override flag", v10, 2u);
      }

      v11 = sub_19360();
      v12 = [v6 objectForKey:v11];

      if (v12)
      {
        sub_19420();
        swift_unknownObjectRelease();
        sub_14780(v0 + 80);
        v13 = sub_19360();
        v3 = [v6 BOOLForKey:v13];

        v14 = sub_19310();
        v15 = sub_193F0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 67109120;
          *(v16 + 4) = v3;
          _os_log_impl(&dword_0, v14, v15, "Found intelligence override flag: %{BOOL}d", v16, 8u);
        }

        goto LABEL_12;
      }

      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      sub_14780(v0 + 80);
    }
  }

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v19 = sub_19330();
  sub_BDA0(v19, static Logger.purpleBuddyGeneral);
  v20 = sub_19310();
  v21 = sub_193F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Checking intelligence bag", v22, 2u);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 161);

  v25 = *(v23 + OBJC_IVAR____TtC13BuddyMigrator32IntelligenceAvailabilityProvider_serverControlProvider);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_143A8;
  v26 = swift_continuation_init();
  *(v0 + 136) = sub_ED0C(&unk_30040, &qword_1D218);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_12EBC;
  *(v0 + 104) = &unk_292B0;
  *(v0 + 112) = v26;
  [v25 isFeatureEnabledFromCache:(v24 & 1) == 0 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_143A8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_14488, 0, 0);
}

uint64_t sub_14488()
{
  v1 = *(v0 + 160);
  if (*(v0 + 161) == 1)
  {
    *(*(v0 + 144) + *(v0 + 152)) = v1;
  }

  return (*(v0 + 8))(v1);
}

id IntelligenceAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_145E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_EECC;

  return sub_13CFC(v2, v3);
}

uint64_t sub_14694()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_146D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_F2D8;

  return sub_13378(v2, v3);
}

uint64_t sub_14780(uint64_t a1)
{
  v2 = sub_ED0C(&qword_2FFB8, &unk_1D2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntelligenceServerControlProvider.isFeatureEnabled(fromCache:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_148A8;

  return sub_14EB0(a1);
}

uint64_t sub_148A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_149A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_ECC8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_ED0C(&qword_30038, &qword_1D210);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      ObjectType = swift_getObjectType();
      *&v12 = a2;
      sub_158FC(&v12, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = *(*(v5 + 64) + 40);
    v10 = v15;
    *v9 = v14;
    v9[1] = v10;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_14C2C(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_14CE0;

  return sub_14EB0(a1);
}

uint64_t sub_14CE0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

id IntelligenceServerControlProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id IntelligenceServerControlProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_14ED0()
{
  v1 = *(v0 + 233);
  v2 = [objc_allocWithZone(AKURLBag) init];
  *(v0 + 208) = v2;
  v3 = sub_19360();
  *(v0 + 216) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_15040;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_ED0C(&qword_300C8, &unk_1D310);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_149A4;
  *(v0 + 104) = &unk_29350;
  *(v0 + 112) = v4;
  [v2 configurationValueForKey:v3 fromCache:v1 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_15040()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_15458;
  }

  else
  {
    v3 = sub_15150;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_15150()
{
  v1 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v1;
  if (*(v0 + 104))
  {
    sub_158FC((v0 + 80), (v0 + 144));
    sub_129C4(v0 + 144, v0 + 80);
    sub_1590C(0, &qword_300D8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 176);
      LOBYTE(v3) = [v2 BOOLValue];

LABEL_4:
      if (qword_2FDE0 != -1)
      {
        swift_once();
      }

      v4 = sub_19330();
      sub_BDA0(v4, static Logger.purpleBuddyGeneral);
      v5 = sub_19310();
      v6 = sub_193F0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = v3 & 1;
        _os_log_impl(&dword_0, v5, v6, "intelligence value in bag: %{BOOL}d", v7, 8u);

        v8 = *(v0 + 216);
        v9 = (v0 + 208);
      }

      else
      {
        v9 = (v0 + 216);
        v8 = v5;
        v5 = *(v0 + 208);
      }

      sub_F1C0((v0 + 144));
      goto LABEL_21;
    }

    sub_129C4(v0 + 144, v0 + 80);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 232);
      if (v3 != 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(v0 + 232) = 2;
    }

    sub_F1C0((v0 + 144));
  }

  else
  {
    sub_F160(v0 + 80, &qword_2FFB8, &unk_1D2B0);
  }

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v10 = sub_19330();
  sub_BDA0(v10, static Logger.purpleBuddyGeneral);
  v11 = sub_193E0();
  v12 = sub_19310();
  v13 = os_log_type_enabled(v12, v11);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  if (v13)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v12, v11, "Invalid bag configuration", v16, 2u);
  }

  LOBYTE(v3) = 0;
LABEL_21:
  v17 = *(v0 + 8);

  return v17(v3 & 1);
}

uint64_t sub_15458()
{
  v1 = *(v0 + 224);
  swift_willThrow();
  *(v0 + 80) = v1;
  sub_ED0C(&qword_30038, &qword_1D210);
  sub_1590C(0, &qword_300D0, NSError_ptr);
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v3 = *(v0 + 144);
  v4 = [v3 domain];
  v5 = sub_19370();
  v7 = v6;

  if (v5 == sub_19370() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_19460();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v3 code]!= -7097)
  {
LABEL_15:
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v15 = sub_19330();
    sub_BDA0(v15, static Logger.purpleBuddyGeneral);
    v16 = sub_193E0();
    v17 = v3;
    v13 = sub_19310();

    if (!os_log_type_enabled(v13, v16))
    {
      v3 = v13;
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v17;
    *v19 = v17;
    v20 = v17;
    _os_log_impl(&dword_0, v13, v16, "intelligence bag check failed with error: %@", v18, 0xCu);
    sub_F160(v19, &qword_30000, &qword_1D120);

    goto LABEL_19;
  }

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v11 = sub_19330();
  sub_BDA0(v11, static Logger.purpleBuddyGeneral);
  v12 = sub_193E0();
  v13 = sub_19310();
  if (!os_log_type_enabled(v13, v12))
  {
    goto LABEL_20;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  _os_log_impl(&dword_0, v13, v12, "intelligence bag key not found", v14, 2u);
LABEL_19:

LABEL_20:
  v17 = v13;
LABEL_22:
  v21 = *(v0 + 208);

  v22 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_157EC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1582C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_EECC;

  return sub_14C2C(v2, v4);
}

_OWORD *sub_158FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1590C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_15A34(char a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_chronicle);
    v3 = "recordFeatureShown:";
LABEL_8:

    [v2 v3];
    return;
  }

  if (!*(v1 + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_lastSeenVersion + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_chronicle);
    v3 = "removeRecordForFeature:";
    goto LABEL_8;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_lastSeenVersion);
  v5 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_chronicle);
  v6 = sub_19360();
  [v5 setProductVersion:v6 forFeature:7];
}

id sub_15B88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewFeaturesFlowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_15C50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_newFeaturesFlowHandler;
  v7 = sub_192B0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_192A0();
  *&v2[OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_chronicle] = a1;
  v10 = [a1 entryForFeature:7];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 productVersion];

    v13 = sub_19370();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = &v3[OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_lastSeenVersion];
  *v16 = v13;
  v16[1] = v15;
  *&v3[OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_featureFlags] = a2;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for NewFeaturesFlowManager();
  return objc_msgSendSuper2(&v18, "init");
}

id sub_15E90(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_deviceProvider] = a1;
  *&v7[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_preferences] = a2;
  *&v7[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider] = a3;
  swift_unknownObjectRetain();
  v8 = a2;
  *&v7[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_initialValue] = [swift_unknownObjectRetain() currentMultitaskingOption];
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

id sub_16038()
{
  if ([*&v0[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_deviceProvider] type] != &dword_0 + 1)
  {
    return 0;
  }

  v1 = [objc_allocWithZone(SBSBuddyMultitaskingFlow) init];
  v2 = [v1 needsToShow];

  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v3 = sub_19330();
  sub_BDA0(v3, static Logger.purpleBuddyGeneral);
  v4 = v0;
  v5 = sub_19310();
  v6 = sub_193F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    swift_getObjectType();
    v9 = sub_19470();
    v11 = sub_1672C(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v2;
    _os_log_impl(&dword_0, v5, v6, "%s isFeatureApplicable: %{BOOL}d", v7, 0x12u);
    sub_F1C0(v8);
  }

  return v2;
}

uint64_t sub_16234()
{
  v1 = *&v0[OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_preferences];
  v2 = sub_19360();
  LOBYTE(v1) = [v1 BOOLForKey:v2];

  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_16038();
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v4 = sub_19330();
    sub_BDA0(v4, static Logger.purpleBuddyGeneral);
    v5 = v0;
    v6 = sub_19310();
    v7 = sub_193F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      swift_getObjectType();
      v10 = sub_19470();
      v12 = sub_1672C(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v3 & 1;
      _os_log_impl(&dword_0, v6, v7, "%s shouldShowFlow: %{BOOL}d", v8, 0x12u);
      sub_F1C0(v9);
    }
  }

  return v3 & 1;
}

id sub_16678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyMultitaskingSelectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1672C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_167F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_129C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_F1C0(v11);
  return v7;
}

unint64_t sub_167F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_16904(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19450();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_16904(uint64_t a1, unint64_t a2)
{
  v4 = sub_16950(a1, a2);
  sub_16A80(&off_28EE8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_16950(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_16B6C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19450();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19390();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_16B6C(v10, 0);
        result = sub_19440();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_16A80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_16BE0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_16B6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_ED0C(&qword_30178, &qword_1D3C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_16BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_ED0C(&qword_30178, &qword_1D3C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id BuddyCameraControlPresentationProvider.__allocating_init(isIntelligenceEnabled:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_opt_self() buddyPreferences];
  v5 = [v3 initWithIsIntelligenceEnabled:a1 & 1 preferenceController:v4];

  return v5;
}

id BuddyCameraControlPresentationProvider.init(isIntelligenceEnabled:)(char a1)
{
  v3 = [objc_opt_self() buddyPreferences];
  v4 = [v1 initWithIsIntelligenceEnabled:a1 & 1 preferenceController:v3];

  return v4;
}

id BuddyCameraControlPresentationProvider.__allocating_init(isIntelligenceEnabled:preferenceController:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled] = a1;
  *&v5[OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id BuddyCameraControlPresentationProvider.init(isIntelligenceEnabled:preferenceController:)(char a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled] = a1;
  *&v2[OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  return objc_msgSendSuper2(&v4, "init");
}

Swift::Bool __swiftcall BuddyCameraControlPresentationProvider.shouldPresentCameraControlPane()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController);
  v2 = sub_19360();
  v3 = [v1 BOOLForKey:v2];

  if (!v3)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v4 = sub_19360();
  v5 = [v1 BOOLForKey:v4];

  return v5 ^ 1;
}

Swift::Bool __swiftcall BuddyCameraControlPresentationProvider.shouldPresentVisualIntelligencePane()()
{
  if (*(v0 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController);
  v2 = sub_19360();
  LOBYTE(v1) = [v1 BOOLForKey:v2];

  return v1 ^ 1;
}

Swift::Void __swiftcall BuddyCameraControlPresentationProvider.updatePaneVisibilityPreferences(newState:)(Swift::Bool newState)
{
  v3 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController);
  isa = sub_193A0().super.super.isa;
  v5 = sub_19360();
  [v3 setObject:isa forKey:v5];

  if (*(v1 + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) == 1)
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v6 = sub_19330();
    sub_BDA0(v6, static Logger.purpleBuddyGeneral);
    v7 = sub_19310();
    v8 = sub_193F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = newState;
      _os_log_impl(&dword_0, v7, v8, "Update visual intelligence presented to: %{BOOL}d", v9, 8u);
    }
  }

  else if (newState)
  {
    return;
  }

  v10 = sub_193A0().super.super.isa;
  v11 = sub_19360();
  [v3 setObject:v10 forKey:v11];
}

id BuddyCameraControlPresentationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_174C8()
{
  v1 = sub_19290();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_19280();
  v4 = async function pointer to AvailabilityClient.updateAll()[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1757C;

  return AvailabilityClient.updateAll()();
}

uint64_t sub_1757C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_176B8, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_176B8()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_17890(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_178F8, 0, 0);
}

uint64_t sub_178F8()
{
  v1 = sub_19290();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_19280();
  v4 = async function pointer to AvailabilityClient.updateAll()[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_179AC;

  return AvailabilityClient.updateAll()();
}

uint64_t sub_179AC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_17B04, 0, 0);
  }

  else
  {
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v3 + 16));
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_17B04()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = sub_19190();

  (*(v3 + 16))(v3, v4);

  _Block_release(*(v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

id BuddyGMAvailabilityProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id BuddyGMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_17C4C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_F2D8;

  return v7();
}

uint64_t sub_17D34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_EECC;

  return v8();
}

uint64_t sub_17E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_ED0C(&qword_30030, "&w");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  sub_18534(a3, v26 - v12);
  v14 = sub_193D0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_185A4(v13);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_193C0();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_193B0();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_19380() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_185A4(a3);

    return v24;
  }

LABEL_8:
  sub_185A4(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_180D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181D0;

  return v7(a1);
}

uint64_t sub_181D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s13BuddyMigrator0A22GMAvailabilityProviderC11isAvailableSbyF_0()
{
  v0 = sub_19240();
  if (qword_2FDE0 != -1)
  {
    swift_once();
  }

  v1 = sub_19330();
  sub_BDA0(v1, static Logger.purpleBuddyGeneral);
  v2 = sub_19310();
  v3 = sub_193F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 4) = v0 & 1;
    *(v4 + 8) = 2048;
    swift_beginAccess();
    *(v4 + 10) = 2;
    _os_log_impl(&dword_0, v2, v3, "GM on device status: shouldShow: %{BOOL}d, with availability state: %ld", v4, 0x12u);
  }

  return v0 & 1;
}

uint64_t sub_18444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18484()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_EECC;

  return sub_17890(v2);
}

uint64_t sub_18534(uint64_t a1, uint64_t a2)
{
  v4 = sub_ED0C(&qword_30030, "&w");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185A4(uint64_t a1)
{
  v2 = sub_ED0C(&qword_30030, "&w");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1860C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_F2D8;

  return sub_180D8(a1, v5);
}

uint64_t sub_186FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_EECC;

  return sub_180D8(a1, v5);
}

id sub_188BC()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_featureFlags) isSolariumEnabled];
  if (result)
  {
    if (qword_2FDE0 != -1)
    {
      swift_once();
    }

    v3 = sub_19330();
    sub_BDA0(v3, static Logger.purpleBuddyGeneral);
    v4 = sub_19310();
    v5 = sub_193F0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "User onboarding was completed", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_chronicle);

    return [v7 recordFeatureShown:6];
  }

  return result;
}

id sub_18A64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SolariumOnBoardingManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_18B7C(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 aa_altDSID];
  v7 = _BYIsInternalInstall();
  if ((v7 & 1) == 0)
  {
    v3 = [a2 domain];
    a2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v3, [a2 code]);
  }

  *buf = 138412546;
  v9 = v6;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to get accepted terms info for alt-DSID %@: %{public}@", buf, 0x16u);
  if (!v7)
  {
  }
}

void sub_18D28(void *a1, NSObject *a2)
{
  v5 = _BYIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v2 = [a1 domain];
    a1 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v2, [a1 code]);
  }

  *buf = 138412290;
  v7 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BuddyMigrator failed to fetch manatee availability %@", buf, 0xCu);
  if (!v5)
  {
  }
}

void sub_18FF4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Raw data: %{public}@", &v2, 0xCu);
}

void sub_1906C(void *a1, NSObject *a2)
{
  v3 = [a1 objectAtIndexedSubscript:2];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Invalid type for snapshot ID when restoring backup restore state: %@", &v4, 0xCu);
}