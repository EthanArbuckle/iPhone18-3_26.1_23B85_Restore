void VTUISetSiriEnabled(uint64_t a1)
{
  v2 = +[BPSBridgeAppContext shared];
  v3 = [v2 activeDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v6 = +[BPSBridgeAppContext shared];
    v7 = [v6 activeDevice];

    v8 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.assistant.nano" pairedDevice:v7];
    v9 = [NSNumber numberWithBool:a1];
    [v8 setObject:v9 forKey:@"Assistant Enabled"];
    [v8 setObject:v9 forKey:@"Dictation Enabled"];
    v10 = [v8 synchronize];
    v11 = objc_opt_new();
    v12 = [v8 domain];
    v13 = [NSSet setWithObjects:@"Assistant Enabled", @"Dictation Enabled", 0];
    [v11 synchronizeNanoDomain:v12 keys:v13];
  }

  else
  {
    v7 = [sub_121C() sharedPreferences];
    [v7 setAssistantIsEnabled:a1];
  }

  if (a1)
  {
    v14 = +[NSLocale currentLocale];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v15 = off_CBA8;
    v23 = off_CBA8;
    if (!off_CBA8)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_2044;
      v19[3] = &unk_8240;
      v19[4] = &v20;
      sub_2044(v19);
      v15 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v15)
    {
      sub_4398();
    }

    v16 = v15(v14);
    v17 = [sub_121C() sharedPreferences];
    [v17 setLanguageCode:v16];
  }

  v18 = [sub_121C() sharedPreferences];
  [v18 synchronize];
}

void sub_1204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_121C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_CB98;
  v7 = qword_CB98;
  if (!qword_CB98)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1E78;
    v3[3] = &unk_8240;
    v3[4] = &v4;
    sub_1E78(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t shouldShowSiriOptInPage()
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:MCFeatureAssistantAllowed];

  if (v1 == 2)
  {
    return 0;
  }

  return BPSShouldOfferSiriForDeviceLanguage();
}

id VTUISiriScreenStringForDevice()
{
  if (BPSIsDeviceCompatibleWithVersions())
  {
    v0 = [@"Screen-Siri" stringByAppendingString:BPSMajorVersion3_x_x_Suffix];
  }

  else
  {
    v0 = @"Screen-Siri";
  }

  v1 = [NSString stringWithFormat:@"DeviceAssets/%@", v0];

  return v1;
}

id VTUISiriScreenDeviceAssetVideoController()
{
  v0 = [NSString stringWithFormat:@"DeviceAssets/%@", @"Screen-Video-Siri"];
  LODWORD(v1) = 1.0;
  v2 = [BPSVideoControllingBuilder videoControllerWithFileName:v0 fileExtension:@"mov" bundle:0 autoPlay:1 startDelay:1 shouldLoop:0.5 volume:v1];

  return v2;
}

void sub_1644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E78(uint64_t a1)
{
  sub_1ED0();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4418();
  }

  qword_CB98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1ED0()
{
  v3[0] = 0;
  if (!qword_CBA0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1FD0;
    v3[4] = &unk_8278;
    v3[5] = v3;
    v4 = off_8260;
    v5 = 0;
    qword_CBA0 = _sl_dlopen();
  }

  v0 = qword_CBA0;
  v1 = v3[0];
  if (!qword_CBA0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1FD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CBA0 = result;
  return result;
}

void *sub_2044(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_CBB0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_2184;
    v5[4] = &unk_8278;
    v5[5] = v5;
    v6 = off_8298;
    v7 = 0;
    qword_CBB0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_CBB0;
    if (qword_CBB0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_CBB0;
LABEL_5:
  result = dlsym(v2, "_VSCopyLanguageIdentifierForLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_CBA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2184(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CBB0 = result;
  return result;
}

void *sub_21F8(uint64_t a1)
{
  v2 = sub_1ED0();
  result = dlsym(v2, "AFAssistantRestricted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_CBB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2470(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_253C;
  block[3] = &unk_82B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_253C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    if ([*(a1 + 32) requiresVoiceSelectionForRecognitionLanguage:*(a1 + 40)])
    {
      v3 = [v4 delegate];
      [v3 buddyControllerReleaseHold:v4];
    }

    else
    {
      VTUISetSiriEnabled(1);
      v3 = [v4 delegate];
      [v3 buddyControllerReleaseHoldAndSkip:v4];
    }

    WeakRetained = v4;
  }
}

void sub_27CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_28E8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_CBE0;
  v7 = qword_CBE0;
  if (!qword_CBE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_2EAC;
    v3[3] = &unk_8240;
    v3[4] = &v4;
    sub_2EAC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2B2C(uint64_t a1)
{
  sub_2B84();
  result = objc_getClass("AFEnablementFlowConfigurationProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4440();
  }

  qword_CBC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2B84()
{
  v1[0] = 0;
  if (!qword_CBC8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_2C80;
    v1[4] = &unk_8278;
    v1[5] = v1;
    v2 = off_8300;
    v3 = 0;
    qword_CBC8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_CBC8)
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

uint64_t sub_2C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CBC8 = result;
  return result;
}

Class sub_2CF4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_CBD8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_2E38;
    v4[4] = &unk_8278;
    v4[5] = v4;
    v5 = off_8318;
    v6 = 0;
    qword_CBD8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_CBD8)
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
  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4468();
  }

  qword_CBD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CBD8 = result;
  return result;
}

Class sub_2EAC(uint64_t a1)
{
  sub_2B84();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4418();
  }

  qword_CBE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VTUITinkerSetSiriEnabled(uint64_t a1)
{
  v2 = +[BPSBridgeAppContext shared];
  [v2 tellWatchToSetSiriEnabled:a1];
}

void sub_38C8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3994;
  block[3] = &unk_82B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_3994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    if ([*(a1 + 32) requiresVoiceSelectionForRecognitionLanguage:*(a1 + 40)])
    {
      v3 = [v4 delegate];
      [v3 buddyControllerReleaseHold:v4];
    }

    else
    {
      VTUITinkerSetSiriEnabled(1);
      v3 = [v4 delegate];
      [v3 buddyControllerReleaseHoldAndSkip:v4];
    }

    WeakRetained = v4;
  }
}

void sub_3C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_3D40()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_CC08;
  v7 = qword_CC08;
  if (!qword_CC08)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_4340;
    v3[3] = &unk_8240;
    v3[4] = &v4;
    sub_4340(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_3E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_3FC0(uint64_t a1)
{
  sub_4018();
  result = objc_getClass("AFEnablementFlowConfigurationProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4440();
  }

  qword_CBE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_4018()
{
  v1[0] = 0;
  if (!qword_CBF0)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_4114;
    v1[4] = &unk_8278;
    v1[5] = v1;
    v2 = off_8330;
    v3 = 0;
    qword_CBF0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_CBF0)
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

uint64_t sub_4114(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CBF0 = result;
  return result;
}

Class sub_4188(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_CC00)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_42CC;
    v4[4] = &unk_8278;
    v4[5] = v4;
    v5 = off_8348;
    v6 = 0;
    qword_CC00 = _sl_dlopen();
    v2 = v4[0];
    if (qword_CC00)
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
  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4468();
  }

  qword_CBF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_42CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_CC00 = result;
  return result;
}

Class sub_4340(uint64_t a1)
{
  sub_4018();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_4418();
  }

  qword_CC08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_4398()
{
  dlerror();
  v0 = abort_report_np();
  sub_43BC(v0);
}

void sub_43BC()
{
  v0 = pbb_bridge_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "Siri pane should have been skipped! Siri disabled on Phone, and Siri on Phone does not support System Language", v1, 2u);
  }

  abort();
}