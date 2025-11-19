id sub_13A8()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_118A0;
  v8 = qword_118A0;
  if (!qword_118A0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_16D0;
    v4[3] = &unk_C2D8;
    v4[4] = &v5;
    sub_16D0(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_1478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = sub_13A8();
    [v8 applyThemeToNavigationController:WeakRetained];
  }
}

Class sub_16D0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_118A8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1814;
    v4[4] = &unk_C310;
    v4[5] = v4;
    v5 = off_C2F8;
    v6 = 0;
    qword_118A8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_118A8)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_5640();
  }

  qword_118A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1814(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_118A8 = result;
  return result;
}

id sub_2B30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"VOICEOVER_TITLE", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"VoiceOverController" title:v2];

  return v3;
}

id sub_2BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"ZOOM_TITLE", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"ZoomController" title:v2];

  return v3;
}

id sub_2C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"DISPLAY_AND_TEXT", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"AXDisplayController" title:v2];

  return v3;
}

id sub_2CBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"MOTION_TITLE", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"AXMotionController" title:v2];

  return v3;
}

id sub_2D40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"READ_AND_SPEAK_TITLE", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"SpeechController" title:v2];

  return v3;
}

id sub_2DC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"SPEECH_TITLE", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"SpeechController" title:v2];

  return v3;
}

id sub_2E48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"TOUCH", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"AXTouchAndReachability" title:v2];

  return v3;
}

id sub_2ECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXBuddyBundleLocString(@"SWITCH_CONTROL_TITLE");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"SCATController" title:v2];

  return v3;
}

id sub_2F48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = settingsLocString(@"KEYBOARDS", @"Accessibility");
  v3 = [WeakRetained createWelcomeControllerWithAXSettingsController:@"AXKeyboardsController" title:v2];

  return v3;
}

id sub_336C()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_118B0;
  v8 = qword_118B0;
  if (!qword_118B0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_3580;
    v4[3] = &unk_C2D8;
    v4[4] = &v5;
    sub_3580(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_3580(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_118B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_36C4;
    v4[4] = &unk_C310;
    v4[5] = v4;
    v5 = off_C358;
    v6 = 0;
    qword_118B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_118B8)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_5640();
  }

  qword_118B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_36C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_118B8 = result;
  return result;
}

id AXBuddyBundleLocString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.accessibility.AXBuddyBundle"];
  v3 = [v2 localizedStringForKey:v1 value:&stru_C7E0 table:@"Localizable"];

  return v3;
}

id AXSettingsBundle()
{
  if (qword_118C8 != -1)
  {
    sub_56E0();
  }

  v1 = qword_118C0;

  return v1;
}

void sub_3818(id a1)
{
  v3 = [_AXSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
  v1 = [NSBundle bundleWithPath:v3];
  v2 = qword_118C0;
  qword_118C0 = v1;
}

id settingsLocString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = AXSettingsBundle();
  v6 = [v5 localizedStringForKey:v4 value:v4 table:v3];

  return v6;
}

id sub_3BD8()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_118D0;
  v8 = qword_118D0;
  if (!qword_118D0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_3E68;
    v4[3] = &unk_C2D8;
    v4[4] = &v5;
    sub_3E68(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_3CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_3E68(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_118D8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_3FAC;
    v4[4] = &unk_C310;
    v4[5] = v4;
    v5 = off_C3B0;
    v6 = 0;
    qword_118D8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_118D8)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_5640();
  }

  qword_118D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_3FAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_118D8 = result;
  return result;
}

id sub_4A24()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_118E0;
  v8 = qword_118E0;
  if (!qword_118E0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_5488;
    v4[3] = &unk_C2D8;
    v4[4] = &v5;
    sub_5488(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_4AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_5488(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_118E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_55CC;
    v4[4] = &unk_C310;
    v4[5] = v4;
    v5 = off_C3C8;
    v6 = 0;
    qword_118E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_118E8)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_5640();
  }

  qword_118E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_55CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_118E8 = result;
  return result;
}

void sub_5668(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error loading AXSettingsController for buddy: %@", &v2, 0xCu);
}